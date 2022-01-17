unit View.PessoaJuridica;

interface

uses
  View.Pessoa.Interfaces;

type
  TPessoaJuridica = class(TInterfacedObject, iPessoa)
    private
      FNome: string;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iPessoa;

      function Nome(aValue: String): iPessoa;
      function ValidarNome: Boolean;
  end;

implementation

{ TPessoaJuridica }

constructor TPessoaJuridica.Create;
begin

end;

destructor TPessoaJuridica.Destroy;
begin

  inherited;
end;

class function TPessoaJuridica.New: iPessoa;
begin
  Result := self.Create;
end;

function TPessoaJuridica.Nome(aValue: String): iPessoa;
begin
  Result := Self;
  FNome := aValue;
end;

function TPessoaJuridica.ValidarNome: Boolean;
begin
  Result := False;

  if Length(FNOME) > 3 then
    result := true;
end;

end.
