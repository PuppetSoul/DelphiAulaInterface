program DprInterface;

uses
  Vcl.Forms,
  U_Interface in 'U_Interface.pas' {FrmInterface};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmInterface, FrmInterface);
  Application.Run;
end.
