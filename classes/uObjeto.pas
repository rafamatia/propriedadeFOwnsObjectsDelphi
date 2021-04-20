unit uObjeto;

interface

uses
  System.Classes;

type
  TMeuObjeto = class
  private
    FCodigo: Integer;
    FDescricao: String;
  published
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
  end;

implementation

end.
