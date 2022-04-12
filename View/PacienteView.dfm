object frmPaciente: TfrmPaciente
  Left = 650
  Top = 352
  BorderStyle = bsSingle
  Caption = 'Cadastro de Paciente'
  ClientHeight = 305
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblNome: TLabel
    Left = 16
    Top = 48
    Width = 33
    Height = 13
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCodigo: TLabel
    Left = 16
    Top = 15
    Width = 40
    Height = 13
    Caption = 'Codigo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCPF: TLabel
    Left = 184
    Top = 112
    Width = 24
    Height = 13
    Caption = 'CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblEndereco: TLabel
    Left = 16
    Top = 80
    Width = 55
    Height = 13
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblNumero: TLabel
    Left = 398
    Top = 80
    Width = 44
    Height = 13
    Caption = 'N'#250'mero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblNascimento: TLabel
    Left = 16
    Top = 112
    Width = 67
    Height = 13
    Caption = 'Nascimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTelefone: TLabel
    Left = 336
    Top = 112
    Width = 51
    Height = 13
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblObservacao: TLabel
    Left = 16
    Top = 144
    Width = 69
    Height = 13
    Caption = 'Observa'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtCodigo: TEdit
    Left = 86
    Top = 13
    Width = 73
    Height = 21
    TabOrder = 0
  end
  object pnpCPaciente: TPanel
    Left = 0
    Top = 238
    Width = 581
    Height = 67
    Align = alBottom
    Color = 14737632
    TabOrder = 1
    object btnIncluir: TButton
      Left = 331
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
    end
    object btnAlterar: TButton
      Left = 332
      Top = 35
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
    end
    object btnExcluir: TButton
      Left = 420
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
    end
    object btnSair: TButton
      Left = 503
      Top = 35
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
    end
    object edtConsultar: TButton
      Left = 419
      Top = 35
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 3
    end
  end
  object btnNome: TEdit
    Left = 85
    Top = 44
    Width = 428
    Height = 21
    TabOrder = 2
  end
  object chkAtivo: TCheckBox
    Left = 176
    Top = 15
    Width = 121
    Height = 17
    Caption = 'Paciente Ativo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object edtCPF: TMaskEdit
    Left = 221
    Top = 108
    Width = 89
    Height = 21
    EditMask = '000\.000\.000\-00;1;_'
    MaxLength = 14
    TabOrder = 4
    Text = '   .   .   -  '
  end
  object edtEndereco: TEdit
    Left = 86
    Top = 76
    Width = 303
    Height = 21
    TabOrder = 5
  end
  object MaskEdit1: TMaskEdit
    Left = 86
    Top = 108
    Width = 67
    Height = 21
    EditMask = '00/00/0000;1;_'
    MaxLength = 10
    TabOrder = 6
    Text = '  /  /    '
  end
  object edtTelefone: TMaskEdit
    Left = 414
    Top = 108
    Width = 99
    Height = 21
    EditMask = '(99) 0 0000-0000;1;_'
    MaxLength = 16
    TabOrder = 7
    Text = '(  )       -    '
  end
  object Memo1: TMemo
    Left = 87
    Top = 144
    Width = 425
    Height = 81
    Hint = #13#10
    TabOrder = 8
  end
  object edtNumero: TEdit
    Left = 449
    Top = 75
    Width = 65
    Height = 21
    TabOrder = 9
  end
end