program ProjectCalculadora;

uses
  Vcl.Forms,
  UnitCalculadora in 'UnitCalculadora.pas' {FormCalculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormCalculadora, FormCalculadora);
  Application.Run;
end.
