unit View.Pessoa.Interfaces;

interface

type
  iPessoa = interface
    ['{422B46E0-718A-45DA-881D-AF78C5957849}']
    function Nome(aValue: String): iPessoa;
    function ValidarNome: Boolean;
  end;


implementation

end.
