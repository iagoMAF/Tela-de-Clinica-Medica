object frmAgendamento: TfrmAgendamento
  Left = 474
  Top = 214
  BorderStyle = bsSingle
  Caption = 'Agendamento M'#233'dico'
  ClientHeight = 427
  ClientWidth = 565
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
  object pnlAgendamento: TPanel
    Left = 0
    Top = 0
    Width = 565
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
    Top = 383
    Width = 565
    Height = 44
    Align = alBottom
    TabOrder = 1
    object btnIncluir: TButton
      Left = 152
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
    end
    object btnAlterar: TButton
      Left = 311
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
    end
    object btnExcluir: TButton
      Left = 232
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
    end
    object btnConsultar: TButton
      Left = 391
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 3
    end
    object btnSair: TButton
      Left = 471
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
    end
  end
  object pnlDados: TPanel
    Left = 0
    Top = 41
    Width = 565
    Height = 342
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object lblCodigo: TLabel
      Left = 16
      Top = 24
      Width = 40
      Height = 13
      Caption = 'Codigo'
    end
    object Label2: TLabel
      Left = 16
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
      Left = 16
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
      Left = 16
      Top = 120
      Width = 95
      Height = 13
      Caption = 'Nome do medico'
    end
    object Label5: TLabel
      Left = 16
      Top = 152
      Width = 80
      Height = 13
      Caption = 'Especialidade'
    end
    object lblConsuta: TLabel
      Left = 142
      Top = 24
      Width = 97
      Height = 13
      Caption = 'Tipo de Consulta'
    end
    object Label6: TLabel
      Left = 16
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
    object edtCodigo: TEdit
      Left = 61
      Top = 20
      Width = 73
      Height = 21
      TabOrder = 0
    end
    object edtNome: TEdit
      Left = 55
      Top = 52
      Width = 490
      Height = 21
      TabOrder = 1
    end
    object edtData: TMaskEdit
      Left = 54
      Top = 85
      Width = 83
      Height = 21
      EditMask = '00/00/0000;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object edtHora: TMaskEdit
      Left = 185
      Top = 85
      Width = 41
      Height = 21
      EditMask = '00:00;1;_'
      MaxLength = 5
      TabOrder = 3
      Text = '  :  '
    end
    object edtMedico: TEdit
      Left = 120
      Top = 116
      Width = 425
      Height = 21
      TabOrder = 4
    end
    object cmbConsulta: TComboBox
      Left = 246
      Top = 20
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 5
      Items.Strings = (
        'Conv'#234'nio'
        'Particular')
    end
    object cmbEspecialidade: TComboBox
      Left = 120
      Top = 149
      Width = 425
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Items.Strings = (
        'Especialidades m'#233'dica, '#225'reas de atua'#231#227'o e formas de acesso'
        'Especialista em Acupuntura'
        'Especialista em Alergia e Imunologia'
        'Especialista em Anestesiologista'
        'Especialista em Angiologia'
        'Especialista em Cardiologia'
        'Especialista em Cirurgia Cardiovascular'
        'Especialista em Cirurgia de M'#227'o'
        'Especialista em Cirurgia de Cabe'#231'a e Pesco'#231'o'
        'Especialista em Cirurgia do Aparelho Digestivo'
        'Especialista em Cirurgia Geral'
        'Especialista em Cirurgia Oncol'#243'gica'
        'Especialista em Cirurgia Pedi'#225'trica'
        'Especialista em Cirurgia Pl'#225'stica'
        'Especialista em Cirurgia Tor'#225'cica'
        'Especialista em Cirurgia Vascular')
    end
    object Memo1: TMemo
      Left = 120
      Top = 184
      Width = 425
      Height = 145
      Hint = #13#10
      TabOrder = 7
    end
  end
end