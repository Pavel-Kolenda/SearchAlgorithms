unit DesignUnit;

interface
  uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.WinXPickers, Vcl.Imaging.pngimage;

procedure selectMainMenu(Panel:TPanel; SelectInd:TShape);
procedure UnselectMainMenu(Panel:TPanel; SelectInd:TShape);
procedure selectSearch(Panel:TPanel; Image:TImage);
procedure UnselectSearch(Panel:TPanel; Image:TImage);
procedure UnselectButton(Panel:TPanel);
procedure selectButton(Panel:TPanel);
implementation

uses Main_FormUnit;

procedure selectMainMenu(Panel:TPanel; SelectInd:TShape);
begin
    Panel.Color:=$a7a7a7;
    SelectInd.Visible:=true;
    SelectInd.Brush.Color:=$717171;
end;
procedure UnselectMainMenu(Panel:TPanel; SelectInd:TShape);
begin
    Panel.Color:=$d9d9d9;
    SelectInd.Visible:=false;
end;

procedure selectSearch(Panel:TPanel; Image:TImage);
begin
    Screen.Cursor:=crHandPoint;
    Panel.Color:=$d5d5d5;
end;

procedure UnselectSearch(Panel:TPanel; Image:TImage);
begin
    Panel.Color:=$d9d9d9;
    Screen.Cursor:=crDefault;
end;

procedure selectButton(Panel:TPanel);
begin
    Screen.Cursor:=crHandPoint;
    Panel.Color:=$d5d5d5;
end;

procedure UnselectButton(Panel:TPanel);
begin
    Panel.Color:=$d9d9d9;
    Screen.Cursor:=crDefault;
end;


end.
