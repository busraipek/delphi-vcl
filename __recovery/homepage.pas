unit homepage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, translate,note,writing,
  Vcl.WinXPickers, Vcl.Menus;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
    translate: translate.TFrame1;
    note : note.TFrame2;
    CurrentFrame: TFrame;
    write : writing.TForm4;
    procedure RemoveCurrentFrame;
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
implementation
{$R *.dfm}
procedure TForm1.FormCreate(Sender: TObject);
begin
  ListBox1.Margins.Left := 0;
  ListBox1.Margins.Top := 0;
  ListBox1.Margins.Bottom := 0;
  translate := TFrame1.Create(Self);
  translate.Parent := Panel1;
  translate.Align := alClient;
  CurrentFrame := translate;
end;
procedure TForm1.RemoveCurrentFrame();
begin
  if Assigned(CurrentFrame) then
  begin
    CurrentFrame.Parent := nil;
    FreeAndNil(CurrentFrame);
  end;
end;
procedure TForm1.ListBox1Click(Sender: TObject);
begin
  RemoveCurrentFrame;
  if (ListBox1.ItemIndex = 0) then
  begin
    translate := TFrame1.Create(Self);
    translate.Parent := Panel1;
    translate.Align := alClient;
    CurrentFrame := translate;
  end
  else if (ListBox1.ItemIndex = 1) then
  begin
    note := TFrame2.Create(Self);
    note.Parent := Panel1;
    note.Align := alClient;
    CurrentFrame := note;
  end
  else if (ListBox1.ItemIndex = 2) then
  begin
{    write := TForm4.Create(Self);
    write.Parent := Panel1;
        write.Align := alClient;
            CurrentFrame := write;}
    note := TFrame2.Create(Self);
    note.Parent := Panel1;
    note.Align := alClient;
    CurrentFrame := note;
    write := TForm4.Create(Self) ;
    write.Show();
  end;
end;
end.
