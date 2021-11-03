unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls, RLReport, RLBarcode, Data.DB,IniFiles ,
  Datasnap.DBClient;

type
  TF_Principal = class(TForm)
    PageControl1: TPageControl;
    Ts_Config: TTabSheet;
    Ts_teste: TTabSheet;
    Pn_TipoPapel: TGroupBox;
    Ed_Papel: TEdit;
    Pn_Pagina: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Ed_PaginaAltura: TEdit;
    Ed_PaginaLargura: TEdit;
    Ed_PgMarginTop: TEdit;
    Ed_PgMarginBottom: TEdit;
    Ed_PgMarginRigth: TEdit;
    Ed_PgMarginLEft: TEdit;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Ed_EtiquetaLargura: TEdit;
    Ed_EtiquetaAltura: TEdit;
    Ed_Espacamento: TEdit;
    Ed_Colunas: TEdit;
    PageControl2: TPageControl;
    Ts_EtiquetaEstoque: TTabSheet;
    Label12: TLabel;
    Ed_EstoqueCodigo: TEdit;
    Label13: TLabel;
    Ed_EstoqueProduto: TEdit;
    Label14: TLabel;
    Ed_EstoqueMarca: TEdit;
    Label15: TLabel;
    Ed_EstoqueReferencia: TEdit;
    Label16: TLabel;
    Ed_Localizacao: TEdit;
    Bt_Aplicar: TSpeedButton;
    Bt_Reset: TSpeedButton;
    Label11: TLabel;
    Ed_Qtd: TEdit;
    Bt_imprimir: TSpeedButton;
    Label17: TLabel;
    Cds_Produto: TClientDataSet;
    Cds_ProdutoCodigo: TIntegerField;
    Cds_ProdutoNome: TStringField;
    Cds_ProdutoMarca: TStringField;
    Cds_ProdutoReferencia: TStringField;
    Cds_ProdutoLocalizacao: TStringField;
    Cds_ProdutoCodigoBarras: TStringField;
    Ds_Produto: TDataSource;
    RelEtiqueta: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    RLDBBarcode1: TRLDBBarcode;
    DEd_Localizacao: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel3: TRLLabel;
    DEd_Referencia1: TRLDBText;
    DEd_Marca: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    procedure Bt_ResetClick(Sender: TObject);
    procedure Bt_imprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Bt_AplicarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

procedure TF_Principal.Bt_AplicarClick(Sender: TObject);
var
	ArquivoINI: TIniFile;
	DestinoArq:string;
begin

   try
      DestinoArq :=ExtractFilePath(Application.ExeName)+'config.txt';
      ArquivoINI := TIniFile.Create(DestinoArq);
      ArquivoINI.WriteString('PAGINA','ALTURA',Ed_PaginaAltura.Text);
      ArquivoINI.WriteString('PAGINA','LARGURA',Ed_PaginaLargura.Text);
      ArquivoINI.WriteString('PAGINA','TOPO',Ed_PgMarginTop.Text);
      ArquivoINI.WriteString('PAGINA','RODAPE',Ed_PgMarginBottom.Text);
      ArquivoINI.WriteString('PAGINA','DIREITA',Ed_PgMarginRigth.Text);
      ArquivoINI.WriteString('PAGINA','ESQUERDA',Ed_PgMarginLEft.Text);
      ArquivoINI.WriteString('','','');
      ArquivoINI.WriteString('ETIQUETA','ALTURA',Ed_EtiquetaAltura.Text);
      ArquivoINI.WriteString('ETIQUETA','LARGURA',Ed_EtiquetaLargura.Text);
      ArquivoINI.WriteString('ETIQUETA','COLUNAS',Ed_Colunas.Text);
      ArquivoINI.WriteString('ETIQUETA','ESPACAMENTO',Ed_Espacamento.Text);
      ArquivoINI.Free;

      ShowMessage('Configurações aplicadas com sucesso');
   except on E: Exception do
   	begin
      	ShowMessage('Falha'+E.Message);
   	end;
   end;

end;

procedure TF_Principal.Bt_imprimirClick(Sender: TObject);
var
	ArquivoINI: TIniFile;
	I:Integer;
   DestinoArq:string;
begin
	//carregando configurações
   DestinoArq :=ExtractFilePath(Application.ExeName)+'config.txt';
   ArquivoINI.Free;
   ArquivoINI := TIniFile.Create(DestinoArq);

   RelEtiqueta.PageSetup.PaperWidth  := StrToInt(ArquivoINI.ReadString('PAGINA','LARGURA',''));
   RelEtiqueta.PageSetup.PaperHeight := StrToInt(ArquivoINI.ReadString('PAGINA','ALTURA',''));
//   RelEtiqueta.PageSetup.PaperSize   := fpCustom;
   RLDetailGrid1.ColCount   			 := StrToInt(ArquivoINI.ReadString('ETIQUETA','COLUNAS',''));
   RLDetailGrid1.ColSpacing          := StrToInt(ArquivoINI.ReadString('ETIQUETA','ESPACAMENTO',''));
   RLDetailGrid1.ColWidth            := StrToInt(ArquivoINI.ReadString('ETIQUETA','LARGURA',''));
   RLDetailGrid1.Height              := StrToInt(ArquivoINI.ReadString('ETIQUETA','ALTURA',''));






   for I := 0 to StrToIntDef(Ed_Qtd.Text,1) do
   begin
      Cds_Produto.Insert;
      Cds_ProdutoCodigo.Value := StrToInt(Ed_EstoqueCodigo.Text);
      Cds_ProdutoNome.Value   := Ed_EstoqueProduto.Text;
      Cds_ProdutoMarca.Value  := Ed_EstoqueMarca.Text;
      Cds_ProdutoLocalizacao.Value := Ed_Localizacao.Text;
      Cds_ProdutoReferencia.Value   := Ed_EstoqueReferencia.Text;
      Cds_Produto.Post;
   end;



	RelEtiqueta.Height := StrToInt(Ed_PaginaAltura.Text);
   RelEtiqueta.Width  := StrToInt(Ed_PaginaLargura.Text);
   RelEtiqueta.Preview();
end;

procedure TF_Principal.Bt_ResetClick(Sender: TObject);
begin
	Ed_PaginaAltura.Text   := '50';
   Ed_PaginaLargura.Text  := '110';
   Ed_PgMarginTop.Text    := '2';
   Ed_PgMarginBottom.Text := '1';
   Ed_PgMarginRigth.Text  := '1';
   Ed_PgMarginLEft.Text   := '1';

   Ed_Colunas.Text        := '2';
   Ed_Espacamento.Text    := '2';
   Ed_EtiquetaAltura.Text := '155';
   Ed_EtiquetaLargura.Text:= '52';

end;

procedure TF_Principal.FormShow(Sender: TObject);
begin
	if not Cds_Produto.Active then
   begin
      Cds_Produto.CreateDataSet;
      Cds_Produto.Open;
   end;
   Cds_Produto.EmptyDataSet;

end;

end.
