unit UClinicaView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, Buttons, jpeg;

type
  TfrmClinica = class(TForm)
    MainMenu1: TMainMenu;
    Si1: TMenuItem;
    Cadastro1: TMenuItem;
    Paciente1: TMenuItem;
    Agendamento1: TMenuItem;
    Sair1: TMenuItem;
    pnlAtalhos: TPanel;
    btnCliente: TBitBtn;
    btnAgendamento: TBitBtn;
    Image1: TImage;
    Configuraes1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Paciente1Click(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure Agendamento1Click(Sender: TObject);
    procedure btnAgendamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClinica: TfrmClinica;

implementation

uses PacienteView, UAgendamentpView;

{$R *.dfm}

procedure TfrmClinica.Sair1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmClinica.Paciente1Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;

    if frmPaciente  = nil then
      frmPaciente := TfrmPaciente.Create(Application);

      frmPaciente.Show;
  finally
      Screen.Cursor := crDefault;

  end;
end;

procedure TfrmClinica.btnClienteClick(Sender: TObject);
begin
   try
    Screen.Cursor := crHourGlass;

    if frmPaciente  = nil then
      frmPaciente := TfrmPaciente.Create(Application);

      frmPaciente.Show;
  finally
      Screen.Cursor := crDefault;

  end;
end;

procedure TfrmClinica.Agendamento1Click(Sender: TObject);
begin
   try
    Screen.Cursor := crHourGlass;

    if frmAgendamento  = nil then
      frmAgendamento := TfrmAgendamento.Create(Application);

      frmAgendamento.Show;
   finally
      Screen.Cursor := crDefault;

   end;
end;

procedure TfrmClinica.btnAgendamentoClick(Sender: TObject);
begin
   try
    Screen.Cursor := crHourGlass;

    if frmAgendamento  = nil then
      frmAgendamento := TfrmAgendamento.Create(Application);

      frmAgendamento.Show;
   finally
      Screen.Cursor := crDefault;

   end;
end;

end.

