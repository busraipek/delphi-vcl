program Project1;

uses
  Vcl.Forms,
  homepage in 'homepage.pas' {Form1},
  database in 'database.pas' {Form2},
  TranslateService in 'TranslateService.pas',
  translate in 'translate.pas' {Frame1: TFrame},
  note in 'note.pas' {Frame2: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
