unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls;

type
  TForm2 = class(TForm)
    fon: TImage;
    ListBox1: TListBox;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses kol;

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
fon.Left:=0;
fon.Top:=0;
 fon.width:=1300;
 fon.height:=1200;
 fon.Stretch:=true;
 form2.Width:=700;
 form2.height:=900;
 listbox1.width:=800;
 listbox1.left:=100;


 listbox1.Height:=(listbox1.items.count+1)*listbox1.itemheight;



end;

procedure TForm2.ListBox1Click(Sender: TObject);
begin
listBox1.itemindex:=-1;
end;

procedure TForm2.ListBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
  (Control as TListBox).Canvas.FillRect(Rect);

  DrawText(
  (Control as TListBox).Canvas.Handle,
  PAnsiChar((Control as TListBox).Items[Index]),
  Length((Control as TListBox).Items[Index]),
  Rect,
  Control.DrawTextBiDiModeFlags(DT_SINGLELINE or DT_VCENTER or DT_NOPREFIX)
  );
  if odFocused in State then DrawFocusRect((Control as TListBox).Canvas.Handle, Rect);
end;

end.



