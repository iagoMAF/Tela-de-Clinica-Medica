unit PacienteView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask;

type
  TfrmPaciente = class(TForm)
    lblNome: TLabel;
    lblCodigo: TLabel;
    edtCodigo: TEdit;
    pnpCPaciente: TPanel;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnSair: TButton;
    btnNome: TEdit;
    chkAtivo: TCheckBox;
    lblCPF: TLabel;
    edtCPF: TMaskEdit;
    lblEndereco: TLabel;
    edtEndereco: TEdit;
    lblNumero: TLabel;
    lblNascimento: TLabel;
    MaskEdit1: TMaskEdit;
    lblTelefone: TLabel;
    edtTelefone: TMaskEdit;
    Memo1: TMemo;
    lblObservacao: TLabel;
    edtNumero: TEdit;
    edtConsultar: TButton;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPaciente: TfrmPaciente;

implementation

{$R *.dfm}

procedure TfrmPaciente.btnSairClick(Sender: TObject);
begin
   Close;
end;

end.
