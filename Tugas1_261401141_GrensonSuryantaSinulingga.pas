program TotalBelanjaTokoBuku;
uses crt;

var
  N, i: integer;
  Harga: real;
  Total, Diskon, TotalBayar, PersenDiskon: real;

begin
  clrscr;
  writeln('=== TOKO BUKU ===');
  write('Masukkan jumlah barang: ');
  readln(N);

  if N <= 0 then
    writeln('Jumlah barang tidak valid!')
  else
  begin
    Total := 0;

    for i := 1 to N do
    begin
      write('Harga barang ke-', i, ': Rp');
      readln(Harga);
      Total := Total + Harga;
    end;

    if Total < 100000 then
    begin
      PersenDiskon := 0;
      Diskon := 0;
    end
    else if Total < 500000 then
    begin
      PersenDiskon := 10;
      Diskon := Total * 10 / 100;
    end
    else
    begin
      PersenDiskon := 20;
      Diskon := Total * 20 / 100;
    end;

    TotalBayar := Total - Diskon;

    writeln;
    writeln('===== RINCIAN BELANJA =====');
    writeln('Total sebelum diskon : Rp', Total:0:0);
    writeln('Persentase diskon    : ', PersenDiskon:0:0, '%');
    writeln('Besar diskon         : Rp', Diskon:0:0);
    writeln('Total bayar akhir    : Rp', TotalBayar:0:0);
  end;

  readln;
end.