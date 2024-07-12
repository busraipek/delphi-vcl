unit writing;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CategoryButtons,
  Vcl.ComCtrls, Vcl.TitleBarCtrls, Vcl.ExtCtrls, database;

type
  TForm4 = class(TForm)
    RichEdit1: TRichEdit;
    CategoryButtons1: TCategoryButtons;
    Button1: TButton;
    TrackBar1: TTrackBar;
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure CategoryButtons1SelectedCategoryChange(Sender: TObject;
      const Category: TButtonCategory);
    procedure TrackBar1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure insertUserLoginDatabase;
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.insertUserLoginDatabase();
begin
  try
    with database.Form2.insert do
    begin
      Parameters.ParamByName('renk').Value := panel1.Color;
      Parameters.ParamByName('tarih').Value := Date;
      Parameters.ParamByName('durum').Value := TrackBar1.Hint;
      Parameters.ParamByName('konu').Value := edit1.Text;
      Parameters.ParamByName('devam').Value := RichEdit1.Text;
      ExecSQL;
    end;
  except
    ShowMessage('eklenmedi, hatay� ��z');
  end;
  database.Form2.insert.Close;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
   insertUserLoginDatabase;
end;

procedure TForm4.CategoryButtons1SelectedCategoryChange(Sender: TObject;
  const Category: TButtonCategory);
begin
  Panel1.Color := CategoryButtons1.CurrentCategory.Color;
  Panel1.ParentBackground := true;
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
  CategoryButtons1.SelectedItem := CategoryButtons1.Categories[0];
  Panel1.Color := CategoryButtons1.CurrentCategory.Color;
  label1.Caption := TrackBar1.Hint;
end;

procedure TForm4.TrackBar1Change(Sender: TObject);
var
  hint: array [0 .. 6] of string;
  position: integer;
begin
  hint[0] := 'vasat';
  hint[1] := 'k�t�';
  hint[2] := 'vasat�n �st�';
  hint[3] := 'eh';
  hint[4] := '6.5''tan 7';
  hint[5] := 'gayet iyi';
  hint[6] := 'm�k';
  position := TrackBar1.position;
  TrackBar1.hint := hint[position];
    Label1.Caption := TrackBar1.Hint;
end;

end.
