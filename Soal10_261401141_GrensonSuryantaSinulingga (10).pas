program NamaHari;
uses crt;

var
  Hari: integer;

begin
    clrscr;
    write('Masukkan nomor hari (1-7): ');
    readln(Hari);

  case Hari of
    1: writeln('Hari Senin');
    2: writeln('Hari Selasa');
    3: writeln('Hari Rabu');
    4: writeln('Hari Kamis');
    5: writeln('Hari Jumat');
    6: writeln('Hari Sabtu');
    7: writeln('Hari Minggu');
  else
    writeln('Nomor hari yang anda masukkan tidak valid!');
  end;
    readln;
end.