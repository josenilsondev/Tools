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
    Bt_Reset: TSpeedButton;
    Label11: TLabel;
    Ed_Qtd: TEdit;
    Cds_Produto: TClientDataSet;
    Cds_ProdutoCodigo: TIntegerField;
    Cds_ProdutoNome: TStringField;
    Cds_ProdutoMarca: TStringField;
    Cds_ProdutoReferencia: TStringField;
    Cds_ProdutoLocalizacao: TStringField;
    Cds_ProdutoCodigoBarras: TStringField;
    Ds_Produto: TDataSource;
    Label18: TLabel;
    Cbo_PaginaCor: TComboBox;
    Label19: TLabel;
    Cbo_EtiquetaCor: TComboBox;
    RelEtiqueta: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    Pn_Conteudo: TRLPanel;
    RLPanel1: TRLPanel;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLPanel2: TRLPanel;
    RLDBMemo1: TRLDBMemo;
    RLPanel4: TRLPanel;
    RLLabel2: TRLLabel;
    DEd_Marca: TRLDBText;
    RLPanel5: TRLPanel;
    RLLabel4: TRLLabel;
    DEd_Localizacao: TRLDBText;
    RLPanel6: TRLPanel;
    RLLabel3: TRLLabel;
    DEd_Referencia1: TRLDBText;
    RLPanel3: TRLPanel;
    RLDBBarcode1: TRLDBBarcode;
    Ed_Papel: TEdit;
    Label20: TLabel;
    Bt_imprimir: TSpeedButton;
    Bt_Salvar: TSpeedButton;
    procedure Bt_ResetClick(Sender: TObject);
    procedure Bt_imprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Cbo_PaginaCorSelect(Sender: TObject);
    procedure Cbo_EtiquetaCorSelect(Sender: TObject);
    procedure Bt_SalvarClick(Sender: TObject);
    procedure Ed_PaginaAlturaExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtualizaPropriedades();
    procedure CarregandoTxt();
    procedure GerarTxt();
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

procedure TF_Principal.AtualizaPropriedades();
begin
	RelEtiqueta.PageSetup.PaperWidth  := StrToInt(Ed_PaginaLargura.Text);
   RelEtiqueta.PageSetup.PaperHeight := StrToInt(Ed_PaginaAltura.Text);
   RelEtiqueta.Margins.LeftMargin    := StrToInt(Ed_PgMarginLEft.Text);
   RelEtiqueta.Margins.RightMargin   := StrToInt(Ed_PgMarginRigth.Text);
   RelEtiqueta.Margins.TopMargin     := StrToInt(Ed_PgMarginTop.Text);
   RelEtiqueta.Margins.BottomMargin  := StrToInt(Ed_PgMarginBottom.Text);
   RelEtiqueta.Color                 := StringToColor(Cbo_PaginaCor.Text);
   RLDetailGrid1.ColCount   			 := StrToInt(Ed_Colunas.Text);
   RLDetailGrid1.ColSpacing          := StrToInt(Ed_Espacamento.Text);
   RLDetailGrid1.ColWidth            := StrToInt(Ed_EtiquetaLargura.Text);
   RLDetailGrid1.Height              := StrToInt(Ed_EtiquetaAltura.Text);
   RLDetailGrid1.Color               := StringToColor(Cbo_EtiquetaCor.Text);

end;

procedure TF_Principal.CarregandoTxt();
var
	ArquivoINI: TIniFile;
	I:Integer;
   DestinoArq:string;
begin
	//carregando configurações
   try
	   ArquivoINI.Free;
      DestinoArq :=ExtractFilePath(Application.ExeName)+'config.txt';
      ArquivoINI := TIniFile.Create(DestinoArq);
   	Ed_PaginaLargura.Text  := ArquivoINI.ReadString('CONFIG','PAGINA_LARGURA','');
      Ed_PaginaAltura.Text   := ArquivoINI.ReadString('CONFIG','PAGINA_ALTURA','');
      Ed_PgMarginLEft.Text   := ArquivoINI.ReadString('CONFIG','PAGINA_MARGIN_LEFT','');
      Ed_PgMarginRigth.Text  := ArquivoINI.ReadString('CONFIG','PAGINA_MARGIN_RIGTH','');
      Ed_PgMarginTop.Text    := ArquivoINI.ReadString('CONFIG','PAGINA_MARGIN_TOPO','');
      Ed_PgMarginBottom.Text := ArquivoINI.ReadString('CONFIG','PAGINA_MARGIN_BOTTOM','');
      Cbo_PaginaCor.Text     := ArquivoINI.ReadString('CONFIG','PAGINA_COR','');
      Cbo_PaginaCor.Color    := StringToColor(Cbo_PaginaCor.Text);
      Ed_EtiquetaAltura.Text := ArquivoINI.ReadString('CONFIG','ETIQUETA_ALTURA','');
      Ed_EtiquetaLargura.Text:= ArquivoINI.ReadString('CONFIG','ETIQUETA_LARGURA','');
      Ed_Espacamento.Text    := ArquivoINI.ReadString('CONFIG','ETIQUETA_ESPACAMENTO','');
      Ed_Colunas.Text        := ArquivoINI.ReadString('CONFIG','ETIQUETA_COLUNAS','');
      Cbo_EtiquetaCor.Text   := ArquivoINI.ReadString('CONFIG','ETIQUETA_COR','');
      Cbo_EtiquetaCor.Color  := StringToColor(Cbo_EtiquetaCor.Text);

   except on E: Exception do
   	begin
          Application.MessageBox('Arquivo config não encontrado.' + #13#10 +
            'Clique em salvar para gera-lo.', 'Atenção', MB_OK +
            MB_ICONWARNING);
      end;
   end;

end;
procedure TF_Principal.GerarTxt();
var
	ArquivoINI: TIniFile;
	DestinoArq:string;
begin
    //salvando configurações
   try
      DestinoArq :=ExtractFilePath(Application.ExeName)+'config.txt';
      ArquivoINI := TIniFile.Create(DestinoArq);
      ArquivoINI.WriteString('CONFIG','PAGINA_ALTURA',Ed_PaginaAltura.Text);
      ArquivoINI.WriteString('CONFIG','PAGINA_LARGURA',Ed_PaginaLargura.Text);
      ArquivoINI.WriteString('CONFIG','PAGINA_MARGIN_TOPO',Ed_PgMarginTop.Text);
      ArquivoINI.WriteString('CONFIG','PAGINA_MARGIN_BOTTOM',Ed_PgMarginBottom.Text);
      ArquivoINI.WriteString('CONFIG','PAGINA_MARGIN_RIGTH',Ed_PgMarginRigth.Text);
      ArquivoINI.WriteString('CONFIG','PAGINA_MARGIN_LEFT',Ed_PgMarginLEft.Text);
      ArquivoINI.WriteString('CONFIG','PAGINA_COR',Cbo_PaginaCor.Text);
      ArquivoINI.WriteString('CONFIG','ETIQUETA_ALTURA',Ed_EtiquetaAltura.Text);
      ArquivoINI.WriteString('CONFIG','ETIQUETA_LARGURA',Ed_EtiquetaLargura.Text);
      ArquivoINI.WriteString('CONFIG','ETIQUETA_COLUNAS',Ed_Colunas.Text);
      ArquivoINI.WriteString('CONFIG','ETIQUETA_ESPACAMENTO',Ed_Espacamento.Text);
      ArquivoINI.WriteString('CONFIG','ETIQUETA_COR',Cbo_EtiquetaCor.Text);
      ArquivoINI.Free;

   except on E: Exception do
   	begin
      	ShowMessage('Falha'+E.Message);
   	end;
   end;

end;

procedure TF_Principal.Bt_imprimirClick(Sender: TObject);
var
	I:Integer;
begin

	AtualizaPropriedades();

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
   Cbo_PaginaCor.Text     := 'clWhite';
   Cbo_PaginaCor.Color    :=  clWhite;
   Ed_Colunas.Text        := '2';
   Ed_Espacamento.Text    := '2';
   Ed_EtiquetaAltura.Text := '155';
   Ed_EtiquetaLargura.Text:= '52';
   Cbo_EtiquetaCor.Text   := 'clWhite';
   Cbo_EtiquetaCor.Color  := clWhite;
   AtualizaPropriedades;

end;

procedure TF_Principal.Bt_SalvarClick(Sender: TObject);
begin
	GerarTxt;
end;

procedure TF_Principal.Cbo_EtiquetaCorSelect(Sender: TObject);
begin
	Cbo_EtiquetaCor.Color := StringToColor(Cbo_EtiquetaCor.Text);
end;

procedure TF_Principal.Cbo_PaginaCorSelect(Sender: TObject);
begin
	Cbo_PaginaCor.Color := StringToColor(Cbo_PaginaCor.Text);
end;

procedure TF_Principal.Ed_PaginaAlturaExit(Sender: TObject);
begin
	AtualizaPropriedades;
end;

procedure TF_Principal.FormActivate(Sender: TObject);
begin
   //FormActivate
   Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
   Top  := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;


procedure TF_Principal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = VK_RETURN then
   begin
     perform(WM_NEXTDLGCTL,0,0);

   end;

end;

procedure TF_Principal.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if Key = #13 then
		Key := #0;
end;

procedure TF_Principal.FormShow(Sender: TObject);
begin
	if not Cds_Produto.Active then
   begin
      Cds_Produto.CreateDataSet;
      Cds_Produto.Open;
   end;
   Cds_Produto.EmptyDataSet;

   CarregandoTxt();
   AtualizaPropriedades();

end;

end.
