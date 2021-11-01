object F_Principal: TF_Principal
  Left = 0
  Top = 0
  Caption = 'Configura'#231#245'es Etiqueta - Fortes reporting'
  ClientHeight = 311
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 5
  Padding.Top = 5
  Padding.Right = 5
  Padding.Bottom = 5
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Pn_configuracoes: TGroupBox
    Left = 5
    Top = 5
    Width = 370
    Height = 301
    Margins.Right = 10
    Align = alLeft
    Caption = ' Configura'#231#245'es '
    TabOrder = 0
    ExplicitHeight = 251
    object Bt_Reset: TSpeedButton
      Left = 59
      Top = 256
      Width = 100
      Height = 30
      Cursor = crHandPoint
      Caption = 'Default'
    end
    object Bt_Aplicar: TSpeedButton
      Left = 176
      Top = 256
      Width = 100
      Height = 30
      Cursor = crHandPoint
      Caption = 'Aplicar'
    end
    object Pn_Pagina: TGroupBox
      Left = 2
      Top = 74
      Width = 366
      Height = 77
      Align = alTop
      Caption = ' P'#225'gina '
      TabOrder = 0
      ExplicitWidth = 429
      object Label1: TLabel
        Left = 15
        Top = 18
        Width = 29
        Height = 13
        Caption = 'Altura'
      end
      object Label2: TLabel
        Left = 5
        Top = 41
        Width = 37
        Height = 13
        Caption = 'Largura'
      end
      object Label3: TLabel
        Left = 140
        Top = 20
        Width = 24
        Height = 13
        Caption = 'Topo'
      end
      object Label4: TLabel
        Left = 124
        Top = 42
        Width = 37
        Height = 13
        Caption = 'Rodap'#233
      end
      object Label6: TLabel
        Left = 252
        Top = 42
        Width = 34
        Height = 13
        Caption = ' Direita'
      end
      object Label5: TLabel
        Left = 234
        Top = 21
        Width = 48
        Height = 13
        Caption = ' Esquerda'
      end
      object Ed_PaginaAltura: TEdit
        Left = 57
        Top = 17
        Width = 50
        Height = 21
        TabOrder = 0
        Text = '50'
      end
      object Ed_PaginaLargura: TEdit
        Left = 57
        Top = 42
        Width = 50
        Height = 21
        TabOrder = 1
        Text = '110'
      end
      object Ed_PgMarginTop: TEdit
        Left = 178
        Top = 18
        Width = 50
        Height = 21
        TabOrder = 2
        Text = '2'
      end
      object Ed_PgMarginBottom: TEdit
        Left = 178
        Top = 42
        Width = 50
        Height = 21
        TabOrder = 3
        Text = '1'
      end
      object Ed_PgMarginRigth: TEdit
        Left = 305
        Top = 42
        Width = 50
        Height = 21
        TabOrder = 4
        Text = '1'
      end
      object Ed_PgMarginLEft: TEdit
        Left = 305
        Top = 18
        Width = 50
        Height = 21
        TabOrder = 5
        Text = '1'
      end
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 151
      Width = 366
      Height = 82
      Align = alTop
      Caption = ' Etiqueta '
      TabOrder = 1
      ExplicitWidth = 429
      object Label9: TLabel
        Left = 23
        Top = 23
        Width = 29
        Height = 13
        Caption = 'Altura'
      end
      object Label10: TLabel
        Left = 13
        Top = 50
        Width = 37
        Height = 13
        Caption = 'Largura'
      end
      object Label7: TLabel
        Left = 142
        Top = 28
        Width = 38
        Height = 13
        Caption = 'Colunas'
      end
      object Label8: TLabel
        Left = 142
        Top = 47
        Width = 64
        Height = 13
        Caption = 'Espa'#231'amento'
      end
      object Ed_EtiquetaLargura: TEdit
        Left = 65
        Top = 48
        Width = 50
        Height = 21
        TabOrder = 0
        Text = '52'
      end
      object Ed_EtiquetaAltura: TEdit
        Left = 65
        Top = 21
        Width = 50
        Height = 21
        TabOrder = 1
        Text = '155'
      end
      object Ed_Espacamento: TEdit
        Left = 236
        Top = 48
        Width = 50
        Height = 21
        TabOrder = 2
        Text = '2'
      end
      object Ed_Colunas: TEdit
        Left = 236
        Top = 18
        Width = 50
        Height = 21
        TabOrder = 3
        Text = '2'
      end
    end
    object Pn_TipoPapel: TGroupBox
      Left = 2
      Top = 15
      Width = 366
      Height = 59
      Align = alTop
      Caption = 'Tipo de papel'
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      TabOrder = 2
      ExplicitLeft = 172
      ExplicitTop = 13
      ExplicitWidth = 185
      object Ed_Papel: TEdit
        Left = 5
        Top = 18
        Width = 356
        Height = 24
        Align = alTop
        Color = clSilver
        Enabled = False
        TabOrder = 0
        Text = 'fpCustom'
        ExplicitLeft = 10
        ExplicitTop = 29
        ExplicitWidth = 121
      end
    end
  end
  object Pn_Teste: TGroupBox
    Left = 459
    Top = 5
    Width = 320
    Height = 301
    Margins.Left = 10
    Align = alRight
    Caption = 'Teste impress'#227'o '
    TabOrder = 1
    ExplicitLeft = 464
    ExplicitTop = 0
    ExplicitHeight = 261
  end
end
