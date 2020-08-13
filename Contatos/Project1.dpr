program Project1;

uses
  Vcl.Forms,
  Unit1_Contatos in 'Unit1_Contatos.pas' {FORM_CONTATOS};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFORM_CONTATOS, FORM_CONTATOS);
  Application.Run;
end.
