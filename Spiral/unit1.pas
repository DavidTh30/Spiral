unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ComCtrls, math, BGRABitmap, BGRABitmapTypes, BCTypes, ECTabCtrl, ECLightView,
  ECScheme,Unit2, Menus, Types;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button0: TButton;
    Button7: TButton;
    ECTabCtrl1: TECTabCtrl;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MenuItem1: TMenuItem;
    PageControl1: TPageControl;
    PaintBox1: TPaintBox;
    PaintBox2: TPaintBox;
    PaintBox3: TPaintBox;
    PaintBox4: TPaintBox;
    PaintBox5: TPaintBox;
    PaintBox0: TPaintBox;
    PaintBox6: TPaintBox;
    PopupMenu1: TPopupMenu;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer0: TTimer;
    Timer6: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button0Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure ECTabCtrl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure PaintBox2Paint(Sender: TObject);
    procedure PaintBox3Paint(Sender: TObject);
    procedure PaintBox4Paint(Sender: TObject);
    procedure PaintBox5Paint(Sender: TObject);
    procedure PaintBox0Paint(Sender: TObject);
    procedure PaintBox6Paint(Sender: TObject);
    procedure Timer0Timer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  i0:float;
  i1:float;
  i2:float;
  i3:float;
  i4:float;
  i5:float;
  i6:float;

  bmp0: TBGRABitmap;
  bmp1: TBGRABitmap;
  bmp2: TBGRABitmap;
  bmp3: TBGRABitmap;
  bmp4: TBGRABitmap;
  bmp5: TBGRABitmap;
  bmp6: TBGRABitmap;

  bmp0_V_Flip: TBGRABitmap;
  bmp1_V_Flip: TBGRABitmap;
  bmp2_V_Flip: TBGRABitmap;
  bmp3_V_Flip: TBGRABitmap;
  bmp4_V_Flip: TBGRABitmap;
  bmp5_V_Flip: TBGRABitmap;
  bmp6_V_Flip: TBGRABitmap;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button0Click(Sender: TObject);
begin
  if (i0 = 0)then
  begin
    bmp0.Free;
    bmp0 := TBGRABitmap.Create(PaintBox0.Width,PaintBox0.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  end;
  Timer0.Enabled:=not Timer0.Enabled;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (i1 = 0)then
  begin
    bmp1.Free;
    bmp1 := TBGRABitmap.Create(PaintBox1.Width,PaintBox1.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  end;
  Timer1.Enabled:=not Timer1.Enabled;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if (i2 = 0) then
  begin
    bmp2.Free;
    bmp2 := TBGRABitmap.Create(PaintBox2.Width,PaintBox2.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  end;
  Timer2.Enabled:=not Timer2.Enabled;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if (i3 = 0)then
  begin
    bmp3.Free;
    bmp3 := TBGRABitmap.Create(PaintBox3.Width,PaintBox3.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  end;
  Timer3.Enabled:=not Timer3.Enabled;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if (i4 < 0.01)then
  begin
    i4:=0.01;
    bmp4.Free;
    bmp4 := TBGRABitmap.Create(PaintBox4.Width,PaintBox4.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  end;
  Timer4.Enabled:=not Timer4.Enabled;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if (i5 = 0)then
  begin
    bmp5.Free;
    bmp5 := TBGRABitmap.Create(PaintBox5.Width,PaintBox5.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  end;
  Timer5.Enabled:=not Timer5.Enabled;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if (i6 = -7)then
  begin
    bmp6.Free;
    bmp6 := TBGRABitmap.Create(PaintBox6.Width,PaintBox6.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  end;
  Timer6.Enabled:=not Timer6.Enabled;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Timer0.Enabled:=false;
  Timer1.Enabled:=false;
  Timer2.Enabled:=false;
  Timer3.Enabled:=false;
  Timer4.Enabled:=false;
  Timer5.Enabled:=false;
  Timer6.Enabled:=false;

  i0:=0;
  i1:=0;
  i2:=0;
  i3:=0;
  i4:=0.01;
  i5:=0;
  i6:=-7;

  bmp0.Free;
  bmp0 := TBGRABitmap.Create(PaintBox0.Width,PaintBox0.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp1.Free;
  bmp1 := TBGRABitmap.Create(PaintBox1.Width,PaintBox1.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp2.Free;
  bmp2 := TBGRABitmap.Create(PaintBox2.Width,PaintBox2.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp3.Free;
  bmp3 := TBGRABitmap.Create(PaintBox3.Width,PaintBox3.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp4.Free;
  bmp4 := TBGRABitmap.Create(PaintBox4.Width,PaintBox4.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp5.Free;
  bmp5 := TBGRABitmap.Create(PaintBox5.Width,PaintBox5.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp6.Free;
  bmp6 := TBGRABitmap.Create(PaintBox6.Width,PaintBox6.Height, ColorToBGRA(ColorToRGB(clBtnFace)));

  bmp0_V_Flip.Free;
  bmp0_V_Flip := TBGRABitmap.Create(PaintBox0.Width,PaintBox0.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp0_V_Flip.Draw(PaintBox0.Canvas,0,0);
  bmp1_V_Flip.Free;
  bmp1_V_Flip := TBGRABitmap.Create(PaintBox1.Width,PaintBox1.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp1_V_Flip.Draw(PaintBox1.Canvas,0,0);
  bmp2_V_Flip.Free;
  bmp2_V_Flip := TBGRABitmap.Create(PaintBox2.Width,PaintBox2.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp2_V_Flip.Draw(PaintBox2.Canvas,0,0);
  bmp3_V_Flip.Free;
  bmp3_V_Flip := TBGRABitmap.Create(PaintBox3.Width,PaintBox3.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp3_V_Flip.Draw(PaintBox3.Canvas,0,0);
  bmp4_V_Flip.Free;
  bmp4_V_Flip := TBGRABitmap.Create(PaintBox4.Width,PaintBox4.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp4_V_Flip.Draw(PaintBox4.Canvas,0,0);
  bmp5_V_Flip.Free;
  bmp5_V_Flip := TBGRABitmap.Create(PaintBox5.Width,PaintBox5.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp5_V_Flip.Draw(PaintBox5.Canvas,0,0);
  bmp6_V_Flip.Free;
  bmp6_V_Flip := TBGRABitmap.Create(PaintBox6.Width,PaintBox6.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp6_V_Flip.Draw(PaintBox6.Canvas,0,0);
end;

procedure TForm1.ECTabCtrl1Change(Sender: TObject);
begin
  if not Form1.Active then exit;
   Application.ProcessMessages;
   PageControl1.TabIndex:=ECTabCtrl1.TabIndex;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  i0:=0;
  i1:=0;
  i2:=0;
  i3:=0;
  i4:=0.01;
  i5:=0;
  i6:=-7;

  bmp0 := TBGRABitmap.Create(PaintBox0.Width,PaintBox0.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  //ColorToBGRA(ColorToRGB(clBtnFace)) // BGRA(239,239,239)  //88,195,BGRA(239,239,239)
  //ColorToBGRA(ColorToRGB(clDefault)) //ColorToBGRA(ColorToRGB(clLime)) //ColorToBGRA(ColorToRGB($00D1C6AF))
  bmp1 := TBGRABitmap.Create(PaintBox1.Width,PaintBox1.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  //bmp.Canvas2D.strokeStyle ('rgb(155,155,155)');
  //bmp.Canvas2D.stroke();
  //bmp.Canvas2D.lineWidth:=1;
  //bmp.Canvas2D.fillStyle('rgb(255,0,0)');
  bmp2 := TBGRABitmap.Create(PaintBox2.Width,PaintBox2.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp3 := TBGRABitmap.Create(PaintBox3.Width,PaintBox3.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp4 := TBGRABitmap.Create(PaintBox4.Width,PaintBox4.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp5 := TBGRABitmap.Create(PaintBox5.Width,PaintBox5.Height, ColorToBGRA(ColorToRGB(clBtnFace)));

  bmp0_V_Flip := TBGRABitmap.Create(PaintBox0.Width,PaintBox0.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp1_V_Flip := TBGRABitmap.Create(PaintBox1.Width,PaintBox1.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp2_V_Flip := TBGRABitmap.Create(PaintBox2.Width,PaintBox2.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp3_V_Flip := TBGRABitmap.Create(PaintBox3.Width,PaintBox3.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp4_V_Flip := TBGRABitmap.Create(PaintBox4.Width,PaintBox4.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp5_V_Flip := TBGRABitmap.Create(PaintBox5.Width,PaintBox5.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
  bmp6_V_Flip := TBGRABitmap.Create(PaintBox6.Width,PaintBox6.Height, ColorToBGRA(ColorToRGB(clBtnFace)));
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  bmp0.Free;
  bmp1.Free;
  bmp2.Free;
  bmp3.Free;
  bmp4.Free;
  bmp5.Free;
  bmp6.Free;

  bmp0_V_Flip.Free;
  bmp1_V_Flip.Free;
  bmp2_V_Flip.Free;
  bmp3_V_Flip.Free;
  bmp4_V_Flip.Free;
  bmp5_V_Flip.Free;
  bmp6_V_Flip.Free;
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.PaintBox0Paint(Sender: TObject);
begin
  bmp0_V_Flip.Draw(PaintBox0.Canvas,0,0);
end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
  bmp1_V_Flip.Draw(PaintBox1.Canvas,0,0);
end;

procedure TForm1.PaintBox2Paint(Sender: TObject);
begin
  bmp2_V_Flip.Draw(PaintBox2.Canvas,0,0);
end;

procedure TForm1.PaintBox3Paint(Sender: TObject);
begin
  bmp3_V_Flip.Draw(PaintBox3.Canvas,0,0);
end;

procedure TForm1.PaintBox4Paint(Sender: TObject);
begin
  bmp4_V_Flip.Draw(PaintBox4.Canvas,0,0);
end;

procedure TForm1.PaintBox5Paint(Sender: TObject);
begin
  bmp5_V_Flip.Draw(PaintBox5.Canvas,0,0);
end;

procedure TForm1.PaintBox6Paint(Sender: TObject);
begin
  bmp6_V_Flip.Draw(PaintBox6.Canvas,0,0);
end;

procedure TForm1.Timer0Timer(Sender: TObject);
var
  Orgx:integer;
  Orgy:integer;
  Radian:float;
  x:float;
  y:float;
  x_:integer;
  y_:integer;
  t:float;
  a:float;
  //t=angle
  i:integer;
begin

  //$ff000000=alpha $00ff0000=Blue  $0000ff00=Green $000000ff=Red $00000000=black
  //BGRA(0,255,255,255)

  Orgx:=round(PaintBox0.Width/2);
  Orgy:=round(PaintBox0.Height/2);
  Radian:=30;

  t:=DegToRad(i0);
  a:=DegToRad(90);

  x_ := round((Radian*cos(t+a)) + Orgx);
  y_ := round((Radian*sin(t+a)) + Orgy);

  x_ := round((Radian*cos(t)*cos(a)) - (Radian*sin(t)*sin(a)) + Orgx);
  y_ := round((Radian*sin(t)*cos(a)) + (Radian*cos(t)*sin(a)) + Orgy);

  x:=round(Radian);
  y:=0;//round(Radian);
  x_ := round((x*cos(t)) - (y*sin(t)) + Orgx);
  y_ := round((x*sin(t)) + (y*cos(t)) + Orgy);

  bmp0.Canvas.Clear;
  For i := -70 To 70 do
  begin
    x:=i/10;
    y:=power(x,2);
    x_ := round((x*cos(t)) - (y*sin(t)) + Orgx);
    y_ := round((x*sin(t)) + (y*cos(t)) + Orgy);
    bmp0.Canvas.Pixels[x_,y_]:=$00B0B0B0;
  end;

  //x:=round(Radian);
  //y:=round(Radian);
  //x_ := round(sin((x*cos(t)) - (y*sin(t)) + Orgx));
  //y_ := round((x*sin(t)) + (y*cos(t)) + Orgy);

  bmp0.Canvas.Pixels[x_,y_]:=$00B0B0B0;
  bmp0.Draw(bmp0_V_Flip.Canvas,0,0);
  bmp0_V_Flip.VerticalFlip;
  bmp0_V_Flip.Draw(PaintBox0.Canvas,0,0);

  i0 := i0+1;
  Button0.Caption:='r(t) = R; X^2:'+ FloatToStrf(i0,ffFixed,18,2);
  if i0 >=360 then begin i0:=0; Timer0.Enabled:=false; end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  Orgx:integer;
  Orgy:integer;
  Radian:float;
  r_t:float;
  x:integer;
  y:integer;
  t:float;
  //t=angle
begin

  //$ff000000=alpha $00ff0000=Blue  $0000ff00=Green $000000ff=Red $00000000=black
  //BGRA(0,255,255,255)

  Orgx:=round(PaintBox1.Width/2);
  Orgy:=round(PaintBox1.Height/2);
  Radian:=60;

  r_t:=Radian;

  t:=DegToRad(i1);
  x := round((r_t*cos(t)) + (0*sin(t)) + Orgx);
  y := round((r_t*sin(t)) - (0*cos(t)) + Orgy);

  bmp1.Canvas.Pixels[x,y]:=$00B0B0B0;
  bmp1.Draw(bmp1_V_Flip.Canvas,0,0);
  bmp1_V_Flip.VerticalFlip;
  bmp1_V_Flip.Draw(PaintBox1.Canvas,0,0);

  i1 := i1+1;
  Label1.Caption:='Circle angle:'+ FloatToStrf(i1,ffFixed,18,2);
  if i1 >=360 then begin i1:=0; Timer1.Enabled:=false; end;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
  Orgx:integer;
  Orgy:integer;
  r_t:float;
  x:integer;
  y:integer;
  t:float;
  //t=angle
begin
  
  //$ff000000=alpha $00ff0000=Blue  $0000ff00=Green $000000ff=Red $00000000=black
  //BGRA(0,255,255,255)

  Orgx:=round(PaintBox2.Width/2);
  Orgy:=round(PaintBox2.Height/2);

  t:=DegToRad(i2);

  r_t:=t;

  x := round((r_t*cos(t)) - (0*sin(t)) + Orgx);
  y := round((r_t*sin(t)) + (0*cos(t)) + Orgy);

  bmp2.Canvas.Pixels[x,y]:=$00B0B0B0;
  bmp2.Draw(bmp2_V_Flip.Canvas,0,0);
  bmp2_V_Flip.VerticalFlip;
  bmp2_V_Flip.Draw(PaintBox2.Canvas,0,0);

  i2 := i2+1;

  if i2 >=360*9 then begin i2:=0; Timer2.Enabled:=false; end;

end;

procedure TForm1.Timer3Timer(Sender: TObject);
var
  Orgx:integer;
  Orgy:integer;
  r_t:float;
  x:integer;
  y:integer;
  t:float;
  //t=angle
begin

  //$ff000000=alpha $00ff0000=Blue  $0000ff00=Green $000000ff=Red $00000000=black
  //BGRA(0,255,255,255)

  Orgx:=round(PaintBox3.Width/2);
  Orgy:=round(PaintBox3.Height/2);

  t:=DegToRad(i3);

  r_t:=exp(0.1*t);

  x := round((r_t*cos(t)) - (0*sin(t)) + Orgx);
  y := round((r_t*sin(t)) + (0*cos(t)) + Orgy);

  bmp3.Canvas.Pixels[x,y]:=$00B0B0B0;
  bmp3.Draw(bmp3_V_Flip.Canvas,0,0);
  bmp3_V_Flip.VerticalFlip;
  bmp3_V_Flip.Draw(PaintBox3.Canvas,0,0);

  i3 := i3+1;

  if i3 >=360*6.94 then begin i3:=0; Timer3.Enabled:=false; end;

end;

procedure TForm1.Timer4Timer(Sender: TObject);
var
  Orgx:integer;
  Orgy:integer;
  r_t:float;
  x:integer;
  y:integer;
  t:float;
  //t=angle
begin

  //$ff000000=alpha $00ff0000=Blue  $0000ff00=Green $000000ff=Red $00000000=black
  //BGRA(0,255,255,255)

  Orgx:=round(PaintBox4.Width/2);
  Orgy:=round(PaintBox4.Height/2);

  t:=DegToRad(i4);

  r_t:=ln(t)*10;

  x := round((r_t*cos(t)) - (0*sin(t)) + Orgx);
  y := round((r_t*sin(t)) + (0*cos(t)) + Orgy);

  bmp4.Canvas.Pixels[x,y]:=$00B0B0B0;
  bmp4.Draw(bmp4_V_Flip.Canvas,0,0);
  bmp4_V_Flip.VerticalFlip;
  bmp4_V_Flip.Draw(PaintBox4.Canvas,0,0);

  Label4.Caption:='More Spirals01: '+ FloatToStrf(i4,ffFixed,18,2)+' '+ FloatToStrf(t,ffFixed,18,2)+' '+ FloatToStrf(r_t,ffFixed,18,2);

  i4 := i4+0.5;

  if i4 >=360*20 then begin i4:=0.01; Timer4.Enabled:=false; end;

end;

procedure TForm1.Timer5Timer(Sender: TObject);
var
  Orgx:integer;
  Orgy:integer;
  r_t:float;
  x:integer;
  y:integer;
  t:float;
  //t=angle
begin

  //$ff000000=alpha $00ff0000=Blue  $0000ff00=Green $000000ff=Red $00000000=black
  //BGRA(0,255,255,255)

  Orgx:=round(PaintBox5.Width/2);
  Orgy:=round(PaintBox5.Height/2);

  t:=DegToRad(i5);

  r_t:=sqrt(t)*10;

  x := round((r_t*cos(t)) - (0*sin(t)) + Orgx);
  y := round((r_t*sin(t)) + (0*cos(t)) + Orgy);

  bmp5.Canvas.Pixels[x,y]:=$00B0B0B0;

  r_t:=-sqrt(t)*10;

  x := round((r_t*cos(t)) - (0*sin(t)) + Orgx);
  y := round((r_t*sin(t)) + (0*cos(t)) + Orgy);

  bmp5.Canvas.Pixels[x,y]:=$000000ff;

  bmp5.Draw(bmp5_V_Flip.Canvas,0,0);
  bmp5_V_Flip.VerticalFlip;
  bmp5_V_Flip.Draw(PaintBox5.Canvas,0,0);

  i5 := i5+1;
  Label5.Caption:='More Spirals02 angle:'+FloatToStr(i5)+' x:'+IntToStr(x)+' y:'+IntToStr(y);
  if i5 >=360*6 then begin i5:=0; Timer5.Enabled:=false; end;

end;

procedure TForm1.Timer6Timer(Sender: TObject);
var
  Orgx:integer;
  Orgy:integer;
  x:float;
  y:float;
  x_:integer;
  y_:integer;
begin

  //$ff000000=alpha $00ff0000=Blue  $0000ff00=Green $000000ff=Red $00000000=black
  //BGRA(0,255,255,255)

  Orgx:=round(PaintBox6.Width/2);
  Orgy:=round(PaintBox6.Height/2);

  x:=i6;
  y:=power(x,2);
  x_ := round(x + Orgx);
  y_ := round(y + Orgy);


  bmp6.Canvas.Pixels[x_,y_]:=$00909090;
  bmp6.Draw(bmp6_V_Flip.Canvas,0,0);
  bmp6_V_Flip.VerticalFlip;
  bmp6_V_Flip.Draw(PaintBox6.Canvas,0,0);

  i6 := i6+0.05;
  Button7.Caption:='x^2:'+ FloatToStrf(i6,ffFixed,18,2);
  if i6 >=7 then begin i6:=-7; Timer6.Enabled:=false; end;
end;

end.

