unit kol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, pngimage;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
     procedure bmove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  public
   index:integer;
  procedure bclick(Sender: TObject);

    { Public declarations }

  end;

var
  Form1: TForm1;
  a:array[1..12] of TImage;
  naz:array[1..12] of string;
  i:integer;
implementation

uses Unit2;

{$R *.dfm}
      procedure TForm1.bmove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  var s:string;
  f:textfile;
  begin
  label2.visible:=true;
  assignfile(f,inttostr((Sender as TImage).Tag)+'.txt');
  reset(f);
 Readln(f,s);
  label2.caption:=s;
  closefile(f);
  label2.Left:=a[(Sender as TImage).Tag].left+85-(label2.width div 2);
  label2.top:=a[(Sender as TImage).Tag].top+170;

  end;
  procedure TForm1.bclick(Sender: TObject);
  var index:integer;
  begin
   Form2.ListBox1.Items.LoadFromFile('i'+inttostr((sender as TImage).Tag)+'.txt');
    form2.listbox1.width:=500;
 form2.listbox1.left:=100;
  form2.listbox1.top:=20;
    //form2.Height:=form2.listbox1.height+20;
 form2.listbox1.Height:=(form2.listbox1.items.count+1)*form2.listbox1.itemheight;
 form2.Image1.picture.LoadFromFile('k'+inttostr((sender as TImage).Tag)+'.png');
  form2.Image1.Left:=50;
  form2.Image1.Top:=form2.ListBox1.Top+50+form2.ListBox1.Height;
  form2.Image1.Width:=600;
  form2.Image1.Height:=form2.Height-50-form2.Image1.Top;
   if (not Assigned(Form2)) then
    begin
    form2:=TForm2.Create(Self);
    form2.borderstyle:=bsDialog;
    end;
    form2.caption:=naz[(sender as TImage).Tag];
    form2.show;
  end;
procedure TForm1.FormCreate(Sender: TObject);
begin
naz[1]:='Водолей';
naz[2]:='Рыбы';
naz[3]:='Овен';
naz[4]:='Телец';
naz[5]:='Близнецы';
naz[6]:='РАК';
naz[7]:='Лев';
naz[8]:='Дева';
naz[9]:='Весы';
naz[10]:='Скорпион';
naz[11]:='Стрелец';
naz[12]:='Козерог';
label2.Visible:=false;
form1.Width:=screen.Height;
form1.Height:=screen.Width;
image1.Width:=screen.Width;
image1.Height:=screen.Height;
image1.sendtoback;
for i:=1 to 12 do
 begin
 a[i]:=TImage.Create(Self);
 a[i].Parent:=Form1;
 a[i].Visible:=true;
 a[i].Width:=170;
 a[i].Height:=170;
 a[i].transparent:=false;
 a[i].stretch:=true;
 a[i].Cursor:=crHandPoint;
 a[i].Picture.loadfromfile(inttostr(i)+'.bmp');
 a[i].OnMouseMove:=bmove;
 a[i].OnClick:=bclick;
 a[i].bringtofront;
 a[i].showhint:=true;
 end;
 for i:=1 to 12 do
 a[i].tag:=i;
 a[12].Left:=555;
 a[12].top:=10;
 a[6].Left:=555;
 a[6].Top:=1024-10-170;
 a[3].Left:=640+(512-10-170);
 a[3].top:=512-100;
 a[9].left:=640-(512-10-170)-170;
 a[9].top:=512-85;
 a[1].Top:=110+(512-110)div 3-180;
 a[1].left:=512+(1042-512)div 3+90;
 a[2].Left:=a[1].left+150;
 a[2].Top:=a[1].Top+150;
 a[4].Top:=1024-a[2].top-190;
 a[4].left:=a[2].left;
 a[5].Left:=a[1].Left;
 a[5].Top:=1024-a[1].Top-190;
 a[7].Top:=a[5].top;
 a[7].left:=1280-a[5].left-160;
 a[8].Top:=a[4].Top;
 a[8].left:=1280-a[4].left-160;
 a[10].Left:=a[8].Left;
 a[10].Top:=a[2].Top;
 a[11].left:=a[7].Left;
 a[11].top:=a[1].top;
 label1.Caption:='Нажмите'+#13#10+'на знак зодиака'+#13#10+'и'+#13#10+'узнайте, в чем вы'+#13#10+'САМЫЙ-САМЫЙ!'
end;




procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
label2.Visible:=false;
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
label2.Visible:=false;
end;

procedure TForm1.Button1Click(Sender: TObject);
 var Form2:TForm;
  begin

   if (not Assigned(Form2)) then
    begin
    form2:=TForm.Create(Self);
    form2.borderstyle:=bsDialog;
    end;
    form2.show;
  end;

end.
