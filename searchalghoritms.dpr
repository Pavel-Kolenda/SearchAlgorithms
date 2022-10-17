program searchalghoritms;

uses
  Vcl.Forms,
  Main_FormUnit in 'Main_FormUnit.pas' {MainForm},
  SplashFormUnit in 'SplashFormUnit.pas' {SplashForm},
  DiscribeFormUnit in 'DiscribeFormUnit.pas' {DiscribeForm},
  CodeFormUnit in 'CodeFormUnit.pas' {CodeForm},
  AboutFormUnit in 'AboutFormUnit.pas' {AboutForm},
  DesignUnit in 'DesignUnit.pas',
  DemonstrationFormUnit in 'DemonstrationFormUnit.pas' {DemonstrationForm},
  SearchUnit in 'SearchUnit.pas';

{$R *.res}

begin
  SplashForm:=TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Update;
  while SplashForm.Timer1.Enabled do
    Application.ProcessMessages;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDiscribeForm, DiscribeForm);
  Application.CreateForm(TCodeForm, CodeForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TDemonstrationForm, DemonstrationForm);
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
