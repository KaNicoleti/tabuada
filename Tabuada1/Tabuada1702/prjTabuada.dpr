program prjTabuada;

uses
  Vcl.Forms,
  untTabuada in 'untTabuada.pas' {frmTabuada};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTabuada, frmTabuada);
  Application.Run;
end.
