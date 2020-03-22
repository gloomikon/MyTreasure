unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Label1: TLabel;
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
    MasForGame:array[0..2,0..2] of byte;
    x1,y1:integer;
    StepsAvailable,i,j,NolesInLine,StepsAvailableMy,Iterations,nobodywin:byte;
var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
x1:=x div 100;
y1:=y div 100;
if (StepsAvailableMy=1) and(MasForGame[x1,y1]<>1)and(MasForGame[x1,y1]<>2)  then
begin
MasForGame[x1,y1]:=2;
image1.Canvas.moveto(x1*100,y1*100);
image1.Canvas.lineto(x1*100+100,y1*100+100);
image1.Canvas.moveto(x1*100+100,y1*100);
image1.Canvas.lineto(x1*100,y1*100+100);
dec(StepsAvailableMy);
end;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
StepsAvailableMy:=1;
StepsAvailable:=1;
nobodywin:=1;

for i:=0 to 2 do
for j:=0 to 2 do
if (MasForGame[i,j]=0) then nobodywin:=0;
if  nobodywin=1 then
   begin
      StepsAvailableMy:=1;
      StepsAvailable:=1;
      label1.Caption:='nobody won';
   end;




for i:=0 to 2 do
begin
NolesInLine:=0;
for j:=0 to 2 do
if MasForGame[i,j]=1 then inc(NolesInLine);
if NolesInLine=3 then begin label1.caption:='noles win'; StepsAvailable:=0; end;
end;




for i:=0 to 2 do
begin
NolesInLine:=0;
for j:=0 to 2 do
if MasForGame[j,i]=1 then inc(NolesInLine);
if NolesInLine=3 then begin label1.caption:='noles win'; StepsAvailable:=0; end;
end;



for i:=0 to 2 do
begin
NolesInLine:=0;
for j:=0 to 2 do
if MasForGame[i,j]=2 then inc(NolesInLine);
if NolesInLine=3 then begin label1.caption:='crosses win'; StepsAvailable:=0; end;
end;




for i:=0 to 2 do
begin
NolesInLine:=0;
for j:=0 to 2 do
if MasForGame[j,i]=2 then inc(NolesInLine);
if NolesInLine=3 then begin label1.caption:='crosses win'; StepsAvailable:=0; end;
end;





if (StepsAvailable=1) and (MasForGame[1,1]<>1) and (MasForGame[1,1]<>2)  then
  begin
     MasForGame[1,1]:=1;
     StepsAvailable:=0;
     image1.Canvas.Ellipse(1*100,1*100,1*100+100,1*100+100);
  end;





if StepsAvailable=1 then
  begin
     for i:=0 to 2 do
        begin
           NolesInLine:=0;
           for j:=0 to 2 do
              if MasForGame[i,j]=1 then inc(NolesInLine);
           if NolesInLine=2 then
              begin
                 for j:=0 to 2 do
                    if (MasForGame[i,j]<>1) and (MasForGame[i,j]<>2) then
                       begin
                          MasForGame[i,j]:=1;
                          image1.Canvas.Ellipse(i*100,j*100,i*100+100,j*100+100);
                          dec(StepsAvailable);
                       end;
              end;
         end;
  end;




if StepsAvailable=1 then
  begin
     for i:=0 to 2 do
        begin
           NolesInLine:=0;
           for j:=0 to 2 do
              if MasForGame[j,i]=1 then inc(NolesInLine);
           if NolesInLine=2 then
              begin
                 for j:=0 to 2 do
                    if (MasForGame[j,i]<>1) and (MasForGame[j,i]<>2) then
                       begin
                          MasForGame[j,i]:=1;
                          image1.Canvas.Ellipse(j*100,i*100,j*100+100,i*100+100);
                          dec(StepsAvailable);
                       end;
              end;
         end;
  end;




if StepsAvailable=1 then
  begin
       i:=0;
       j:=0;
       NolesInLine:=0;
       repeat
        begin
           if MasForGame[i,j]=1 then inc(NolesInLine);
           inc(i);
           inc(j);
        end;
       until (i=2) and (j=2);
           if NolesInLine=2 then
              begin
                 i:=0;
                 j:=0;
                 repeat
                    if (MasForGame[i,j]<>1) and (MasForGame[i,j]<>2) then
                       begin
                          MasForGame[i,j]:=1;
                          image1.Canvas.Ellipse(i*100,j*100,i*100+100,j*100+100);
                          dec(StepsAvailable);
                       end;
                 inc(i);
                 inc(j);
                 until (i=2) and (j=2);
              end;
  end;



  if StepsAvailable=1 then
  begin
       i:=0;
       j:=2;
       NolesInLine:=0;
       repeat
        begin
           if MasForGame[i,j]=1 then inc(NolesInLine);
           inc(i);
           dec(j);
        end;
       until (i=2) and (j=0);
           if NolesInLine=2 then
              begin
                 i:=0;
                 j:=2;
                 repeat
                    if (MasForGame[i,j]<>1) and (MasForGame[i,j]<>2) then
                       begin
                          MasForGame[i,j]:=1;
                          image1.Canvas.Ellipse(i*100,j*100,i*100+100,j*100+100);
                          dec(StepsAvailable);
                       end;
                 inc(i);
                 dec(j);
                 until (i=2) and (j=0);
              end;
  end;







if StepsAvailable=1 then
  begin
     for i:=0 to 2 do
        begin
           NolesInLine:=0;
           for j:=0 to 2 do
              if MasForGame[i,j]=2 then inc(NolesInLine);
           if NolesInLine=2 then
              begin
                 for j:=0 to 2 do
                    if (MasForGame[i,j]<>1) and (MasForGame[i,j]<>2) then
                       begin
                          MasForGame[i,j]:=1;
                          image1.Canvas.Ellipse(i*100,j*100,i*100+100,j*100+100);
                          dec(StepsAvailable);
                       end;
              end;
         end;
  end;




if StepsAvailable=1 then
  begin
     for i:=0 to 2 do
        begin
           NolesInLine:=0;
           for j:=0 to 2 do
              if MasForGame[j,i]=2 then inc(NolesInLine);
           if NolesInLine=2 then
              begin
                 for j:=0 to 2 do
                    if (MasForGame[j,i]<>1) and (MasForGame[j,i]<>2) then
                       begin
                          MasForGame[j,i]:=1;
                          image1.Canvas.Ellipse(j*100,i*100,j*100+100,i*100+100);
                          dec(StepsAvailable);
                       end;
              end;
         end;
  end;




if StepsAvailable=1 then
begin
Iterations:=1;
repeat
randomize;
I:=random(3);
j:=random(3);
if (MasForGame[i,j]<>1) and (MasForGame[i,j]<>2)  then
   begin
      MasForGame[i,j]:=1;
      image1.Canvas.Ellipse(i*100,j*100,i*100+100,j*100+100);
      dec(StepsAvailable);
   end;
inc(Iterations);
until (Iterations=9) or (StepsAvailable=0)
end;
  end;


end.
