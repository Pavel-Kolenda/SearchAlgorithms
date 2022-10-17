unit CodeFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TCodeForm = class(TForm)
    SearchCode: TWebBrowser;
    CodeLabel: TLabel;
    PythonCode: TImage;
    PascalCode: TImage;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure PascalCodeClick(Sender: TObject);
    procedure PythonCodeClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CodeForm: TCodeForm;

implementation

{$R *.dfm}

uses DiscribeFormUnit, Main_FormUnit;


procedure TCodeForm.FormShow(Sender: TObject);
begin
    CodeLabel.Left:=(CodeForm.Width-CodeLabel.Width) div 2;
    CodeLabel.Caption := SearchName[SearchID];
    CodeForm.Caption := SearchName[SearchID];
    SearchCode.Silent := true;
    SearchCode.Navigate(ExtractFilePath(paramstr(0))+ 'SearchCodes/' + SearchPathsName[SearchID] + '/pas.html');
end;

procedure TCodeForm.Image1Click(Sender: TObject);
begin
    CodeForm.close;
    DiscribeForm.Show;
end;

procedure TCodeForm.PascalCodeClick(Sender: TObject);
begin
    SearchCode.Navigate(ExtractFilePath(paramstr(0))+ 'SearchCodes/' + SearchPathsName[SearchID] + '/pas.html');
end;

procedure TCodeForm.PythonCodeClick(Sender: TObject);
begin
    SearchCode.Navigate(ExtractFilePath(paramstr(0))+ 'SearchCodes/' + SearchPathsName[SearchID] + '/py.html');
end;

end.
