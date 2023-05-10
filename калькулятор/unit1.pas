unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure ClickButton(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
  private
    { private declarations}
  public
    { private declarations}
  end;

var
  Form1: TForm1;
  a, b, c : Real;
  znak : String;

implementation

{$R *.lfm}

{ TForm1 }
procedure TForm1.ClickZnak(Sender: TObject);
begin
  a :=StrToFloat(Edit1.Text);
  Edit1.Clear;

  znak :=(Sender as TButton).Caption;

end;

procedure TForm1.ClickButton(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;

end;

procedure TForm1.Button22Click(Sender: TObject);
var
  str : String;
begin
  str := Edit1.Text;
  if str <> '' then
  Delete(str, Length(str),1);
  Edit1.Text:=str;
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  b :=StrToFloat(Edit1.Text);
  Edit1.Clear;
  case znak of
  '+' : c := a+b;
  '-' : c := a-b;
  '*' : c := a*b;
  '/' : c := a/b;
  end;
  Edit1.Text:=FloatToStr(c);
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  a := StrToFloat(Edit1.Text);
  a := 1/(a);
  Edit1.Text:=FloatToStr(a);
  a := 0;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  a := StrToFloat(Edit1.Text);
  a :=sqr(a);
  Edit1.Text:=FloatToStr(a);
  a := 0;
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  a := StrToFloat(Edit1.Text);
  a :=sqrt(a);
  Edit1.Text:=FloatToStr(a);
  a := 0;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
   Edit1.Clear;
   a:=0;
   b:=0;
   c:=0;
end;

end.

