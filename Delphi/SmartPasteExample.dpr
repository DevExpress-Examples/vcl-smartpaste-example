program SmartPasteExample;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1},
  SmartPasteExample.dxSettings in 'SmartPasteExample.dxSettings.pas',
  dxSmartCoreAI in 'dxSmartCoreAI.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
