program LoginPassword;
uses crt;

const
  KataSandi = 'ILKOM26';

var
  Input: string;
  Percobaan: integer;
  Berhasil: boolean;

begin
  clrscr;
  Percobaan := 0;
  Berhasil := false;

  repeat
    Percobaan := Percobaan + 1;
    write('Masukkan kata sandi (percobaan ', Percobaan, ' dari 3): ');
    readln(Input);

    if Input = KataSandi then
    begin
      writeln('Login Berhasil! Selamat Datang');
      Berhasil := true;
      break;
    end
    else
      writeln('Kata sandi salah!');
  until Percobaan = 3;

  if not Berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');

  readln;
end.