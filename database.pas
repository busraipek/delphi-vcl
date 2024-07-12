unit database;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXMySQL, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Data.Win.ADODB;

type
  TForm2 = class(TForm)
    ADOConnection1: TADOConnection;
    select: TADOQuery;
    insert: TADOQuery;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
