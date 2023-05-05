object DM: TDM
  Height = 480
  Width = 640
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=aula'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object sqlConsulta: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM clientes')
    Left = 152
    Top = 32
    ParamData = <
      item
        Name = 'pConsulta'
      end>
  end
  object dsSqlConsulta: TDataSource
    DataSet = sqlConsulta
    Left = 152
    Top = 120
  end
end
