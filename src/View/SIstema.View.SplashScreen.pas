unit Sistema.View.SplashScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfrmSplash = class(TForm)
    pnlPrincipal: TPanel;
    imgLogo: TImage;
    lblStatus: TLabel;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Timer1: TTimer;
    imgDll: TImage;
    imgBancoDeDados: TImage;
    imgConfiguracoes: TImage;
    imgIniciando: TImage;
    Panel1: TPanel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarStatus(Mensagem: String; imagem: TImage);
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

procedure TfrmSplash.AtualizarStatus(Mensagem: String; imagem: TImage);
begin
  lblStatus.Caption := Mensagem;
  imagem.Visible := True;
end;

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
  if ProgressBar1.Position <= 100 then
  begin
    ProgressBar1.StepIt;
    case ProgressBar1.Position of
      10 : AtualizarStatus('Carregando Dependências...', imgDll);
      25 : AtualizarStatus('Conectando ao Banco de Dados...', imgBancoDeDados);
      45 : AtualizarStatus('Carregando as Configurações...', imgConfiguracoes);
      75 : AtualizarStatus('Iniciando o Sistema...', imgIniciando);
    end;
  end;

  if ProgressBar1.Position = 100 then
    Self.Close;

end;

end.
