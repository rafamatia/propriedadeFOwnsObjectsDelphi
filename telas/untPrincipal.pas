unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uListaObjeto;

type
  TfrmPrincipal = class(TForm)
    mmListaDeObjetos: TMemo;
    pnlTitulo: TPanel;
    btnTrue: TBitBtn;
    btnFalse: TBitBtn;
    mmExplicacao: TMemo;
    pnlEspacamento: TPanel;
    procedure btnTrueClick(Sender: TObject);
    procedure btnFalseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure TestarListaDeObjetos(ADestruirObjetos: Boolean = True);
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

procedure TfrmPrincipal.TestarListaDeObjetos(ADestruirObjetos: Boolean);
var
  OListaDeObjetos: TListaObjeto;
  intLinha: Integer;
begin
  OListaDeObjetos := TListaObjeto.Create(ADestruirObjetos);
  try
    for intLinha := 0 to mmListaDeObjetos.Lines.Count - 1 do
      AdicionarItensNaLista(OListaDeObjetos, intLinha, mmListaDeObjetos.Lines[intLinha]);
  finally
    FreeAndNil(OListaDeObjetos);
  end;
end;

procedure TfrmPrincipal.btnFalseClick(Sender: TObject);
begin
  TestarListaDeObjetos(False);
end;

procedure TfrmPrincipal.btnTrueClick(Sender: TObject);
begin
  TestarListaDeObjetos;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
