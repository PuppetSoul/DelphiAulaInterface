unit View.Pessoa;

interface

uses
  View.Pessoa.Interfaces;

type
  TPessoa = class(TInterfacedObject, iPessoa)
    private
      FNome: String;
    public
      constructor Create;
      destructor Destroy; override;
      function Nome(aValue: String): iPessoa;
      function ValidarNome: Boolean;
  end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

function TPessoa.Nome(aValue: String): iPessoa;
begin
  Result := self;
  FNome := aValue;
end;

function TPessoa.ValidarNome: Boolean;
begin
  Result := (FNome <> '');
end;

end.
