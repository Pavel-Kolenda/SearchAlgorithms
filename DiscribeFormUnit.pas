unit DiscribeFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls;

type
  TDiscribeForm = class(TForm)
    Search_name: TLabel;
    SearchDescription: TWebBrowser;
    CloseButton: TImage;
    ShowDemoButton: TPanel;
    ShowCodeButton: TPanel;
    ShowDemoLabel: TLabel;
    procedure CloseButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SetSearchDiscription();
    procedure ShowDemoLabelClick(Sender: TObject);
    procedure ShowCodeButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DiscribeForm: TDiscribeForm;
  SearchID: integer;
  SearchPathsName: array of string = [
  'LinearSearch',
  'BinarySearch',
  'JumpSearch',
  'InterpolationSearch',
  'ExponentionalSearch'
  ];
  SearchName: array of string = [
  'Ћинейный поиск',
  'Ѕинарный поиск',
  'ѕрыжковый поиск',
  '»нтерпол€ционный поиск',
  'Ёкспоненциальный поиск'
  ];


implementation

{$R *.dfm}

uses Main_FormUnit, CodeFormUnit, DemonstrationFormUnit, DesignUnit;


procedure TDiscribeForm.CloseButtonClick(Sender: TObject);
begin
    DiscribeForm.Close;
    MainForm.Show();
end;

procedure TDiscribeForm.FormCreate(Sender: TObject);
begin
    SearchDescription.Silent := true;
end;

procedure TDiscribeForm.SetSearchDiscription();
begin
    SearchDescription.Navigate(ExtractFilePath(paramstr(0))+ 'SearchDiscriptions/' + SearchPathsName[SearchID] + '/index.html');
end;

procedure TDiscribeForm.ShowCodeButtonClick(Sender: TObject);
begin
    DiscribeForm.Hide;
    CodeForm.Show;
end;

procedure TDiscribeForm.ShowDemoLabelClick(Sender: TObject);
begin
    DemonstrationForm.Show;
end;

procedure TDiscribeForm.FormShow(Sender: TObject);
begin
    DiscribeForm.Caption := SearchName[SearchID];
    Search_Name.Caption := SearchName[SearchID];
    Search_Name.Left:=(DiscribeForm.Width-Search_Name.Width) div 2;
    SetSearchDiscription();
end;

end.
