program AppEtiquetaFortesreport;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {F_Principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Principal, F_Principal);
  Application.Run;
end.
