unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,JPEG, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    i,k:integer;
   a:array [1..9] of TEdit;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
k:=1;
for i:=1 to 9 do

Image1.Picture.LoadFromFile('^404DD0CAADD1D6678127FFCCAF552F595EADC758AC4F356441^pimgpsh_fullsize_distr.jpg');
Image1.Width:=1280;
Image1.height:=1024;
Image1.Top:=0;
image1.left:=0;
edit1.width:=800;
edit1.Tag:=0;
edit1.Left:=1280 div 2-(edit1.width div 2);
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin

  end;
end;

end.
