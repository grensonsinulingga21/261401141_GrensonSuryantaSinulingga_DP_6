program DeretAngka;
uses crt;

var
  N, Pilihan, i: integer;

begin
  clrscr;
  write('Masukkan nilai N: ');
  readln(N);
  writeln('Pilih kategori deret:');
  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilihan (1/2): ');
  readln(Pilihan);

  writeln;
  writeln('Hasil deret:');

  i := 0;
  while i < N do
  begin
    i := i + 1;   

    if (Pilihan = 1) and (i mod 2 = 0) then
      continue;
    if (Pilihan = 2) and (i mod 2 <> 0) then
      continue;

    if i mod 5 = 0 then
      continue;

    write(i, ' ');
  end;

  writeln;
  readln;
end.