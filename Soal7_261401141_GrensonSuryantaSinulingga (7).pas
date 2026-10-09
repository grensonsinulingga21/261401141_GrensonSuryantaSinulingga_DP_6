program TarifParkir;
uses crt;

var
  Kode: char;
  Jam: integer;
  Tarif: longint;

begin
  clrscr;
  writeln('M = Mobil');
  writeln('K = Motor');
  writeln('B = Bus');

  write('Masukkan kode kendaraan (M/K/B): ');
  readln(Kode);

  write('Masukkan lama parkir (jam): ');
  readln(Jam);

  if Jam <= 0 then
  begin
    writeln('Lama parkir tidak valid!');
  end
  else
  begin
    case Kode of
      'M', 'm':
        begin
          if Jam > 10 then
            Tarif := 30000
          else
            Tarif := 5000 + (Jam - 1) * 3000;
        end;

      'K', 'k':
        begin
          if Jam > 10 then
            Tarif := 10000
          else
            Tarif := 2000 + (Jam - 1) * 1000;
        end;

      'B', 'b':
        begin
          if Jam > 10 then
            Tarif := 50000
          else
            Tarif := 10000 + (Jam - 1) * 5000;
        end;

    else
      Tarif := -1;
    end;

    if Jam > 0 then
    begin
      if Tarif = -1 then
        writeln('Kode kendaraan tidak valid!')
      else
      begin
        writeln('Lama parkir : ', Jam, ' jam');
        writeln('Tarif parkir: Rp', Tarif);
      end;
    end;
  end;

  readln;
end.