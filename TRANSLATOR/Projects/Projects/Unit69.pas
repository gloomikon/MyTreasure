unit Unit69;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,JPEG, StdCtrls, Buttons, ComCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure UpDown1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure UpDown2Changing(Sender: TObject; var AllowChange: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a:array [1..9] of TEdit;
  i,k,t:integer;
  f:text;
  s:string;
  b:array [1..4] of string;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
k:=9;
b[1]:='Русский';
b[2]:='Українська';
b[3]:='English';
b[4]:='Deutsch';
Image1.Picture.LoadFromFile('fon.jpg');
Image1.Width:=1280;
Image1.height:=1024;
Image1.Top:=0;
image1.left:=0;
edit1.width:=800;
edit1.top:=1024-edit1.height;
edit1.Left:=1280 div 2-(edit1.width div 2);
SpeedButton1.Height:=edit1.Height;
SpeedButton1.Width:=edit1.Left-50;
SpeedButton2.Height:=edit1.Height;
SpeedButton2.Width:=SpeedButton1.width;
SpeedButton1.Top:=1024-speedbutton1.Height;
SpeedButton2.Top:=1024-speedbutton2.Height;
SpeedButton1.Left:=0;
UpDown1.top:=SpeedButton1.top;
UpDown1.height:=SpeedButton1.height;
UpDown1.left:=SpeedButton1.width;
UpDown1.width:=edit1.left-SpeedButton1.width;
UpDown2.top:=SpeedButton1.top;
UpDown2.height:=SpeedButton1.height;
UpDown2.left:=SpeedButton1.width+updown1.width+edit1.width;
UpDown2.width:=edit1.left-SpeedButton1.width;
SpeedButton2.Left:=edit1.left+edit1.width+50;
SpeedButton1.Caption:='Русский';
SpeedButton2.Caption:='Українська';
for i:=2 to 9 do
begin
a[i]:=TEdit.Create(Self);
 a[i].Parent:=Form1;
 a[i].Font:=edit1.Font;
 a[i].ReadOnly:=true;
 a[i].width:=500;
a[i].Visible:=false;
 if i mod 2 =0 then begin
a[i].top:=i*100-50;
a[i].Left:=350;
a[i].Color:=clBtnShadow;
 end
 else begin
 a[i].top:=(i-1)*100-a[i].Height-50;
a[i].Left:=480;
a[i].Color:=clHighlight;
 end;
end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
if SpeedButton1.Caption='Русский' then begin assignfile(f,'1.txt'); reset(f);end;
if SpeedButton1.Caption='Українська' then begin assignfile(f,'2.txt'); reset(f);end;
if SpeedButton1.Caption='English' then begin assignfile(f,'3.txt'); reset(f);end;
if SpeedButton1.Caption='Deutsch' then begin assignfile(f,'4.txt'); reset(f);end;
t:=1;
s:='';
readln(f,s);
while (t<11) do if s<>AnsiUpperCase(edit1.text) then begin readln(f,s); t:=t+1; end else break;  closefile(f);
if SpeedButton2.Caption='Русский' then begin assignfile(f,'1.txt'); reset(f);end;
if SpeedButton2.Caption='Українська' then begin assignfile(f,'2.txt'); reset(f);end;
if SpeedButton2.Caption='English' then begin assignfile(f,'3.txt'); reset(f);end;
if SpeedButton2.Caption='Deutsch' then begin assignfile(f,'4.txt'); reset(f);end;
if t<=10 then
for i:=1 to t do
    readln(f,s)
else s:=edit1.text;
 closefile(f);
   if k>1 then
if a[k].visible=false then begin a[k].Visible:=true; a[k-1].Visible:=true; k:=k-2; end;
  for i:=2 to 7 do
    a[i].text:=a[i+2].text;
    s:=AnsiLowerCase(s);
  a[8].text:=s;
  a[9].text:=edit1.text;
  edit1.Text:='';
  end;
end;

procedure TForm1.UpDown1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
speedbutton1.Caption:=b[UpDown1.position];
end;

procedure TForm1.UpDown2Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
speedbutton2.Caption:=b[UpDown2.position];
end;

end.
