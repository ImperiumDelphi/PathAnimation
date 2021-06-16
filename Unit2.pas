unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Objects, FMX.Ani, FMX.Effects,
  FMX.Filter.Effects;

type
  TFrame2 = class(TFrame)
    AirPlane: TRectangle;
    ImageAirPlane: TImage;
    FillRGBEffect1: TFillRGBEffect;
    Ani: TPathAnimation;
    Button: TCircle;
    Image1: TImage;
    procedure AniFinish(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TFrame2.AniFinish(Sender: TObject);
begin
AirPlane.RotationAngle := -90;
AirPlane.Position.Y := Button.Position.Y;
AirPlane.Position.X := -150;
TAnimator.AnimateFloat(AirPlane, 'Position.x', Button.Position.X, 0.5, TAnimationType.Out, TInterpolationType.Exponential);
end;

procedure TFrame2.ButtonClick(Sender: TObject);
begin
Ani.Path.Data := 'M 0,0 C 480,0 480,-180, -200,-180';
Ani.Start;
end;

end.
