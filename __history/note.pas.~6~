unit note;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ColorGrd,
  Vcl.StdCtrls, Vcl.ExtCtrls, VCLTee.TeCanvas, Vcl.ActnMan, Vcl.ActnColorMaps,
  Vcl.JumpList, Vcl.ComCtrls, Vcl.Grids, Vcl.ValEdit, Vcl.ActnList,
  System.Actions, Vcl.StdActns, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Vcl.CustomizeDlg, Vcl.WinXPickers,database;

type
  TFrame2 = class(TFrame)
    ComboBox1: TComboBox;
    DatePicker1: TDatePicker;
    StringGrid1: TStringGrid;
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


end;


destructor TFrame2.Destroy;
begin

  inherited Destroy;
end;
end.
