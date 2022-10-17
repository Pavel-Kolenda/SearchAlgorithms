unit Main_FormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TMainForm = class(TForm)
    Algorithms: TLabel;
    LinearSearch: TPanel;
    LinearSearchLabel: TLabel;
    BinarySearch: TPanel;
    BinarySearchLabel: TLabel;
    JumpSearch: TPanel;
    JumpSearchLabel: TLabel;
    InterpolationSearch: TPanel;
    ExponentionalSearch: TPanel;
    LinearSearchImage: TImage;
    BinarySearchImage: TImage;
    JumpSearchImage: TImage;
    ExponentionalSearchImage: TImage;
    ExponentionalSearchLabel: TLabel;
    InterpolationSearchLabel: TLabel;
    InterpolationSearchImage: TImage;
    MainMenu: TPanel;
    LinearSearchMenu: TPanel;
    BinarySearchMenu: TPanel;
    LSImage: TImage;
    BSImage: TImage;
    JumpSearchMenu: TPanel;
    JSImage: TImage;
    InterpolationSearchMenu: TPanel;
    ISImage: TImage;
    ExponentionalSearchMenu: TPanel;
    ESImage: TImage;
    SelectLS: TShape;
    SelectBS: TShape;
    SelectJS: TShape;
    SelectIS: TShape;
    SelectES: TShape;
    AboutPanel: TPanel;
    AboutSearchAlghoritmsImage: TImage;
    procedure ExponentionalSearchImageClick(Sender: TObject);
    procedure InterpolationSearchImageClick(Sender: TObject);
    procedure JumpSearchImageClick(Sender: TObject);
    procedure BinarySearchImageClick(Sender: TObject);
    procedure LinearSearchImageClick(Sender: TObject);
    procedure LSImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LSImageMouseLeave(Sender: TObject);
    procedure BSImageMouseLeave(Sender: TObject);
    procedure BSImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure JSImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ISImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ISImageMouseLeave(Sender: TObject);
    procedure ESImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ESImageMouseLeave(Sender: TObject);
    procedure JSImageMouseLeave(Sender: TObject);
    procedure LSImageClick(Sender: TObject);
    procedure BSImageClick(Sender: TObject);
    procedure JSImageClick(Sender: TObject);
    procedure ISImageClick(Sender: TObject);
    procedure ESImageClick(Sender: TObject);
    procedure AboutSearchAlghoritmsImageClick(Sender: TObject);
    procedure LinearSearchImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LinearSearchImageMouseLeave(Sender: TObject);
    procedure BinarySearchImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BinarySearchImageMouseLeave(Sender: TObject);
    procedure JumpSearchImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure JumpSearchImageMouseLeave(Sender: TObject);
    procedure InterpolationSearchImageMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure InterpolationSearchImageMouseLeave(Sender: TObject);
    procedure ExponentionalSearchImageMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure ExponentionalSearchImageMouseLeave(Sender: TObject);
    procedure AboutSearchAlghoritmsImageMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure AboutSearchAlghoritmsImageMouseLeave(Sender: TObject);
  private
  public
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses DiscribeFormUnit, AboutFormUnit, DesignUnit;

procedure TMainForm.LSImageMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    selectMainMenu(LinearSearchMenu, SelectLS)
end;

procedure TMainForm.BSImageMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    selectMainMenu(BinarySearchMenu, SelectBS)
end;

procedure TMainForm.JSImageMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    selectMainMenu(JumpSearchMenu, SelectJS)
end;

procedure TMainForm.ESImageMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    selectMainMenu(ExponentionalSearchMenu, SelectES)
end;

procedure TMainForm.ISImageMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    selectMainMenu(InterpolationSearchMenu, SelectIS)
end;

procedure TMainForm.LSImageMouseLeave(Sender: TObject);
begin
    UnselectMainMenu(LinearSearchMenu, SelectLS)
end;

procedure TMainForm.BSImageMouseLeave(Sender: TObject);
begin
    UnselectMainMenu(BinarySearchMenu, SelectBS)
end;

procedure TMainForm.JSImageMouseLeave(Sender: TObject);
begin
    UnselectMainMenu(JumpSearchMenu, SelectJS)
end;

procedure TMainForm.ESImageMouseLeave(Sender: TObject);
begin
    UnselectMainMenu(ExponentionalSearchMenu, SelectES)
end;

procedure TMainForm.ISImageMouseLeave(Sender: TObject);
begin
    UnselectMainMenu(InterpolationSearchMenu, SelectIS)
end;

procedure TMainForm.LinearSearchImageMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    selectSearch(LinearSearch, LinearSearchImage)
end;

procedure TMainForm.BinarySearchImageMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    selectSearch(BinarySearch, BinarySearchImage)
end;

procedure TMainForm.JumpSearchImageMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    selectSearch(JumpSearch, JumpSearchImage)
end;

procedure TMainForm.InterpolationSearchImageMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    selectSearch(InterpolationSearch, InterpolationSearchImage)
end;

procedure TMainForm.ExponentionalSearchImageMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    selectSearch(ExponentionalSearch, ExponentionalSearchImage)
end;

procedure TMainForm.AboutSearchAlghoritmsImageMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    selectSearch(AboutPanel, AboutSearchAlghoritmsImage)
end;

procedure TMainForm.LinearSearchImageMouseLeave(Sender: TObject);
begin
    UnselectSearch(LinearSearch, LinearSearchImage)
end;

procedure TMainForm.BinarySearchImageMouseLeave(Sender: TObject);
begin
    UnselectSearch(BinarySearch, BinarySearchImage)
end;

procedure TMainForm.JumpSearchImageMouseLeave(Sender: TObject);
begin
    UnselectSearch(JumpSearch, JumpSearchImage)
end;

procedure TMainForm.InterpolationSearchImageMouseLeave(Sender: TObject);
begin
    UnselectSearch(InterpolationSearch, InterpolationSearchImage)
end;

procedure TMainForm.ExponentionalSearchImageMouseLeave(Sender: TObject);
begin
    UnselectSearch(ExponentionalSearch, ExponentionalSearchImage)
end;

procedure TMainForm.AboutSearchAlghoritmsImageMouseLeave(Sender: TObject);
begin
    UnselectSearch(AboutPanel, AboutSearchAlghoritmsImage)
end;

procedure TMainForm.AboutSearchAlghoritmsImageClick(Sender: TObject);
begin
    AboutForm.ShowModal;
end;

procedure TMainForm.LinearSearchImageClick(Sender: TObject);
begin
    SearchID := 0;
    DiscribeForm.Show;
    MainForm.Hide;
end;

procedure TMainForm.LSImageClick(Sender: TObject);
begin
    SearchID := 0;
    DiscribeForm.Show;
    MainForm.Hide;
end;

procedure TMainForm.BinarySearchImageClick(Sender: TObject);
begin
    SearchID := 1;
    DiscribeForm.Show;
    MainForm.Hide;
end;

procedure TMainForm.BSImageClick(Sender: TObject);
begin
    SearchID := 1;
    DiscribeForm.Show;
    MainForm.Hide;
end;

procedure TMainForm.JumpSearchImageClick(Sender: TObject);
begin
    SearchID := 2;
    DiscribeForm.Show;
    MainForm.Hide;
end;

procedure TMainForm.JSImageClick(Sender: TObject);
begin
    SearchID := 2;
    DiscribeForm.Show;
    MainForm.Hide;
end;

procedure TMainForm.InterpolationSearchImageClick(Sender: TObject);
begin
    SearchID := 3;
    DiscribeForm.Show;
    MainForm.Hide;
end;

procedure TMainForm.ISImageClick(Sender: TObject);
begin
    SearchID := 3;
    DiscribeForm.Show;
    MainForm.Hide;
end;

procedure TMainForm.ExponentionalSearchImageClick(Sender: TObject);
begin
    SearchID := 4;
    DiscribeForm.Show;
    MainForm.Hide;
end;

procedure TMainForm.ESImageClick(Sender: TObject);
begin
    SearchID := 4;
    DiscribeForm.Show;
    MainForm.Hide;
end;
end.
