program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
  TArray = array[0..9] of integer;

//Проверка уникальности элемента
function IsUnique(Arr: TArray; Const Value: Integer): Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 0 to Length(Arr) - 1 do
  begin
    If Arr[I] = Value Then
    begin
      Result := False;
      break;
    end;
  end;
end;

//Основная программа
var
  MyArray: TArray;
  Value, i: integer;
begin
  //Ввод значений массива
  for i := 1 to 10 do
    MyArray[i-1] := i;

  //Ввод искомого значения
  Value := 10;

  If IsUnique(MyArray, Value) Then
  Writeln('False')
  else Writeln('True');

  readln;
end.
