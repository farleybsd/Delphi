unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    // variaveis locais do formulario
  public
    { Public declarations }
    // variavies para troca de dados em formularios
  end;

var
  Form1: TForm1;
  // criando uma variavel no delphi
   var1 : string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   var1 := 'Farley';
   edit1.Text := var1;
end;

end.
