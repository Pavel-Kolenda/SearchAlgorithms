unit AboutFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, ShellAPI;

type
  TAboutForm = class(TForm)
    LogoImage: TImage;
    Label1: TLabel;
    Label2: TLabel;
    CloseButton: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    procedure CloseButtonClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

implementation

{$R *.dfm}

procedure TAboutForm.CloseButtonClick(Sender: TObject);
begin
    AboutForm.close;
end;

procedure TAboutForm.Panel1Click(Sender: TObject);
begin
    ShellExecute(0, Pchar('Open'), PChar('spravka.chm'), nil, nil, SW_SHOW);
end;

end.
