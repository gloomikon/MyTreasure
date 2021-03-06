unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,jpeg, StdCtrls, Buttons, ExtDlgs, ComCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    ColorDialog1: TColorDialog;
    BitBtn1: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    Button1: TButton;
    SavePictureDialog1: TSavePictureDialog;
    Button2: TButton;
    UpDown1: TUpDown;
    Button3: TButton;
    PaintBox1: TPaintBox;
    Image2: TImage;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure UpDown1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button3Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  jp:TJpegImage;
  pc:TBitmap;
  TC:TColor;
  fline,fline1,frctgl,frctgl1,fround,fround1,fstars,fzal:boolean;
  x0,y0,r,r1,zhir:integer;
  col:tcolor;
implementation

{$R *.dfm}
procedure StarLine(x0,y0:integer; Canvas:TCanvas);
var
p : array[1..11] of TPoint; // ����� ���������
a: integer; // ���
i: integer;
begin
form1.image1.canvas.pen.color:=TC;
a := 18;
for i:=1 to 10 do
begin
if (i mod 2=0) then
begin
p[i].x := x0+Round(r/2*cos(a*2*pi/90));
p[i].y:=y0-Round(r/2*sin(a*2*pi/90));
 end else
 begin
p[i].x:=x0+Round(r*cos(a*2*pi/90));
p[i].y:=y0-Round(r*sin(a*2*pi/90));
end;
a := a+36;
end;
p[11].X := p[1].X; p[11].Y := p[1].Y; {������ ������� ���� ���������}
Canvas.Polyline(p); {�������� ���� �� ������������ ������ ������������}

end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  var ko:TPoint;
begin
if GetKeyState(VK_LBUTTON)<0 then
 begin
     GetCursorPos(ko);
with form1.Canvas do
 begin
 //circle[ko.x,ko.y-22,3]:=clblack;
    end;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
r:=50;
form1.DoubleBuffered:=true;
fstars:=false;
fline:=false;
fline1:=false;
image1.Left:=0;
image1.Top:=100;
image1.Height:=1024-image1.Top;;
image1.width:=1280;
image1.picture.loadfromfile('fon.bmp');
image2.Left:=0;
image2.Width:=1280;
image2.Top:=100;
image2.height:=924;
image2.SendToBack;
image1.canvas.Brush.Style:=bsClear;
image1.canvas.Pen.width:=2;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  var r:byte;
begin
 if GetKeyState(VK_RBUTTON)<0 then
  begin
  image1.canvas.Brush.Style:=bsSolid;
  image1.canvas.Pen.Color:=clwhite;
 image1.Canvas.rectangle(x-5*updown1.Position,y-5*updown1.position,x+5*updown1.Position,y+5*updown1.position);

 end;

 if GetKeyState(VK_LBUTTON)<0 then
 begin
 if fstars then
   begin
   image1.Canvas.Pen.Width:=2;
   starline(x,y,image1.Canvas);
   end;
 if fline and fline1 then
 begin
 image1.picture:=image2.picture;
 image1.canvas.pen.color:=TC;
 image1.Canvas.moveto(x0,y0);
 image1.Canvas.Pen.Width :=updown1.Position;
 image1.Canvas.lineto(x,y);
image1.Canvas.moveto(x0,y0);
 end;
 if frctgl and frctgl1 then
 begin
 image1.picture:=image2.picture;
  image1.canvas.pen.color:=TC;
 image1.Canvas.moveto(x0,y0);
 image1.Canvas.Pen.Width :=updown1.Position;
 image1.Canvas.polyline([point(x0,y0),point(x,y0),point(x,y),point(x0,y),point(x0,y0)]);
 end;
 if fround and fround1 then
 begin
 image1.picture:=image2.picture;
  image1.canvas.pen.color:=TC;
 image1.canvas.Brush.Style:=bsClear;
 image1.Canvas.moveto(x0,y0);
 image1.Canvas.Pen.Width :=updown1.Position;
 image1.Canvas.roundrect(x0,y0,x,y,x-x0,y-y0);
 end;
    if not fline and not frctgl and not fround and not fstars and not fzal then
   begin
   image1.Canvas.pen.Width:=updown1.Position;
   image1.Canvas.Pen.Color := TC;
image1.Canvas.lineto(x,y);
 end;
 end;
 end;

procedure TForm1.FormActivate(Sender: TObject);
begin
form1.Refresh;
with form1.Canvas do
begin
pen.style:=pssolid;
end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
if ColorDialog1.Execute then
  TC:=colordialog1.color;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if openPictureDialog1.Execute then
       Image1.Picture.loadfromFile(openPictureDialog1.FileName);
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  if SavePictureDialog1.Execute then
       Image1.Picture.SaveToFile(SavePictureDialog1.FileName);
end;

procedure TForm1.UpDown1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
image1.Canvas.Pen.Width :=updown1.Position;
r:=50+(updown1.position-2)*5;
end;

procedure TForm1.Image1Click(Sender: TObject);
var mouse:TPoint;
begin
 GetCursorPos(mouse);
if fzal then begin image1.Canvas.brush.color:=TC; image1.Canvas.FloodFill(mouse.x,mouse.y-100,image1.Canvas.pixels[mouse.x,mouse.y-100],fsSurface); fzal:=false;end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if fline1 then begin fline1:=false; image2.Picture:=image1.Picture; end;
if frctgl1 then begin frctgl1:=false; image2.Picture:=image1.Picture;end;
if fround1 then begin fround1:=false; image2.Picture:=image1.Picture;end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
fzal:=false;
fstars:=false;
frctgl:=false;
fround:=false;
fline:=true;
image2.picture:=image1.picture;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
x0:=x;
y0:=y;
image1.Canvas.MoveTo(x0,y0);
if fline and not fline1 then fline1:=true;
if frctgl and not frctgl1 then frctgl1:=true;
if fround and not fround1 then fround1:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
fzal:=false;
fstars:=false;
frctgl:=true;
fround:=false;
fline:=false;
image2.picture:=image1.picture;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
fzal:=false;
fstars:=false;
frctgl:=false;
fround:=true;
fline:=false;
image2.picture:=image1.picture;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
fzal:=false;
frctgl:=false;
fline:=false;
fround:=false;
fstars:=false;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
fzal:=false;
zhir:=updown1.Position;
fstars:=true;
frctgl:=false;
fround:=false;
fline:=false;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
fzal:=true;
frctgl:=false;
fline:=false;
fround:=false;
fstars:=false;
end;

end.
