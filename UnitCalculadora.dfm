object FormCalculadora: TFormCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 133
  ClientWidth = 347
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EditValor1: TEdit
    Left = 30
    Top = 24
    Width = 61
    Height = 21
    TabOrder = 0
    Text = 'Valor 1'
  end
  object ButtonSomar: TButton
    Left = 16
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Somar'
    TabOrder = 1
    OnClick = ButtonSomarClick
  end
  object ButtonSubtrair: TButton
    Left = 97
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 2
    OnClick = ButtonSubtrairClick
  end
  object ButtonMultiplicar: TButton
    Left = 178
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 3
    OnClick = ButtonMultiplicarClick
  end
  object ButtonDividir: TButton
    Left = 259
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Dividir'
    TabOrder = 4
    OnClick = ButtonDividirClick
  end
  object EditValor2: TEdit
    Left = 97
    Top = 24
    Width = 61
    Height = 21
    TabOrder = 5
    Text = 'Valor 2'
  end
  object EditResultado: TEdit
    Left = 30
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Resultado'
  end
end
