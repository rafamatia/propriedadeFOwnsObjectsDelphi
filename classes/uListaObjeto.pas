unit uListaObjeto;

interface

uses
  System.Classes, System.Generics.Collections;

type
  TListaObjeto = class
  private
    FOListaDeObjetos: TObjectList<TObject>;
  public
    constructor Create(ADestruirObjetos: Boolean = True);
    destructor Destroy; override;

    property OListaDeObjetos: TObjectList<TObject> read FOListaDeObjetos;

    procedure AdicionarItemNaLista(AObjeto: TObject);
  end;

implementation

uses
  System.SysUtils;

{ TListaObjeto }

procedure TListaObjeto.AdicionarItemNaLista(AObjeto: TObject);
begin
  FOListaDeObjetos.Add(AObjeto);
end;

constructor TListaObjeto.Create(ADestruirObjetos: Boolean);
begin
  FOListaDeObjetos := TObjectList<TObject>.Create(ADestruirObjetos);
end;

destructor TListaObjeto.Destroy;
begin
  FreeAndNil(FOListaDeObjetos);
  inherited;
end;

end.
