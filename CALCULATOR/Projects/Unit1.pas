unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,jpeg, StdCtrls, Buttons, ComCtrls;

type
  TForm1 = class(TForm)
    fon: TImage;
    a: TEdit;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    b: TEdit;
    c: TEdit;
    ce: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ceClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x,y,z:longint;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
fon.width:=1280;
fon.height:=1024;
fon.Picture.loadfromfile('fon.jpg');
a.top:=512-(a.Height div 2);
b.Top:=512-(b.height div 2);
a.left:=50;
b.Left:=50+a.Width+60+combobox1.Width;
combobox1.left:=  50+a.Width+30;
combobox1.Top:=512-(combobox1.height div 2);
bitbtn1.height:=a.height;
bitbtn1.width:=100;
bitbtn1.Top:=512-(a.Height div 2);
bitbtn1.Left:= 50+2*a.Width+90+combobox1.Width;
bitbtn1.ControlState := [csFocusing];
ce.ControlState := [csFocusing];
combobox1.items.add('+');
combobox1.items.add('-');
combobox1.items.add('*');
combobox1.items.add('/');
c.Top:=a.top;
c.Left:=bitbtn1.Left+30+bitbtn1.Width;
ce.top:=512-50;
ce.Left:=c.left+c.width+40;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
case combobox1.ItemIndex of
0:
begin
x:=strtoint(a.Text);
y:=strtoint(b.text);
z:=x+y;
c.text:=inttostr(z);
end;
1:
begin
x:=strtoint(a.Text);
y:=strtoint(b.text);
z:=x-y;
c.text:=inttostr(z);
end;
2:
begin
x:=strtoint(a.Text);
y:=strtoint(b.text);
z:=x*y;
c.text:=inttostr(z);
end;
3:
begin
x:=strtoint(a.Text);
y:=strtoint(b.text);
z:=x div y;
c.text:=inttostr(z);
end;

end;
end;

procedure TForm1.ceClick(Sender: TObject);
begin
a.Text:='0';
b.text:='0';
c.text:='0';
combobox1.Text:='';
end;

end.
