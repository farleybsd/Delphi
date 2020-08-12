unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    DOLAR: TEdit;
    REAL: TEdit;
    Label1: TLabel;
    Label2: TLabel;
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
   //var1 : string;
   //var2 : Integer;
   //var2 : real;
   //var2: Double;
   //var2 :Currency;   // Monetario
   VARREAL : real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

    // Exe 1

   //var1 := 'Farley';

   // Exe2
   //var2:=1000;
   //edit1.Text := IntToStr(var2);

   //Exe3
   //var2:=1000.10;
   //edit1.Text := FloatToStr(var2);

   if DOLAR.Text = '' then
       BEGIN
          SHOWMESSAGE('Digite valor em Dolar');
       END
   ELSE
        BEGIN
            VARREAL := StrToFloat(DOLAR.Text) * 3.9;
            REAL.Text := FloatToStr(VARREAL);
        END;

end;

end.
