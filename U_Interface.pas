unit U_Interface;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, View.Pessoa,
  View.Pessoa.Interfaces, View.PessoaJuridica;

type
  TFrmInterface = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    FPessoa: iPessoa;
  public
    { Public declarations }
  end;

var
  FrmInterface: TFrmInterface;

implementation

{$R *.dfm}

procedure TFrmInterface.btn1Click(Sender: TObject);
begin
  if not(FPessoa.Nome('Raf').ValidarNome) then
    ShowMessage('Erro')
  else
    ShowMessage('Ok');
end;

procedure TFrmInterface.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
  FPessoa := TPessoaJuridica.New;
end;

end.
