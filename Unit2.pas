unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.TabControl, FMX.Effects, FMX.Controls.Presentation, FMX.Edit, FMX.Layouts,
  FMX.Ani, System.Actions, FMX.ActnList;

type
  TForm2 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Image1: TImage;
    Layout1: TLayout;
    Rectangle4: TRectangle;
    Text1: TText;
    Edit1: TEdit;
    ShadowEffect1: TShadowEffect;
    Rectangle5: TRectangle;
    Text2: TText;
    Edit2: TEdit;
    ShadowEffect2: TShadowEffect;
    Rectangle6: TRectangle;
    Text3: TText;
    ShadowEffect3: TShadowEffect;
    Text4: TText;
    ColorAnimation1: TColorAnimation;
    ColorAnimation2: TColorAnimation;
    Layout2: TLayout;
    Rectangle7: TRectangle;
    Text5: TText;
    Edit3: TEdit;
    ShadowEffect4: TShadowEffect;
    ColorAnimation3: TColorAnimation;
    Rectangle8: TRectangle;
    Text6: TText;
    Edit4: TEdit;
    ShadowEffect5: TShadowEffect;
    ColorAnimation4: TColorAnimation;
    Rectangle9: TRectangle;
    Text7: TText;
    ShadowEffect6: TShadowEffect;
    Text8: TText;
    Rectangle11: TRectangle;
    Rectangle10: TRectangle;
    Text9: TText;
    Edit5: TEdit;
    ShadowEffect7: TShadowEffect;
    ColorAnimation5: TColorAnimation;
    Rectangle12: TRectangle;
    Text10: TText;
    Edit6: TEdit;
    ShadowEffect8: TShadowEffect;
    ColorAnimation6: TColorAnimation;
    Layout3: TLayout;
    Image2: TImage;
    Text11: TText;
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    ChangeTabAction2: TChangeTabAction;
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit6Enter(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Text8Click(Sender: TObject);
    procedure Text4Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure Animation(isFocus: boolean; LabelText: TText; Input: TEdit;
      Animator: TColorAnimation);
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}
{ TForm2 }

procedure TForm2.Animation(isFocus: boolean; LabelText: TText; Input: TEdit;
  Animator: TColorAnimation);
begin
  // Animation enter and Exit input
  if (isFocus) then
  begin
    Animator.StartValue := TAlphaColorRec.White;
    Animator.StopValue := $FF0A0334;

    LabelText.TextSettings.FontColor := TAlphaColorRec.White;
    Input.TextSettings.FontColor := TAlphaColorRec.White;
    Input.Caret.Color := TAlphaColorRec.White;
    Animator.Start;
  end
  else
  begin
    Animator.StartValue := $FF0A0334;
    Animator.StopValue := TAlphaColorRec.White;
    Animator.Start;
    LabelText.TextSettings.FontColor := $FF0A0334;
    Input.TextSettings.FontColor := $FF0A0334;
    Input.Caret.Color := $FF0A0334;
  end;
end;

procedure TForm2.Edit1Enter(Sender: TObject);
begin
  Animation(true, Text1, Edit1, ColorAnimation1);
end;

procedure TForm2.Edit1Exit(Sender: TObject);
begin
  Animation(false, Text1, Edit1, ColorAnimation1);
end;

procedure TForm2.Edit2Enter(Sender: TObject);
begin
  Animation(true, Text2, Edit2, ColorAnimation2);
end;

procedure TForm2.Edit2Exit(Sender: TObject);
begin
  Animation(false, Text2, Edit2, ColorAnimation2);
end;

procedure TForm2.Edit3Enter(Sender: TObject);
begin
  Animation(true, Text5, Edit3, ColorAnimation3);
end;

procedure TForm2.Edit3Exit(Sender: TObject);
begin
  Animation(false, Text5, Edit3, ColorAnimation3);
end;

procedure TForm2.Edit4Enter(Sender: TObject);
begin
  Animation(true, Text6, Edit4, ColorAnimation4);
end;

procedure TForm2.Edit4Exit(Sender: TObject);
begin
  Animation(false, Text6, Edit4, ColorAnimation4);
end;

procedure TForm2.Edit5Enter(Sender: TObject);
begin
  Animation(true, Text9, Edit5, ColorAnimation5);
end;

procedure TForm2.Edit5Exit(Sender: TObject);
begin
  Animation(false, Text9, Edit5, ColorAnimation5);
end;

procedure TForm2.Edit6Enter(Sender: TObject);
begin
  Animation(true, Text10, Edit6, ColorAnimation6);
end;

procedure TForm2.Edit6Exit(Sender: TObject);
begin
  Animation(false, Text10, Edit6, ColorAnimation6);
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
  ChangeTabAction1.ExecuteTarget(Sender);
end;

procedure TForm2.Text4Click(Sender: TObject);
begin
  ChangeTabAction2.ExecuteTarget(Sender);
end;

procedure TForm2.Text8Click(Sender: TObject);
begin
  ChangeTabAction1.ExecuteTarget(Sender);
end;

end.
