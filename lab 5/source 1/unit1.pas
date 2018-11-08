unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);

var
  x, y: real;
  n: byte;
begin
  x := StrToFloat(Edit1.Text);
  Label2.Caption := 'Вы ввели x=' + FloatToStr(x);

  if (x <> -10) and (x <= 0) then
  begin
    y := sqr(x);
    n := 1;
  end
  else
  if (x > 1) then
  begin
    y := sqrt(x + 1);
    n := 2;
  end
  else
  begin
    y := 1 / x;
    n := 3;
  end;
  Memo2.Lines.Add('x=' + FloatToStr(x) + ' y=' + FloatToStr(y) +
    ' номер формулы=' + IntToStr(n));
end;

end.


