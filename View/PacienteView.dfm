object frmPaciente: TfrmPaciente
  Left = 775
  Top = 355
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
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnpCPaciente: TPanel
    Left = 0
    Top = 238
    Width = 581
    Height = 67
    Align = alBottom
    Color = 14737632
    TabOrder = 1
    object btnIncluir: TButton
      Left = 163
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnAlterar: TButton
      Left = 164
      Top = 35
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnExcluir: TButton
      Left = 244
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnSair: TButton
      Left = 487
      Top = 35
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 6
      OnClick = btnSairClick
    end
    object btnConsultar: TButton
      Left = 243
      Top = 35
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 3
      OnClick = btnConsultarClick
    end
    object btnCancelar: TButton
      Left = 487
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 5
      OnClick = btnCancelarClick
    end
    object btnConfirmar: TButton
      Left = 404
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 4
      OnClick = btnConfirmarClick
    end
  end
  object pnlInfo: TPanel
    Left = 0
    Top = 0
    Width = 581
    Height = 238
    Align = alClient
    TabOrder = 0
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
      Width = 46
      Height = 13
      Caption = 'Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblNumero: TLabel
      Left = 398
      Top = 80
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblNascimento: TLabel
      Left = 16
      Top = 112
      Width = 56
      Height = 13
      Caption = 'Nascimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblTelefone: TLabel
      Left = 344
      Top = 112
      Width = 42
      Height = 13
      Caption = 'Telefone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblObservacao: TLabel
      Left = 16
      Top = 144
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtCodigo: TEdit
      Left = 86
      Top = 13
      Width = 69
      Height = 21
      TabOrder = 0
    end
    object edtNome: TEdit
      Left = 85
      Top = 44
      Width = 424
      Height = 21
      TabOrder = 2
    end
    object chkAtivo: TCheckBox
      Left = 176
      Top = 15
      Width = 117
      Height = 17
      Caption = 'Paciente Ativo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object edtCPF: TMaskEdit
      Left = 221
      Top = 108
      Width = 86
      Height = 21
      EditMask = '000\.000\.000\-00;1;_'
      MaxLength = 14
      TabOrder = 6
      Text = '   .   .   -  '
      OnExit = edtCPFExit
    end
    object edtEndereco: TEdit
      Left = 86
      Top = 76
      Width = 300
      Height = 21
      TabOrder = 3
    end
    object edtNascimento: TMaskEdit
      Left = 86
      Top = 108
      Width = 65
      Height = 21
      EditMask = '00/00/0000;1;_'
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
    end
    object edtTelefone: TMaskEdit
      Left = 412
      Top = 108
      Width = 99
      Height = 21
      EditMask = '(99) 0 0000-0000;1;_'
      MaxLength = 16
      TabOrder = 7
      Text = '(  )       -    '
    end
    object memoObs: TMemo
      Left = 87
      Top = 144
      Width = 425
      Height = 81
      Hint = #13#10
      TabOrder = 8
    end
    object edtNumero: TEdit
      Left = 444
      Top = 75
      Width = 65
      Height = 21
      TabOrder = 4
    end
  end
end
