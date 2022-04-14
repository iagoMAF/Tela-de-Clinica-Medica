unit UAgendamentpView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, uMessageUtil, UEnumerationUtil,
  UClassFuncoes;

type
  TfrmAgendamento = class(TForm)
    pnlAgendamento: TPanel;
    Label1: TLabel;
    pnlBotoes: TPanel;
    pnlDados: TPanel;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnConsultar: TButton;
    btnSair: TButton;
    lblCodigo: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    edtData: TMaskEdit;
    edtHora: TMaskEdit;
    lblMedico: TLabel;
    edtMedico: TEdit;
    Label5: TLabel;
    cmbConsulta: TComboBox;
    lblConsuta: TLabel;
    cmbEspecialidade: TComboBox;
    Label6: TLabel;
    Memo1: TMemo;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    Aviso: TLabel;
    Timer1: TTimer;
    procedure btnSairClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtHoraExit(Sender: TObject);
    procedure edtDataExit(Sender: TObject);
  private
    { Private declarations }
    vKey        : Word;
    vEstadoTela : TEstadoTela;

    procedure CamposEnabled(pOpcao : Boolean);
    procedure LimparTela;
    procedure DefineEstadoTela;

    function ValidaHora(hr:String): boolean;
    function ValidaData(dt:String): Boolean;


  public
    { Public declarations }
  end;

var
  frmAgendamento: TfrmAgendamento;

implementation

{$R *.dfm}

procedure TfrmAgendamento.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmAgendamento.Timer1Timer(Sender: TObject);
begin
   Aviso.Visible := not Aviso.Visible ;
end;

procedure TfrmAgendamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   vKey := Key;

   case vKey of

      VK_RETURN:
      begin
         Perform(WM_NEXTDLGCTL, 0, 0);
      end;

      VK_ESCAPE:
      begin
         if (TMessageUtil.Pergunta('Deseja sair dessa rotina?')) then
            Close;
      end;

   end;
end;

procedure TfrmAgendamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action         := caFree;
   frmAgendamento := nil;
end;

procedure TfrmAgendamento.CamposEnabled(pOpcao: Boolean);
var
   i : Integer;
begin
   for i := 0 to pred(ComponentCount) do
   begin

      if (Components[i] is TEdit) then
         (Components[i] as TEdit).Enabled     := pOpcao;

      if (Components[i] is TMaskEdit) then
         (Components[i] as TMaskEdit).Enabled := pOpcao;

      if (Components[i] is TComboBox) then
         (Components[i] as TComboBox).Enabled := pOpcao;

      if (Components[i] is TMemo) then
         (Components[i] as TMemo).Enabled     := pOpcao;
   end;
end;

procedure TfrmAgendamento.LimparTela;
var
   i : Integer;
begin
   for i := 0 to pred(ComponentCount) do
   begin
      if (Components[i] is TEdit) then
         (Components[i] as TEdit).Text     := EmptyStr;

      if (Components[i] is TMaskEdit) then
         (Components[i] as TMaskEdit).Text := EmptyStr;

      if (Components[i] is TComboBox) then
         (Components[i] as TComboBox).Text := EmptyStr;

      if (Components[i] is TMemo) then
         (Components[i] as TMemo).Text     := EmptyStr;
   end;
end;

procedure TfrmAgendamento.DefineEstadoTela;
begin
   btnIncluir.Enabled   := (vEstadoTela in [etPadrao]);
   btnAlterar.Enabled   := (vEstadoTela in [etPadrao]);
   btnExcluir.Enabled   := (vEstadoTela in [etPadrao]);
   btnConsultar.Enabled := (vEstadoTela in [etPadrao]);

   btnConfirmar.Enabled :=
      vEstadoTela in [etIncluir, etAlterar, etExcluir, etConsultar];

   btnCancelar.Enabled  :=
      vEstadoTela in [etIncluir, etAlterar, etExcluir, etConsultar];

   case vEstadoTela of

      etPadrao:
      begin
         CamposEnabled(False);
         LimparTela;

         if (frmAgendamento <> nil) and
            (frmAgendamento.Active) and
            (btnIncluir.CanFocus)   then
               (btnIncluir.SetFocus);

         Application.ProcessMessages;
      end;

      etIncluir:
      begin
         CamposEnabled(True);
         edtCodigo.Enabled := False;

         if (cmbConsulta.CanFocus) then
            (cmbConsulta.SetFocus);
      end;


   end;
end;

procedure TfrmAgendamento.FormShow(Sender: TObject);
begin
   DefineEstadoTela;
end;

procedure TfrmAgendamento.btnIncluirClick(Sender: TObject);
begin
   vEstadoTela := etIncluir;
   DefineEstadoTela;
end;

procedure TfrmAgendamento.btnAlterarClick(Sender: TObject);
begin
   vEstadoTela := etAlterar;
   DefineEstadoTela
end;

procedure TfrmAgendamento.btnExcluirClick(Sender: TObject);
begin
   vEstadoTela := etExcluir;
   DefineEstadoTela;
end;

procedure TfrmAgendamento.btnConsultarClick(Sender: TObject);
begin
   vEstadoTela := etConsultar;
   DefineEstadoTela;
end;

procedure TfrmAgendamento.btnConfirmarClick(Sender: TObject);
begin
   //Confirmar
end;

procedure TfrmAgendamento.btnCancelarClick(Sender: TObject);
begin
   vEstadoTela := etPadrao;
   DefineEstadoTela;
end;

function TfrmAgendamento.ValidaHora(hr: String): boolean;
begin
   result := true;
   
   if trim(hr) <> '' then
   begin
      try
         StrToTime(Trim(hr));
      except
         on EConvertError do
         begin
           result := false;
         end;
      end;
   end;
end;

procedure TfrmAgendamento.edtHoraExit(Sender: TObject);
begin
   if (ValidaHora(edtHora.Text)) = False then
   begin
      TMessageUtil.Alerta(
         'Hora invalida. Confira os números inseridos.');

      if (edtHora.CanFocus) then
         (edtHora.SetFocus);
   end;

end;

function TfrmAgendamento.ValidaData(dt: String): Boolean;
begin

   Result := True;

   if trim(dt) <> '' then
   begin
      try
         StrToDate(Trim(dt));
      except
         on EConvertError do
         begin
           result := false;
         end;
      end;
   end;
end;

procedure TfrmAgendamento.edtDataExit(Sender: TObject);
begin
   if (ValidaData(edtData.Text)) = False then
   begin
      TMessageUtil.Alerta(
         'Data invalida. Confira os números inseridos.');

      if (edtData.CanFocus) then
         (edtData.SetFocus);
   end;
end;

end.
