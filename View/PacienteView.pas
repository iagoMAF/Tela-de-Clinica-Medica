unit PacienteView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, uMessageUtil, UEnumerationUtil,
  UClassFuncoes;

type
  TfrmPaciente = class(TForm)
    pnpCPaciente: TPanel;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnSair: TButton;
    btnConsultar: TButton;
    pnlInfo: TPanel;
    lblNome: TLabel;
    lblCodigo: TLabel;
    lblCPF: TLabel;
    lblEndereco: TLabel;
    lblNumero: TLabel;
    lblNascimento: TLabel;
    lblTelefone: TLabel;
    lblObservacao: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    chkAtivo: TCheckBox;
    edtCPF: TMaskEdit;
    edtEndereco: TEdit;
    edtNascimento: TMaskEdit;
    edtTelefone: TMaskEdit;
    memoObs: TMemo;
    edtNumero: TEdit;
    btnCancelar: TButton;
    btnConfirmar: TButton;
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure edtCPFExit(Sender: TObject);
    //procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    // v por ser uma variavel privada

    vKey        : Word;

    vEstadoTela : TEstadoTela;

    //Uma variavel dentro de uma procedure inicia com p
    procedure CamposEnabled(pOpcao    : Boolean);
    procedure LimparTela;
    procedure DefineEstadoTela;

    function  ValidaCPF(CPF : string) : Boolean;

  public
    { Public declarations }
    // m por ser uma variavel publica
  end;

var
  frmPaciente: TfrmPaciente;

implementation

{$R *.dfm}

procedure TfrmPaciente.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmPaciente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   vKey := Key;

   case vKey of

      VK_RETURN:   // Relacionado a tecla enter
      begin
         Perform(WM_NEXTDLGCTL, 0, 0);
         //Sempre que apertar enter, vai passar para o proximo campo
      end;

      VK_ESCAPE:  // Relacionado a tecla esc
      begin
         //Se apertar esc, antes de sair aparece uma mensagem de confirmação
         if (TMessageUtil.Pergunta('Deseja realmente sair dessa rotina?')) then
            Close;
      end;

   end;
end;

procedure TfrmPaciente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmPaciente := nil;
   // Com isso vai encerrar a rotina
end;

procedure TfrmPaciente.CamposEnabled(pOpcao: Boolean);
var
   i : Integer; // i vai ser o contador para  o comando de reptição
begin
   for i := 0 to pred(ComponentCount) do //Percorre todos os componentes da tela
   begin
      //Quando os campos forem do tipo TEdit
      if (Components[i] is TEdit) then
         (Components[i] as TEdit).Enabled     := pOpcao;

      if (Components[i] is TMaskEdit) then
         (Components[i] as TMaskEdit).Enabled := pOpcao;

      //Quando os campos forem do tipo TCheckBox
      if (Components[i] is TCheckBox) then
         (Components[i] as TCheckBox).Enabled := pOpcao;

      if (Components[i] is TMemo) then
         (Components[i] as TMemo).Enabled     := pOpcao;
   end;
end;

procedure TfrmPaciente.LimparTela;
var
   i : Integer; {Variavel que vai ser usada para o comando de reptição para
                 zerar "limpar" os campos}
begin
   for i := 0 to pred(ComponentCount) do //Percorre todos os componentes da tela
   begin
      // EmptyStr para limpar os dados na tela
      if (Components[i] is TEdit) then
         (Components[i] as TEdit).Text        := EmptyStr;

      if (Components[i] is TMaskEdit) then
         (Components[i] as TMaskEdit).Text    := EmptyStr;

      // Coloca "False", ou seja, desmarcado
      if (Components[i] is TCheckBox) then
         (Components[i] as TCheckBox).Checked := False;

      if (Components[i] is TMemo) then
         (Components[i] as TMemo).Text        := EmptyStr;
   end;
end;

procedure TfrmPaciente.DefineEstadoTela;
begin
   btnIncluir.Enabled   := (vEstadoTela in [etPadrao]);
   btnAlterar.Enabled   := (vEstadoTela in [etPadrao]);
   btnExcluir.Enabled   := (vEstadoTela in [etPadrao]);
   btnConsultar.Enabled := (vEstadoTela in [etPadrao]);

   btnConfirmar.Enabled :=
      vEstadoTela in [etIncluir, etAlterar, etExcluir, etConsultar];

   btnCancelar.Enabled :=
      vEstadoTela in [etIncluir, etAlterar, etExcluir, etConsultar];

   case vEstadoTela of

      etPadrao:
      begin
         CamposEnabled(False);  // Desabilita os Campos
         LimparTela;            // Limpa a tela


         if (frmPaciente <> nil) and
            (frmPaciente.Active) and
            (btnIncluir.CanFocus) then
            (btnIncluir.SetFocus);

         Application.ProcessMessages;
      end;

      etIncluir:
      begin
         CamposEnabled(True);

         edtCodigo.Enabled := False;

         chkAtivo.Checked := True;

         if (edtNome.CanFocus) then
            (edtNome.SetFocus);

      end;

      etAlterar:
      begin

         //Se o Codigo já estiver com algum valor
         if (edtCodigo.Text <> EmptyStr) then
         begin
            // Habilitar todos os campos
            CamposEnabled(True);

            // Desabilitar o edtCodigo para ele não sei alterado novamente
            edtCodigo.Enabled  := False;

            // Desabilitar o botão de alterar já que ele está "ativo"
            btnAlterar.Enabled := False;

            //Colocando o foto no campo de chkAtivo
            if (chkAtivo.CanFocus) then
               (chkAtivo.SetFocus);

         end
         else
         begin
            // Habilitar o edtCodigo já que ele está "fazio"
            edtCodigo.Enabled  := True;

            btnAlterar.Enabled := False;

            if (edtCodigo.CanFocus) then
               (edtCodigo.SetFocus);
         end;

      end;

         //      etExcluir:
         //      begin

         //      end;

      etConsultar:
      begin
         CamposEnabled(False);

         if (edtCodigo.Text <> EmptyStr) then
         begin
            lblCodigo.Enabled    := True;
            edtCodigo.Enabled    := False;
            btnAlterar.Enabled   := True;
            btnExcluir.Enabled   := True;
            btnExcluir.Enabled   := False;

            if (btnAlterar.CanFocus) then
               (btnAlterar.SetFocus);
         end
         else
         begin
            lblCodigo.Enabled    := True;
            edtCodigo.Enabled    := True;

            if (edtCodigo.CanFocus) then
               (edtCodigo.SetFocus);

         end;
      end;

   end;
end;


procedure TfrmPaciente.btnIncluirClick(Sender: TObject);
begin
   vEstadoTela := etIncluir;
   DefineEstadoTela;
end;

procedure TfrmPaciente.FormShow(Sender: TObject);
begin
   vEstadoTela := etPadrao;
   DefineEstadoTela;
end;

procedure TfrmPaciente.btnAlterarClick(Sender: TObject);
begin
   vEstadoTela := etAlterar;
   DefineEstadoTela;
end;

procedure TfrmPaciente.btnExcluirClick(Sender: TObject);
begin
   vEstadoTela := etExcluir;
   DefineEstadoTela;
end;

procedure TfrmPaciente.btnConsultarClick(Sender: TObject);
begin
   vEstadoTela := etConsultar;
   DefineEstadoTela;
end;

procedure TfrmPaciente.btnCancelarClick(Sender: TObject);
begin
   vEstadoTela := etPadrao;
   DefineEstadoTela;
end;

procedure TfrmPaciente.btnConfirmarClick(Sender: TObject);
begin
   //Confirmar
end;

function TfrmPaciente.ValidaCPF(CPF: string): Boolean;
var xDigito10, xDigito11, xAux : string;
    xS, i, xR, xPeso  : Integer;
begin
   xAux := TFuncoes.SoNumero(edtCPF.Text);

   if (xAux = '00000000000') or (xAux = '11111111111') or
      (xAux = '22222222222') or (xAux = '33333333333') or
      (xAux = '44444444444') or (xAux = '55555555555') or
      (xAux = '66666666666') or (xAux = '77777777777') or
      (xAux = '88888888888') or (xAux = '99999999999') then
      //(length(CPF) <> 11)) then
   begin
      Result := False;
      Exit;
   end;

   try
      // Calculando o primeiro Digito Verificador

      xS := 0;
      //Peso igual a 10, pois, o primiero digito verificador não foi calculado
      xPeso := 10;

      for i := 1 to 9 do
      begin
         xS := xS + (StrToInt(xAux[i]) * xPeso);
         xPeso := xPeso - 1;
      end;

      xR := 11 - (xS mod 11);

      if ((xR = 10) or (xR = 11)) then
         xDigito10 := '0'
      else
         str(xR:1, xDigito10);

      // Calculando o Segundo Digito Verificador

      xS := 0;

      //Peso igual a 11, pois, o primeiro digito verificador já foi calculado

      xPeso := 11;

      for i := 1 to 10 do
      begin
         // xS é a variavel a qual vai receber os valores das somas
         xS := xS + (StrToInt(xAux[i]) * xPeso);
         // O Peso sempre diminui de uma soma para a outra
         xPeso := xPeso - 1;
      end;

      xR := 11 - (xS mod 11);

      if ((xR = 10) or (xR = 11)) then
         xDigito11 := '0'
      else
         str(xR:1, xDigito11);


      if ((xDigito10 = xAux[10]) and (xDigito11 = xAux[11])) then
         Result := true
      else
         Result := false;

   except

      Result := false

   end;
end;

procedure TfrmPaciente.edtCPFExit(Sender: TObject);
var
   xAux : string;
begin
   xAux := TFuncoes.SoNumero(edtCPF.Text);

   if (ValidaCPF(edtCPF.Text)) = False then
   begin
      if (length(xAux) = 11) then
      begin
         edtCPF.Clear;
         TMessageUtil.Alerta(
            'O CPF digitado é invalido, informe outro CPF!');

         if (edtCPF.CanFocus) then
            (edtCPF.SetFocus);
      end;
   end;

end;

end.
