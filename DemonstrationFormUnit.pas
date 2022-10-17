unit DemonstrationFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.StdCtrls;

type
  TDemonstrationForm = class(TForm)
    AlgorithmName: TLabel;
    Label1: TLabel;
    ElementsCount: TEdit;
    MaxCountElementsLabel: TLabel;
    DataSearchLabel: TLabel;
    Element: TEdit;
    DataGrid: TStringGrid;
    GenerateData: TPanel;
    SubmitCountData: TPanel;
    FindNumber: TPanel;
    Shape1: TShape;
    Label2: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    GenerateDataLabel: TLabel;
    Label4: TLabel;
    procedure SetSearchName();
    procedure Sort(StringGrid:TStringGrid);
    function  isGridEmpty(StringGrid:TStringGrid):boolean;
    procedure FormShow(Sender: TObject);
    procedure SubmitCountDataClick(Sender: TObject);
    procedure ElementsCountChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FindNumberClick(Sender: TObject);
    procedure GenerateDataLabelClick(Sender: TObject);
    procedure SubmitCountDataMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SubmitCountDataMouseLeave(Sender: TObject);
  private
  public
  end;

var
  DemonstrationForm: TDemonstrationForm;
  CellsState: array of integer;

implementation

{$R *.dfm}

uses DiscribeFormUnit, SearchUnit, DesignUnit;

procedure TDemonstrationForm.FindNumberClick(Sender: TObject);
begin
if isGridEmpty(DataGrid) = true then
  begin
    showmessage('Требуется заполнить массив');
    exit;
  end;

  for var i := 0 to DataGrid.ColCount-1 do
  begin
    DataGrid.Rows[0].Objects[i] := TObject(1);
  end;

  case SearchID of
      0: LinearSearch(DataGrid, StrToInt(Element.text));
      1: BinarySearch(DataGrid, StrToInt(Element.text));
      2: JumpSearch(DataGrid, StrToInt(Element.text));
      3: InterpolationSearch(DataGrid, StrToInt(Element.text));
      4: ExponentionalSearch(DataGrid, StrToInt(Element.Text))
  end;

end;

procedure TDemonstrationForm.DataGridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
var flag:integer;
flag := Integer(DataGrid.Rows[ARow].Objects[ACol]);
if (flag < 1) and (flag > 3) then
  exit;
with DataGrid.Canvas do
  begin
      case flag of
        1:
        {default}
          Brush.Color := clWhite;
        2:
        {select}
          Brush.Color := clYellow;
        3:
        {find}
          Brush.Color := $0024FF00;
      end;

  FillRect(rect);
  TextOut(rect.Left + 2, rect.Top+2, DataGrid.Cells[ACol, ARow]);
  end;
end;

function TDemonstrationForm.isGridEmpty(StringGrid:TStringGrid):boolean;
begin
  for var i := 0 to StringGrid.ColCount-1 do
    if StringGrid.Cells[i, 0] = '' then
    begin
      isGridEmpty := true;
      exit
    end;
  isGridEmpty := false;
end;

procedure TDemonstrationForm.Sort(StringGrid:TStringGrid);
begin
var temp:string;
    for var i := 0 to StringGrid.ColCount-1 do
        for var j := 0 to StringGrid.ColCount - i - 1 do
        begin
            if StrToInt(StringGrid.Cells[j, 0]) > StrToInt(StringGrid.Cells[j+1, 0]) then
            begin
              temp := StringGrid.Cells[j, 0];
              StringGrid.Cells[j, 0] := StringGrid.Cells[j+1, 0];
              StringGrid.Cells[j+1, 0] := temp
            end;
        end;
end;

procedure TDemonstrationForm.GenerateDataLabelClick(Sender: TObject);
begin
for var i := 0 to StrToInt(ElementsCount.Text) do
  begin
    DataGrid.Cells[i, 0]:= IntToStr(Random(25));
    DataGrid.Rows[0].Objects[i] := TObject(1);
    CellsState[i]:=0;
  end;
  Sort(DataGrid);
end;

procedure TDemonstrationForm.ElementsCountChange(Sender: TObject);
begin
    var dataCount: integer;
    try
      dataCount := StrToInt(ElementsCount.text);
      if (dataCount > 13) or (dataCount < 1) then
        ElementsCount.Color := clRed
      else
        ElementsCount.Color := clWhite;
    except
      ElementsCount.Color := clWhite;
    end;
end;

procedure TDemonstrationForm.FormShow(Sender: TObject);
begin
    SetSearchName();
    DataGrid.Width:=DataGrid.ColCount*68;
    DataGrid.Left:=(DemonstrationForm.Width-DataGrid.Width) div 2;
   SetLength(CellsState, DataGrid.ColCount);
end;

procedure TDemonstrationForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    for var i:=0 to DataGrid.ColCount-1 do
      begin
        DataGrid.Cells[i, 0] := '';
        DataGrid.Rows[0].Objects[i] := TObject(1);
      end;
    ElementsCount.Clear;
    Element.Clear;
    DataGrid.ColCount := 10;
end;

procedure TDemonstrationForm.SubmitCountDataClick(Sender: TObject);
begin
    DataGrid.ColCount := StrToInt(ElementsCount.Text);
    DataGrid.Width := DataGrid.ColCount * 68;
    DataGrid.Left :=(DemonstrationForm.Width - DataGrid.Width) div 2;
    SetLength(CellsState, DataGrid.ColCount-1);
end;

procedure TDemonstrationForm.SetSearchName();
begin
     AlgorithmName.Caption := SearchName[SearchID];
     AlgorithmName.Left:=(DemonstrationForm.Width-AlgorithmName.Width) div 2;
     Label4.Left:=(DemonstrationForm.Width-Label4.Width) div 2;
end;

procedure TDemonstrationForm.SubmitCountDataMouseLeave(Sender: TObject);
begin
    selectButton(SubmitCountData);
end;

procedure TDemonstrationForm.SubmitCountDataMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    selectButton(SubmitCountData);
end;

end.
