object frmAgendamento: TfrmAgendamento
  Left = 345
  Top = 302
  BorderStyle = bsSingle
  Caption = 'Agendamento M'#233'dico'
  ClientHeight = 466
  ClientWidth = 586
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
  object pnlAgendamento: TPanel
    Left = 0
    Top = 0
    Width = 586
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 26
      Top = 9
      Width = 145
      Height = 25
      Caption = 'Agendamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 392
    Width = 586
    Height = 74
    Align = alBottom
    TabOrder = 1
    object btnIncluir: TButton
      Left = 200
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnAlterar: TButton
      Left = 199
      Top = 39
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnExcluir: TButton
      Left = 280
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnConsultar: TButton
      Left = 279
      Top = 39
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 3
      OnClick = btnConsultarClick
    end
    object btnSair: TButton
      Left = 471
      Top = 39
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 6
      OnClick = btnSairClick
    end
    object btnConfirmar: TButton
      Left = 392
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 4
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TButton
      Left = 472
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 5
      OnClick = btnCancelarClick
    end
  end
  object pnlDados: TPanel
    Left = 0
    Top = 41
    Width = 586
    Height = 351
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object lblCodigo: TLabel
      Left = 30
      Top = 24
      Width = 40
      Height = 13
      Caption = 'Codigo'
    end
    object Label2: TLabel
      Left = 30
      Top = 88
      Width = 28
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 152
      Top = 90
      Width = 28
      Height = 13
      Caption = 'Hora'
    end
    object Label4: TLabel
      Left = 30
      Top = 56
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
    object lblMedico: TLabel
      Left = 30
      Top = 120
      Width = 95
      Height = 13
      Caption = 'Nome do m'#233'dico'
    end
    object Label5: TLabel
      Left = 30
      Top = 152
      Width = 80
      Height = 13
      Caption = 'Especialidade'
    end
    object lblConsuta: TLabel
      Left = 156
      Top = 24
      Width = 97
      Height = 13
      Caption = 'Tipo de Consulta'
    end
    object Label6: TLabel
      Left = 30
      Top = 184
      Width = 52
      Height = 13
      Caption = 'Sintomas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Aviso: TLabel
      Left = 8
      Top = 216
      Width = 134
      Height = 104
      Caption = 
        'O AGENDAMENTO'#13#10'deve ser feito mesmo'#13#10'se a consulta '#13#10'estiver em ' +
        'andamento,'#13#10'devido a casos'#13#10'de urg'#234'ncia, mantenha'#13#10'os dados das ' +
        'consultas'#13#10'ORGANIZADOS!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -3
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodigo: TEdit
      Left = 75
      Top = 20
      Width = 73
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtNome: TEdit
      Left = 69
      Top = 52
      Width = 490
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtData: TMaskEdit
      Left = 68
      Top = 85
      Width = 83
      Height = 21
      EditMask = '00/00/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      Text = '  /  /    '
      OnExit = edtDataExit
    end
    object edtHora: TMaskEdit
      Left = 199
      Top = 85
      Width = 41
      Height = 21
      EditMask = '00:00;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 4
      Text = '  :  '
      OnExit = edtHoraExit
    end
    object edtMedico: TEdit
      Left = 134
      Top = 116
      Width = 425
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object cmbConsulta: TComboBox
      Left = 260
      Top = 20
      Width = 145
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
      Items.Strings = (
        'Conv'#234'nio'
        'Particular')
    end
    object cmbEspecialidade: TComboBox
      Left = 134
      Top = 149
      Width = 425
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 6
      Items.Strings = (
        'Clinico Geral'
        'Acupuntura'
        'Alergia e Imunologia'
        'Anestesiologista'
        'Angiologia'
        'Cardiologia'
        'Cirurgia Cardiovascular'
        'Cirurgia de M'#227'o'
        'Cirurgia de Cabe'#231'a e Pesco'#231'o'
        'Cirurgia do Aparelho Digestivo'
        'Cirurgia Geral'
        'Cirurgia Oncol'#243'gica'
        'Cirurgia Pedi'#225'trica'
        'Cirurgia Pl'#225'stica'
        'Cirurgia Tor'#225'cica'
        'Cirurgia Vascular')
    end
    object Memo1: TMemo
      Left = 142
      Top = 184
      Width = 417
      Height = 145
      Hint = #13#10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object Timer1: TTimer
    Interval = 3000
    OnTimer = Timer1Timer
    Top = 361
  end
end
