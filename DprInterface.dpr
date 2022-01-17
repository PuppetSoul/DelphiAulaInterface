program DprInterface;

uses
  Vcl.Forms,
  U_Interface in 'U_Interface.pas' {FrmInterface},
  View.Pessoa.Interfaces in 'View.Pessoa.Interfaces.pas',
  View.Pessoa in 'View.Pessoa.pas',
  View.PessoaJuridica in 'View.PessoaJuridica.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmInterface, FrmInterface);
  Application.CreateForm(TFrmInterface, FrmInterface);
  Application.Run;
end.
