unit SIstema.View.Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Sistema.View.CadastroPadrao, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.WinXPanels,
  Sistema.Model.Conexao;

type
  TfrmUsuarios = class(TfrmCadastroPadrao)
    DataSource1: TDataSource;
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

{$R *.dfm}


procedure TfrmUsuarios.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  dmConexao.FDQuery1.Open;
end;

end.
