program JumlahHariBulan;
uses crt;

var
  Tahun, Bulan, JumlahHari: integer;
  Kabisat: boolean;

begin
  clrscr;
  write('Masukkan tahun: ');
  readln(Tahun);

  write('Masukkan nomor bulan (1-12): ');
  readln(Bulan);

  Kabisat := ((Tahun mod 400 = 0) or
             ((Tahun mod 4 = 0) and
              (Tahun mod 100 <> 0)));

  case Bulan of
    1, 3, 5, 7, 8, 10, 12:
      JumlahHari := 31;

    4, 6, 9, 11:
      JumlahHari := 30;

    2:
      begin
        if Kabisat then
          JumlahHari := 29
        else
          JumlahHari := 28;
      end;
  else
    JumlahHari := 0;
  end;

  writeln;
  if (Tahun <= 0) or (Bulan < 1) or (Bulan > 12) then
    writeln('Input tahun atau bulan tidak valid!')
  else
  begin
    writeln('Tahun       : ', Tahun);
    writeln('Bulan       : ', Bulan);

    if Kabisat then
      writeln('Tahun Kabisat: Ya')
    else
      writeln('Tahun Kabisat: Tidak');

    writeln('Jumlah Hari : ', JumlahHari, ' hari');
  end;

  readln;
end.