program ClinicaMedica;

uses
  Forms,
  UClinicaView in 'Unit\UClinicaView.pas' {frmClinica},
  PacienteView in 'View\PacienteView.pas' {frmPaciente},
  UAgendamentpView in 'View\UAgendamentpView.pas' {frmAgendamento},
  uMessageUtil in 'Model\Util\uMessageUtil.pas',
  UEnumerationUtil in 'Model\Util\UEnumerationUtil.pas',
  UClassFuncoes in 'Model\Util\UClassFuncoes.pas',
  UCriptografiaUtil in 'Model\Util\UCriptografiaUtil.pas',
  Consts in 'Model\Util\Consts.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmClinica, frmClinica);
  Application.Run;
end.
