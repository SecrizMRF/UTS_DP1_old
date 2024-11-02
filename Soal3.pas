//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//
uses crt;     // Menggunakan library CRT
var           // untuk membuka bagan deklaraasi variabel
  i, j, n: integer;   // Deklarasi variabel i, j, n bertipe integer
begin       // Memulai bagan program
    clrscr; // Membersihkan layar sebelum memulai input/output
    write('n : '); // Mengoutput "Masukkan ukuran silang : "
    readln(n);    // Meminta pengguna untuk memasukkan nilai variabel "n"
    for i := 1 to n do   // Memulai loop untuk baris dengan variabel i dari 1 hingga n
    begin   // Memulai bagan looping pertama
        for j := 1 to n do // Memulai loop untuk kolom dengan variabel j dari 1 hingga n
        begin    // Memulai bagan looping ke 2
        if (i = j) or (i + j = n + 1) then // Mengecek apakah posisi (i, j) berada pada salah satu garis diagonal
            write('*')    // Mengoutput "* " jika memenuhi syarat
        else            // Jika tidak memenuhi persyaratan, maka akan masuk ke percabangan ini
            write(' ');   // Mengoutput spasi
        end;    // Mengakhiri bagan looping ke 2
    writeln;
    end;   // Mengakhiri bagan looping pertama
end.  // Mengakhiri program
//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//

(* Total line: 19

Input:
n : 5
Output:
*   *
 * * 
  *  
 * * 
*   *
PS D:\Perkuliahan\DASPRO\Pascal\Praktikum\UTS DP1> *)
