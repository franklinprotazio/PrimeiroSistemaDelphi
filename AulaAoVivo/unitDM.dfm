object DM: TDM
  Height = 480
  Width = 640
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=aulaaovivo'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 104
    Top = 64
  end
  object tbClientes: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'aulaaovivo.clientes'
    Left = 200
    Top = 64
    object tbClientesid: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      Origin = 'id'
    end
    object tbClientesnome: TStringField
      DisplayWidth = 39
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object tbClientessalario: TBCDField
      DisplayWidth = 11
      FieldName = 'salario'
      Origin = 'salario'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
  end
  object tbDependentes: TFDTable
    Active = True
    CachedUpdates = True
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'aulaaovivo.dependentes'
    Left = 304
    Top = 64
  end
  object dsClientes: TDataSource
    DataSet = tbClientes
    Left = 200
    Top = 152
  end
  object dsDependentes: TDataSource
    DataSet = tbDependentes
    Left = 312
    Top = 160
  end
end
