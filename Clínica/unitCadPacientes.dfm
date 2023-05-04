object formCadPacientes: TformCadPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 442
  ClientWidth = 663
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
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 32
    Top = 184
    Width = 89
    Height = 15
    Caption = 'Nome Completo'
  end
  object Label5: TLabel
    Left = 32
    Top = 235
    Width = 37
    Height = 15
    Caption = 'Celular'
  end
  object Label6: TLabel
    Left = 192
    Top = 235
    Width = 90
    Height = 15
    Caption = 'Data de Cadastro'
  end
  object Label7: TLabel
    Left = 331
    Top = 131
    Width = 83
    Height = 15
    Caption = 'Buscar Paciente'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 663
    Height = 89
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 659
    object Label1: TLabel
      Left = 32
      Top = 28
      Width = 233
      Height = 25
      Caption = 'Cadastro de Pacientes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 296
      Top = 20
      Width = 340
      Height = 53
      DataSource = DM.dsPaciente
      TabOrder = 0
    end
  end
  object txtId: TDBEdit
    Left = 32
    Top = 152
    Width = 121
    Height = 23
    DataField = 'id'
    DataSource = DM.dsPaciente
    TabOrder = 1
  end
  object txtNome: TDBEdit
    Left = 32
    Top = 205
    Width = 281
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsPaciente
    TabOrder = 3
  end
  object txtCPF: TDBEdit
    Left = 159
    Top = 152
    Width = 148
    Height = 23
    DataField = 'cpf'
    DataSource = DM.dsPaciente
    MaxLength = 14
    TabOrder = 2
  end
  object txtData: TDBEdit
    Left = 192
    Top = 256
    Width = 121
    Height = 23
    DataField = 'data_cadastro'
    DataSource = DM.dsPaciente
    ReadOnly = True
    TabOrder = 5
  end
  object txtCelular: TDBEdit
    Left = 32
    Top = 256
    Width = 121
    Height = 23
    DataField = 'celular'
    DataSource = DM.dsPaciente
    MaxLength = 16
    TabOrder = 4
  end
  object gridPacientes: TDBGrid
    Left = 331
    Top = 184
    Width = 305
    Height = 241
    DataSource = DM.dsPaciente
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
        FieldName = 'nome'
        Title.Caption = 'PACIENTES CADASTRADOS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 331
    Top = 152
    Width = 305
    Height = 23
    TabOrder = 6
    OnChange = txtBuscaChange
  end
end
