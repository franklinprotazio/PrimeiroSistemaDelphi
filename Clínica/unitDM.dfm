object DM: TDM
  Height = 480
  Width = 640
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 48
  end
  object tbPaciente: TFDTable
    Active = True
    AfterInsert = tbPacienteAfterInsert
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'clinica.paciente'
    Left = 144
    Top = 48
    object tbPacienteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbPacientecpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '###.###.###-##;1;_'
      Size = 14
    end
    object tbPacientenome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
    object tbPacientecelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      EditMask = '(##) #.####-####;1;_'
      Size = 16
    end
    object tbPacientedata_cadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
    end
  end
  object tbAgendamento: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'clinica.agendamento'
    Left = 240
    Top = 48
    object tbAgendamentoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbAgendamentoid_paciente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
    end
    object tbAgendamentodata: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
      EditMask = '##/##/####;1;_'
    end
    object tbAgendamentohora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hora'
      Origin = 'hora'
      EditMask = '##:##;1;_'
      Size = 8
    end
    object tbAgendamentoespecialidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Size = 25
    end
    object tbAgendamentomedico: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medico'
      Origin = 'medico'
      Size = 30
    end
  end
  object dsPaciente: TDataSource
    DataSet = tbPaciente
    Left = 144
    Top = 128
  end
  object dsAgendamento: TDataSource
    DataSet = tbAgendamento
    Left = 240
    Top = 128
  end
end
