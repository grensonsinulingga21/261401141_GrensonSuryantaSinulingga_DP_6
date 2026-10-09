program NilaiAkhirMatkul;
uses crt;

var
  Tugas, UTS, UAS, Kehadiran, NilaiAkhir: real;
  Indeks, Status: string;

begin
  clrscr;
  write('Masukkan Nilai Tugas (0-100): ');
  readln(Tugas);

  write('Masukkan Nilai UTS (0-100): ');
  readln(UTS);

  write('Masukkan Nilai UAS (0-100): ');
  readln(UAS);

  write('Masukkan Kehadiran (%): ');
  readln(Kehadiran);

  NilaiAkhir := (Tugas * 0.30) +
                (UTS * 0.30) +
                (UAS * 0.40);

  if (NilaiAkhir >= 60) and (Kehadiran >= 80) then
    Status := 'LULUS'
  else
    Status := 'TIDAK LULUS';

  if NilaiAkhir >= 85 then
    Indeks := 'A'
  else if NilaiAkhir >= 75 then
    Indeks := 'B'
  else if NilaiAkhir >= 60 then
    Indeks := 'C'
  else if NilaiAkhir >= 50 then
    Indeks := 'D'
  else
    Indeks := 'E';

  writeln;
  writeln('=== HASIL PENILAIAN ===');
  writeln('Nilai Akhir : ', NilaiAkhir:0:2);
  writeln('Status      : ', Status);
  writeln('Indeks Huruf: ', Indeks);

  readln;
end.