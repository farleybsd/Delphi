unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    ID: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    txt_ID: TEdit;
    txt_Nome: TEdit;
    txt_Email: TEdit;
    txt_Telefone: TEdit;
    txt_observacao: TMemo;
    FDConnection1: TFDConnection;
    FDContatos: TFDTable;
    DataSource1: TDataSource;
    btn_Novo: TButton;
    btn_Gravar: TButton;
    Button1: TButton;
    status: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
FDConnection1.Params.Database:=  GetCurrentDir+'\assets\contatos.mdb';
FDConnection1.Connected :=true;
FDContatos.TableName := 'contatos';
FDContatos.Active :=true;

if FDConnection1.Connected then
  begin
  status.Caption := 'Conectado';
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  txt_ID.Text             := FDContatos.FieldByName('id').Value;
  txt_Nome.Text           := FDContatos.FieldByName('nome').Value;
  txt_Email.Text          := FDContatos.FieldByName('email').Value;
  txt_Telefone.Text       := FDContatos.FieldByName('telefone').Value;
  txt_observacao.Text     := FDContatos.FieldByName('observacoes').Value;
end;

end.
