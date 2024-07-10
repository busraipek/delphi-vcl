unit homepage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Unit1,
  Vcl.WinXPickers, Vcl.Menus;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
    FForm3: Unit1.TFrame1;
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

    FForm3 := TFrame1.Create(Self);
    FForm3.Parent := Panel1;
    FForm3.Align := alClient;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  if (ListBox1.Selected[0] = true) then
  begin
    FForm3 := TFrame1.Create(Self);
    FForm3.Parent := Panel1;
    FForm3.Align := alClient;
  end
  else if (ListBox1.Selected[1] = true) then
  begin
    FForm3 := TFrame1.Create(Self);
    FForm3.Parent := Panel1;
    FForm3.Align := alClient;
  end
  else if (ListBox1.Selected[2] = true) then
  begin
    FForm3 := TFrame1.Create(Self);
    FForm3.Parent := Panel1;
    FForm3.Align := alClient;
  end;
end;

end.
