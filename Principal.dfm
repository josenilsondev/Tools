object F_Principal: TF_Principal
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Configura'#231#245'es Etiqueta - Fortes reporting'
  ClientHeight = 371
  ClientWidth = 594
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 5
    Top = 5
    Width = 584
    Height = 361
    ActivePage = Ts_teste
    Align = alClient
    TabOrder = 0
    object Ts_Config: TTabSheet
      Caption = 'Configura'#231#245'es'
      object Bt_Aplicar: TSpeedButton
        Left = 181
        Top = 284
        Width = 100
        Height = 30
        Cursor = crHandPoint
        Caption = 'Aplicar'
        OnClick = Bt_AplicarClick
      end
      object Bt_Reset: TSpeedButton
        Left = 285
        Top = 284
        Width = 100
        Height = 30
        Cursor = crHandPoint
        Caption = 'Default'
        OnClick = Bt_ResetClick
      end
      object Label17: TLabel
        Left = 115
        Top = 248
        Width = 346
        Height = 13
        Caption = 
          '* Para executar o primeiro teste, clique em aplicar e reinicie o' +
          ' aplicativo.'
      end
      object Pn_TipoPapel: TGroupBox
        Left = 0
        Top = 0
        Width = 576
        Height = 59
        Align = alTop
        Caption = 'Tipo de papel'
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 0
        object Ed_Papel: TEdit
          Left = 5
          Top = 18
          Width = 566
          Height = 21
          Align = alTop
          Color = clSilver
          Enabled = False
          TabOrder = 0
          Text = 'fpCustom'
        end
      end
      object Pn_Pagina: TGroupBox
        Left = 0
        Top = 59
        Width = 576
        Height = 77
        Align = alTop
        Caption = ' P'#225'gina '
        TabOrder = 1
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
        Left = 0
        Top = 136
        Width = 576
        Height = 82
        Align = alTop
        Caption = ' Etiqueta '
        TabOrder = 2
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
    end
    object Ts_teste: TTabSheet
      Caption = 'Teste de impress'#227'o'
      ImageIndex = 1
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 576
        Height = 333
        ActivePage = Ts_EtiquetaEstoque
        Align = alClient
        TabOrder = 0
        object Ts_EtiquetaEstoque: TTabSheet
          Caption = 'Estoque'
          object Label12: TLabel
            Left = 10
            Top = 9
            Width = 37
            Height = 13
            Caption = 'Codigo:'
          end
          object Label13: TLabel
            Left = 137
            Top = 9
            Width = 38
            Height = 13
            Caption = 'Produto'
          end
          object Label14: TLabel
            Left = 10
            Top = 53
            Width = 29
            Height = 13
            Caption = 'Marca'
          end
          object Label15: TLabel
            Left = 191
            Top = 53
            Width = 52
            Height = 13
            Caption = 'Referencia'
          end
          object Label16: TLabel
            Left = 368
            Top = 51
            Width = 54
            Height = 13
            Caption = 'Localiza'#231#227'o'
          end
          object Label11: TLabel
            Left = 10
            Top = 112
            Width = 119
            Height = 13
            Caption = 'Quantidade de etiquetas'
          end
          object Bt_imprimir: TSpeedButton
            Left = 231
            Top = 232
            Width = 105
            Height = 33
            Caption = 'Imprimir'
            OnClick = Bt_imprimirClick
          end
          object Ed_EstoqueCodigo: TEdit
            Left = 10
            Top = 26
            Width = 121
            Height = 21
            TabOrder = 0
            Text = '9001'
          end
          object Ed_EstoqueProduto: TEdit
            Left = 137
            Top = 26
            Width = 406
            Height = 21
            TabOrder = 1
            Text = 'Abra'#231'adeira de nylon verde 140x3,6mm'
          end
          object Ed_EstoqueMarca: TEdit
            Left = 10
            Top = 70
            Width = 175
            Height = 21
            TabOrder = 2
            Text = 'Vonder'
          end
          object Ed_EstoqueReferencia: TEdit
            Left = 189
            Top = 70
            Width = 175
            Height = 21
            TabOrder = 3
            Text = '2528p15'
          end
          object Ed_Localizacao: TEdit
            Left = 368
            Top = 70
            Width = 175
            Height = 21
            TabOrder = 4
            Text = 'Prateleira a - 25'
          end
          object Ed_Qtd: TEdit
            Left = 10
            Top = 131
            Width = 121
            Height = 21
            TabOrder = 5
            Text = '1'
          end
          object RelEtiqueta: TRLReport
            Left = 386
            Top = 113
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
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              ColCount = 2
              ColSpacing = 2.000000000000000000
              ColWidth = 50.000000000000000000
              object RLDBBarcode1: TRLDBBarcode
                Left = 69
                Top = 118
                Width = 104
                Height = 25
                Margins.LeftMargin = 1.000000000000000000
                Margins.RightMargin = 1.000000000000000000
                BarcodeType = bcEAN13
                DataField = 'CodigoBarras'
                DataSource = Ds_Produto
              end
              object DEd_Localizacao: TRLDBText
                Left = 48
                Top = 101
                Width = 66
                Height = 14
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
              object RLLabel4: TRLLabel
                Left = 17
                Top = 102
                Width = 27
                Height = 14
                Caption = 'Loc.:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLLabel3: TRLLabel
                Left = 15
                Top = 87
                Width = 32
                Height = 14
                Caption = 'Refe.:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object DEd_Referencia1: TRLDBText
                Left = 48
                Top = 87
                Width = 62
                Height = 14
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
              object DEd_Marca: TRLDBText
                Left = 48
                Top = 72
                Width = 36
                Height = 14
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
              object RLLabel2: TRLLabel
                Left = 11
                Top = 73
                Width = 36
                Height = 14
                Caption = 'Marca:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLLabel1: TRLLabel
                Left = 11
                Top = 20
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
              object RLDBText1: TRLDBText
                Left = 39
                Top = 20
                Width = 143
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
              object RLDBMemo1: TRLDBMemo
                Left = 11
                Top = 36
                Width = 170
                Height = 14
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
          end
        end
      end
    end
  end
  object Cds_Produto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 222
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
    Left = 294
    Top = 206
  end
end
