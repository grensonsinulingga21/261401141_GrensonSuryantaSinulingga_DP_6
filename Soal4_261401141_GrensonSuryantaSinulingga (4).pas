program KalkulatorPemula;
uses crt;

var
  Pilihan: integer;
  A, B: integer;
  Lagi: char;

begin
  repeat
    clrscr;
    writeln('=== KALKULATOR ===');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): ');
    readln(Pilihan);

    write('Masukkan angka pertama: ');
    readln(A);
    write('Masukkan angka kedua  : ');
    readln(B);

    case Pilihan of
      1: writeln('Hasil: ', A + B);
      2: writeln('Hasil: ', A - B);
      3: writeln('Hasil: ', A * B);
      4: if B = 0 then
           writeln('Tidak bisa dibagi nol!')
         else
           writeln('Hasil: ', A / B:0:2);
      5: if B = 0 then
           writeln('Tidak bisa dibagi nol!')
         else
         begin
           writeln('DIV = ', A div B);
           writeln('MOD = ', A mod B);
         end;
    else
      writeln('Pilihan tidak valid!');
    end;

    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(Lagi);
    writeln;
  until (Lagi = 'T') or (Lagi = 't');
end.