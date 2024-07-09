unit homepage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,Unit3,
  Vcl.WinXPickers;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Panel1: TPanel;
    DatePicker1: TDatePicker;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FForm3 : unit3.TForm3;
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

    FForm3 := TForm3.Create(Self);
    FForm3.Parent := Panel1;
    FForm3.Align := alClient;
    FForm3.BorderStyle := bsNone;
    fform3.Show;
end;

end.
