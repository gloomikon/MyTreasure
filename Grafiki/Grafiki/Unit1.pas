unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    UpDown1: TUpDown;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure UpDown1Changing(Sender: TObject; var AllowChange: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   fl,fp,fg:boolean;
   kof:integer;
implementation

//uses Unit1;

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
var i:integer;
 begin
 form1.Refresh;

 {–»—Œ¬¿Õ»≈}
 
 form1.Canvas.pen.Color:=clblack;
 form1.Canvas.Pen.Width:=5;
 form1.Canvas.moveto(640,0);
 form1.Canvas.lineto(640,1024);
 form1.Canvas.MoveTo(0,512);
 form1.Canvas.LineTo(1280,512);
  form1.Canvas.Pen.Width:=2;
 for i:=641 to 1280 do
  if (i-640) mod kof=0 then
   begin
   form1.Canvas.moveto(i,0);
   form1.Canvas.lineto(i,1024);
   end;
   for i:=0 to 639 do
  if (640-i) mod kof=0 then
   begin
   form1.Canvas.moveto(i,0);
   form1.Canvas.lineto(i,1024);
   end;
   for i:=513 to 1024 do
  if (i-512) mod kof=0 then
   begin
   form1.Canvas.moveto(0,i);
   form1.Canvas.lineto(1280,i);
   end;
    for i:=0 to 511 do
  if (512-i) mod kof=0 then
   begin
   form1.Canvas.moveto(0,i);
   form1.Canvas.lineto(1280,i);
   end;
  { ŒÕ≈÷ –»—Œ¬¿Õ»ﬂ}

 end;
procedure TForm1.Button1Click(Sender: TObject);
var i,j,k,l:integer;
f:boolean;
begin
k:=strtoint(edit4.Text);
l:=strtoint(edit5.Text);
fg:=false;
fp:=false;
fl:=true;
f:=false;
form1.Canvas.pen.width:=3;
form1.Canvas.pen.color:=clred;
for i:=0 to 1280 do
for j:=0 to 1024 do
 begin
 if k*(i-640)/kof+l=(512-j)/kof then if f=false then begin f:=true; form1.Canvas.moveto(i,j); end else form1.Canvas.lineto(i,j);
 end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var i,j,a,b,c:integer;
f:boolean;
begin
fp:=true;
fg:=false;
fl:=false;
a:=strtoint(edit1.Text);
b:=strtoint(edit2.Text);
c:=strtoint(edit3.Text);
  f:=false;
form1.Canvas.pen.width:=3;
form1.Canvas.pen.color:=clred;
for i:=0 to 1280 do
for j:=0 to 1024 do
 begin
 if a*((i-640)*(i-640)/kof/kof)+b*(i-640)/kof+c=(512-j)/kof then if f=false then begin f:=true; form1.Canvas.moveto(i,j); end else form1.Canvas.lineto(i,j);
 end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var i,j:integer;
f:boolean;
begin
fp:=false;
fg:=true;
fl:=false;
  f:=false;
form1.Canvas.pen.width:=3;
form1.Canvas.pen.color:=clred;
for i:=0 to 639 do
for j:=0 to 1024 do
 begin
 if kof*kof/(i-640)=(512-j) then if f=false then begin f:=true; form1.Canvas.moveto(i,j); end else form1.Canvas.lineto(i,j);
 end;
 f:=false;
 for i:=641 to 1280 do
for j:=0 to 1024 do
 begin
 if kof*kof/(i-640)=(512-j) then if f=false then begin f:=true; form1.Canvas.moveto(i,j); end else form1.Canvas.lineto(i,j);
 end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
kof:=10;
fl:=false;
fp:=false;
fg:=false;
end;

procedure TForm1.Button4Click(Sender: TObject);
var i:integer;
begin
form1.Canvas.FillRect(form1.ClientRect);
{–»—Œ¬¿Õ»≈}
 form1.Canvas.pen.Color:=clblack;
 form1.Canvas.Pen.Width:=5;
 form1.Canvas.moveto(640,0);
 form1.Canvas.lineto(640,1024);
 form1.Canvas.MoveTo(0,512);
 form1.Canvas.LineTo(1280,512);
  form1.Canvas.Pen.Width:=2;
 for i:=641 to 1280 do
  if (i-640) mod kof=0 then
   begin
   form1.Canvas.moveto(i,0);
   form1.Canvas.lineto(i,1024);
   end;
   for i:=0 to 639 do
  if (640-i) mod kof=0 then
   begin
   form1.Canvas.moveto(i,0);
   form1.Canvas.lineto(i,1024);
   end;
   for i:=513 to 1024 do
  if (i-512) mod kof=0 then
   begin
   form1.Canvas.moveto(0,i);
   form1.Canvas.lineto(1280,i);
   end;
    for i:=0 to 511 do
  if (512-i) mod kof=0 then
   begin
   form1.Canvas.moveto(0,i);
   form1.Canvas.lineto(1280,i);
   end;
  { ŒÕ≈÷ –»—Œ¬¿Õ»ﬂ}
end;

procedure TForm1.UpDown1Changing(Sender: TObject;
  var AllowChange: Boolean);
  var i,j,a,b,c,k,l:integer;
  f:boolean;
begin
kof:=updown1.position;
form1.Canvas.FillRect(form1.ClientRect);
{–»—Œ¬¿Õ»≈}
 form1.Canvas.pen.Color:=clblack;
 form1.Canvas.Pen.Width:=5;
 form1.Canvas.moveto(640,0);
 form1.Canvas.lineto(640,1024);
 form1.Canvas.MoveTo(0,512);
 form1.Canvas.LineTo(1280,512);
  form1.Canvas.Pen.Width:=2;
 for i:=641 to 1280 do
  if (i-640) mod kof=0 then
   begin
   form1.Canvas.moveto(i,0);
   form1.Canvas.lineto(i,1024);
   end;
   for i:=0 to 639 do
  if (640-i) mod kof=0 then
   begin
   form1.Canvas.moveto(i,0);
   form1.Canvas.lineto(i,1024);
   end;
   for i:=513 to 1024 do
  if (i-512) mod kof=0 then
   begin
   form1.Canvas.moveto(0,i);
   form1.Canvas.lineto(1280,i);
   end;
    for i:=0 to 511 do
  if (512-i) mod kof=0 then
   begin
   form1.Canvas.moveto(0,i);
   form1.Canvas.lineto(1280,i);
   end;
  { ŒÕ≈÷ –»—Œ¬¿Õ»ﬂ}
  if fl then
   begin
   k:=strtoint(edit4.Text);
l:=strtoint(edit5.Text);
   f:=false;
form1.Canvas.pen.width:=3;
form1.Canvas.pen.color:=clred;
for i:=0 to 1280 do
for j:=0 to 1024 do
 begin
 if k*(i-640)/kof+l=(512-j)/kof then if f=false then begin f:=true; form1.Canvas.moveto(i,j); end else form1.Canvas.lineto(i,j);
 end;
 end;
 if fp then
  begin
  a:=strtoint(edit1.Text);
b:=strtoint(edit2.Text);
c:=strtoint(edit3.Text);
  f:=false;
form1.Canvas.pen.width:=3;
form1.Canvas.pen.color:=clred;
for i:=0 to 1280 do
for j:=0 to 1024 do
 begin
 if a*((i-640)*(i-640)/kof/kof)+b*(i-640)/kof+c=(512-j)/kof then if f=false then begin f:=true; form1.Canvas.moveto(i,j); end else form1.Canvas.lineto(i,j);
 end;
   end;
   if fg then
    begin
    f:=false;
form1.Canvas.pen.width:=3;
form1.Canvas.pen.color:=clred;
for i:=0 to 639 do
for j:=0 to 1024 do
 begin
 if kof*kof/(i-640)=(512-j) then if f=false then begin f:=true; form1.Canvas.moveto(i,j); end else form1.Canvas.lineto(i,j);
 end;
 f:=false;
 for i:=641 to 1280 do
for j:=0 to 1024 do
 begin
 if kof*kof/(i-640)=(512-j) then if f=false then begin f:=true; form1.Canvas.moveto(i,j); end else form1.Canvas.lineto(i,j);
 end;
 end;
end;

end.
