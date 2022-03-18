unit UCVector;

interface
  Uses
  SysUtils;
  const
  MaxE=1024;
    Type
    Vector=class
      Private
      Dim:Word;
      Elements:Array[1..MaxE] Of Real;
      Names:Array [1..MaxE] of string;  //examen

      Public

      Function GetElement(p:word):real;
      Function GetName(p:word):string;
      Function GetDim:word;
      procedure AddElement(e:real);
      Procedure AddName(n:string); //examen
      procedure ModElement (p:Word; e:real);
      procedure DelElement(p:word);
      procedure DelName(p:word);
      procedure InsertElement (p:Word; e:real);
      Function GetAVG():real;
      Function GetMax():real;
      Function GetMin():real;
      Function CantElement(e:real):word;
      Procedure Ascendente();
      Procedure Descendente();
      Function PosOfElement(e:real):string;
      // Experimentales
      Procedure CleanVec();
      Procedure examen(str:string); //Borrar las palabras con subcadenas
      Procedure GenVec(rango:word; eMax:real);
      //Ordenación
      Procedure Burble_orden();
      Procedure Seleccion_orden();
      Procedure Shellsort_orden();
      Procedure Name_quicksort(); //
      Procedure Qs(a,b:word);
      Procedure Name_media(a,b:word; var c:word);
      {procedure Quicksort_orden();
      procedure Mergesort_orden();
      procedure Heapsort_orden();}
      //Búsqueda
      {Function Sec_search(e:real):integer;
      Function OrdSec_search(e:real):integer;
      Function Binary_search(e:real):integer;
      Function Hash_table(e:real):integer;}
    end;

implementation

{ Vector }

procedure Vector.AddElement(e: real);
begin
  Inc(Dim);
  Elements[Dim]:=e;
end;

procedure Vector.AddName(n: string);
begin
Inc(dim);
Names[dim]:=n;
end;

procedure Vector.Ascendente;
var i,j:word; temp:real;
begin
  for i := 1 to Dim-1 do begin
    for j := 1 to Dim-1 do begin
      if elements[j]>=elements[j+1] then begin
        temp:=elements[j];
        elements[j]:=elements[j+1];
        elements[j+1]:=temp;
      end;
    end;
  end;
end;

procedure Vector.Burble_orden;
var i,j:word; temp:real;
begin
  for i := dim downto 2 do begin
    for j := 1 to Dim-1 do begin
      if elements[j]>=elements[j+1] then begin
        temp:=elements[j];
        elements[j]:=elements[j+1];
        elements[j+1]:=temp;
      end;
    end;
  end;
end;

function Vector.CantElement(e: real): word;
var i,cont:Word;
begin
  cont:=0;
  for i := 1 to dim do begin
    if elements[i]=e then inc(cont);
  end;
  result:=cont;
end;

procedure Vector.CleanVec;
var i:word;
begin
  for i := dim downto 1 do begin
    elements[i]:=elements[i+1];
  end;
  dim:=0;
end;

procedure Vector.DelElement(p: word);
var i:word;
begin
  i:=p;
  if (p>0) and (p<=Dim) then begin
    for i := p to dim-1 do Elements[i]:=elements[i+1];
    dec(Dim);
  end else raise Exception.Create('Posición fuera de rango');
end;

procedure Vector.DelName(p: word);
var i:word;
begin
  i:=p;
  if (p>0) and (p<=Dim) then begin
    for i := p to dim-1 do Names[i]:=Names[i+1];
    dec(Dim);
  end else raise Exception.Create('Posición fuera de rango');
end;

procedure Vector.Descendente;
var i,j:word; temp:real;
begin
  for i := 1 to Dim-1 do begin
    for j := 1 to Dim-1 do begin
      if elements[j]<=elements[j+1] then begin
        temp:=elements[j];
        elements[j]:=elements[j+1];
        elements[j+1]:=temp;
      end;
    end;
  end;
end;


procedure Vector.examen(str: string);
var  i,c: Integer;
     verif:integer;
     rescate:Array[1..maxE] of string;
begin
c:=1;
  for i := 1 to dim do begin
    verif:=pos(str,Names[i]);
    if not((Verif>0)or(str=names[i])) then begin
      rescate[c]:=Names[i];
      c:=c+1;
      dec(dim);
    end;
  end;
  for i := 1 to dim do begin
  Names[i]:=rescate[i];
  end;
end;

procedure Vector.GenVec(rango: word; eMax: real);
var ent,i:word;  dec:real;
begin
  if eMax>0 then begin
    for i := 1 to rango do begin
      dec:=random;
      ent:=1+random(trunc(eMax));
      elements[i]:=dec+ent-1;
    end;
  end else begin
    for i := 1 to rango do begin
      dec:=random;
      elements[i]:=dec;
    end;
  end;
  dim:=rango;
end;

function Vector.GetAVG: real;
var acum:real; i:word;
begin
  if dim>0 then begin
    acum:=0;
    for i := 1 to dim do begin
      acum:=acum+Elements[i];
    end;
    result:=acum/dim;
  end else raise Exception.Create('Error: Vector vacío');
end;

function Vector.GetElement(p: word): real;
begin
  if (p>0) and (p<=Dim) then begin
    Result:=Elements[p];
  end else raise Exception.Create('Posición fuera de rango');
end;

function Vector.GetDim: word;
begin
  Result:=Dim;
end;

function Vector.GetMax: real;
var i:word; Max:real;
begin
  if dim>0 then begin
    Max:=elements[1];
    for i := 2 to dim do if Elements[i]>Max then Max:=Elements[i];
    Result:=Max;
  end else raise Exception.Create('Error: Vector vacío');
end;

function Vector.GetMin: real;
var i:word; Min:real;
begin
  if dim>0 then begin
    Min:=elements[1];
    for i := 2 to dim do if Elements[i]<Min then Min:=Elements[i];
    Result:=Min;
  end else raise Exception.Create('Error: Vector vacío');
end;

function Vector.GetName(p: word): string;
begin
  if (p>0) and (p<=Dim) then begin
    Result:=Names[p];
  end else raise Exception.Create('Posición fuera de rango');
end;

procedure Vector.InsertElement(p: Word; e: real);
var i:word;
begin
i:=0;
  if (p>0) and (p<=Dim) then begin
      inc(Dim);
    for i := dim downto p+1 do Elements[i]:=elements[i-1];
    Elements[i]:=e;
  end else raise Exception.Create('Posición fuera de rango');
end;

procedure Vector.ModElement(p: Word; e: real);
begin
  if (p>0) and (p<=Dim) then begin
    Elements[p]:=e;
  end else raise Exception.Create('Posición fuera de rango');
end;

procedure Vector.Name_media(a,b:word; var c:word);
var i, j: word; aux,l1,l2:String;
x: boolean;
begin
 i:=a;
 j:=b;
 x := true;
 repeat
  l1:=Names[i];
  l2:=Names[i];
  if (Names[i]<Names[j]) or (Upcase(l1[1])<Upcase(l2[1])) then begin
    aux:=Names[i];
    Names[i]:=Names[j];
    Names[j]:=aux;
    x := not x;
  end;
  if x then i:=i+1
  else j:=j-1;
 until j=i;
 c:=i;
end;


procedure Vector.Name_quicksort;
begin
  Qs(1,dim);
end;

function Vector.PosOfElement(e: real): string;
var i:word; res:string;
begin
res:='';
  for i := 1 to dim do begin
    if elements[i]=e then begin
      res:=res+inttostr(i)+', ';
    end;
  end;
  delete(res,length(res)-1,2);
  result:=res;
end;

procedure Vector.Qs(a,b:word);
var c, n: word;
begin
  n := b-a+1;
  if n>1 then begin
    Name_media(a, b, c);
    Qs(a, c-1);
    Qs(c+1, b);
  end;

end;

procedure Vector.Seleccion_orden;
var i,j,min:word; temp:real;
begin
  for i := 1 to Dim-1 do begin
    min:=i;
    for j := i+1 to Dim do begin
      if elements[j]<elements[min] then begin
        min:=j;
      end;
    end;
    if i<>min then begin
      temp:=elements[i];
      elements[i]:=elements[min];
      elements[min]:=temp;
    end;
  end;
end;

procedure Vector.Shellsort_orden;
var i,salto:integer; temp:real; sem:boolean;
begin
  salto:=dim div 2;
  while salto>0 do begin
   sem:=false;
    for I := 1 to dim-salto do begin
     if elements[i]>elements[i+salto] then begin
      temp:=elements[i];
      elements[i]:=elements[i+salto];
      elements[i+salto]:=temp;
      sem:=true;
     end;
    end;
      if sem=false then salto:=salto div 2;
  end;
end;

end.
