unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,jpeg, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    UpDown1: TUpDown;
    Button1: TButton;
    Button2: TButton;
    procedure FormActivate(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
     procedure kraska();
     procedure par();
      procedure lin();
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  var x,y,xmax,ymax,pos,k:integer;
  f,fp,fl:boolean;
implementation

{$R *.dfm}
     procedure TForm1.par();
     var i,j,x0,y0:integer;
     f1:boolean;
     begin
      x:=640;
y:=512;
f1:=true;
if f=true then canvas.Pen.color:=clBtnFace;
         for i:=100 to xmax do
       for j:=100 to ymax  do
        begin
        if (i-x)*(i-x)/k/k=(y-j)/k then if f1 then begin canvas.MoveTo(i,j); f1:=false; end else canvas.lineto(i,j);
         end;
         canvas.pen.color:=clblack;
      end;


      procedure TForm1.lin();
     var i,j,x0,y0:integer;
     f1:boolean;
     begin
      x:=640;
y:=512;
f1:=true;
if f=true then canvas.Pen.color:=clBtnFace;
         for i:=100 to xmax do
         begin
       for j:=100 to ymax  do
        begin
        if (i-x)/k=(y-j)/k then begin canvas.MoveTo(i,j); canvas.lineto(x+(640-i),y-(j-512)); f1:=false; break;  end;
         end;
         if not f1 then break;
         end;
         canvas.pen.color:=clblack;
      end;
    procedure Tform1.kraska();

 begin
 if f=true then canvas.Pen.color:=clBtnFace;
   x:=640;
y:=512;
xmax:=1180;
ymax:=924;
 with Canvas do
  begin
MoveTo(100,512);
lineto(1180,512);
moveto(640,100);
lineto(640,924);
pen.width:=2;
while (x+k<=xmax)do
 begin
 x:=x+k;
 moveto(x,100);
 lineto(x,ymax-4);
 end;
  x:=640;
while (x-k>=100)do
 begin
 x:=x-k;
 moveto(x,100);
 lineto(x,ymax-4);
 end;

    while (y+k<=ymax)do
 begin
 y:=y+k;
 moveto(100,y);
 lineto(xmax,y);
 end;
 y:=512;
 while (y-k>=100)do
 begin
 y:=y-k;
 moveto(100,y);
 lineto(xmax,y);
 end;
pen.style:=pssolid;
pen.Color:=clblack;
f :=false;
pen.Width:=5;
moveto(100,100);
lineto(1178,100);
lineto(1178,924);
lineto(100,924);
lineto(100,100);
end;
end;





procedure TForm1.FormCreate(Sender: TObject);
begin
fp:=false;
fl:=false;
pos:=20;
k:=20;
image1.Left:=0;
image1.Top:=0;
image1.Height:=1024;
image1.width:=1280;
image1.picture.loadfromfile('fon.jpg');
image1.SendToBack;
button1.Width:=100;
button1.Height:=98;
button2.Width:=98;
button2.Height:=100;
button1.Left:=0;
button2.Left:=0;
button1.Caption:='Это кнопка';
button2.Caption:='Это тоже кнопка';
updown1.height:=400;
updown1.top:=512-updown1.height div 2;
updown1.Left:=1182;
updown1.Width:=98;

end;


procedure TForm1.FormActivate(Sender: TObject);

begin

form1.Refresh;
with form1.Canvas do
begin
pen.Width:=5;
rectangle(100,100,1180,924);

 end;
 kraska();
 //par;
button2.ControlState := [csFocusing];
button1.ControlState := [csFocusing];
end;

procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
k:=pos;
f:=true;
if fp then par;
if fl then lin;
kraska;
pos:=updown1.Position;
k:=pos;
if fp then par;
if fl then lin;
kraska;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if fp=true then
 begin
 f:=true;
 par;
 f:=false;
 kraska;
 fp:=false;
 end;
 lin;
 fl:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if fl=true then
 begin
 f:=true;
 lin;
 f:=false;
 kraska;
 fl:=false;
 end;
 par;
 fp:=true;
end;

end.
