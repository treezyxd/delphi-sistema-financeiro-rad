object dmConexao: TdmConexao
  OnCreate = DataModuleCreate
  Height = 446
  Width = 554
  PixelsPerInch = 120
  object SQLConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\treezy\Documents\Embarcadero\Studio\Projects\S' +
        'istemaFinanceiro\db\SistemaFinanceiro.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 56
    Top = 48
  end
  object FDQuery1: TFDQuery
    Connection = SQLConexao
    SQL.Strings = (
      'SELECT * FROM usuarios')
    Left = 56
    Top = 144
  end
end
