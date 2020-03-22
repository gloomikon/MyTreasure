unit MAN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,pngimage,JPEG, ComCtrls;

type
  TForm1 = class(TForm)
    BClose: TBitBtn;
    BMore: TBitBtn;
    btn1: TButton;
    btn2: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button5: TButton;
    UpDown1: TUpDown;
    Edit1: TEdit;
    Button6: TButton;
    Timer1: TTimer;
    Image1: TImage;
    Label3: TLabel;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Timer2: TTimer;
    Label4: TLabel;
    Image2: TImage;
    Button10: TButton;
    procedure BCloseClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BMoreClick(Sender: TObject);
    procedure button5Click(Sender: TObject);
    procedure button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure vremya1(Sender: TObject);
        procedure vremya2(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);





  
  private
    { Private declarations }
    procedure RunTimeSpeedButtonClick(Sender: TObject);
    procedure RTimeSpeedButtonClick(Sender: TObject);
  public
    { Public declarations }
    index:integer;
  end;




var
  Form1: TForm1;
  button:array[1..112] of TSpeedButton;
  P:array[1..7] of TImage;
  G:array[1..18] of TImage;
  V:array[1..10] of TImage;
  Kar:array[1..112] of TImage;
      nazva:array[1..112] of string;
  Image1,information,imla,imac,im1lan,im1act,ramka,elementi:TImage;
  i,x,k,chas,e,k1,vrs,vrm,a,b,razmer:Integer;
  f,f1,f2,f3,f4,f5,f6:boolean;
  result:real;
implementation

uses Unit2;

{$R *.dfm}
procedure TForm1.RunTimeSpeedButtonClick(Sender: TObject);
begin
if not f then
 begin
   index:=  (Sender as TSpeedButton).Tag;
   if not Assigned(information) then
    begin
      information:=TImage.Create (Form1);
      information.Parent:=Form1;
    end;
   information.left:=button[4].left+button[4].width+10;
   information.top:=button[1].top;
   information.width:=10*button[1].width-20;
   information.height:=round(140*information.width/800);
   if (information.width>800) and (information.Height>140 )then
    begin
    information.Height:=140;
    information.width:=800;
    information.left:= (10*button[1].width-800 )div 2+button[21].left;
    information.top:=button[21].Top-200;
    end;
   information.stretch:=true;
   information.Picture.LoadFromFile('in'+IntToStr((Sender as TSpeedButton).Tag)+'.bmp');
   information.Visible:=True;
   BClose.Visible:=True;
   Bmore.Top:=information.Top;
   BClose.Left:=  information.left+information.Width-24;
   bmore.Left:=bclose.left-bmore.Width;
   BClose.Top:=information.Top;
BMore.Visible:=True;
end else begin
if  (Sender as TSpeedButton).Tag=e then dec(k1);
f3:=false;
if f4 then Button6Click(Form1) else button8Click(Form1);
 end;
 end;
 procedure TForm1.RTimeSpeedButtonClick(Sender: TObject);
begin
if not f then
 begin
    index:=(Sender as TSpeedButton).Tag;
    if not Assigned(information) then
    begin
      information:=TImage.Create (Form1);
      information.Parent:=Form1;
    end;
   information.left:=button[4].left;
   information.top:=10;
   information.width:=8*button[1].Width;
   information.height:=round((8*button[1].Width)*140/800);
   if information.height+information.top>=g[1].top then
    begin
    information.Height:=140;
    information.Width:=800;
    end;
   information.stretch:=true;
  information.Picture.LoadFromFile('in'+IntToStr((Sender as TSpeedButton).Tag)+'.bmp');
   information.Visible:=True;
   BClose.Visible:=True;
BMore.Visible:=True;
   Bmore.Top:=information.Top;
   BClose.Left:=  information.left+information.Width-24;
   BClose.Top:=information.Top;
   BMore.Left:=bclose.Left-bmore.width;
end else begin
if  (Sender as TSpeedButton).Tag=e then dec(k1);
f3:=false;
if f4 then Button7Click(Form1) else Button9Click(Form1);
end;
 end;

procedure TForm1.BCloseClick(Sender: TObject);
begin
information.Visible:=false;
BClose.Visible:=False;
BMore.Visible:=False;
end;
procedure TForm1.button3Click(Sender: TObject);
begin
f6:=true;
label1.visible:=false;
 label2.Visible:=false;
 f:=true;
 button10.visible:=true;
 f3:=true;
 edit1.text:=inttostr(2);
 label3.Font.size:=35;
 label4.Font.size:=35;
 updown1.min:=2;
 updown1.max:=100;
 btn1.visible:=false;
 btn2.visible:=false;
 button1.visible:=false;
 button2.visible:=false;
 button3.visible:=false;
 button4.visible:=false;
 button5.visible:=false;
 button7.visible:=true;
 edit1.Visible:=true;
 updown1.visible:=true;
 label3.caption:='Введіть кількість елементів, яку ви'+#10#13+'хочете знайти та натисніть кпопку.';
label3.left:=(a-label3.Width-edit1.width-updown1.Width) div 2;
 label3.Top:=(b-label3.Height) div 2;
 edit1.left:=label3.left+label3.Width;
 edit1.Top:=(b-edit1.Height) div 2;
 updown1.Left:=edit1.Left+edit1.width;
 updown1.Top:=(b-edit1.Height) div 2;
 button7.Top:=(b-edit1.Height) div 2;
 button7.Height:=updown1.height;
 button7.Left:=updown1.Left+updown1.width;
 label3.visible:=true;
 image2.visible:=false;
 razmer:=35;
 while button7.Left+button7.width>=a do
  begin
  dec(razmer);
  label3.font.size:=razmer;
   label3.left:=(a-label3.Width-edit1.width-updown1.Width) div 2;
 label3.Top:=(b-label3.Height) div 2;
 edit1.left:=label3.left+label3.Width;
 edit1.Top:=(b-edit1.Height) div 2;
 updown1.Left:=edit1.Left+edit1.width;
 button7.Top:=(b-edit1.Height) div 2;
 button7.Height:=updown1.height;
 button7.Left:=updown1.Left+updown1.width;
 end;
end;

procedure TForm1.vremya1(Sender: TObject);
 begin
 button10.visible:=true;
 image2.visible:=false;
 label3.Font.size:=35;
 label4.Font.size:=35;
 f6:=true;
 label1.visible:=false;
 label2.Visible:=false;
 f:=true;
 f3:=true;
 edit1.text:=inttostr(1);
 updown1.min:=1;
 updown1.max:=10;
 btn1.visible:=false;
 btn2.visible:=false;
 button1.visible:=false;
 button2.visible:=false;
 button3.visible:=false;
 button4.visible:=false;
 button5.visible:=false;
 button8.visible:=true;
 edit1.Visible:=true;
 updown1.visible:=true;
 label3.caption:='Введіть час у хвилинах, протягом'+#10#13+'якого ви б хотіли грати.';
 label3.left:=(a-label3.Width-edit1.width-updown1.Width) div 2;
 label3.Top:=(b-label3.Height) div 2;
 edit1.left:=label3.left+label3.Width;
 edit1.Top:=(b-edit1.Height) div 2;
 updown1.Left:=edit1.Left+edit1.width;
 updown1.Top:=(b-updown1.Height) div 2;
  button8.Height:=updown1.height;
 button8.Top:=(b-button8.Height)div 2;
 button8.Left:=updown1.Left+updown1.Width;
 label3.visible:=true;
  razmer:=35;
 while button6.Left+button6.width>=a do
  begin
  dec(razmer);
  label3.font.size:=razmer;
   label3.left:=(a-label3.Width-edit1.width-updown1.Width) div 2;
 label3.Top:=(b-label3.Height) div 2;
 edit1.left:=label3.left+label3.Width;
 edit1.Top:=(b-edit1.Height) div 2;
 updown1.Left:=edit1.Left+edit1.width;
 updown1.Top:=(b-edit1.Height) div 2;
 button6.Top:=(b-edit1.Height) div 2;
 button6.Height:=updown1.height;
 button6.Left:=updown1.Left+updown1.width;
 end;
 end;

procedure TForm1.vremya2(Sender: TObject);
 begin
 f6:=true;
 label1.visible:=false;
 label2.Visible:=false;
 f:=true;
 f3:=true;
 label3.Font.size:=35;
 label4.Font.size:=35;
 edit1.text:=inttostr(1);
 updown1.min:=1;
 updown1.max:=10;
 btn1.visible:=false;
 btn2.visible:=false;
 button1.visible:=false;
 button2.visible:=false;
 button3.visible:=false;
 button4.visible:=false;
 button10.visible:=true;
 button5.visible:=false;
 button9.visible:=true;
 edit1.Visible:=true;
 updown1.visible:=true;
 label3.caption:='Введіть час у хвилинах, протягом'+#10#13+'якого ви б хотіли грати.';
 label3.left:=(a-label3.Width-edit1.width-updown1.Width) div 2;
 label3.Top:=(b-label3.Height) div 2;
 edit1.left:=label3.left+label3.Width;
 edit1.Top:=(b-edit1.Height) div 2;
 updown1.Left:=edit1.Left+edit1.width;
 image2.visible:=false;
 updown1.Top:=(b-updown1.Height) div 2;
  button9.Height:=updown1.height;
 button9.Top:=(b-button9.Height)div 2;
 button9.Left:=updown1.Left+updown1.Width;
 label3.visible:=true;
  razmer:=35;
 while button9.Left+button9.width>=a do
  begin
  dec(razmer);
  label3.font.size:=razmer;
   label3.left:=(a-label3.Width-edit1.width-updown1.Width) div 2;
 label3.Top:=(b-label3.Height) div 2;
 edit1.left:=label3.left+label3.Width;
 edit1.Top:=(b-edit1.Height) div 2;
 updown1.Left:=edit1.Left+edit1.width;
 updown1.Top:=(b-edit1.Height) div 2;
 button9.Top:=(b-edit1.Height) div 2;
 button9.Height:=updown1.height;
 button9.Left:=updown1.Left+updown1.width;
 end;
 end;
 procedure TForm1.button2Click(Sender: TObject);
 begin
 button10.visible:=true;
 image2.visible:=false;
  label3.Font.size:=35;
 label4.Font.size:=35;
 f6:=true;
 label1.visible:=false;
 label2.Visible:=false;
 f:=true;
 f3:=true;
 edit1.text:=inttostr(2);
 updown1.min:=2;
 updown1.max:=100;
 btn1.visible:=false;
 btn2.visible:=false;
 button1.visible:=false;
 button2.visible:=false;
 button3.visible:=false;
 button4.visible:=false;
 button5.visible:=false;
 button6.visible:=true;
 edit1.Visible:=true;
 updown1.visible:=true;

 label3.caption:='Введіть кількість елементів, яку ви'+#10#13+'хочете знайти та натисніть кпопку.';
 label3.left:=(a-label3.Width-edit1.width-updown1.Width) div 2;
 label3.Top:=(b-label3.Height) div 2;
 edit1.left:=label3.left+label3.Width;
 edit1.Top:=(b-edit1.Height) div 2;
 updown1.Left:=edit1.Left+edit1.width;
 updown1.Top:=(b-edit1.Height) div 2;
 button6.Top:=(b-edit1.Height) div 2;
 button6.Height:=updown1.height;
 button6.Left:=updown1.Left+updown1.width;
 label3.visible:=true;
 razmer:=35;
 while button6.Left+button6.width>=a do
  begin
  dec(razmer);
  label3.font.size:=razmer;
   label3.left:=(a-label3.Width-edit1.width-updown1.Width) div 2;
 label3.Top:=(b-label3.Height) div 2;
 edit1.left:=label3.left+label3.Width;
 edit1.Top:=(b-edit1.Height) div 2;
 updown1.Left:=edit1.Left+edit1.width;
 updown1.Top:=(b-edit1.Height) div 2;
 button6.Top:=(b-edit1.Height) div 2;
 button6.Height:=updown1.height;
 button6.Left:=updown1.Left+updown1.width;
 end;
 end;




procedure TForm1.button5Click(Sender: TObject);
begin
close;
end;
procedure TForm1.btn1Click(Sender: TObject);
begin
image2.visible:=false;
label1.visible:=false;
label2.Visible:=false;
btn1.visible:=false;
btn2.visible:=false;
button1.Visible:=false;
button2.Visible:=false;
button3.Visible:=false;
button4.Visible:=false;
button5.Visible:=false;
button10.visible:=true;


  if Assigned(ramka) then ramka.Visible:=False;
  if Assigned(elementi) then elementi.Visible:=false;
for i:=1 to 112 do
 begin
   if not Assigned(button[i]) then
begin
button[i]:=TSpeedButton.Create(Form1);
button[i].Parent:=Form1;
end else button[i].Visible:=True;
if not Assigned(kar[i]) then
begin
kar[i]:=TImage.Create(Form1);
kar[i].Parent:=Form1;
end else kar[i].Visible:=True;
 end;
 for i:=1 to 7 do
  if not Assigned(p[i]) then
begin
p[i]:=TImage.Create(Form1);
p[i].Parent:=Form1;
end else p[i].Visible:=True;

for i:=1 to 18 do
  if not Assigned(g[i]) then
begin
g[i]:=TImage.Create(Form1);
g[i].Parent:=Form1;
end else g[i].Visible:=True;
for i:=1 to 10 do
  if not Assigned(v[i]) then
begin
v[i]:=TImage.Create(Form1);
v[i].Parent:=Form1;
end else v[i].Visible:=True;


  f:=false;
bclose.ControlState := [csFocusing];
BMore.ControlState := [csFocusing];
BClose.Visible:=False;
BMore.Visible:=False;










button[1].Left:=50;
button[1].Top:=150;
button[1].Height:=(b-250)div 9;
button[1].Width:=(a-100) div 18;
button[1].Visible:=True;
button[1].Cursor:=crHandPoint;


button[2].Left:=button[1].Left+17*button[1].Width;
button[2].Top:=150;
button[2].Height:=button[1].height;
button[2].Width:=button[1].Width;
button[2].Visible:=True;
button[2].Cursor:=crHandPoint;


button[3].Left:=50;
button[3].Top:=150+button[1].height;
button[3].Height:=button[1].height;
button[3].Width:=button[1].Width;
button[3].Visible:=True;
button[3].Cursor:=crHandPoint;


button[4].Left:=50+button[1].Width;
button[4].Top:=150+button[1].height;
button[4].Height:=button[1].height;
button[4].Width:=button[1].Width;
button[4].Visible:=True;
button[4].Cursor:=crHandPoint;

button[5].Left:=50+12*button[1].Width;
button[5].Top:=150+button[1].height;
button[5].Height:=button[1].height;
button[5].Width:=button[1].Width;
button[5].Visible:=True;
button[5].Cursor:=crHandPoint;
for i:=6 to 10 do
 begin
button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;
button[i].Cursor:=crHandPoint;
 end;


button[11].Left:=50;
button[11].Top:=150+2*button[1].height;
button[11].Height:=button[1].height;
button[11].Width:=button[1].Width;
button[11].Visible:=True;
button[11].Cursor:=crHandPoint;


button[12].Left:=50+button[1].Width;
button[12].Top:=150+2*button[1].height;
button[12].Height:=button[1].height;
button[12].Width:=button[1].Width;
button[12].Visible:=True;
button[12].Cursor:=crHandPoint;


button[13].Left:=50+12*button[1].Width;
button[13].Top:=150+2*button[1].height;
button[13].Height:=button[1].height;
button[13].Width:=button[1].Width;
button[13].Visible:=True;
button[13].Cursor:=crHandPoint;

  for i:=14 to 18 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+2*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;
button[i].Cursor:=crHandPoint;
 end;


button[19].Left:=50;
button[19].Top:=150+3*button[1].height;
button[19].Height:=button[1].height;
button[19].Width:=button[1].Width;
button[19].Visible:=True;
button[19].Cursor:=crHandPoint;

for i:=20 to 36 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+3*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;


button[37].Left:=50;
button[37].Top:=150+4*button[1].height;
button[37].Height:=button[1].height;
button[37].Width:=button[1].Width;
button[37].Visible:=True;

button[37].Cursor:=crHandPoint;

for i:=38 to 54 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+4*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;


button[55].Left:=50;
button[55].Top:=150+5*button[1].height;
button[55].Height:=button[1].height;
button[55].Width:=button[1].Width;
button[55].Visible:=True;
button[55].Cursor:=crHandPoint;


button[56].Left:=50+button[1].Width;
button[56].Top:=150+5*button[1].height;
button[56].Height:=button[1].height;
button[56].Width:=button[1].Width;
button[56].Visible:=True;
button[56].Cursor:=crHandPoint;


button[72].Left:=50+3*button[1].Width;
button[72].Top:=150+5*button[1].height;
button[72].Height:=button[1].height;
button[72].Width:=button[1].Width;
button[72].Visible:=True;
button[72].Cursor:=crHandPoint;
for i:=73 to 86 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+5*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;

button[87].Left:=50;
button[87].Top:=150+6*button[1].height;
button[87].Height:=button[1].height;
button[87].Width:=button[1].Width;
button[87].Visible:=True;
button[87].Cursor:=crHandPoint;

button[88].Left:=50+button[1].Width ;
button[88].Top:=150+6*button[1].height;
button[88].Height:=button[1].height;
button[88].Width:=button[1].Width;
button[88].Visible:=True;
button[88].Cursor:=crHandPoint;

button[104].Left:=50+3*button[1].Width;
button[104].Top:=150+6*button[1].height;
button[104].Height:=button[1].height;
button[104].Width:=button[1].Width;
button[104].Visible:=True;
button[104].Cursor:=crHandPoint;
for i:=105 to 112 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+6*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;

button[57].Left:=50+3*button[1].Width;
button[57].Top:=160+7*button[1].height;
button[57].Height:=button[1].height;
button[57].Width:=button[1].Width;
button[57].Visible:=True;
button[57].Cursor:=crHandPoint;

button[89].Left:=50+3*button[1].Width;
button[89].Top:=160+8*button[1].height;
button[89].Height:=button[1].height;
button[89].Width:=button[1].Width;
button[89].Visible:=True;
button[89].Cursor:=crHandPoint;
for i:=58 to 71 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=160+7*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;
 for i:=90 to 103 do
 begin
button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=160+8*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;

 //Image1.Picture.LoadFromFile('fon.png');

 G[1].Picture.LoadFromFile('g1.bmp');
G[1].Left:=50;
G[1].Top:=button[1].Top-30;
G[1].Height:=30;
G[1].Width:=button[1].Width;
g[1].Stretch:=true;
g[1].stretch:=true;


V[1].Picture.LoadFromFile('v1.bmp');
V[1].Left:=100;
V[1].Top:=30;
V[1].Height:=90;
V[1].Width:=(a-200) div 10;
v[1].stretch:=true;

for i:=2 to 10 do
 begin
V[i].Picture.LoadFromFile('v'+inttostr(i)+'.bmp');
V[i].Left:=v[i-1].Left+(a-200) div 10;;
V[i].Top:=30;
v[i].Height:=90;
v[i].Width:=v[1].width;
v[i].stretch:=true;
 end;

G[2].Picture.LoadFromFile('g2.bmp');
G[2].Left:=50+button[1].Width;
G[2].Top:=button[4].top-30;
G[2].Height:=30;
G[2].Width:=button[1].Width;
g[2].stretch:=true;


G[3].Picture.LoadFromFile('g3.bmp');
G[3].Left:=50+2*button[1].Width;
G[3].Top:=button[21].Top-30;
G[3].Height:=30;
G[3].Width:=button[1].Width;
g[3].stretch:=true;

for i:=4 to 12 do
 begin
G[i].Picture.LoadFromFile('g'+inttostr(i)+'.bmp');
G[i].Left:=G[i-1].Left+button[1].Width;
G[i].Top:=button[21].top-30;
G[i].Height:=30;
G[i].Width:=button[1].Width;
g[i].stretch:=true;
 end;

G[13].Picture.LoadFromFile('g13.bmp');
G[13].Left:=50+12*button[1].Width;
G[13].Top:=button[5].Top-30;
G[13].Height:=30;
G[13].Width:=button[1].width;
g[13].stretch:=true;

 for i:=14 to 17 do
 begin

G[i].Picture.LoadFromFile('g'+inttostr(i)+'.bmp');
G[i].Left:=G[i-1].Left+button[1].Width;
G[i].Top:=button[5].top-30;
G[i].Height:=30;
G[i].Width:=button[1].Width;
g[i].stretch:=true;
 end;


G[18].Picture.LoadFromFile('g18.bmp');
G[18].Left:=50+17*button[1].Width;
G[18].Top:=button[2].top-30;
G[18].Height:=30;
G[18].Width:=button[1].width;
g[18].stretch:=true;


P[1].Picture.LoadFromFile('p1.bmp');
P[1].Left:=button[1].Left-30;
P[1].Top:=button[1].top;
P[1].Height:=button[1].height;
P[1].Width:=30;
p[1].stretch:=true;


for i:=2 to 7 do
begin

P[i].Picture.LoadFromFile('p'+inttostr(i)+'.bmp');
P[i].Left:=button[1].left-30;
P[i].Top:=P[i-1].Top+button[1].height;
P[i].Height:=button[1].height;
p[i].stretch:=true;
P[i].Width:=30;
end;

  if not Assigned(im1lan) then
 begin
im1lan:=TImage.Create (Form1);
im1lan.Parent:=Form1;
end else im1lan.Visible:=true;
 im1lan.Left:=50;
im1lan.Top:=button[57].top;
im1lan.Height:=button[1].height;
im1lan.stretch:=true;
Im1lan.Width:=3*button[1].width;

 if not Assigned(im1act) then
 begin
im1act:=TImage.Create (Form1);
im1act.Parent:=Form1;
end else im1act.Visible:=true;
 im1act.Left:=50;
 im1act.stretch:=true;
im1act.Top:=button[89].top;
im1act.Height:=button[1].height;
Im1act.Width:=3*button[1].width;

 if not Assigned(imla) then
 begin
imla:=TImage.Create (Form1);
imla.Parent:=Form1;
end else imla.Visible:=true;
 imla.Left:=50+2*button[1].width;
imla.Top:=button[56].top;
imla.Height:=button[1].height;
imla.Stretch:=true;
Imla.Width:=button[1].width;

if not Assigned(imac) then
 begin
imac:=TImage.Create (Form1);
imac.Parent:=Form1;
end else imac.Visible:=true;
 imac.Left:=50+2*button[1].width;
imac.Top:=button[88].top;
imac.stretch:=true;
imac.Height:=button[1].Height;
Imac.Width:=button[1].width;

   for i:=1 to 112 do
  begin
kar[i].Picture.LoadFromFile(inttostr(i)+'.bmp');
kar[i].Stretch:=true;
kar[i].Left:=Button[i].Left;
kar[i].Top:=Button[i].top;
kar[i].Height:=Button[i].Height;;
Kar[i].Width:=Button[i].width;
kar[i].Visible:=True;
kar[i].Cursor:=crHandPoint;
  end;

 for i:=1 to 112 do
 with button[i] do
  begin
    BringToFront;
    flat:=True;
 Tag := i;
 ControlState := [csFocusing];
 OnClick := RunTimeSpeedButtonClick;

 end;

  imla.Picture.LoadFromFile('lan.bmp');
  imac.Picture.LoadFromFile('act.bmp');
  im1lan.Picture.LoadFromFile('1lan.bmp');
  im1act.Picture.LoadFromFile('1act.bmp');
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
label1.visible:=false;
label2.Visible:=false;
btn1.visible:=false;
btn2.visible:=false;
button1.Visible:=false;
button2.Visible:=false;
button3.Visible:=false;
button4.Visible:=false;
button5.Visible:=false;
button10.visible:=true;
image2.Visible:=false;
  if Assigned(imla) then imla.Visible:=False;
  if Assigned(imac) then imac.Visible:=False;
  if Assigned(im1lan) then im1lan.Visible:=False;
  if Assigned(im1act) then im1act.Visible:=False;

  for i:=1 to 112 do
 begin
   if not Assigned(button[i]) then
begin
button[i]:=TSpeedButton.Create(Form1);
button[i].Parent:=Form1;
end else button[i].Visible:=True;
if not Assigned(kar[i]) then
begin
kar[i]:=TImage.Create(Form1);
kar[i].Parent:=Form1;
end else kar[i].Visible:=True;
 end;
 for i:=1 to 7 do
  if not Assigned(p[i]) then
begin
p[i]:=TImage.Create(Form1);
p[i].Parent:=Form1;
end else p[i].Visible:=True;
 for i:=9 to 18 do
     if Assigned(g[i]) then g[i].Visible:=False;

for i:=1 to 8 do
  if not Assigned(g[i]) then
begin
g[i]:=TImage.Create(Form1);
g[i].Parent:=Form1;
end else g[i].Visible:=True;
for i:=1 to 10 do
     if Assigned(v[i]) then v[i].Visible:=False;
  f:=false;
bclose.ControlState := [csFocusing];
BMore.ControlState := [csFocusing];
BClose.Visible:=False;
BMore.Visible:=False;




button[1].Left:=90;
button[1].Top:=205;
button[1].Height:=(b-140-45-30) div 13;
button[1].Width:=(a-100) div 14;
button[1].Visible:=True;
button[1].Cursor:=crHandPoint;

button[2].Left:=button[1].left+7*button[1].width;;
button[2].Top:=button[1].top;
button[2].Height:=button[1].height;
button[2].Width:=button[1].Width;
button[2].Visible:=True;
button[2].Cursor:=crHandPoint;

button[3].Left:=button[1].left;
button[3].Top:=button[1].top+button[1].height;
button[3].Height:=button[1].height;
button[3].Width:=button[1].width;
button[3].Visible:=True;
button[3].Cursor:=crHandPoint;


if not Assigned(ramka) then
begin
ramka:=TImage.Create(Form1);
ramka.Parent:=Form1;
end else rAMKA.Visible:=True;
ramka.Picture.LoadFromFile('ramka.bmp');
ramka.Left:=Button[1].left;
ramka.Top:=Button[1].top;
ramka.Height:=11*button[1].height;
ramka.Width:=10*button[1].width;
ramka.stretch:=true;



for i:=4 to 10 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[3].Top;;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[11].Left:=button[1].left;
button[11].Top:=button[1].Top+2*button[1].height;
button[11].Height:=button[1].height;
button[11].Width:=button[1].width;
button[11].Visible:=True;
button[11].Cursor:=crHandPoint;
for i:=12 to 18 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[11].Top;;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[19].Left:=button[1].left;
button[19].Top:=button[1].Top+3*button[1].height;
button[19].Height:=button[1].height;
button[19].Width:=button[1].width;
button[19].Visible:=True;
button[19].Cursor:=crHandPoint;
for i:=20 to 28 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[19].Top;;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[29].Left:=button[1].left;
button[29].Top:=button[1].top+4*button[1].height;
button[29].Height:=button[1].height;
button[29].Width:=button[1].width;
button[29].Visible:=True;
button[29].Cursor:=crHandPoint;
for i:=30 to 36 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[29].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;

button[37].Left:=button[1].left;
button[37].Top:=button[1].Top+5*button[1].height;
button[37].Height:=button[1].height;
button[37].Width:=button[1].width;
button[37].Visible:=True;
button[37].Cursor:=crHandPoint;
for i:=38 to 46 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[37].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;

button[47].Left:=button[1].left;
button[47].Top:=button[1].top+6*button[1].height;
button[47].Height:=button[1].height;
button[47].Width:=button[1].width;
button[47].Visible:=True;
button[47].Cursor:=crHandPoint;
for i:=48 to 54 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[47].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[55].Left:=button[1].left;
button[55].Top:=button[1].Top+7*button[1].height;
button[55].Height:=button[1].height;
button[55].Width:=button[1].width;
button[55].Visible:=True;
button[55].Cursor:=crHandPoint;
for i:=56 to 57 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[55].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[72].Left:=Button[57].Left+button[1].width;
button[72].Top:=Button[56].Top;
button[72].Height:=button[1].height;
button[72].Width:=button[1].width;
button[72].Visible:=True;
button[72].Cursor:=crHandPoint;
for i:=73 to 78 do
 begin
button[i].Parent:=Form1;
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[72].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[79].Left:=button[1].left;
button[79].Top:=button[1].Top+8*button[1].height;
button[79].Height:=button[1].height;
button[79].Width:=button[1].width;
button[79].Visible:=True;
button[79].Cursor:=crHandPoint;
for i:=80 to 86 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[79].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[87].Left:=button[1].left;
button[87].Top:=button[1].top+9*button[1].height;
button[87].Height:=button[1].height;
button[87].Width:=button[1].width;
button[87].Visible:=True;
button[87].Cursor:=crHandPoint;
for i:=88 to 89 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[87].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;

button[104].Left:=Button[89].left+button[1].width;
button[104].Top:=button[89].top;
button[104].Height:=button[1].height;
button[104].Width:=button[1].width;
button[104].Visible:=True;
button[104].Cursor:=crHandPoint;
for i:=105 to 110 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[104].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[111].Left:=button[1].left;
button[111].Top:=button[1].top+10*button[1].height;
button[111].Height:=button[1].height;
button[111].Width:=button[1].width;
button[111].Visible:=True;
button[111].Cursor:=crHandPoint;
for i:=112 to 112 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[111].Top;
button[i].Height:=button[1].height;
button[i].Cursor:=crHandPoint;
button[i].Width:=button[1].width;
 end;

button[58].Left:=Button[87].left;
button[58].Top:=button[1].Top+11*button[1].height+15;
button[58].Height:=button[1].height;
button[58].Width:=button[1].width;
button[58].Visible:=True;
button[58].Cursor:=crHandPoint;
for i:=59 to 71 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[58].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;

button[90].Left:=Button[87].left;
button[90].Top:=button[1].top+12*button[1].height+15;
button[90].Height:=button[1].height;
button[90].Width:=button[1].width;
button[90].Visible:=True;
button[90].Cursor:=crHandPoint;
for i:=91 to 103 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[90].Top;
button[i].Height:=button[1].height;
button[i].Cursor:=crHandPoint;
button[i].Width:=button[1].width;
 end;

  if not Assigned(elementi) then
begin
elementi:=TImage.Create(Form1);
elementi.Parent:=Form1;
end else elementi.Visible:=True;
elementi.Picture.LoadFromFile('element.bmp');
elementi.Left:=Button[78].left+button[1].width+10;
elementi.Height:=round((4*button[1].width-20)*130/500);
elementi.Top:=Button[111].top+button[1].height-elementi.height;

elementi.Stretch:=true;
elementi.Width:=4*button[1].width-20;


G[1].Picture.LoadFromFile('gr1.bmp');
g[1].Left:=90;
g[1].Top:=160;
g[1].Height:=65;
g[1].Width:=button[1].width;
g[1].Visible:=True;
g[1].stretch:=true;
for i:=2 to 7 do
 begin

G[i].Picture.LoadFromFile('gr'+inttostr(i)+'.bmp');
g[i].Left:=g[i-1].Left+button[1].width;
g[i].Top:=160;
g[i].Height:=65;
g[i].Width:=button[1].width;
g[i].stretch:=true;
g[i].Visible:=True;
 end;

 G[8].Picture.LoadFromFile('gr8.bmp');
g[8].Left:=g[7].Left+g[7].Width;
g[8].Top:=160;
g[8].Height:=65;
g[8].Width:=3*button[1].width;
g[8].Visible:=True;
g[8].Stretch:=true;

  P[1].Picture.LoadFromFile('pe1.bmp');
P[1].Left:=button[1].Left-30;
P[1].Top:=205;
P[1].Height:=button[1].height;
P[1].Width:=30;
p[1].stretch:=true;

for i:=2 to 3 do
begin

P[i].Picture.LoadFromFile('pe'+inttostr(i)+'.bmp');
P[i].Left:=button[1].Left-30;
P[i].Top:=P[i-1].Top+button[1].height;
P[i].Height:=button[1].Height;
P[i].Width:=30;
p[i].stretch:=true;
end;
P[4].Picture.LoadFromFile('pe4.bmp');
P[4].Left:=button[1].Left-30;
P[4].Top:=p[3].top+p[3].height;
P[4].Height:=2*button[i].height;
P[4].Width:=30;
p[4].stretch:=true;
for i:=5 to 7 do
begin
P[i].Picture.LoadFromFile('pe'+inttostr(i)+'.bmp');
P[i].Left:=button[1].Left-30;
P[i].Top:=P[i-1].Top+2*button[1].Height;
P[i].Height:=2*button[1].Height;
P[i].Width:=30;
p[i].stretch:=true;
end;


  for i:=1 to 112 do
  begin
kar[i].Left:=Button[i].Left;
kar[i].Top:=Button[i].top;
kar[i].Picture.LoadFromFile('e'+inttostr(i)+'.bmp');
kar[i].Height:=Button[i].Height;;
Kar[i].Width:=Button[i].width;
kar[i].Cursor:=crHandPoint;
kar[i].BringToFront;
kar[i].stretch:=true;
  end;

 for i:=1 to 112 do
 with button[i] do
  begin
    BringToFront;
    flat:=True;
 Tag := i;
 ControlState := [csFocusing];
 OnClick := RTimeSpeedButtonClick;

 end;

end;


procedure TForm1.FormCreate(Sender: TObject);
begin
a:=screen.Width;
b:=screen.Height;
button10.Height:=50;
button10.width:=50;
button10.left:=0;
button10.Top:=b-50;
nazva[1]:='Гідроген';
nazva[2]:='Гелій';
nazva[3]:='Літій';
nazva[4]:='Берилій';
nazva[5]:='Бор';
nazva[6]:='Карбон';
nazva[7]:='Нітроген';
nazva[8]:='Оксиген';
nazva[9]:='Флуор';
nazva[10]:='Неон';
nazva[11]:='Натрій';
nazva[12]:='Магній';
nazva[13]:='Алюміній';
nazva[14]:='Силіцій';
nazva[15]:='Фосфор';
nazva[16]:='Сульфур';
nazva[17]:='Хлор';
nazva[18]:='Аргон';
nazva[19]:='Калій';
nazva[20]:='Кальцій';
nazva[21]:='Скандій';
nazva[22]:='Титан';
nazva[23]:='Ванадій';
nazva[24]:='Хром';
nazva[25]:='Манган';
nazva[26]:='Ферум';
nazva[27]:='Кобальт';
nazva[28]:='Нікель';
nazva[29]:='Купрум';
nazva[30]:='Цинк';
nazva[31]:='Галій';
nazva[32]:='Германій';
nazva[33]:='Арсен';
nazva[34]:='Селен';
nazva[35]:='Бром';
nazva[36]:='Криптон';
nazva[37]:='Рубідій';
nazva[38]:='Стронцій';
nazva[39]:='Ітрій';
nazva[40]:='Цирконій';
nazva[41]:='Ніобій';
nazva[42]:='Молібден';
nazva[43]:='Технецій';
nazva[44]:='Рутеній';
nazva[45]:='Родій';
nazva[46]:='Паладій';
nazva[47]:='Аргентум';
nazva[48]:='Кадмій';
nazva[49]:='Індій';
nazva[50]:='Станум';
nazva[51]:='Стибій';
nazva[52]:='Телур';
nazva[53]:='Йод';
nazva[54]:='Ксенон';
nazva[55]:='Цезій';
nazva[56]:='Барій';
nazva[57]:='Лантан';
nazva[58]:='Церій';
nazva[59]:='Празеодим';
nazva[60]:='Неодим';
nazva[61]:='Прометій';
nazva[62]:='Самарій';
nazva[63]:='Європій';
nazva[64]:='Гадоліній';
nazva[65]:='Тербій';
nazva[66]:='Диспрозій';
nazva[67]:='Гольмій';
nazva[68]:='Ербій';
nazva[69]:='Тулій';
nazva[70]:='Ітербій';
nazva[71]:='Лютецій';
nazva[72]:='Гафній';
nazva[73]:='Тантал';
nazva[74]:='Вольфрам';
nazva[75]:='Реній';
nazva[76]:='Осмій';
nazva[77]:='Іридій';
nazva[78]:='Платина';
nazva[79]:='Аурум';
nazva[80]:='Гідраргірум';
nazva[81]:='Талій';
nazva[82]:='Плюмбум';
nazva[83]:='Вісмут';
nazva[84]:='Полоній';
nazva[85]:='Астат';
nazva[86]:='Радон';
nazva[87]:='Францій';
nazva[88]:='Радій';
nazva[89]:='Актиній';
nazva[90]:='Торій';
nazva[91]:='Протактиній';
nazva[92]:='Уран';
nazva[93]:='Нептуній';
nazva[94]:='Плутоній';
nazva[95]:='Америцій';
nazva[96]:='Кюрій';
nazva[97]:='Берклій';
nazva[98]:='Каліфорній';
nazva[99]:='Ейнштейній';
nazva[100]:='Фермій';
nazva[101]:='Менделеєвій';
nazva[102]:='Нобелій';
nazva[103]:='Лоуренсій';
nazva[104]:='Резерфордій';
nazva[105]:='Дубній';
nazva[106]:='Сіборгій';
nazva[107]:='Борій';
nazva[108]:='Гасій';
nazva[109]:='Майтнерій';
nazva[110]:='Дармштадтій';
nazva[111]:='Рентгеній';
nazva[112]:='Коперницій';
btn1.ControlState := [csFocusing];
btn2.ControlState := [csFocusing];
button1.ControlState := [csFocusing];
button2.ControlState := [csFocusing];
button3.ControlState := [csFocusing];
button4.ControlState := [csFocusing];
button5.ControlState := [csFocusing];
button6.ControlState := [csFocusing];
button7.ControlState := [csFocusing];
button5.left:=798;
button5.top:=930;
Image1:=TImage.Create (Form1);
Image1.Parent:=Form1;
Image1.Left:=0;
Image1.Top:=0;
Image1.Height:=b;
Image1.Width:=a;
Image1.Picture.LoadFromFile('fon.png');
btn1.left:=((a div 2)-btn1.Width)div 2;
button1.left:=((a div 2)-btn1.Width)div 2;
btn1.width:=350;
button1.width:=350;
button3.left:=((a div 2)-btn1.Width)div 2;
button3.width:=350;
btn2.left:=a div 2+((a div 2)-btn1.Width)div 2;
button2.left:=a div 2+((a div 2)-btn1.Width)div 2;
btn2.width:=350;
button2.width:=350;
button4.left:=a div 2+((a div 2)-btn1.Width)div 2;
button4.width:=350;
image1.SendToBack;
label1.Left:=((a div 2)-label1.width) div 2;
label2.left:=a div 2+((a div 2)-label2.width) div 2 ;
razmer:=35;
while (label2.width+label2.left)>=a do
 begin
 dec(razmer);
 label1.Font.size:=razmer;
 label2.font.Size:=razmer;
 label1.Left:=((a div 2)-label1.width) div 2;
label2.left:=a div 2+((a div 2)-label2.width) div 2 ;
end;
   label1.Font.size:=razmer;
 label2.font.Size:=razmer;
  btn1.top:=label1.Top+label1.height+(b-4*btn1.Height-label1.Top-label1.Height)div 5;
  btn2.top:=btn1.top;
  button1.top:=btn1.Top+button1.height+(b-4*btn1.Height-label1.Top-label1.Height)div 5;
  button2.top:=button1.top;
  button3.Top:=button1.Top+button1.height+(b-4*btn1.Height-label1.Top-label1.Height)div 5;
  button4.Top:=button3.top;
  button5.top:=button3.Top+button3.Height+(b-4*btn1.Height-label1.Top-label1.Height)div 5;
  button5.Left:=a div 2-button5.Width div 2;

  image2.left:=btn1.left+btn1.width+15;
   image2.BringToFront;
  image2.Width:=btn2.Left-btn1.left-btn1.width-30;

 image2.Height:=round(image2.Width*1000/836);
 image2.Top:=(button4.Top+button4.height-btn1.top-image2.height)div 2+btn1.top;
   image2.stretch:=true;
  image2.Picture.LoadFromFile('mendeleev.jpg');
  if image2.width<200 then image2.visible:=false;

end;



procedure TForm1.BMoreClick(Sender: TObject);
begin
if (not Assigned(Form2)) then
begin
Form2:=TForm2.Create(Self);
form2.BorderStyle :=bsDialog;

   end;
    form2.Caption:=nazva[index];
     Form2.Show;
   Assignfile(infa,IntToStr(index)+'.txt');
  Reset(INFa);
    Form2.lbl1.left:=0;
     form2.lbl1.font.size:=20;
  Form2.lbl1.Top:=0;
  Form2.lbl1.Caption:='';
 while (not EOF(infa)) do
  begin
    Readln(infa,stroka);
  Form2.lbl1.Caption:=form2.lbl1.caption+stroka;
  if not(Eof(INFa)) then
   Form2.lbl1.Caption:=form2.lbl1.caption+#13#10;
  end;
  CloseFile(INFa);
  form2.kartinka.visible:=true;
  if FileExists('kartinka'+inttostr(index)+'.jpg') then
   begin
     Form2.kartinka.Picture.LoadFromFile('kartinka'+inttostr(index)+'.jpg');
     form2.kartinka.AutoSize:=true;
      x:=Form2.kartinka.Width;
   Form2.kartinka.left:=0;
   Form2.kartinka.top:=form2.lbl1.Height;
   end else begin
   x:=0;
   form2.kartinka.Picture.Graphic:=NIL;
   form2.kartinka.Height:=0;
   end;

  form2.Width:=Form2.lbl1.Width+6;
  form2.Height:=form2.lbl1.Height+form2.kartinka.Height+28;
  if form2.kartinka.Width>form2.lbl1.Width then
  begin
   form2.Width:=form2.kartinka.Width;
   form2.lbl1.left:=(form2.Width-form2.lbl1.Width) div 2
   end else
   form2.kartinka.left:=(form2.Width-form2.kartinka.width) div 2;
end;


procedure TForm1.Button7Click(Sender: TObject);
begin
f4:=true;
randomize;

 button7.Visible:=false;
 edit1.Visible:=false;
 updown1.visible:=false;
  if f3 then
  begin
  label3.left:=90;
  label3.Top:=40;
  chas:=0;
  k:=strtoint(edit1.Text);
  k1:=k;
  begin
 if Assigned(imla) then imla.Visible:=False;
  if Assigned(imac) then imac.Visible:=False;
  if Assigned(im1lan) then im1lan.Visible:=False;
  if Assigned(im1act) then im1act.Visible:=False;

  for i:=1 to 112 do
 begin
   if not Assigned(button[i]) then
begin
button[i]:=TSpeedButton.Create(Form1);
button[i].Parent:=Form1;
end else button[i].Visible:=True;
if not Assigned(kar[i]) then
begin
kar[i]:=TImage.Create(Form1);
kar[i].Parent:=Form1;
end else kar[i].Visible:=True;
 end;
 for i:=1 to 7 do
  if not Assigned(p[i]) then
begin
p[i]:=TImage.Create(Form1);
p[i].Parent:=Form1;
end else p[i].Visible:=True;
 for i:=9 to 18 do
     if Assigned(g[i]) then g[i].Visible:=False;

for i:=1 to 8 do
  if not Assigned(g[i]) then
begin
g[i]:=TImage.Create(Form1);
g[i].Parent:=Form1;
end else g[i].Visible:=True;
for i:=1 to 10 do
     if Assigned(v[i]) then v[i].Visible:=False;
bclose.ControlState := [csFocusing];
BMore.ControlState := [csFocusing];
BClose.Visible:=False;
BMore.Visible:=False;




button[1].Left:=90;
button[1].Top:=205;
button[1].Height:=(b-140-45-30) div 13;
button[1].Width:=(a-100) div 14;
button[1].Visible:=True;
button[1].Cursor:=crHandPoint;

button[2].Left:=button[1].left+7*button[1].width;;
button[2].Top:=button[1].top;
button[2].Height:=button[1].height;
button[2].Width:=button[1].Width;
button[2].Visible:=True;
button[2].Cursor:=crHandPoint;

button[3].Left:=button[1].left;
button[3].Top:=button[1].top+button[1].height;
button[3].Height:=button[1].height;
button[3].Width:=button[1].width;
button[3].Visible:=True;
button[3].Cursor:=crHandPoint;


if not Assigned(ramka) then
begin
ramka:=TImage.Create(Form1);
ramka.Parent:=Form1;
end else rAMKA.Visible:=True;
ramka.Picture.LoadFromFile('ramka.bmp');
ramka.Left:=Button[1].left;
ramka.Top:=Button[1].top;
ramka.Height:=11*button[1].height;
ramka.Width:=10*button[1].width;
ramka.stretch:=true;



for i:=4 to 10 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[3].Top;;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[11].Left:=button[1].left;
button[11].Top:=button[1].Top+2*button[1].height;
button[11].Height:=button[1].height;
button[11].Width:=button[1].width;
button[11].Visible:=True;
button[11].Cursor:=crHandPoint;
for i:=12 to 18 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[11].Top;;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[19].Left:=button[1].left;
button[19].Top:=button[1].Top+3*button[1].height;
button[19].Height:=button[1].height;
button[19].Width:=button[1].width;
button[19].Visible:=True;
button[19].Cursor:=crHandPoint;
for i:=20 to 28 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[19].Top;;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[29].Left:=button[1].left;
button[29].Top:=button[1].top+4*button[1].height;
button[29].Height:=button[1].height;
button[29].Width:=button[1].width;
button[29].Visible:=True;
button[29].Cursor:=crHandPoint;
for i:=30 to 36 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[29].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;

button[37].Left:=button[1].left;
button[37].Top:=button[1].Top+5*button[1].height;
button[37].Height:=button[1].height;
button[37].Width:=button[1].width;
button[37].Visible:=True;
button[37].Cursor:=crHandPoint;
for i:=38 to 46 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[37].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;

button[47].Left:=button[1].left;
button[47].Top:=button[1].top+6*button[1].height;
button[47].Height:=button[1].height;
button[47].Width:=button[1].width;
button[47].Visible:=True;
button[47].Cursor:=crHandPoint;
for i:=48 to 54 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[47].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[55].Left:=button[1].left;
button[55].Top:=button[1].Top+7*button[1].height;
button[55].Height:=button[1].height;
button[55].Width:=button[1].width;
button[55].Visible:=True;
button[55].Cursor:=crHandPoint;
for i:=56 to 57 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[55].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[72].Left:=Button[57].Left+button[1].width;
button[72].Top:=Button[56].Top;
button[72].Height:=button[1].height;
button[72].Width:=button[1].width;
button[72].Visible:=True;
button[72].Cursor:=crHandPoint;
for i:=73 to 78 do
 begin
button[i].Parent:=Form1;
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[72].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[79].Left:=button[1].left;
button[79].Top:=button[1].Top+8*button[1].height;
button[79].Height:=button[1].height;
button[79].Width:=button[1].width;
button[79].Visible:=True;
button[79].Cursor:=crHandPoint;
for i:=80 to 86 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[79].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[87].Left:=button[1].left;
button[87].Top:=button[1].top+9*button[1].height;
button[87].Height:=button[1].height;
button[87].Width:=button[1].width;
button[87].Visible:=True;
button[87].Cursor:=crHandPoint;
for i:=88 to 89 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[87].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;

button[104].Left:=Button[89].left+button[1].width;
button[104].Top:=button[89].top;
button[104].Height:=button[1].height;
button[104].Width:=button[1].width;
button[104].Visible:=True;
button[104].Cursor:=crHandPoint;
for i:=105 to 110 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[104].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[111].Left:=button[1].left;
button[111].Top:=button[1].top+10*button[1].height;
button[111].Height:=button[1].height;
button[111].Width:=button[1].width;
button[111].Visible:=True;
button[111].Cursor:=crHandPoint;
for i:=112 to 112 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[111].Top;
button[i].Height:=button[1].height;
button[i].Cursor:=crHandPoint;
button[i].Width:=button[1].width;
 end;

button[58].Left:=Button[87].left;
button[58].Top:=button[1].Top+11*button[1].height+15;
button[58].Height:=button[1].height;
button[58].Width:=button[1].width;
button[58].Visible:=True;
button[58].Cursor:=crHandPoint;
for i:=59 to 71 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[58].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;

button[90].Left:=Button[87].left;
button[90].Top:=button[1].top+12*button[1].height+15;
button[90].Height:=button[1].height;
button[90].Width:=button[1].width;
button[90].Visible:=True;
button[90].Cursor:=crHandPoint;
for i:=91 to 103 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[90].Top;
button[i].Height:=button[1].height;
button[i].Cursor:=crHandPoint;
button[i].Width:=button[1].width;
 end;



G[1].Picture.LoadFromFile('gr1.bmp');
g[1].Left:=90;
g[1].Top:=160;
g[1].Height:=65;
g[1].Width:=button[1].width;
g[1].Visible:=True;
g[1].stretch:=true;
for i:=2 to 7 do
 begin

G[i].Picture.LoadFromFile('gr'+inttostr(i)+'.bmp');
g[i].Left:=g[i-1].Left+button[1].width;
g[i].Top:=160;
g[i].Height:=65;
g[i].Width:=button[1].width;
g[i].stretch:=true;
g[i].Visible:=True;
 end;

 G[8].Picture.LoadFromFile('gr8.bmp');
g[8].Left:=g[7].Left+g[7].Width;
g[8].Top:=160;
g[8].Height:=65;
g[8].Width:=3*button[1].width;
g[8].Visible:=True;
g[8].Stretch:=true;

  P[1].Picture.LoadFromFile('pe1.bmp');
P[1].Left:=button[1].Left-30;
P[1].Top:=205;
P[1].Height:=button[1].height;
P[1].Width:=30;
p[1].stretch:=true;

for i:=2 to 3 do
begin

P[i].Picture.LoadFromFile('pe'+inttostr(i)+'.bmp');
P[i].Left:=button[1].Left-30;
P[i].Top:=P[i-1].Top+button[1].height;
P[i].Height:=button[1].Height;
P[i].Width:=30;
p[i].stretch:=true;
end;
P[4].Picture.LoadFromFile('pe4.bmp');
P[4].Left:=button[1].Left-30;
P[4].Top:=p[3].top+p[3].height;
P[4].Height:=2*button[i].height;
P[4].Width:=30;
p[4].stretch:=true;
for i:=5 to 7 do
begin
P[i].Picture.LoadFromFile('pe'+inttostr(i)+'.bmp');
P[i].Left:=button[1].Left-30;
P[i].Top:=P[i-1].Top+2*button[1].Height;
P[i].Height:=2*button[1].Height;
P[i].Width:=30;
p[i].stretch:=true;
end;


  for i:=1 to 112 do
  begin
kar[i].Left:=Button[i].Left;
kar[i].Top:=Button[i].top;
kar[i].Picture.LoadFromFile('e'+inttostr(i)+'.bmp');
kar[i].Height:=Button[i].Height;;
Kar[i].Width:=Button[i].width;
kar[i].Cursor:=crHandPoint;
kar[i].BringToFront;
kar[i].stretch:=true;
  end;

 for i:=1 to 112 do
 with button[i] do
  begin
    BringToFront;
    flat:=True;
 Tag := i;
 ControlState := [csFocusing];
 OnClick := RTimeSpeedButtonClick;
      end;
      end;
      END;
  label4.Top:=label3.top+label3.Height;
label3.top:=20;

label4.Visible:= true;
label3.Left:=button[1].left;

     if f6 then
begin
label4.Caption:='';
  razmer:=35;
       label3.font.Size:=razmer;
      label4.font.Size:=razmer;
   while ((label4.top+label4.height+20)>=(g[1].top)) {or ((label3.width)>=(10*button[1].width))} do
     begin
     dec(razmer);
     label3.font.Size:=razmer;
      label4.font.Size:=razmer;
      label3.Top:=20;
      label4.Top:=label3.Top+label3.Height;
     end;
       label3.font.Size:=razmer;
      label4.font.Size:=razmer;
      label4.left:=label3.Left;
     f6:=false;
  end;
 timer1.enabled:=true;
   if k1<>0 then
   begin
    e:=random(112)+1;
    label3.Caption:='Залишилося знайти елементів: '+inttostr(k1)+#10#13+'Зараз вам потрібно знайти:';
    label4.caption:=nazva[e];
    end else
     begin
       label3.visible:=true;
               for i:=1 to 112 do
       begin
       button[i].visible:=false;
       kar[i].Visible:=false;
       end;
      for i:=1 to 7 do
       p[i].Visible:=false;
      for i:=1 to 8 do
      g[i].Visible:=false;
      ramka.visible:=false;
         label3.caption:='Ви знайшли '+inttostr(k)+ ' ел. за '+inttostr(chas div 60)+  ' хв. '+inttostr(chas mod 60)+ ' сек. '+#10#13+'Круто!';
         label3.left:=(a-label3.Width) div 2;
      label3.Top:=(b-label3.height) div 2;
      label4.Visible:=false;
        end;
 end;

procedure TForm1.Button6Click(Sender: TObject);
begin
f4:=true;

randomize;

 button6.Visible:=false;
 edit1.Visible:=false;
 updown1.visible:=false;
 if f3 then
  begin
  chas:=0;
  
  k:=strtoint(edit1.Text);
  k1:=k;
label1.visible:=false;
label2.Visible:=false;
btn1.visible:=false;
btn2.visible:=false;
button1.Visible:=false;
button2.Visible:=false;
button3.Visible:=false;
button4.Visible:=false;
button5.Visible:=false;


  if Assigned(ramka) then ramka.Visible:=False;
  if Assigned(elementi) then elementi.Visible:=false;
for i:=1 to 112 do
 begin
   if not Assigned(button[i]) then
begin
button[i]:=TSpeedButton.Create(Form1);
button[i].Parent:=Form1;
end else button[i].Visible:=True;
if not Assigned(kar[i]) then
begin
kar[i]:=TImage.Create(Form1);
kar[i].Parent:=Form1;
end else kar[i].Visible:=True;
 end;
 for i:=1 to 7 do
  if not Assigned(p[i]) then
begin
p[i]:=TImage.Create(Form1);
p[i].Parent:=Form1;
end else p[i].Visible:=True;

for i:=1 to 18 do
  if not Assigned(g[i]) then
begin
g[i]:=TImage.Create(Form1);
g[i].Parent:=Form1;
end else g[i].Visible:=True;
for i:=1 to 10 do
  

bclose.ControlState := [csFocusing];
BMore.ControlState := [csFocusing];
BClose.Visible:=False;
BMore.Visible:=False;








button[1].Left:=50;
button[1].Top:=150;
button[1].Height:=(b-250)div 9;
button[1].Width:=(a-100) div 18;
button[1].Visible:=True;
button[1].Cursor:=crHandPoint;


button[2].Left:=button[1].Left+17*button[1].Width;
button[2].Top:=150;
button[2].Height:=button[1].height;
button[2].Width:=button[1].Width;
button[2].Visible:=True;
button[2].Cursor:=crHandPoint;


button[3].Left:=50;
button[3].Top:=150+button[1].height;
button[3].Height:=button[1].height;
button[3].Width:=button[1].Width;
button[3].Visible:=True;
button[3].Cursor:=crHandPoint;


button[4].Left:=50+button[1].Width;
button[4].Top:=150+button[1].height;
button[4].Height:=button[1].height;
button[4].Width:=button[1].Width;
button[4].Visible:=True;
button[4].Cursor:=crHandPoint;

button[5].Left:=50+12*button[1].Width;
button[5].Top:=150+button[1].height;
button[5].Height:=button[1].height;
button[5].Width:=button[1].Width;
button[5].Visible:=True;
button[5].Cursor:=crHandPoint;
for i:=6 to 10 do
 begin
button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;
button[i].Cursor:=crHandPoint;
 end;


button[11].Left:=50;
button[11].Top:=150+2*button[1].height;
button[11].Height:=button[1].height;
button[11].Width:=button[1].Width;
button[11].Visible:=True;
button[11].Cursor:=crHandPoint;


button[12].Left:=50+button[1].Width;
button[12].Top:=150+2*button[1].height;
button[12].Height:=button[1].height;
button[12].Width:=button[1].Width;
button[12].Visible:=True;
button[12].Cursor:=crHandPoint;


button[13].Left:=50+12*button[1].Width;
button[13].Top:=150+2*button[1].height;
button[13].Height:=button[1].height;
button[13].Width:=button[1].Width;
button[13].Visible:=True;
button[13].Cursor:=crHandPoint;

  for i:=14 to 18 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+2*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;
button[i].Cursor:=crHandPoint;
 end;


button[19].Left:=50;
button[19].Top:=150+3*button[1].height;
button[19].Height:=button[1].height;
button[19].Width:=button[1].Width;
button[19].Visible:=True;
button[19].Cursor:=crHandPoint;

for i:=20 to 36 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+3*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;


button[37].Left:=50;
button[37].Top:=150+4*button[1].height;
button[37].Height:=button[1].height;
button[37].Width:=button[1].Width;
button[37].Visible:=True;

button[37].Cursor:=crHandPoint;

for i:=38 to 54 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+4*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;


button[55].Left:=50;
button[55].Top:=150+5*button[1].height;
button[55].Height:=button[1].height;
button[55].Width:=button[1].Width;
button[55].Visible:=True;
button[55].Cursor:=crHandPoint;


button[56].Left:=50+button[1].Width;
button[56].Top:=150+5*button[1].height;
button[56].Height:=button[1].height;
button[56].Width:=button[1].Width;
button[56].Visible:=True;
button[56].Cursor:=crHandPoint;


button[72].Left:=50+3*button[1].Width;
button[72].Top:=150+5*button[1].height;
button[72].Height:=button[1].height;
button[72].Width:=button[1].Width;
button[72].Visible:=True;
button[72].Cursor:=crHandPoint;
for i:=73 to 86 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+5*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;

button[87].Left:=50;
button[87].Top:=150+6*button[1].height;
button[87].Height:=button[1].height;
button[87].Width:=button[1].Width;
button[87].Visible:=True;
button[87].Cursor:=crHandPoint;

button[88].Left:=50+button[1].Width ;
button[88].Top:=150+6*button[1].height;
button[88].Height:=button[1].height;
button[88].Width:=button[1].Width;
button[88].Visible:=True;
button[88].Cursor:=crHandPoint;

button[104].Left:=50+3*button[1].Width;
button[104].Top:=150+6*button[1].height;
button[104].Height:=button[1].height;
button[104].Width:=button[1].Width;
button[104].Visible:=True;
button[104].Cursor:=crHandPoint;
for i:=105 to 112 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+6*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;

button[57].Left:=50+3*button[1].Width;
button[57].Top:=160+7*button[1].height;
button[57].Height:=button[1].height;
button[57].Width:=button[1].Width;
button[57].Visible:=True;
button[57].Cursor:=crHandPoint;

button[89].Left:=50+3*button[1].Width;
button[89].Top:=160+8*button[1].height;
button[89].Height:=button[1].height;
button[89].Width:=button[1].Width;
button[89].Visible:=True;
button[89].Cursor:=crHandPoint;
for i:=58 to 71 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=160+7*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;
 for i:=90 to 103 do
 begin
button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=160+8*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;

 //Image1.Picture.LoadFromFile('fon.png');

 G[1].Picture.LoadFromFile('g1.bmp');
G[1].Left:=50;
G[1].Top:=button[1].Top-30;
G[1].Height:=30;
G[1].Width:=button[1].Width;
g[1].Stretch:=true;
g[1].stretch:=true;




G[2].Picture.LoadFromFile('g2.bmp');
G[2].Left:=50+button[1].Width;
G[2].Top:=button[4].top-30;
G[2].Height:=30;
G[2].Width:=button[1].Width;
g[2].stretch:=true;


G[3].Picture.LoadFromFile('g3.bmp');
G[3].Left:=50+2*button[1].Width;
G[3].Top:=button[21].Top-30;
G[3].Height:=30;
G[3].Width:=button[1].Width;
g[3].stretch:=true;

for i:=4 to 12 do
 begin
G[i].Picture.LoadFromFile('g'+inttostr(i)+'.bmp');
G[i].Left:=G[i-1].Left+button[1].Width;
G[i].Top:=button[21].top-30;
G[i].Height:=30;
G[i].Width:=button[1].Width;
g[i].stretch:=true;
 end;

G[13].Picture.LoadFromFile('g13.bmp');
G[13].Left:=50+12*button[1].Width;
G[13].Top:=button[5].Top-30;
G[13].Height:=30;
G[13].Width:=button[1].width;
g[13].stretch:=true;

 for i:=14 to 17 do
 begin

G[i].Picture.LoadFromFile('g'+inttostr(i)+'.bmp');
G[i].Left:=G[i-1].Left+button[1].Width;
G[i].Top:=button[5].top-30;
G[i].Height:=30;
G[i].Width:=button[1].Width;
g[i].stretch:=true;
 end;


G[18].Picture.LoadFromFile('g18.bmp');
G[18].Left:=50+17*button[1].Width;
G[18].Top:=button[2].top-30;
G[18].Height:=30;
G[18].Width:=button[1].width;
g[18].stretch:=true;


P[1].Picture.LoadFromFile('p1.bmp');
P[1].Left:=button[1].Left-30;
P[1].Top:=button[1].top;
P[1].Height:=button[1].height;
P[1].Width:=30;
p[1].stretch:=true;


for i:=2 to 7 do
begin

P[i].Picture.LoadFromFile('p'+inttostr(i)+'.bmp');
P[i].Left:=button[1].left-30;
P[i].Top:=P[i-1].Top+button[1].height;
P[i].Height:=button[1].height;
p[i].stretch:=true;
P[i].Width:=30;
end;

  if not Assigned(im1lan) then
 begin
im1lan:=TImage.Create (Form1);
im1lan.Parent:=Form1;
end else im1lan.Visible:=true;
 im1lan.Left:=50;
im1lan.Top:=button[57].top;
im1lan.Height:=button[1].height;
im1lan.stretch:=true;
Im1lan.Width:=3*button[1].width;

 if not Assigned(im1act) then
 begin
im1act:=TImage.Create (Form1);
im1act.Parent:=Form1;
end else im1act.Visible:=true;
 im1act.Left:=50;
 im1act.stretch:=true;
im1act.Top:=button[89].top;
im1act.Height:=button[1].height;
Im1act.Width:=3*button[1].width;

 if not Assigned(imla) then
 begin
imla:=TImage.Create (Form1);
imla.Parent:=Form1;
end else imla.Visible:=true;
 imla.Left:=50+2*button[1].width;
imla.Top:=button[56].top;
imla.Height:=button[1].height;
imla.Stretch:=true;
Imla.Width:=button[1].width;

if not Assigned(imac) then
 begin
imac:=TImage.Create (Form1);
imac.Parent:=Form1;
end else imac.Visible:=true;
 imac.Left:=50+2*button[1].width;
imac.Top:=button[88].top;
imac.stretch:=true;
imac.Height:=button[1].Height;
Imac.Width:=button[1].width;

   for i:=1 to 112 do
  begin
kar[i].Picture.LoadFromFile(inttostr(i)+'.bmp');
kar[i].Stretch:=true;
kar[i].Left:=Button[i].Left;
kar[i].Top:=Button[i].top;
kar[i].Height:=Button[i].Height;;
Kar[i].Width:=Button[i].width;
kar[i].Visible:=True;
kar[i].Cursor:=crHandPoint;
  end;

 for i:=1 to 112 do
 with button[i] do
  begin
    BringToFront;
    flat:=True;
 Tag := i;
 ControlState := [csFocusing];
 OnClick := RunTimeSpeedButtonClick;

 end;

  imla.Picture.LoadFromFile('lan.bmp');
  imac.Picture.LoadFromFile('act.bmp');
  im1lan.Picture.LoadFromFile('1lan.bmp');
  im1act.Picture.LoadFromFile('1act.bmp');
  label3.Top:=g[2].top;
  label3.Left:=button[4].left+button[4].Width+10;
  label3.Caption:='Залишилося знайти елементів: '+inttostr(k1)+#10#13+'Зараз вам потрібно знайти:';
    label4.Caption:=nazva[e];
  timer1.enabled:=true;
end;

 if f6 then
begin
  razmer:=35;
       {label3.font.Size:=razmer;
      label4.font.Size:=razmer;   }
    while ((label4.top+label4.height+58)>=(button[21].top)) or ((label3.width)>=(10*button[1].width)) do
     begin
     dec(razmer);
     label3.font.Size:=razmer;
      label4.font.Size:=razmer;
      label4.Top:=label3.Top+label3.Height;
     end;
       label3.font.Size:=razmer;
      label4.font.Size:=razmer;
     f6:=false;
  end;

   if k1<>0 then
   begin
    e:=random(112)+1;

    label3.Caption:='Залишилося знайти елементів: '+inttostr(k1)+#10#13+'Зараз вам потрібно знайти:';
    label4.Caption:=nazva[e];
    label3.Left:=button[21].left+(10*button[1].width-label3.width) div 2;



    label4.Top:=label3.Top+label3.height;
    label4.left:=label3.left+((label3.width-label4.Width) div 2);
    label4.visible:=true;


    end else
     begin
     timer1.Enabled:=false;
       result:=chas/k;
       label3.visible:=true;

       label3.Font.size:=30;
       for i:=1 to 112 do
       begin
       button[i].visible:=false;
       kar[i].Visible:=false;
       end;
       for i:=1 to 7 do
       p[i].Visible:=false;
       for i:=1 to 18 do
       g[i].Visible:=false;
       imla.Visible:=false;
       imac.visible:=false;
       im1act.Visible:=false;
       timer1.enabled:=false;
       im1lan.Visible:=false;
         label3.caption:='Ви знайшли '+inttostr(k)+ ' ел. за '+inttostr(chas div 60)+  ' хв. '+inttostr(chas mod 60)+ ' сек. '+#10#13+'Круто!';
         label3.left:=(a-label3.Width) div 2;
         label4.Visible:=false;
      label3.Top:=(b-label3.Height) div 2;
        end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
chas:=chas+1;
end;
procedure TForm1.Timer2Timer(Sender: TObject);
begin
if k>0 then
begin
label3.Caption:=inttostr(k div 60)+':'+inttostr(k mod 60)+#10#13+'Зараз вам потрібно знайти:';
if f5 then
 begin
 label3.Left:=(10*button[1].width-label3.width) div 2+button[4].left+button[4].width;
label4.Left:=label3.left;
label4.Top:=label3.top+label3.height;
end else
 begin
  label3.Left:=button[1].left;
  label4.left:=label3.Left;
  label4.Top:=label3.top+label3.height;
  end;
dec(k);
end else
begin
f3:=false;
if f5 then Button8Click(Form1) else Button9Click(Form1);
end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
f4:=false;
f5:=true;
randomize;

 button8.Visible:=false;
 edit1.Visible:=false;
 updown1.visible:=false;
 if f3 then
  begin
  label3.Caption:='';
  chas:=0;
  k:=strtoint(edit1.Text);
  k1:=0;
  chas:=k;
  k:=k*60;
  if Assigned(ramka) then ramka.Visible:=False;
  if Assigned(elementi) then elementi.Visible:=false;
for i:=1 to 112 do
 begin
   if not Assigned(button[i]) then
begin
button[i]:=TSpeedButton.Create(Form1);
button[i].Parent:=Form1;
end else button[i].Visible:=True;
if not Assigned(kar[i]) then
begin
kar[i]:=TImage.Create(Form1);
kar[i].Parent:=Form1;
end else kar[i].Visible:=True;
 end;
 for i:=1 to 7 do
  if not Assigned(p[i]) then
begin
p[i]:=TImage.Create(Form1);
p[i].Parent:=Form1;
end else p[i].Visible:=True;

for i:=1 to 18 do
  if not Assigned(g[i]) then
begin
g[i]:=TImage.Create(Form1);
g[i].Parent:=Form1;
end else g[i].Visible:=True;
for i:=1 to 10 do
 
bclose.ControlState := [csFocusing];
BMore.ControlState := [csFocusing];
BClose.Visible:=False;
BMore.Visible:=False;








button[1].Left:=50;
button[1].Top:=150;
button[1].Height:=(b-250)div 9;
button[1].Width:=(a-100) div 18;
button[1].Visible:=True;
button[1].Cursor:=crHandPoint;


button[2].Left:=button[1].Left+17*button[1].Width;
button[2].Top:=150;
button[2].Height:=button[1].height;
button[2].Width:=button[1].Width;
button[2].Visible:=True;
button[2].Cursor:=crHandPoint;


button[3].Left:=50;
button[3].Top:=150+button[1].height;
button[3].Height:=button[1].height;
button[3].Width:=button[1].Width;
button[3].Visible:=True;
button[3].Cursor:=crHandPoint;


button[4].Left:=50+button[1].Width;
button[4].Top:=150+button[1].height;
button[4].Height:=button[1].height;
button[4].Width:=button[1].Width;
button[4].Visible:=True;
button[4].Cursor:=crHandPoint;

button[5].Left:=50+12*button[1].Width;
button[5].Top:=150+button[1].height;
button[5].Height:=button[1].height;
button[5].Width:=button[1].Width;
button[5].Visible:=True;
button[5].Cursor:=crHandPoint;
for i:=6 to 10 do
 begin
button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;
button[i].Cursor:=crHandPoint;
 end;


button[11].Left:=50;
button[11].Top:=150+2*button[1].height;
button[11].Height:=button[1].height;
button[11].Width:=button[1].Width;
button[11].Visible:=True;
button[11].Cursor:=crHandPoint;


button[12].Left:=50+button[1].Width;
button[12].Top:=150+2*button[1].height;
button[12].Height:=button[1].height;
button[12].Width:=button[1].Width;
button[12].Visible:=True;
button[12].Cursor:=crHandPoint;


button[13].Left:=50+12*button[1].Width;
button[13].Top:=150+2*button[1].height;
button[13].Height:=button[1].height;
button[13].Width:=button[1].Width;
button[13].Visible:=True;
button[13].Cursor:=crHandPoint;

  for i:=14 to 18 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+2*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;
button[i].Cursor:=crHandPoint;
 end;


button[19].Left:=50;
button[19].Top:=150+3*button[1].height;
button[19].Height:=button[1].height;
button[19].Width:=button[1].Width;
button[19].Visible:=True;
button[19].Cursor:=crHandPoint;

for i:=20 to 36 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+3*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;


button[37].Left:=50;
button[37].Top:=150+4*button[1].height;
button[37].Height:=button[1].height;
button[37].Width:=button[1].Width;
button[37].Visible:=True;

button[37].Cursor:=crHandPoint;

for i:=38 to 54 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+4*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;


button[55].Left:=50;
button[55].Top:=150+5*button[1].height;
button[55].Height:=button[1].height;
button[55].Width:=button[1].Width;
button[55].Visible:=True;
button[55].Cursor:=crHandPoint;


button[56].Left:=50+button[1].Width;
button[56].Top:=150+5*button[1].height;
button[56].Height:=button[1].height;
button[56].Width:=button[1].Width;
button[56].Visible:=True;
button[56].Cursor:=crHandPoint;


button[72].Left:=50+3*button[1].Width;
button[72].Top:=150+5*button[1].height;
button[72].Height:=button[1].height;
button[72].Width:=button[1].Width;
button[72].Visible:=True;
button[72].Cursor:=crHandPoint;
for i:=73 to 86 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+5*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;

button[87].Left:=50;
button[87].Top:=150+6*button[1].height;
button[87].Height:=button[1].height;
button[87].Width:=button[1].Width;
button[87].Visible:=True;
button[87].Cursor:=crHandPoint;

button[88].Left:=50+button[1].Width ;
button[88].Top:=150+6*button[1].height;
button[88].Height:=button[1].height;
button[88].Width:=button[1].Width;
button[88].Visible:=True;
button[88].Cursor:=crHandPoint;

button[104].Left:=50+3*button[1].Width;
button[104].Top:=150+6*button[1].height;
button[104].Height:=button[1].height;
button[104].Width:=button[1].Width;
button[104].Visible:=True;
button[104].Cursor:=crHandPoint;
for i:=105 to 112 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=150+6*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;

button[57].Left:=50+3*button[1].Width;
button[57].Top:=160+7*button[1].height;
button[57].Height:=button[1].height;
button[57].Width:=button[1].Width;
button[57].Visible:=True;
button[57].Cursor:=crHandPoint;

button[89].Left:=50+3*button[1].Width;
button[89].Top:=160+8*button[1].height;
button[89].Height:=button[1].height;
button[89].Width:=button[1].Width;
button[89].Visible:=True;
button[89].Cursor:=crHandPoint;
for i:=58 to 71 do
 begin

button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=160+7*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;
 for i:=90 to 103 do
 begin
button[i].Left:=Button[i-1].Left+button[1].Width;
button[i].Top:=160+8*button[1].height;
button[i].Height:=button[1].height;
button[i].Width:=button[1].Width;
button[i].Visible:=True;

button[i].Cursor:=crHandPoint;
 end;

 //Image1.Picture.LoadFromFile('fon.png');

 G[1].Picture.LoadFromFile('g1.bmp');
G[1].Left:=50;
G[1].Top:=button[1].Top-30;
G[1].Height:=30;
G[1].Width:=button[1].Width;
g[1].Stretch:=true;
g[1].stretch:=true;




G[2].Picture.LoadFromFile('g2.bmp');
G[2].Left:=50+button[1].Width;
G[2].Top:=button[4].top-30;
G[2].Height:=30;
G[2].Width:=button[1].Width;
g[2].stretch:=true;


G[3].Picture.LoadFromFile('g3.bmp');
G[3].Left:=50+2*button[1].Width;
G[3].Top:=button[21].Top-30;
G[3].Height:=30;
G[3].Width:=button[1].Width;
g[3].stretch:=true;

for i:=4 to 12 do
 begin
G[i].Picture.LoadFromFile('g'+inttostr(i)+'.bmp');
G[i].Left:=G[i-1].Left+button[1].Width;
G[i].Top:=button[21].top-30;
G[i].Height:=30;
G[i].Width:=button[1].Width;
g[i].stretch:=true;
 end;

G[13].Picture.LoadFromFile('g13.bmp');
G[13].Left:=50+12*button[1].Width;
G[13].Top:=button[5].Top-30;
G[13].Height:=30;
G[13].Width:=button[1].width;
g[13].stretch:=true;

 for i:=14 to 17 do
 begin

G[i].Picture.LoadFromFile('g'+inttostr(i)+'.bmp');
G[i].Left:=G[i-1].Left+button[1].Width;
G[i].Top:=button[5].top-30;
G[i].Height:=30;
G[i].Width:=button[1].Width;
g[i].stretch:=true;
 end;


G[18].Picture.LoadFromFile('g18.bmp');
G[18].Left:=50+17*button[1].Width;
G[18].Top:=button[2].top-30;
G[18].Height:=30;
G[18].Width:=button[1].width;
g[18].stretch:=true;


P[1].Picture.LoadFromFile('p1.bmp');
P[1].Left:=button[1].Left-30;
P[1].Top:=button[1].top;
P[1].Height:=button[1].height;
P[1].Width:=30;
p[1].stretch:=true;


for i:=2 to 7 do
begin

P[i].Picture.LoadFromFile('p'+inttostr(i)+'.bmp');
P[i].Left:=button[1].left-30;
P[i].Top:=P[i-1].Top+button[1].height;
P[i].Height:=button[1].height;
p[i].stretch:=true;
P[i].Width:=30;
end;

  if not Assigned(im1lan) then
 begin
im1lan:=TImage.Create (Form1);
im1lan.Parent:=Form1;
end else im1lan.Visible:=true;
 im1lan.Left:=50;
im1lan.Top:=button[57].top;
im1lan.Height:=button[1].height;
im1lan.stretch:=true;
Im1lan.Width:=3*button[1].width;

 if not Assigned(im1act) then
 begin
im1act:=TImage.Create (Form1);
im1act.Parent:=Form1;
end else im1act.Visible:=true;
 im1act.Left:=50;
 im1act.stretch:=true;
im1act.Top:=button[89].top;
im1act.Height:=button[1].height;
Im1act.Width:=3*button[1].width;

 if not Assigned(imla) then
 begin
imla:=TImage.Create (Form1);
imla.Parent:=Form1;
end else imla.Visible:=true;
 imla.Left:=50+2*button[1].width;
imla.Top:=button[56].top;
imla.Height:=button[1].height;
imla.Stretch:=true;
Imla.Width:=button[1].width;

if not Assigned(imac) then
 begin
imac:=TImage.Create (Form1);
imac.Parent:=Form1;
end else imac.Visible:=true;
 imac.Left:=50+2*button[1].width;
imac.Top:=button[88].top;
imac.stretch:=true;
imac.Height:=button[1].Height;
Imac.Width:=button[1].width;

   for i:=1 to 112 do
  begin
kar[i].Picture.LoadFromFile(inttostr(i)+'.bmp');
kar[i].Stretch:=true;
kar[i].Left:=Button[i].Left;
kar[i].Top:=Button[i].top;
kar[i].Height:=Button[i].Height;;
Kar[i].Width:=Button[i].width;
kar[i].Visible:=True;
kar[i].Cursor:=crHandPoint;
  end;

 for i:=1 to 112 do
 with button[i] do
  begin
    BringToFront;
    flat:=True;
 Tag := i;
 ControlState := [csFocusing];
 OnClick := RunTimeSpeedButtonClick;

 end;
imla.Picture.LoadFromFile('lan.bmp');
  imac.Picture.LoadFromFile('act.bmp');
  im1lan.Picture.LoadFromFile('1lan.bmp');
  im1act.Picture.LoadFromFile('1act.bmp');
  label3.Top:=g[2].top;
  label4.Top:=label3.top+label3.Height;
    label4.Caption:=nazva[e];
    label3.Caption:='Залишилося знайти елементів: '+inttostr(k1)+#10#13+'Зараз вам потрібно знайти:';
    label4.visible:=true;

     if f6 then
begin
  razmer:=35;
       label3.font.Size:=razmer;
      label4.font.Size:=razmer;
    while ((label4.top+label4.height+58)>=(button[21].top)) or ((label3.width)>=(10*button[1].width)) do
     begin
     dec(razmer);
     label3.font.Size:=razmer;
      label4.font.Size:=razmer;

     end;
       label3.font.Size:=razmer;
      label4.font.Size:=razmer;
     f6:=false;
  end;
    label3.Caption:='';
  timer2.enabled:=true;
  end;

   if k<>0 then
   begin
    e:=random(112)+1;
    label3.Top:=g[2].Top;
     label4.Caption:=nazva[e];
           //label3.left:=(10*button[1].width-label3.width) div 2+button[4].left;

          //label4.left:=(10*button[1].width-label4.width) div 2+button[4].left;
end else
  begin
       timer2.Enabled:=false;
       label3.visible:=true;

       for i:=1 to 112 do
       begin
       button[i].visible:=false;
       kar[i].Visible:=false;
       end;
      for i:=1 to 7 do
       p[i].Visible:=false;
      for i:=1 to 18 do
      g[i].Visible:=false;
     imac.Visible:=false;
     imla.Visible:=false;
     im1act.visible:=false;
     im1lan.Visible:=false;
     label3.Font.size:=30;
         label3.caption:='За '+inttostr(chas)+' хв. ви правильно знайшли '+inttostr(abs(k1))+' ел.!'+#10#13;
         if (abs(k1)<5) then label3.Caption:=label3.Caption+'Можно й краще!';
         if (abs(k1)>5) and (abs(k1)<10) then label3.Caption:=label3.Caption+'Непогано!';
         if (abs(k1)>10) and (abs(k1)<20) then label3.Caption:=label3.Caption+'Круто!';
           if (abs(k1)>20) then label3.Caption:=label3.Caption+'Нічого собі!';
         label3.left:=(1940-label3.width) div 2;
    label3.Left:=(a-label3.Width) div 2;
    label3.top:=(b-label3.height) div 2;
    label4.visible:=false;
         end;


end;

procedure TForm1.Button9Click(Sender: TObject);
begin
f4:=false;
f5:=false;
randomize;

 button9.Visible:=false;
 edit1.Visible:=false;
 updown1.visible:=false;
 if f3 then
  begin
  label3.Caption:='';
  chas:=0;
  k:=strtoint(edit1.Text);
  k1:=0;
  chas:=k;
  k:=k*60;
   if Assigned(imla) then imla.Visible:=False;
  if Assigned(imac) then imac.Visible:=False;
  if Assigned(im1lan) then im1lan.Visible:=False;
  if Assigned(im1act) then im1act.Visible:=False;

  for i:=1 to 112 do
 begin
   if not Assigned(button[i]) then
begin
button[i]:=TSpeedButton.Create(Form1);
button[i].Parent:=Form1;
end else button[i].Visible:=True;
if not Assigned(kar[i]) then
begin
kar[i]:=TImage.Create(Form1);
kar[i].Parent:=Form1;
end else kar[i].Visible:=True;
 end;
 for i:=1 to 7 do
  if not Assigned(p[i]) then
begin
p[i]:=TImage.Create(Form1);
p[i].Parent:=Form1;
end else p[i].Visible:=True;
 for i:=9 to 18 do
     if Assigned(g[i]) then g[i].Visible:=False;

for i:=1 to 8 do
  if not Assigned(g[i]) then
begin
g[i]:=TImage.Create(Form1);
g[i].Parent:=Form1;
end else g[i].Visible:=True;
for i:=1 to 10 do
     if Assigned(v[i]) then v[i].Visible:=False;
bclose.ControlState := [csFocusing];
BMore.ControlState := [csFocusing];
BClose.Visible:=False;
BMore.Visible:=False;




button[1].Left:=90;
button[1].Top:=205;
button[1].Height:=(b-140-45-30) div 13;
button[1].Width:=(a-100) div 14;
button[1].Visible:=True;
button[1].Cursor:=crHandPoint;

button[2].Left:=button[1].left+7*button[1].width;;
button[2].Top:=button[1].top;
button[2].Height:=button[1].height;
button[2].Width:=button[1].Width;
button[2].Visible:=True;
button[2].Cursor:=crHandPoint;

button[3].Left:=button[1].left;
button[3].Top:=button[1].top+button[1].height;
button[3].Height:=button[1].height;
button[3].Width:=button[1].width;
button[3].Visible:=True;
button[3].Cursor:=crHandPoint;


if not Assigned(ramka) then
begin
ramka:=TImage.Create(Form1);
ramka.Parent:=Form1;
end else rAMKA.Visible:=True;
ramka.Picture.LoadFromFile('ramka.bmp');
ramka.Left:=Button[1].left;
ramka.Top:=Button[1].top;
ramka.Height:=11*button[1].height;
ramka.Width:=10*button[1].width;
ramka.Stretch:=true;



for i:=4 to 10 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[3].Top;;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[11].Left:=button[1].left;
button[11].Top:=button[1].Top+2*button[1].height;
button[11].Height:=button[1].height;
button[11].Width:=button[1].width;
button[11].Visible:=True;
button[11].Cursor:=crHandPoint;
for i:=12 to 18 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[11].Top;;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[19].Left:=button[1].left;
button[19].Top:=button[1].Top+3*button[1].height;
button[19].Height:=button[1].height;
button[19].Width:=button[1].width;
button[19].Visible:=True;
button[19].Cursor:=crHandPoint;
for i:=20 to 28 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[19].Top;;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[29].Left:=button[1].left;
button[29].Top:=button[1].top+4*button[1].height;
button[29].Height:=button[1].height;
button[29].Width:=button[1].width;
button[29].Visible:=True;
button[29].Cursor:=crHandPoint;
for i:=30 to 36 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[29].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;

button[37].Left:=button[1].left;
button[37].Top:=button[1].Top+5*button[1].height;
button[37].Height:=button[1].height;
button[37].Width:=button[1].width;
button[37].Visible:=True;
button[37].Cursor:=crHandPoint;
for i:=38 to 46 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[37].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;

button[47].Left:=button[1].left;
button[47].Top:=button[1].top+6*button[1].height;
button[47].Height:=button[1].height;
button[47].Width:=button[1].width;
button[47].Visible:=True;
button[47].Cursor:=crHandPoint;
for i:=48 to 54 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[47].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[55].Left:=button[1].left;
button[55].Top:=button[1].Top+7*button[1].height;
button[55].Height:=button[1].height;
button[55].Width:=button[1].width;
button[55].Visible:=True;
button[55].Cursor:=crHandPoint;
for i:=56 to 57 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[55].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[72].Left:=Button[57].Left+button[1].width;
button[72].Top:=Button[56].Top;
button[72].Height:=button[1].height;
button[72].Width:=button[1].width;
button[72].Visible:=True;
button[72].Cursor:=crHandPoint;
for i:=73 to 78 do
 begin
button[i].Parent:=Form1;
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[72].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[79].Left:=button[1].left;
button[79].Top:=button[1].Top+8*button[1].height;
button[79].Height:=button[1].height;
button[79].Width:=button[1].width;
button[79].Visible:=True;
button[79].Cursor:=crHandPoint;
for i:=80 to 86 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[79].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[87].Left:=button[1].left;
button[87].Top:=button[1].top+9*button[1].height;
button[87].Height:=button[1].height;
button[87].Width:=button[1].width;
button[87].Visible:=True;
button[87].Cursor:=crHandPoint;
for i:=88 to 89 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[87].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;

button[104].Left:=Button[89].left+button[1].width;
button[104].Top:=button[89].top;
button[104].Height:=button[1].height;
button[104].Width:=button[1].width;
button[104].Visible:=True;
button[104].Cursor:=crHandPoint;
for i:=105 to 110 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[104].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;
button[111].Left:=button[1].left;
button[111].Top:=button[1].top+10*button[1].height;
button[111].Height:=button[1].height;
button[111].Width:=button[1].width;
button[111].Visible:=True;
button[111].Cursor:=crHandPoint;
for i:=112 to 112 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[111].Top;
button[i].Height:=button[1].height;
button[i].Cursor:=crHandPoint;
button[i].Width:=button[1].width;
 end;

button[58].Left:=Button[87].left;
button[58].Top:=button[1].Top+11*button[1].height+15;
button[58].Height:=button[1].height;
button[58].Width:=button[1].width;
button[58].Visible:=True;
button[58].Cursor:=crHandPoint;
for i:=59 to 71 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[58].Top;
button[i].Height:=button[1].height;
button[i].Width:=button[1].width;
button[i].Cursor:=crHandPoint;
 end;

button[90].Left:=Button[87].left;
button[90].Top:=button[1].top+12*button[1].height+15;
button[90].Height:=button[1].height;
button[90].Width:=button[1].width;
button[90].Visible:=True;
button[90].Cursor:=crHandPoint;
for i:=91 to 103 do
 begin
button[i].Left:=Button[i-1].left+button[1].width;
button[i].Top:=Button[90].Top;
button[i].Height:=button[1].height;
button[i].Cursor:=crHandPoint;
button[i].Width:=button[1].width;
 end;



G[1].Picture.LoadFromFile('gr1.bmp');
g[1].Left:=90;
g[1].Top:=160;
g[1].Height:=65;
g[1].Width:=button[1].width;
g[1].Visible:=True;
g[1].stretch:=true;
for i:=2 to 7 do
 begin

G[i].Picture.LoadFromFile('gr'+inttostr(i)+'.bmp');
g[i].Left:=g[i-1].Left+button[1].width;
g[i].Top:=160;
g[i].Height:=65;
g[i].Width:=button[1].width;
g[i].stretch:=true;
g[i].Visible:=True;
 end;

 G[8].Picture.LoadFromFile('gr8.bmp');
g[8].Left:=g[7].Left+g[7].Width;
g[8].Top:=160;
g[8].Height:=65;
g[8].Width:=3*button[1].width;
g[8].Visible:=True;
g[8].Stretch:=true;

  P[1].Picture.LoadFromFile('pe1.bmp');
P[1].Left:=button[1].Left-30;
P[1].Top:=205;
P[1].Height:=button[1].height;
P[1].Width:=30;
p[1].stretch:=true;

for i:=2 to 3 do
begin

P[i].Picture.LoadFromFile('pe'+inttostr(i)+'.bmp');
P[i].Left:=button[1].Left-30;
P[i].Top:=P[i-1].Top+button[1].height;
P[i].Height:=button[1].Height;
P[i].Width:=30;
p[i].stretch:=true;
end;
P[4].Picture.LoadFromFile('pe4.bmp');
P[4].Left:=button[1].Left-30;
P[4].Top:=p[3].top+p[3].height;
P[4].Height:=2*button[i].height;
P[4].Width:=30;
p[4].stretch:=true;
for i:=5 to 7 do
begin
P[i].Picture.LoadFromFile('pe'+inttostr(i)+'.bmp');
P[i].Left:=button[1].Left-30;
P[i].Top:=P[i-1].Top+2*button[1].Height;
P[i].Height:=2*button[1].Height;
P[i].Width:=30;
p[i].stretch:=true;
end;


  for i:=1 to 112 do
  begin
kar[i].Left:=Button[i].Left;
kar[i].Top:=Button[i].top;
kar[i].Picture.LoadFromFile('e'+inttostr(i)+'.bmp');
kar[i].Height:=Button[i].Height;;
Kar[i].Width:=Button[i].width;
kar[i].Cursor:=crHandPoint;
kar[i].BringToFront;
kar[i].stretch:=true;
  end;

 for i:=1 to 112 do
 with button[i] do
  begin
    BringToFront;
    flat:=True;
 Tag := i;
 ControlState := [csFocusing];
 OnClick := RTimeSpeedButtonClick;
      end;

label4.Top:=label3.top+label3.Height;
label3.top:=20;
label3.Left:=button[1].left;
    label4.Caption:=nazva[e];
    label3.Caption:='Залишилося знайти елементів: '+inttostr(k1)+#10#13+'Зараз вам потрібно знайти:';
    label4.visible:=true;

     if f6 then
begin
  razmer:=35;
       label3.font.Size:=razmer;
      label4.font.Size:=razmer;
   while ((label4.top+label4.height+20)>=(g[1].top)) {or ((label3.width)>=(10*button[1].width))} do
     begin
     dec(razmer);
     label3.font.Size:=razmer;
      label4.font.Size:=razmer;
      label3.Top:=20;
      label4.Top:=label3.Top+label3.Height;
     end;
       label3.font.Size:=razmer;
      label4.font.Size:=razmer;
     f6:=false;
  end;
    label3.Caption:='';
  timer2.enabled:=true;
  end;

   if k<>0 then
   begin
    e:=random(112)+1;
    label3.Top:=20;
     label4.Caption:=nazva[e];
           //label3.left:=(10*button[1].width-label3.width) div 2+button[4].left;

          //label4.left:=(10*button[1].width-label4.width) div 2+button[4].left;
end else
  begin
       timer2.Enabled:=false;
       label3.visible:=true;

       for i:=1 to 112 do
       begin
       button[i].visible:=false;
       kar[i].Visible:=false;
       end;
      for i:=1 to 7 do
       p[i].Visible:=false;
      for i:=1 to 8 do
      g[i].Visible:=false;
     label3.Font.size:=30;
         label3.caption:='За '+inttostr(chas)+' хв. ви правильно знайшли '+inttostr(abs(k1))+' ел.!'+#10#13;
         if abs(k1)<5 then label3.Caption:=label3.Caption+'Можно й краще!';
         if (abs(k1)>5) and (abs(k1)<10) then label3.Caption:=label3.Caption+'Непогано!';
         if (abs(k1)>10) and (abs(k1)<20) then label3.Caption:=label3.Caption+'Круто!';
           if (abs(k1)>20) then label3.Caption:=label3.Caption+'Нічого собі!';
    label3.Left:=(a-label3.Width) div 2;
    label3.top:=(b-label3.height) div 2;
    label4.visible:=false;
    ramka.visible:=false;
    end;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
button10.visible:=false;
 btn1.Visible:=true;
 btn2.visible:=true;
 button1.Visible:=true;
 button2.Visible:=true;
 button3.Visible:=true;
 button4.Visible:=true;
 button5.Visible:=true;
 label1.visible:=true;
 label2.visible:=true;
  if image2.width>200 then image2.visible:=true;
  for i:=1 to 112 do
 begin
     if Assigned(button[i]) then button[i].Visible:=False;
     if assigned(kar[i]) then kar[i].visible:=false;
     end;
for i:=1 to 7 do
if assigned(p[i]) then p[i].Visible:=false;
for i:=1 to 18 do
 if assigned(g[i]) then g[i].Visible:=false;
for i:=1 to 10 do
if assigned(v[i]) then v[i].Visible:=false;
if assigned(imla) then imla.Visible:=false;
if assigned(imac) then imac.Visible:=false;
if assigned(im1lan) then im1lan.Visible:=false;
if assigned(im1act) then im1act.Visible:=false;
if assigned(information) then information.visible:=false;
bmore.visible:=false;
bclose.visible:=false;
label3.Visible:=false;
label4.Visible:=false;
timer1.Enabled:=false;
timer2.enabled:=false;
edit1.visible:=false;
updown1.Visible:=false;
button6.visible:=false;
button7.visible:=false;
button8.visible:=false;
button9.visible:=false;
if assigned(ramka) then ramka.visible:=false;
if assigned(elementi) then elementi.Visible:=false;
end;

end.

