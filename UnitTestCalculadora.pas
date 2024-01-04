unit UnitTestCalculadora;

interface
uses
  UnitCalculadora,
  DUnitX.TestFramework;

type

  [TestFixture]
  TestCalculadora = class(TObject)
  private
    FormCalculadora: TFormCalculadora;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure Somar_QuandoSomarDoisInteiros_RetornarASoma;
    [Test]
    procedure Somar_QuandoSomarUmInteiroPequenoPositivoEOutroGrandeNegativo_RetornarValorNegativo;
    [Test]
    procedure Subtrair_QuandoSubtrairDoisInteiros_RetornarASubtracao;
    [Test]
    procedure Subtrair_QuandoSubtrairDoisNegativos_RetornarASubtracao;
    [Test]
    procedure Dividir_QuandoDividirDoisValores_RetornarADivisao;
    [Test]
    procedure Dividir_QuandoDividirPorZero_LancarErro;
    [Test]
    procedure Multiplicar_QuandoMultiplicarDoisInteiros_RetornarMultiplicacao;
    [Test]
    [TestCase('Teste de Multiplicação por Zero', '0')]
    procedure Multiplicar_QuandoMultiplicarPorZero_RetornarZero(aValor: Integer);
  end;

implementation

procedure TestCalculadora.Dividir_QuandoDividirDoisValores_RetornarADivisao;
var
  Valor1Fake, Valor2Fake, Expected, Actual: Real;
begin
  // Arrange
  Valor1Fake := Random(1000);
  Valor2Fake := Random(1000) + 1;

  // Act
  Expected := Valor1Fake / Valor2Fake;
  Actual := FormCalculadora.Dividir(Valor1Fake, Valor2Fake);

  Assert.AreEqual(Expected, Actual, 'Divisão incorreta!');
end;

procedure TestCalculadora.Dividir_QuandoDividirPorZero_LancarErro;
var
  Valor1Fake, Valor2Fake, Expected, Actual: Real;
begin
  // Arrange
  Valor1Fake := Random(1000);
  Valor2Fake := 0;

  Assert.WillRaiseAny(
    procedure
    begin
      FormCalculadora.Dividir(Valor1Fake, Valor2Fake);
    end,
    'Divisão não gerou erro!'
  );
end;

procedure TestCalculadora.Multiplicar_QuandoMultiplicarDoisInteiros_RetornarMultiplicacao;
var
  Valor1Fake, Valor2Fake, Expected, Actual: Integer;
begin
  // Arrange
  Valor1Fake := Random(1000);
  Valor2Fake := Random(1000);

  // Act
  Expected := Valor1Fake * Valor2Fake;
  Actual := FormCalculadora.Multiplicar(Valor1Fake, Valor2Fake);

  Assert.AreEqual(Expected, Actual, 'Erro ao multiplicar!');
end;

procedure TestCalculadora.Multiplicar_QuandoMultiplicarPorZero_RetornarZero(
  aValor: Integer);
var
  Valor1Fake, Expected, Actual: Integer;
begin
  // Arrange
  Valor1Fake := Random(1000);

  // Act
  Expected := 0;
  Actual := FormCalculadora.Multiplicar(Valor1Fake, aValor);

  Assert.AreEqual(Expected, Actual, 'Erro ao multiplicar!');
end;

procedure TestCalculadora.Setup;
begin
  FormCalculadora := TFormCalculadora.Create(FormCalculadora);
end;

procedure TestCalculadora.Somar_QuandoSomarDoisInteiros_RetornarASoma;
var
  Valor1Fake, Valor2Fake, Expected, Actual: Integer;
begin
  // Arrange
  Valor1Fake := Random(1000);
  Valor2Fake := Random(1000);

  // Act
  Expected := Valor1Fake + Valor2Fake;
  Actual := FormCalculadora.Somar(Valor1Fake, Valor2Fake);

  Assert.AreEqual(Expected, Actual, 'Soma incorreta!');
end;

procedure TestCalculadora.Somar_QuandoSomarUmInteiroPequenoPositivoEOutroGrandeNegativo_RetornarValorNegativo;
var
  Valor1Fake, Valor2Fake, Expected, Actual: Integer;
begin
  // Arrange
  Valor1Fake := Random(999);
  Valor2Fake := Random(1000);

  // Act
  Expected := Valor1Fake + Valor2Fake;
  Actual := FormCalculadora.Somar(Valor1Fake, Valor2Fake);

  Assert.AreEqual(Expected, Actual, 'Valor deve ser negativo!');
end;

procedure TestCalculadora.Subtrair_QuandoSubtrairDoisInteiros_RetornarASubtracao;
var
  Valor1Fake, Valor2Fake, Expected, Actual: Integer;
begin
  // Arrange
  Valor1Fake := Random(1000);
  Valor2Fake := Random(1000);

  // Act
  Expected := Valor1Fake - Valor2Fake;
  Actual := FormCalculadora.Subtrair(Valor1Fake, Valor2Fake);

  Assert.AreEqual(Expected, Actual, 'Subtração incorreta!');
end;

procedure TestCalculadora.Subtrair_QuandoSubtrairDoisNegativos_RetornarASubtracao;
var
  Valor1Fake, Valor2Fake, Expected, Actual: Integer;
begin
  // Arrange
  Valor1Fake := - Random(1000);
  Valor2Fake := - Random(1000);

  // Act
  Expected := Valor1Fake - Valor2Fake;
  Actual := FormCalculadora.Subtrair(Valor1Fake, Valor2Fake);

  Assert.AreEqual(Expected, Actual, 'Subtração incorreta!');
end;

procedure TestCalculadora.TearDown;
begin
  //FormCalculadora.Free;
end;

initialization
  TDUnitX.RegisterTestFixture(TestCalculadora);
end.
