unit writing;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CategoryButtons,
  Vcl.ComCtrls, Vcl.TitleBarCtrls, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    RichEdit1: TRichEdit;
    CategoryButtons1: TCategoryButtons;
    Button1: TButton;
    TrackBar1: TTrackBar;
    Panel1: TPanel;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure CategoryButtons1SelectedCategoryChange(Sender: TObject;
      const Category: TButtonCategory);
    procedure TrackBar1Change(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.CategoryButtons1SelectedCategoryChange(Sender: TObject;
  const Category: TButtonCategory);
begin
  Panel1.Color := CategoryButtons1.CurrentCategory.Color;
  Panel1.ParentBackground := True;
  Panel1.ParentBackground := False;

  CategoryButtons1.SelectedButtonColor :=
    CategoryButtons1.CurrentCategory.Color;

end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  CategoryButtons1.Categories[0].Color := clWebLightCoral;
  CategoryButtons1.Categories[1].Color := clWebSeaGreen;
  CategoryButtons1.Categories[2].Color := clWebBurlywood;
  CategoryButtons1.Categories[3].Color := clWebCornFlowerBlue;

end;

procedure TForm4.TrackBar1Change(Sender: TObject);
var
  hint: array [0 .. 6] of string;
  position: integer;
begin
  hint[0] := 'vasat';
  hint[1] := 'kötü';
  hint[2] := 'vasatın üstü';
  hint[3] := 'eh';
  hint[4] := '6.5''tan 7';
  hint[5] := 'gayet iyi';
  hint[6] := 'mük';
  position := TrackBar1.position;
  TrackBar1.hint := hint[position];
end;
end.
