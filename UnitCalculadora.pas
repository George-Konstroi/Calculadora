unit UnitCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormCalculadora = class(TForm)
    EditValor1: TEdit;
    ButtonSomar: TButton;
    ButtonSubtrair: TButton;
    ButtonMultiplicar: TButton;
    ButtonDividir: TButton;
    EditValor2: TEdit;
    EditResultado: TEdit;
    procedure ButtonSomarClick(Sender: TObject);
    procedure ButtonSubtrairClick(Sender: TObject);
    procedure ButtonMultiplicarClick(Sender: TObject);
    procedure ButtonDividirClick(Sender: TObject);
  private
  public
    function Somar(valor1, valor2: Integer): Integer;
    function Subtrair(valor1, valor2: Integer): Integer;
    function Multiplicar(valor1, valor2: Integer): Integer;
    function Dividir(valor1, valor2: Integer): Integer;
  end;

var
  FormCalculadora: TFormCalculadora;

implementation

{$R *.dfm}

procedure TFormCalculadora.ButtonDividirClick(Sender: TObject);
begin
  EditResultado.Text := IntToStr(Dividir(StrToInt(EditValor1.Text), StrToInt(EditValor2.Text)));
end;

procedure TFormCalculadora.ButtonMultiplicarClick(Sender: TObject);
begin
  EditResultado.Text := IntToStr(Multiplicar(StrToInt(EditValor1.Text), StrToInt(EditValor2.Text)));
end;

procedure TFormCalculadora.ButtonSomarClick(Sender: TObject);
begin
  EditResultado.Text := IntToStr(Somar(StrToInt(EditValor1.Text), StrToInt(EditValor2.Text)));
end;

procedure TFormCalculadora.ButtonSubtrairClick(Sender: TObject);
begin
  EditResultado.Text := IntToStr(Subtrair(StrToInt(EditValor1.Text), StrToInt(EditValor2.Text)));
end;

function TFormCalculadora.Dividir(valor1, valor2: Integer): Integer;
begin
  Result := StrToInt((valor1 / valor2).ToString);
end;

function TFormCalculadora.Multiplicar(valor1, valor2: Integer): Integer;
begin
  Result := valor1 * valor2;
end;

function TFormCalculadora.Somar(valor1, valor2: Integer): Integer;
begin
 Result := valor1 + valor2;
end;

function TFormCalculadora.Subtrair(valor1, valor2: Integer): Integer;
begin
  Result := valor1 - valor2;
end;

end.
