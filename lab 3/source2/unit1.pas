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
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
  x, y, z: real;
begin
  x:= StrToFloat(Edit1.Text);
  y:= StrToFloat(Edit2.Text);

  Label4.Caption:= 'Вы ввели x=' + FloatToStr(x) + ' y=' + FloatToStr(y);
  z:= x+y;

  Edit3.Text:= FloatToStr(z);
end;

end.

