program Vectores;

uses
  Vcl.Forms,
  UFPrincipal in 'UFPrincipal.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  UCVector in 'UCVector.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Cobalt XEMedia');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
