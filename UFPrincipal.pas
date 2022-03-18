unit UFPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,UCVector, Vcl.Grids, Vcl.Menus,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    MainMenu1: TMainMenu;
    Mtodos1: TMenuItem;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Aadirelemento1: TMenuItem;
    Edit3: TEdit;
    Label3: TLabel;
    Cantidaddeelementos1: TMenuItem;
    Elementoenpos1: TMenuItem;
    Modificarelemento1: TMenuItem;
    Eliminarelemento1: TMenuItem;
    Obtenermximoelemento1: TMenuItem;
    Obtenermnimo1: TMenuItem;
    Promedio1: TMenuItem;
    Insertarelemento1: TMenuItem;
    CantidaddeelementoR1: TMenuItem;
    OrdenAscendente1: TMenuItem;
    OrdenDescendente1: TMenuItem;
    Posicindeelemento1: TMenuItem;
    Button1: TButton;
    Experimentales1: TMenuItem;
    Limpiarvector1: TMenuItem;
    Generarvector1: TMenuItem;
    Edit4: TEdit;
    Edit5: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Bsqueda1: TMenuItem;
    Ordenacin1: TMenuItem;
    StringGrid2: TStringGrid;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ShellSort1: TMenuItem;
    Seleccion1: TMenuItem;
    Burble1: TMenuItem;
    EXAMEN1: TMenuItem;
    Ordenarnombresqs1: TMenuItem;
    Button5: TButton;
    Examenfinal1: TMenuItem;
    Edit7: TEdit;
    procedure Aadirelemento1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Cantidaddeelementos1Click(Sender: TObject);
    procedure Elementoenpos1Click(Sender: TObject);
    procedure Modificarelemento1Click(Sender: TObject);
    procedure Eliminarelemento1Click(Sender: TObject);
    procedure Insertarelemento1Click(Sender: TObject);
    procedure Promedio1Click(Sender: TObject);
    procedure Obtenermximoelemento1Click(Sender: TObject);
    procedure Obtenermnimo1Click(Sender: TObject);
    procedure CantidaddeelementoR1Click(Sender: TObject);
    procedure OrdenAscendente1Click(Sender: TObject);
    procedure OrdenDescendente1Click(Sender: TObject);
    procedure Posicindeelemento1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Limpiarvector1Click(Sender: TObject);
    procedure Generarvector1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ShellSort1Click(Sender: TObject);
    procedure Burble1Click(Sender: TObject);
    procedure Seleccion1Click(Sender: TObject);
    procedure Ordenarnombresqs1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Examenfinal1Click(Sender: TObject);
  private
    { Private declarations }
      vec:vector;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Aadirelemento1Click(Sender: TObject);
begin
  vec.AddElement(strtofloat(edit1.Text));
  stringGrid1.ColCount:=vec.GetDim;
  StringGrid1.Cells[vec.GetDim-1,0]:=floattostr(vec.GetElement(vec.GetDim));
end;

procedure TForm1.Burble1Click(Sender: TObject);
var i:word;
begin
vec.Burble_orden;
for i := 1 to vec.GetDim do StringGrid1.Cells[i-1,0]:=floattostr(vec.GetElement(i));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  vec.AddElement(strtofloat(edit1.Text));
  stringGrid1.ColCount:=vec.GetDim;
  StringGrid1.Cells[vec.GetDim-1,0]:=floattostr(vec.GetElement(vec.GetDim));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  stringgrid2.ColCount:=strtoint(edit6.Text);
end;

procedure TForm1.Button3Click(Sender: TObject);
var i:integer;
begin
  vec.CleanVec;
  stringgrid1.ColCount:=stringgrid2.ColCount;
  for I := 0 to stringgrid2.ColCount-1 do begin
    stringgrid1.Cells[i,0]:=stringgrid2.cells[i,0];
    vec.AddElement(strtofloat(stringgrid2.cells[i,0]));
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var i:word;
begin
  vec.GenVec(strtoint(edit4.Text),strtofloat(edit5.text));
  stringgrid1.ColCount:=vec.GetDim;
  for i := 1 to vec.GetDim do stringgrid1.Cells[i-1,0]:=floattostr(vec.GetElement(i));
end;

procedure TForm1.Button5Click(Sender: TObject);
var i:word;
begin
  vec.CleanVec;
  stringgrid1.ColCount:=stringgrid2.ColCount;
  for I := 0 to stringgrid2.ColCount-1 do begin
    stringgrid1.Cells[i,0]:=stringgrid2.cells[i,0];
    vec.AddName(stringgrid2.cells[i,0]);
  end;
end;

procedure TForm1.CantidaddeelementoR1Click(Sender: TObject);
begin
  edit2.Text:=floattostr(vec.CantElement(strtofloat(edit1.Text)));
end;

procedure TForm1.Cantidaddeelementos1Click(Sender: TObject);
begin
  Edit2.Text:=Floattostr(vec.GetDim);
end;

procedure TForm1.Elementoenpos1Click(Sender: TObject);
begin
  edit2.Text:=Floattostr(vec.GetElement(strtoint(Edit3.Text)));
end;

procedure TForm1.Eliminarelemento1Click(Sender: TObject);
var p,i:integer;
begin
p:=strtoint(edit3.Text);
  vec.DelElement(p);
  stringGrid1.ColCount:=vec.GetDim;
  for i := p to vec.GetDim do stringGrid1.Cells[i-1,0]:=floattostr(vec.GetElement(i));
end;

procedure TForm1.Examenfinal1Click(Sender: TObject);
var i:integer;
begin
vec.examen(edit7.Text);
  stringgrid1.ColCount:=vec.GetDim;
 for i := 1 to vec.GetDim do StringGrid1.Cells[i-1,0]:=vec.GetName(i);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
vec:=vector.Create;
stringGrid1.ColCount:=vec.GetDim;
end;

procedure TForm1.Generarvector1Click(Sender: TObject);
var i:word;
begin
  vec.GenVec(strtoint(edit4.Text),strtofloat(edit5.text));
  stringgrid1.ColCount:=vec.GetDim;
  for i := 1 to vec.GetDim do stringgrid1.Cells[i-1,0]:=floattostr(vec.GetElement(i));
end;

procedure TForm1.Insertarelemento1Click(Sender: TObject);
var p,i:integer;  x:real;
begin
p:=strtoint(edit3.Text);
x:=strtofloat(edit1.Text);
  vec.InsertElement(p,x);
  StringGrid1.ColCount:=vec.GetDim;
  for i := p to vec.GetDim do StringGrid1.Cells[i-1,0]:=floattostr(vec.GetElement(i));
end;

procedure TForm1.Limpiarvector1Click(Sender: TObject);
var i:word;
begin
    for i := 0 to StringGrid1.ColCount do begin
      stringgrid1.cells[i,0]:='';
    end;
  vec.cleanvec;
  stringgrid1.ColCount:=vec.getdim;
end;

procedure TForm1.Modificarelemento1Click(Sender: TObject);
begin
  vec.ModElement(strtoint(edit3.Text),strtofloat(edit1.Text));
  stringgrid1.cells[strtoint(edit3.Text)-1,0]:=floattostr(vec.GetElement(strtoint(edit3.Text)));
end;

procedure TForm1.Obtenermnimo1Click(Sender: TObject);
begin
  edit2.Text:=floattostr(vec.GetMin);
end;

procedure TForm1.Obtenermximoelemento1Click(Sender: TObject);
begin
  edit2.Text:=floattostr(vec.GetMax);
end;

procedure TForm1.Ordenarnombresqs1Click(Sender: TObject);
var i:word;
begin
vec.Name_quicksort;
for i := 1 to vec.GetDim do StringGrid1.Cells[i-1,0]:=vec.GetName(i);
end;

procedure TForm1.OrdenAscendente1Click(Sender: TObject);
var i:word;
begin
vec.Ascendente;
for i := 1 to vec.GetDim do StringGrid1.Cells[i-1,0]:=floattostr(vec.GetElement(i));
end;

procedure TForm1.OrdenDescendente1Click(Sender: TObject);
var i:word;
begin
vec.Descendente;
for i := 1 to vec.GetDim do StringGrid1.Cells[i-1,0]:=floattostr(vec.GetElement(i));
end;

procedure TForm1.Posicindeelemento1Click(Sender: TObject);
begin
  Edit2.Text:=vec.PosOfElement(strtofloat(edit1.Text));
end;

procedure TForm1.Promedio1Click(Sender: TObject);
begin
  edit2.Text:=floattostr(vec.GetAVG);
end;

procedure TForm1.Seleccion1Click(Sender: TObject);
var i:word;
begin
vec.Seleccion_orden;
for i := 1 to vec.GetDim do StringGrid1.Cells[i-1,0]:=floattostr(vec.GetElement(i));
end;

procedure TForm1.ShellSort1Click(Sender: TObject);
var i:word;
begin
vec.Shellsort_orden;
for i := 1 to vec.GetDim do StringGrid1.Cells[i-1,0]:=floattostr(vec.GetElement(i));
end;

end.
