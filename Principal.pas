unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TF_Principal = class(TForm)
    Pn_configuracoes: TGroupBox;
    Pn_Teste: TGroupBox;
    Pn_Pagina: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Ed_PaginaAltura: TEdit;
    Ed_PaginaLargura: TEdit;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Ed_EtiquetaLargura: TEdit;
    Ed_EtiquetaAltura: TEdit;
    Label3: TLabel;
    Ed_PgMarginTop: TEdit;
    Label4: TLabel;
    Ed_PgMarginBottom: TEdit;
    Label6: TLabel;
    Ed_PgMarginRigth: TEdit;
    Ed_PgMarginLEft: TEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Ed_Espacamento: TEdit;
    Ed_Colunas: TEdit;
    Pn_TipoPapel: TGroupBox;
    Ed_Papel: TEdit;
    Bt_Reset: TSpeedButton;
    Bt_Aplicar: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

end.
