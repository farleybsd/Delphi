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
    status: TLabel;
    Button1: TButton;
    Button2: TButton;
    btn_Deletar: TButton;
    btn_Editar: TButton;
    procedure  carrega;
    procedure limpar;
    procedure bloqueia;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn_NovoClick(Sender: TObject);
    procedure btn_GravarClick(Sender: TObject);
    procedure FDContatosBeforePost(DataSet: TDataSet);
    procedure btn_DeletarClick(Sender: TObject);
    procedure btn_EditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure Tform1.bloqueia;
begin
  // Bloqueia Campos

  txt_Nome.Enabled           :=   not     txt_Nome.Enabled;
  txt_Email.Enabled          :=   not     txt_Email.Enabled;
  txt_Telefone.Enabled       :=   not     txt_Telefone.Enabled;
  txt_observacao.Enabled     :=   not     txt_observacao.Enabled;

end;
procedure Tform1.limpar;
begin
  //Limar Campos
  txt_ID.Text                 := '';
  txt_Nome.text               := '';
  txt_Email.text              := '';
  txt_Telefone.text           := '';
  txt_observacao.text         := '';
  txt_Nome.SetFocus;
end;

procedure TForm1.carrega;
begin
  txt_ID.Text             := FDContatos.FieldByName('id').Value;
  txt_Nome.Text           := FDContatos.FieldByName('nome').Value;
  txt_Email.Text          := FDContatos.FieldByName('email').Value;
  txt_Telefone.Text       := FDContatos.FieldByName('telefone').Value;
if FDContatos.FieldByName('observacoes').Value = NULL then
txt_observacao.Text := ''
else
  txt_observacao.Text     := FDContatos.FieldByName('observacoes').Value;
end;

procedure TForm1.btn_DeletarClick(Sender: TObject);
begin
 FDContatos.Delete;
 carrega;

end;

procedure TForm1.btn_EditarClick(Sender: TObject);
begin
bloqueia;
 FDContatos.Edit;
end;

procedure TForm1.btn_GravarClick(Sender: TObject);
begin
  FDContatos.Post;
  bloqueia;
  ShowMessage('Dados Gravados');
end;

procedure TForm1.btn_NovoClick(Sender: TObject);
begin
FDContatos.Insert;
bloqueia;
limpar;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 FDContatos.Next;
 carrega;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   FDContatos.Prior;
   carrega;
end;

procedure TForm1.FDContatosBeforePost(DataSet: TDataSet);
begin
FDContatos.FieldByName('nome').Value        :=   txt_Nome.Text;
FDContatos.FieldByName('email').Value       :=   txt_Email.Text;
FDContatos.FieldByName('telefone').value    :=   txt_Telefone.Text;
FDContatos.FieldByName('observacoes').value :=   txt_observacao.Text;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
FDConnection1.Params.Database:=  GetCurrentDir+'\assets\contatos.mdb';
FDConnection1.Connected :=true;
FDContatos.TableName := 'contatos';
FDContatos.Active :=true;

if FDConnection1.Connected then
  begin
  status.Caption := 'Conectado';
  carrega;
  end;

end;

end.
