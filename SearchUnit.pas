unit SearchUnit;

interface
  uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Math, DemonstrationFormUnit;

  procedure Delay(Value: Cardinal);
  procedure setCellColor(StringGrid:TStringGrid; idx,color:integer;dTime:real);
  procedure LinearSearch(StringGrid:TStringGrid; element:integer);
  procedure BinarySearch(StringGrid:TStringGrid; element:integer);
  procedure JumpSearch(StringGrid:TStringGrid; element:integer);
  procedure InterpolationSearch(StringGrid:TStringGrid; element:integer);
  procedure ExponentionalSearch(StringGrid:TStringGrid; element:integer);
  procedure ExBinarySearch(StringGrid:TStringGrid; left, right, element:integer);
  var kd:real = 1;

implementation

procedure Delay(Value: Cardinal);
  var
    F, N: Cardinal;
  begin
    N := 0;
    while N <= (Value div 10) do
    begin
      SleepEx(1, True);
      Application.ProcessMessages;
      Inc(N);
    end;
    F := GetTickCount;
    repeat
      Application.ProcessMessages;
      N := GetTickCount;
    until (N - F >= (Value mod 10)) or (N < F);
  end;


procedure setCellColor(StringGrid:TStringGrid; idx,color:integer;dTime:real);
begin
  {
    colors:
    1 - default (White),
    2 - selected (Yellow),
    3 - find (Green)
  }
  StringGrid.Rows[0].Objects[idx] := TObject(color);
  Delay(trunc(dTime));
end;

procedure LinearSearch(StringGrid:TStringGrid; element:integer);
begin
for var i := 0 to StringGrid.ColCount-1 do
begin
    if StrToInt(StringGrid.Cells[i, 0]) = element then
      begin
        setCellColor(StringGrid, i, 3, 1000);
        exit;
      end
    else
      begin
        setCellColor(StringGrid, i, 2, 1000);
        setCellColor(StringGrid, i, 1, 0)
      end;
end;
showmessage('Число не найдено')
end;

procedure BinarySearch(StringGrid:TStringGrid; element:integer);
begin
var left :=0;
var right := StringGrid.ColCount-1;
var mid:integer;
while left<=right do
  begin
  mid := left+(right-left) div 2;
    if element = StrToInt(StringGrid.Cells[mid, 0]) then
      begin
        setCellColor(StringGrid, mid, 3, 1000);
        exit;
      end
    else if element < StrToInt(StringGrid.Cells[mid, 0]) then
      begin
        right := mid ;
        setCellColor(StringGrid, mid, 2, 1000);
        setCellColor(StringGrid, mid, 1, 0);
      end
    else if element > StrToInt(StringGrid.Cells[mid, 0]) then
      begin
        left  := mid + 1;
        setCellColor(StringGrid, mid, 2, 1000);
        setCellColor(StringGrid, mid, 1, 0);
      end
  end;
end;

procedure JumpSearch(StringGrid:TStringGrid; element:integer);
begin
  var high := StringGrid.ColCount-1;
  var jump:integer := floor(sqrt(high));
  var left:integer := 0;
  var right:integer := 0;
  var i:integer := 0;
while (left < high) and (StrToInt(StringGrid.Cells[left, 0]) <= element) do
    begin
    right := min(high-1, left+jump);
    setCellColor(StringGrid, right, 2, 1000);
    setCellColor(StringGrid, right, 1, 0);
      if (StrToInt(StringGrid.Cells[left, 0]) <= element) and (StrToInt(StringGrid.Cells[right, 0]) >= element) then
        break;
    left := left + jump;
    setCellColor(StringGrid, left, 2, 1000);
    setCellColor(StringGrid, left, 1, 0);
    end;
    if (left >= high) or (StrToInt(StringGrid.Cells[left, 0]) > element) then
        exit;
  right := min(high-1, right);
  setCellColor(StringGrid, right, 2, 1000);
  setCellColor(StringGrid, right, 1, 0);
  i := left;
  while (i <= right) and (StrToInt(StringGrid.Cells[i, 0]) <=  element) do
    begin
      if  StrToInt(StringGrid.Cells[i, 0]) = element then
      begin
        setCellColor(StringGrid, i, 3, 1000);
        exit;
      end;
      setCellColor(StringGrid, i, 2, 1000);
      setCellColor(StringGrid, i, 1, 0);
      i:=i+1;
    end;
showmessage('Число не найдено')
end;

procedure ExBinarySearch(StringGrid:TStringGrid; left, right, element:integer);
begin
if left > right then
begin
  showmessage('Число не найдено');
  exit;
end;

var mid := left+(right-left) div 2;
setCellColor(StringGrid, mid, 2, 1000);
setCellColor(StringGrid, mid, 1, 0);

if element = StrToInt(StringGrid.Cells[mid, 0]) then
  begin
    setCellColor(StringGrid, mid, 3, 1000);
    exit
  end

else if StrToInt(StringGrid.Cells[mid, 0]) > element  then
    ExBinarySearch(StringGrid, left, mid - 1, element)
else
    ExBinarySearch(StringGrid, mid + 1, right, element);
end;

procedure ExponentionalSearch(StringGrid:TStringGrid; element:integer);
begin
var bound := 1;
var high := StringGrid.ColCount-1;

while (bound < high) and (StrToInt(StringGrid.Cells[bound, 0]) < element) do
begin
    bound := bound * 2;
    setCellColor(StringGrid, bound, 2, 1000);
    setCellColor(StringGrid, bound, 1, 0);
end;
    ExBinarySearch(StringGrid, bound div 2, min(bound, high), element)
end;

procedure InterpolationSearch(StringGrid:TStringGrid; element:integer);
begin
var low := 0;
var high := StringGrid.ColCount-1;
var index: integer;
var a := StrToInt(StringGrid.Cells[low, 0]);
var b := StrToInt(StringGrid.Cells[high, 0]);
while (low <= high) and (StrToInt(StringGrid.Cells[low, 0]) <= element) and (StrToInt(StringGrid.Cells[high, 0]) >= element) do
  begin
  index := low + floor((((high-low)/ (b - a)) * (element - a)));
  if StrToInt(StringGrid.Cells[index, 0]) = element then
    begin
      setCellColor(StringGrid, index, 3, 1000);
      exit;
    end;
  if StrToInt(StringGrid.Cells[index, 0]) < element  then
    begin
      low := index + 1;
      setCellColor(StringGrid, low, 2, 1000);
      setCellColor(StringGrid, low, 1, 0);
    end
  else
    begin
      high := index - 1;
      setCellColor(StringGrid, high, 2, 1000);
      setCellColor(StringGrid, high, 1, 0);
    end;
  end;
showmessage('Число не найдено')
end;

end.
