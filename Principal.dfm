object F_Principal: TF_Principal
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Configura'#231#245'es Etiqueta - Fortes reporting'
  ClientHeight = 471
  ClientWidth = 894
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Padding.Left = 5
  Padding.Top = 5
  Padding.Right = 5
  Padding.Bottom = 5
  OldCreateOrder = False
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 5
    Top = 5
    Width = 450
    Height = 461
    ActivePage = Ts_Config
    Align = alLeft
    TabOrder = 0
    object Ts_Config: TTabSheet
      Caption = 'Configura'#231#245'es'
      ExplicitLeft = 8
      ExplicitWidth = 564
      object Bt_Reset: TSpeedButton
        Left = 305
        Top = 360
        Width = 100
        Height = 30
        Cursor = crHandPoint
        Caption = 'Default'
        OnClick = Bt_ResetClick
      end
      object Bt_imprimir: TSpeedButton
        Left = 201
        Top = 360
        Width = 100
        Height = 30
        Cursor = crHandPoint
        Caption = 'Imprimir'
        OnClick = Bt_imprimirClick
      end
      object Bt_Salvar: TSpeedButton
        Left = 97
        Top = 360
        Width = 100
        Height = 30
        Cursor = crHandPoint
        Caption = 'Salvar'
        OnClick = Bt_SalvarClick
      end
      object Pn_Pagina: TGroupBox
        Left = 3
        Top = 1
        Width = 210
        Height = 210
        Caption = ' P'#225'gina '
        TabOrder = 0
        object Label1: TLabel
          Left = 63
          Top = 36
          Width = 29
          Height = 13
          Caption = 'Altura'
        end
        object Label2: TLabel
          Left = 55
          Top = 59
          Width = 37
          Height = 13
          Caption = 'Largura'
        end
        object Label3: TLabel
          Left = 27
          Top = 82
          Width = 65
          Height = 13
          Caption = 'Margem Topo'
        end
        object Label4: TLabel
          Left = 14
          Top = 105
          Width = 78
          Height = 13
          Caption = 'Margem Rodap'#233
        end
        object Label6: TLabel
          Left = 17
          Top = 151
          Width = 75
          Height = 13
          Caption = 'Margem  Direita'
        end
        object Label5: TLabel
          Left = 3
          Top = 128
          Width = 89
          Height = 13
          Caption = 'Margem  Esquerda'
        end
        object Label18: TLabel
          Left = 75
          Top = 174
          Width = 17
          Height = 13
          Caption = 'Cor'
        end
        object Label20: TLabel
          Left = 66
          Top = 13
          Width = 26
          Height = 13
          Caption = 'Papel'
        end
        object Ed_PaginaAltura: TEdit
          Left = 97
          Top = 33
          Width = 100
          Height = 21
          TabOrder = 0
          Text = '50'
          OnExit = Ed_PaginaAlturaExit
        end
        object Ed_PaginaLargura: TEdit
          Left = 97
          Top = 56
          Width = 100
          Height = 21
          TabOrder = 1
          Text = '110'
          OnExit = Ed_PaginaAlturaExit
        end
        object Ed_PgMarginTop: TEdit
          Left = 97
          Top = 79
          Width = 100
          Height = 21
          TabOrder = 2
          Text = '2'
          OnExit = Ed_PaginaAlturaExit
        end
        object Ed_PgMarginBottom: TEdit
          Left = 97
          Top = 102
          Width = 100
          Height = 21
          TabOrder = 3
          Text = '1'
          OnExit = Ed_PaginaAlturaExit
        end
        object Ed_PgMarginRigth: TEdit
          Left = 97
          Top = 148
          Width = 100
          Height = 21
          TabOrder = 5
          Text = '1'
          OnExit = Ed_PaginaAlturaExit
        end
        object Ed_PgMarginLEft: TEdit
          Left = 97
          Top = 125
          Width = 100
          Height = 21
          TabOrder = 4
          Text = '1'
          OnExit = Ed_PaginaAlturaExit
        end
        object Cbo_PaginaCor: TComboBox
          Left = 98
          Top = 170
          Width = 100
          Height = 21
          Color = clWhite
          TabOrder = 6
          Text = 'clWhite'
          OnExit = Ed_PaginaAlturaExit
          OnSelect = Cbo_PaginaCorSelect
          Items.Strings = (
            'clWhite'
            'ClBlack'
            'clMaroon'
            'clGreen'
            'clOlive'
            'clNavy'
            'clPurple'
            'clTeal'
            'clGray'
            'clSilver'
            'clRed'
            'clLime'
            'clYellow'
            'clBlue'
            'clFuchsia'
            'clAqua'
            'clLtGray'
            'clDkGray')
        end
        object Ed_Papel: TEdit
          Left = 97
          Top = 10
          Width = 100
          Height = 21
          Color = clSilver
          Enabled = False
          TabOrder = 7
          Text = 'fpCustom'
        end
      end
      object GroupBox2: TGroupBox
        Left = 215
        Top = 1
        Width = 210
        Height = 210
        Caption = ' Etiqueta '
        TabOrder = 1
        object Label9: TLabel
          Left = 44
          Top = 16
          Width = 29
          Height = 13
          Caption = 'Altura'
        end
        object Label10: TLabel
          Left = 36
          Top = 39
          Width = 37
          Height = 13
          Caption = 'Largura'
        end
        object Label7: TLabel
          Left = 35
          Top = 62
          Width = 38
          Height = 13
          Caption = 'Colunas'
        end
        object Label8: TLabel
          Left = 9
          Top = 85
          Width = 64
          Height = 13
          Caption = 'Espa'#231'amento'
        end
        object Label19: TLabel
          Left = 56
          Top = 108
          Width = 17
          Height = 13
          Caption = 'Cor'
        end
        object Ed_EtiquetaLargura: TEdit
          Left = 77
          Top = 35
          Width = 100
          Height = 21
          TabOrder = 1
          Text = '52'
          OnExit = Ed_PaginaAlturaExit
        end
        object Ed_EtiquetaAltura: TEdit
          Left = 77
          Top = 12
          Width = 100
          Height = 21
          TabOrder = 0
          Text = '155'
          OnExit = Ed_PaginaAlturaExit
        end
        object Ed_Espacamento: TEdit
          Left = 77
          Top = 81
          Width = 100
          Height = 21
          TabOrder = 3
          Text = '2'
          OnExit = Ed_PaginaAlturaExit
        end
        object Ed_Colunas: TEdit
          Left = 77
          Top = 58
          Width = 100
          Height = 21
          TabOrder = 2
          Text = '2'
          OnExit = Ed_PaginaAlturaExit
        end
        object Cbo_EtiquetaCor: TComboBox
          Left = 77
          Top = 104
          Width = 100
          Height = 21
          Color = clWhite
          TabOrder = 4
          Text = 'clWhite'
          OnExit = Ed_PaginaAlturaExit
          OnSelect = Cbo_EtiquetaCorSelect
          Items.Strings = (
            'clWhite'
            'ClBlack'
            'clMaroon'
            'clGreen'
            'clOlive'
            'clNavy'
            'clPurple'
            'clTeal'
            'clGray'
            'clSilver'
            'clRed'
            'clLime'
            'clYellow'
            'clBlue'
            'clFuchsia'
            'clAqua'
            'clLtGray'
            'clDkGray')
        end
      end
    end
    object Ts_teste: TTabSheet
      Caption = 'Dados teste'
      ImageIndex = 1
      ExplicitWidth = 576
      ExplicitHeight = 333
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 442
        Height = 433
        ActivePage = Ts_EtiquetaEstoque
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 576
        ExplicitHeight = 333
        object Ts_EtiquetaEstoque: TTabSheet
          Caption = 'Estoque'
          ExplicitWidth = 568
          ExplicitHeight = 305
          object Label12: TLabel
            Left = 10
            Top = 9
            Width = 250
            Height = 13
            Caption = 'Codigo:'
          end
          object Label13: TLabel
            Left = 10
            Top = 51
            Width = 250
            Height = 13
            Caption = 'Produto'
          end
          object Label14: TLabel
            Left = 10
            Top = 93
            Width = 250
            Height = 13
            Caption = 'Marca'
          end
          object Label15: TLabel
            Left = 10
            Top = 135
            Width = 250
            Height = 13
            Caption = 'Referencia'
          end
          object Label16: TLabel
            Left = 10
            Top = 177
            Width = 250
            Height = 13
            Caption = 'Localiza'#231#227'o'
          end
          object Label11: TLabel
            Left = 10
            Top = 219
            Width = 250
            Height = 13
            Caption = 'Quantidade de etiquetas'
          end
          object Ed_EstoqueCodigo: TEdit
            Left = 10
            Top = 26
            Width = 250
            Height = 21
            TabOrder = 0
            Text = '9001'
          end
          object Ed_EstoqueProduto: TEdit
            Left = 10
            Top = 68
            Width = 250
            Height = 21
            TabOrder = 1
            Text = 'Abra'#231'adeira de nylon verde 140x3,6mm'
          end
          object Ed_EstoqueMarca: TEdit
            Left = 10
            Top = 110
            Width = 250
            Height = 21
            TabOrder = 2
            Text = 'Vonder'
          end
          object Ed_EstoqueReferencia: TEdit
            Left = 10
            Top = 152
            Width = 250
            Height = 21
            TabOrder = 3
            Text = '2528p15'
          end
          object Ed_Localizacao: TEdit
            Left = 10
            Top = 194
            Width = 250
            Height = 21
            TabOrder = 4
            Text = 'Prateleira a - 25'
          end
          object Ed_Qtd: TEdit
            Left = 10
            Top = 236
            Width = 250
            Height = 21
            TabOrder = 5
            Text = '4'
          end
        end
      end
    end
  end
  object RelEtiqueta: TRLReport
    Left = 461
    Top = 8
    Width = 416
    Height = 189
    Margins.LeftMargin = 1.000000000000000000
    Margins.TopMargin = 2.000000000000000000
    Margins.RightMargin = 1.000000000000000000
    Margins.BottomMargin = 1.000000000000000000
    DataSource = Ds_Produto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 110.000000000000000000
    PageSetup.PaperHeight = 50.000000000000000000
    object RLDetailGrid1: TRLDetailGrid
      Left = 4
      Top = 8
      Width = 408
      Height = 155
      AutoExpand = False
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      ColCount = 2
      ColSpacing = 2.000000000000000000
      ColWidth = 50.000000000000000000
      object Pn_Conteudo: TRLPanel
        Left = 0
        Top = 0
        Width = 189
        Height = 155
        Margins.LeftMargin = 1.000000000000000000
        Margins.TopMargin = 1.000000000000000000
        Margins.RightMargin = 1.000000000000000000
        Margins.BottomMargin = 1.000000000000000000
        Align = faClient
        object RLPanel1: TRLPanel
          Left = 4
          Top = 4
          Width = 181
          Height = 20
          Align = faTop
          object RLDBText1: TRLDBText
            Left = 38
            Top = 1
            Width = 126
            Height = 14
            DataField = 'Codigo'
            DataSource = Ds_Produto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
          object RLLabel1: TRLLabel
            Left = 4
            Top = 2
            Width = 28
            Height = 14
            Caption = 'Cod.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLPanel2: TRLPanel
          Left = 4
          Top = 24
          Width = 181
          Height = 30
          Align = faTop
          object RLDBMemo1: TRLDBMemo
            Left = 0
            Top = 0
            Width = 181
            Height = 30
            Align = faClient
            Behavior = [beSiteExpander]
            DataField = 'Nome'
            DataSource = Ds_Produto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLPanel4: TRLPanel
          Left = 4
          Top = 54
          Width = 181
          Height = 14
          Align = faTop
          object RLLabel2: TRLLabel
            Left = 0
            Top = 0
            Width = 35
            Height = 14
            Align = faLeft
            Alignment = taRightJustify
            Caption = 'Marca:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DEd_Marca: TRLDBText
            Left = 35
            Top = 0
            Width = 146
            Height = 14
            Align = faClient
            DataField = 'Marca'
            DataSource = Ds_Produto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel5: TRLPanel
          Left = 4
          Top = 68
          Width = 181
          Height = 14
          Align = faTop
          object RLLabel4: TRLLabel
            Left = 0
            Top = 0
            Width = 35
            Height = 14
            Align = faLeft
            Alignment = taRightJustify
            Caption = 'Loc.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DEd_Localizacao: TRLDBText
            Left = 35
            Top = 0
            Width = 146
            Height = 14
            Align = faClient
            DataField = 'Localizacao'
            DataSource = Ds_Produto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel6: TRLPanel
          Left = 4
          Top = 82
          Width = 181
          Height = 14
          Align = faTop
          object RLLabel3: TRLLabel
            Left = 0
            Top = 0
            Width = 35
            Height = 14
            Align = faLeft
            Alignment = taRightJustify
            Caption = 'Refe.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DEd_Referencia1: TRLDBText
            Left = 35
            Top = 0
            Width = 146
            Height = 14
            Align = faClient
            DataField = 'Referencia'
            DataSource = Ds_Produto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel3: TRLPanel
          Left = 28
          Top = 96
          Width = 157
          Height = 55
          Align = faRight
          object RLDBBarcode1: TRLDBBarcode
            Left = 37
            Top = 6
            Width = 104
            Height = 25
            Margins.LeftMargin = 1.000000000000000000
            Margins.RightMargin = 1.000000000000000000
            BarcodeType = bcEAN13
            DataField = 'CodigoBarras'
            DataSource = Ds_Produto
          end
        end
      end
    end
  end
  object Cds_Produto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 470
    Top = 214
    object Cds_ProdutoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object Cds_ProdutoNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object Cds_ProdutoMarca: TStringField
      FieldName = 'Marca'
      Size = 100
    end
    object Cds_ProdutoReferencia: TStringField
      FieldName = 'Referencia'
      Size = 100
    end
    object Cds_ProdutoLocalizacao: TStringField
      FieldName = 'Localizacao'
      Size = 100
    end
    object Cds_ProdutoCodigoBarras: TStringField
      FieldName = 'CodigoBarras'
      Size = 100
    end
  end
  object Ds_Produto: TDataSource
    DataSet = Cds_Produto
    Left = 550
    Top = 214
  end
end
