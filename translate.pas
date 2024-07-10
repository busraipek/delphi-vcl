unit translate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ComCtrls, TranslateService;

type
  TFrame1 = class(TFrame)
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
    FTranslateService: TTranslateService;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}

procedure TFrame1.Button1Click(Sender: TObject);
begin
  RichEdit2.Text := FTranslateService.TranslateText(RichEdit1.Text,
    ComboBox1.Text, ComboBox2.Text);
end;

constructor TFrame1.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FTranslateService := TTranslateService.Create;
  Button1.Caption := 'Çevir';
  RichEdit1.Text := '';
  RichEdit2.Text := '';
end;

destructor TFrame1.Destroy;
begin
  FTranslateService.Free;
  inherited Destroy;
end;

end.
