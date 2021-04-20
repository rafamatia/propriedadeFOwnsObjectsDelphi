program propriedadeFOwnsObjectsDelphi;

uses
  Vcl.Forms,
  uListaObjeto in 'classes\uListaObjeto.pas',
  uObjeto in 'classes\uObjeto.pas',
  untPrincipal in 'telas\untPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True; // Habilita o relatório de vazamento de memória

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;

end.
