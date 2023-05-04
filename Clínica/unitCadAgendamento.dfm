object formCadAgendamentos: TformCadAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Agendamentos'
  ClientHeight = 442
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label2: TLabel
    Left = 32
    Top = 131
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 168
    Top = 131
    Width = 98
    Height = 15
    Caption = 'Nome do Paciente'
  end
  object Label4: TLabel
    Left = 32
    Top = 187
    Width = 24
    Height = 15
    Caption = 'Data'
  end
  object Label5: TLabel
    Left = 168
    Top = 187
    Width = 26
    Height = 15
    Caption = 'Hora'
  end
  object Label6: TLabel
    Left = 32
    Top = 243
    Width = 71
    Height = 15
    Caption = 'Especialidade'
  end
  object Label7: TLabel
    Left = 32
    Top = 307
    Width = 93
    Height = 15
    Caption = 'Nome do M'#233'dico'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 89
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -35
    ExplicitWidth = 663
    object Label1: TLabel
      Left = 32
      Top = 28
      Width = 162
      Height = 25
      Caption = 'Agendamentos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 368
      Top = 18
      Width = 340
      Height = 53
      DataSource = DM.dsAgendamento
      TabOrder = 0
    end
  end
  object txtId: TDBEdit
    Left = 32
    Top = 152
    Width = 115
    Height = 23
    DataField = 'id'
    DataSource = DM.dsAgendamento
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 168
    Top = 152
    Width = 273
    Height = 23
    DataField = 'id_paciente'
    DataSource = DM.dsAgendamento
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsPaciente
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 208
    Width = 115
    Height = 23
    DataField = 'data'
    DataSource = DM.dsAgendamento
    MaxLength = 10
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 168
    Top = 208
    Width = 115
    Height = 23
    DataField = 'hora'
    DataSource = DM.dsAgendamento
    MaxLength = 5
    TabOrder = 4
  end
  object DBComboBox1: TDBComboBox
    Left = 32
    Top = 272
    Width = 251
    Height = 23
    DataField = 'especialidade'
    DataSource = DM.dsAgendamento
    Items.Strings = (
      'Cardiologista'
      'Nutricionista'
      'Ortopedista')
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 32
    Top = 328
    Width = 251
    Height = 23
    DataField = 'medico'
    DataSource = DM.dsAgendamento
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 465
    Top = 187
    Width = 288
    Height = 222
    DataSource = DM.dsAgendamento
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hora'
        Title.Caption = 'Hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especialidade'
        Title.Caption = 'Especialidade'
        Visible = True
      end>
  end
end
