program RekapNilai;
uses crt;

var
  M, N, i, j: integer;
  Nilai, Jumlah, Rata: real;
  Lulus, TidakLulus: integer;

begin
  clrscr;
  write('Jumlah mahasiswa (M): ');
  readln(M);
  write('Jumlah tugas (N)    : ');
  readln(N);

  Lulus := 0;
  TidakLulus := 0;

  writeln;
  
  for i := 1 to M do
  begin
    writeln('Mahasiswa ke-', i);
    Jumlah := 0;

    for j := 1 to N do
    begin
      write('  Nilai tugas ke-', j, ': ');
      readln(Nilai);
      Jumlah := Jumlah + Nilai;
    end;

    Rata := Jumlah / N;

    write('  Rata-rata: ', Rata:0:2, ' -> ');
    if Rata >= 65 then
    begin
      writeln('LULUS');
      Lulus := Lulus + 1;
    end
    else
    begin
      writeln('TIDAK LULUS');
      TidakLulus := TidakLulus + 1;
    end;

    writeln;
  end;

  writeln('Total mahasiswa LULUS       : ', Lulus);
  writeln('Total mahasiswa TIDAK LULUS : ', TidakLulus);

  readln;
end.