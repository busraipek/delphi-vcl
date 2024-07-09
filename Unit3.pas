unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls,TranslateService;

type
  TForm3 = class(TForm)
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button1: TButton;

    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FTranslateService: TTranslateService;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin

       RichEdit2.Text := FTranslateService.TranslateText(RichEdit1.Text, combobox1, 'en');
end;
constructor TForm3.Create(AOwner: TComponent);
begin

  inherited Create(AOwner);

  FTranslateService := TTranslateService.Create;
end;

destructor TForm3.Destroy;
begin
  FTranslateService.Free;
  inherited Destroy;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
 RichEdit1.Text:= 'masa' ;
end;

end.
