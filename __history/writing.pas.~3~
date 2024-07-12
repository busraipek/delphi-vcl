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
  private
    { Private declarations }
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

  CategoryButtons1.SelectedButtonColor := CategoryButtons1.CurrentCategory.Color;

end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  CategoryButtons1.Categories[0].Color := clWebTomato;
  CategoryButtons1.Categories[1].Color := clWebSeaGreen;
    CategoryButtons1.Categories[2].Color := clWebBurlywood;
      CategoryButtons1.Categories[3].Color := clWebCornFlowerBlue;
end;

end.
