//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//
uses crt;   // Menggunakan library CRT
var         // untuk membuka bagan deklaraasi variabel
  total_kembalian,pecahan,lembar: longint;   // Deklarasi variabel kembalian,pecahan,z bertipe longint
begin     // Memulai program
    clrscr; // Membersihkan layar sebelum memulai input/output
    write('Masukkan jumlah kembalian : Rp '); // Mengoutput "Masukkan jumlah kembalian : Rp "
    readln(total_kembalian);  // Meminta pengguna menginputkan nilai variabel "total_kembalian"
    pecahan:= 100000;   // Menginisialisasi nilai awal variabel "pecahan" dengan nilai 100000
    lembar:=0;         // Menginisialisasi nilai awal variabel "lembar" dengan nilai 0
    if (total_kembalian>=225000) and (total_kembalian<=229999) then  // Mengecek apakah jumlah kembalian berada dalam rentang antara 225000 dan 229999
    pecahan:=75000;   // Menginisialisasi nilai variabel "pecahan" dengan nilai 75000 jika memenuhi persyaratan
    while total_kembalian > 99 do // Melakukan perulangan selama nilai "total_kembalian" lebih dari 99
    begin   // Memulai bagan statement perulangan
        lembar:=lembar+(total_kembalian div pecahan); // Menambahkan hasil bagi antara total_kembalian dan pecahan ke dalam variabel lembar
        total_kembalian:=total_kembalian mod pecahan; // Menghitung sisa kembalian setelah diambil pecahan terbesar
        if pecahan = 100000 then pecahan := 75000     // Mengubah nilai pecahan ke nilai 75000 jika memenuhi persyaratan
        else if pecahan = 75000 then pecahan := 50000 // Mengubah nilai pecahan ke nilai 50000 jika memenuhi persyaratan
        else if pecahan = 50000 then pecahan := 20000 // Mengubah nilai pecahan ke nilai 20000 jika memenuhi persyaratan
        else if pecahan = 20000 then pecahan := 10000 // Mengubah nilai pecahan ke nilai 10000 jika memenuhi persyaratan
        else if pecahan = 10000 then pecahan := 5000  // Mengubah nilai pecahan ke nilai 5000 jika memenuhi persyaratan
        else if pecahan = 5000 then pecahan := 2000   // Mengubah nilai pecahan ke nilai 2000 jika memenuhi persyaratan
        else if pecahan = 2000 then pecahan := 1000   // Mengubah nilai pecahan ke nilai 1000 jika memenuhi persyaratan
        else if pecahan = 1000 then pecahan := 500    // Mengubah nilai pecahan ke nilai 500 jika memenuhi persyaratan
        else if pecahan = 500 then pecahan := 200     // Mengubah nilai pecahan ke nilai 200 jika memenuhi persyaratan
        else if pecahan = 200 then pecahan := 100     // Mengubah nilai pecahan ke nilai 100 jika memenuhi persyaratan
    end;     // Mengakhiri bagan statement perulangan
  writeln(lembar); // Mengoutput nilai variabel "lembar"
end.  // Mengakhiri program
==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//

(* Total line: 28

Input:
Masukkan jumlah kembalian : Rp 62500
Output:
4
PS D:\Perkuliahan\DASPRO\Pascal\Praktikum\UTS DP1> *)
