unit U_Interface;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, View.Pessoa;

type
  TFrmInterface = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInterface: TFrmInterface;

implementation

uses
  View.Pessoa.Interfaces;

{$R *.dfm}

procedure TFrmInterface.btn1Click(Sender: TObject);
var
  vPessoa: iPessoa;
begin
  vPessoa := TPessoa.Create as iPessoa;

  vPessoa.Nome('Teste');

  if vpessoa.ValidarNome then
    ShowMessage('OK')
  else
    ShowMessage('Erro');
end;

procedure TFrmInterface.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
