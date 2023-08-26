program SistemaFinanceiro;

uses
  Vcl.Forms,
  SIstema.View.Principal in 'src\View\SIstema.View.Principal.pas' {frmPrincipal},
  Sistema.View.CadastroPadrao in 'src\View\Sistema.View.CadastroPadrao.pas' {frmCadastroPadrao},
  SIstema.View.SplashScreen in 'src\View\SIstema.View.SplashScreen.pas' {frmSplash},
  Sistema.Model.Conexao in 'src\Model\Sistema.Model.Conexao.pas' {DataModule1: TDataModule},
  SIstema.View.Usuarios in 'src\View\SIstema.View.Usuarios.pas' {frmUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadastroPadrao, frmCadastroPadrao);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmUsuarios, frmUsuarios);
  Application.Run;
end.
