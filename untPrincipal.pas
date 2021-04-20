unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uListaObjeto;

type
  TfrmPrincipal = class(TForm)
    mmListaDeObjetos: TMemo;
    Panel1: TPanel;
    btnTrue: TBitBtn;
    btnFalse: TBitBtn;
    procedure btnTrueClick(Sender: TObject);
    procedure btnFalseClick(Sender: TObject);
  private
    { Private declarations }
    procedure AdicionarItensNaLista(var AOListaObjeto: TListaObjeto; const ACodigo: Integer; const ADescricao: String);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses uObjeto;

{$R *.dfm}
{ TfrmPrincipal }

procedure TfrmPrincipal.AdicionarItensNaLista(var AOListaObjeto: TListaObjeto; const ACodigo: Integer; const ADescricao: String);
var
  OMeuObjeto: TMeuObjeto;
begin
  OMeuObjeto := TMeuObjeto.Create;
  OMeuObjeto.Codigo := ACodigo;
  OMeuObjeto.Descricao := ADescricao;
  AOListaObjeto.AdicionarItemNaLista(OMeuObjeto);
end;

procedure TfrmPrincipal.btnFalseClick(Sender: TObject);
var
  OListaDeObjetos: TListaObjeto;
  intLinha: Integer;
begin
  OListaDeObjetos := TListaObjeto.Create(False);
  try
    for intLinha := 0 to mmListaDeObjetos.Lines.Count - 1 do
      AdicionarItensNaLista(OListaDeObjetos, intLinha, mmListaDeObjetos.Lines[intLinha]);
  finally
    FreeAndNil(OListaDeObjetos);
  end;
end;

procedure TfrmPrincipal.btnTrueClick(Sender: TObject);
var
  OListaDeObjetos: TListaObjeto;
  intLinha: Integer;
begin
  OListaDeObjetos := TListaObjeto.Create(True);
  try
    for intLinha := 0 to mmListaDeObjetos.Lines.Count - 1 do
      AdicionarItensNaLista(OListaDeObjetos, intLinha, mmListaDeObjetos.Lines[intLinha]);
  finally
    FreeAndNil(OListaDeObjetos);
  end;
end;

end.
