program SistemaFinanceiro;

uses
  Vcl.Forms,
  SIstema.View.Principal in 'src\View\SIstema.View.Principal.pas' {frmPrincipal},
  Sistema.View.CadastroPadrao in 'src\View\Sistema.View.CadastroPadrao.pas' {frmCadastroPadrao},
  SIstema.View.SplashScreen in 'src\View\SIstema.View.SplashScreen.pas' {frmSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadastroPadrao, frmCadastroPadrao);
  Application.Run;
end.
