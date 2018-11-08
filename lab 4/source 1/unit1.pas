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
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var a,h,s,ya:real;
begin
   a:=StrToFloat(Edit1.Text);
   h:=StrToFloat(Edit2.Text);

   Label5.Caption:='Вы ввели h='+FloatToStr(h)+'  a='+FloatToStr(a);

   s:=(a*h)/2;
   Edit3.Text:=FloatToStr(s);

   ya:=arctan(2*h/a)/pi*180;
   Edit4.Text:=FloatToStr(ya);
end;

end.

