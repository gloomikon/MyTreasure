unit kol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a:array[1..12] of TImage;
  i:integer;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
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
 a[i].Width:=100;
 a[i].Height:=100;
 a[i].Picture:=LoadFromFile(inttostr(i)+'.bmp');
 end;
end;

end.
