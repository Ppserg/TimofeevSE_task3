program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
  TArray = array[0..9] of integer;

//�������� ������������ ��������
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

//�������� ���������
var
  MyArray: TArray;
  Value, i: integer;
begin
  //���� �������� �������
  for i := 1 to 10 do
    Readln(MyArray[i-1]);

  //���� �������� ��������
  Readln(Value);

  If IsUnique(MyArray, Value) Then
  Writeln('False')
  else Writeln('True');

  readln;
end.
