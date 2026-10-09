program GajiKaryawan;
uses crt;

var
  Golongan: char;
  JamKerja, JamLembur: integer;
  GajiPokok, Lembur, Bonus, TotalGaji: longint;

begin
  clrscr;
  write('Masukkan Golongan (A/B/C): ');
  readln(Golongan);

  write('Masukkan Total Jam Kerja per Minggu: ');
  readln(JamKerja);

  case Golongan of
    'A', 'a': GajiPokok := 1500000;
    'B', 'b': GajiPokok := 2000000;
    'C', 'c': GajiPokok := 2500000;
  else
    GajiPokok := 0;
  end;

  if (GajiPokok = 0) or (JamKerja < 0) then
    writeln('Input tidak valid!')
  else
  begin
    if JamKerja > 40 then
      JamLembur := JamKerja - 40
    else
      JamLembur := 0;

    Lembur := JamLembur * 20000;

    Bonus := 0;
    if ((Golongan = 'C') or (Golongan = 'c'))
       and (JamKerja > 50) then
      Bonus := 100000;

    TotalGaji := GajiPokok + Lembur + Bonus;
    
    writeln;
    writeln('Golongan       : ', Golongan);
    writeln('Jam Kerja      : ', JamKerja, ' jam');
    writeln('Jam Lembur     : ', JamLembur, ' jam');
    writeln('Gaji Pokok     : Rp', GajiPokok);
    writeln('Gaji Lembur    : Rp', Lembur);
    writeln('Bonus          : Rp', Bonus);
    writeln('Total Gaji     : Rp', TotalGaji);
  end;

  readln;
end.