object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Formulario'
  ClientHeight = 486
  ClientWidth = 812
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 85
    Width = 53
    Height = 13
    Caption = 'Entradas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 472
    Top = 85
    Width = 43
    Height = 13
    Caption = 'Salidas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 198
    Width = 42
    Height = 13
    Caption = 'Posici'#243'n:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 244
    Width = 201
    Height = 19
    Caption = 'Generar vector aleatorio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 32
    Top = 269
    Width = 52
    Height = 13
    Caption = 'Longitud:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 192
    Top = 269
    Width = 104
    Height = 13
    Caption = 'Elemento M'#225'ximo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 352
    Top = 301
    Width = 83
    Height = 19
    Caption = 'Set vector'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 32
    Top = 381
    Width = 52
    Height = 13
    Caption = 'Longitud:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 24
    Width = 796
    Height = 41
    ColCount = 1
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 48
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 472
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 48
    Top = 217
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 192
    Top = 104
    Width = 83
    Height = 21
    Caption = 'Add'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Edit4: TEdit
    Left = 32
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 192
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object StringGrid2: TStringGrid
    Left = 8
    Top = 326
    Width = 796
    Height = 41
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 7
  end
  object Edit6: TEdit
    Left = 32
    Top = 400
    Width = 97
    Height = 21
    TabOrder = 8
  end
  object Button2: TButton
    Left = 152
    Top = 398
    Width = 81
    Height = 25
    Caption = 'Dimensionar'
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 640
    Top = 382
    Width = 91
    Height = 41
    Caption = 'SET VECTOR'
    TabOrder = 10
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 554
    Top = 224
    Width = 177
    Height = 42
    Caption = 'GENERAR VECTOR ALEATORIO'
    TabOrder = 11
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 488
    Top = 390
    Width = 89
    Height = 43
    Caption = 'Set name'
    TabOrder = 12
    OnClick = Button5Click
  end
  object Edit7: TEdit
    Left = 48
    Top = 150
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object Mtodos1: TMenuItem
      Caption = 'M'#233'todos'
      object Elementoenpos1: TMenuItem
        Caption = 'Elemento en pos'
        OnClick = Elementoenpos1Click
      end
      object Cantidaddeelementos1: TMenuItem
        Caption = 'Cantidad de elementos'
        OnClick = Cantidaddeelementos1Click
      end
      object Aadirelemento1: TMenuItem
        Caption = 'A'#241'adir elemento'
        OnClick = Aadirelemento1Click
      end
      object Modificarelemento1: TMenuItem
        Caption = 'Modificar elemento'
        OnClick = Modificarelemento1Click
      end
      object Eliminarelemento1: TMenuItem
        Caption = 'Eliminar elemento'
        OnClick = Eliminarelemento1Click
      end
      object Insertarelemento1: TMenuItem
        Caption = 'Insertar elemento'
        OnClick = Insertarelemento1Click
      end
      object Promedio1: TMenuItem
        Caption = 'Promedio'
        OnClick = Promedio1Click
      end
      object Obtenermximoelemento1: TMenuItem
        Caption = 'Obtener m'#225'ximo '
        OnClick = Obtenermximoelemento1Click
      end
      object Obtenermnimo1: TMenuItem
        Caption = 'Obtener m'#237'nimo'
        OnClick = Obtenermnimo1Click
      end
      object CantidaddeelementoR1: TMenuItem
        Caption = 'Cantidad de elemento (R)'
        OnClick = CantidaddeelementoR1Click
      end
      object OrdenAscendente1: TMenuItem
        Caption = 'Orden Ascendente'
        OnClick = OrdenAscendente1Click
      end
      object OrdenDescendente1: TMenuItem
        Caption = 'Orden Descendente'
        OnClick = OrdenDescendente1Click
      end
      object Posicindeelemento1: TMenuItem
        Caption = 'Posici'#243'n de elemento(s)'
        OnClick = Posicindeelemento1Click
      end
    end
    object Ordenacin1: TMenuItem
      Caption = 'Ordenaci'#243'n'
      object Burble1: TMenuItem
        Caption = 'Burble'
        OnClick = Burble1Click
      end
      object Seleccion1: TMenuItem
        Caption = 'Seleccion'
        OnClick = Seleccion1Click
      end
      object ShellSort1: TMenuItem
        Caption = 'ShellSort'
        OnClick = ShellSort1Click
      end
    end
    object Bsqueda1: TMenuItem
      Caption = 'B'#250'squeda'
    end
    object Experimentales1: TMenuItem
      Caption = 'Experimentales'
      object Limpiarvector1: TMenuItem
        Caption = 'Limpiar vector'
        OnClick = Limpiarvector1Click
      end
      object Generarvector1: TMenuItem
        Caption = 'Generar vector'
        OnClick = Generarvector1Click
      end
    end
    object EXAMEN1: TMenuItem
      Caption = 'EXAMEN'
      object Ordenarnombresqs1: TMenuItem
        Caption = 'Ordenar nombres qs'
        OnClick = Ordenarnombresqs1Click
      end
      object Examenfinal1: TMenuItem
        Caption = 'Examen final'
        OnClick = Examenfinal1Click
      end
    end
  end
end
