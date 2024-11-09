unit note;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ColorGrd,
  Vcl.StdCtrls, Vcl.ExtCtrls, VCLTee.TeCanvas, Vcl.ActnMan, Vcl.ActnColorMaps,
  Vcl.JumpList, Vcl.ComCtrls, Vcl.Grids, Vcl.ValEdit, Vcl.ActnList,
  System.Actions, Vcl.StdActns, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Vcl.CustomizeDlg, Vcl.WinXPickers,database, Data.DB;

type
  TFrame2 = class(TFrame)
    ComboBox1: TComboBox;
    DatePicker1: TDatePicker;
    StringGrid1: TStringGrid;
    procedure ListNotes;
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}


constructor TFrame2.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  StringGrid1.Cols[0].Text := 'renk';
  StringGrid1.Cols[1].Text := 'tarih';
  StringGrid1.Cols[2].Text := 'durum';
  StringGrid1.Cols[3].Text := 'konu';
  StringGrid1.Cols[4].Text := 'devam';

  listnotes;
end;

procedure TFrame2.ListNotes;
var
  i, j: Integer;
begin
  try

  StringGrid1.RowCount := database.Form2.select.RecordCount + 1;
  StringGrid1.ColCount := database.Form2.select.FieldCount;

  for j := 0 to database.Form2.select.FieldCount - 1 do
    StringGrid1.Cells[j, 0] := database.Form2.select.Fields[j].FieldName;

  i := 1;
  database.Form2.select.First;
  while not database.Form2.select.Eof do
  begin
    for j := 0 to database.Form2.select.FieldCount - 1 do
      StringGrid1.Cells[j, i] := database.Form2.select.Fields[j].AsString;
    Inc(i);
    database.Form2.select.Next;
  end;
  except
   showmessage('veriler yüklenirken bir hata oluştu');
 end;

end;


procedure TFrame2.StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin

end;

destructor TFrame2.Destroy;
begin
  inherited Destroy;
end;

end.
