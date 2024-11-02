//==========//==========//==========//==========//==========//==========//==========//==========//===========//==========//==========//
uses crt;               // Menggunakan library CRT
var                     // untuk membuka bagan deklaraasi variabel
  i,p,j,s,js:integer;   // Deklarasi variabel i,p,j,s,js bertipe integer
  hs:longint;       // Deklarasi variabel hs bertipe longint
  total:real;      // Deklarasi variabel total bertipe real
begin         // Memulai bagan program
  clrscr;     // Membersihkan layar sebelum memulai input/output
  write('Masukkan jumlah pelanggan : ');  // Mengoutput tulisan "Masukkan jumlah pelanggan : "
  readln(p);    // Meminta pengguna untuk memasukkan nilai (p)
  i:= 0;        // Menginisialisasi nilai awal variabel "i" dengan nilai 0
  repeat        // Memulai perulangan untuk tiap pelanggan
  begin         // Memulai bagan statement perulangan (looping)
    i := i+1;   // Meningkatkan nilai i untuk menandai pelanggan berikutnya
    j:=0;       // Menginisialisasi variabel j
    total:=0;   // Menginisialisasi total biaya untuk setiap pelanggan dengan nilai 0
    writeln;    // Memberikan space 1 baris kosong
    writeln('Pelanggan ke-',i,':');   // Mengoutput tulisan "Pelanggan ke- i" dengan i tergantung dari looping ke berapa
    write('Masukkan jumlah jenis sayur yang dibeli : '); // Mengoutput tulisan "Masukkann jumlah jenis sayur yang dibeli : "
    readln(s);   // Meminta pengguna untuk menginputkan nilai variabel "s" sebagai jumlah sayur
    writeln;    // Memberikan space 1 baris kosong
      repeat    // Memulai perulangan
      begin     // Memulai bagan perulangan
        j:= j+1;  // Menginisialisasi nilai "j" dengan menambah nilai nya dengan 1 tiap kali perulangan
        write('Masukkan harga sayur ke-',j,' : '); // Mengoutput "Masukkan harga sayur ke- i : " 
        readln(hs); // Meminta pengguna menginputkan nilai "hs" sebagai harga sayur nya
        write('Masukkan jumlah sayur yang dibeli : ');  // Mengoutuput "Masukkan jumlah sayur yang dibeli : "
        readln(js); // Meminta pengguna menginputkan nilai "js" sebagai berapa banyak sayur jenis itu dibeli
        total:=total+(js*hs); // Menghitung biaya total untuk sayur ke-j dan menambahkannya ke total
      end       // Mengakhiri bagan perulangan
      until (j=s);  // Menentukan batasan perulangan sampai nilai j sama dengan nilai s
      writeln('Total belanja untuk pelanggan ke-', i, ': Rp ', total:2:2);  // Mengoutput "Total belanja untuk pelanggan ke- i : Rp  total
  end           // Mengakhiri bagan perulangan untuk tiap pelanggan
  until (i=p);  // Menentukan batasan perulangan sampai nilai i sama dengan nilai p
end.    // Mengakhiri program
//==========//==========//==========//==========//==========//==========//==========//==========//===========//==========//==========//


(* Total line: 34

Input & Output:
Masukkan jumlah pelanggan : 2

Pelanggan ke-1:
Masukkan jumlah jenis sayur yang dibeli : 2

Masukkan harga sayur ke-1 : 5000
Masukkan jumlah sayur yang dibeli : 3
Masukkan harga sayur ke-2 : 7000
Masukkan jumlah sayur yang dibeli : 2
Total belanja untuk pelanggan ke-1: Rp 29000.00

Pelanggan ke-2:
Masukkan jumlah jenis sayur yang dibeli : 1

Masukkan harga sayur ke-1 : 4000
Masukkan jumlah sayur yang dibeli : 5 
Total belanja untuk pelanggan ke-2: Rp 20000.00
PS D:\Perkuliahan\DASPRO\Pascal\Praktikum\UTS DP1> *)
