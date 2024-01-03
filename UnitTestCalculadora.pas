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
    procedure Test1;
    [Test]
    [TestCase('TestA','1,2')]
    [TestCase('TestB','3,4')]
    procedure Test2(const AValue1 : Integer;const AValue2 : Integer);
    [Test]
    procedure Somar_QuandoSomarDoisInteiros_RetornarASoma;
  end;

implementation

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

  Assert.AreEqual(Expected + 1, Actual);
end;

procedure TestCalculadora.TearDown;
begin
  //FormCalculadora.Free;
end;

procedure TestCalculadora.Test1;
begin
  Assert.Pass();
end;

procedure TestCalculadora.Test2(const AValue1 : Integer;const AValue2 : Integer);
begin
  Assert.Pass();
end;

initialization
  TDUnitX.RegisterTestFixture(TestCalculadora);
end.
