unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
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
  a, b, x, y: real;

begin
  a := StrToFloat(Edit1.Text);
  b := StrToFloat(Edit2.Text);

  if (a > b) then
  begin
    x := a * b * 2;
    y := (a + b) / 2;
  end
  else
  begin
    x := (a + b) / 2;
    y := a * b * 2;
  end;

  Memo1.Lines.Add('a=' + FloatToStr(a) + ' b=' + FloatToStr(b) +
    '  >>  a=' + FloatToStr(x) + ' b=' + FloatToStr(y));

end;

end.
