//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//
uses crt;               // Menggunakan library CRT
var                     // untuk membuka bagan deklaraasi variabel
    km: integer;        // Deklarasi variabel 'km' bertipe integer untuk menyimpan jarak dalam kilometer
    total: real;        // Deklarasi variabel 'total' bertipe real untuk menyimpan hasil total biaya
    prem: string;       // Deklarasi variabel 'prem' bertipe string untuk menyimpan status keanggotaan premium
    stat: boolean;      // Deklarasi variabel 'stat' bertipe boolean untuk menyimpan status premium sebagai true/false
begin                   // Memulai bagan program
    clrscr;             // Membersihkan layar sebelum memulai input/output
    write('Jarak (KM) : ');         // Mengoutput tulisan "Jarak (KM) : "
    readln(km);                     // Meminta pengguna memasukkan nilai jarak (km) dalam kilometer dan menyimpannya di variabel 'km'
    write('Anggota Premium : ');    // Mengoutput tulisan "Anggota Premium : "
    readln(prem);                   // Meminta pengguna memasukkan status keanggotaan premium (prem) sebagai string
    if (prem = 'True') or (prem = 'true') or (prem = 'Ya')  // Mengecek apakah input 'prem' mengindikasikan keanggotaan premium
    or (prem = 'ya') or (prem = 'Y') or (prem = 'y') then 
        stat := true                                        // Mengatur 'stat' menjadi true jika input 'prem' memenuhi salah satu syarat
    else 
        stat := false;                                      // Mengatur 'stat' menjadi false jika input 'prem' tidak memenuhi syarat di atas
    //~~ Menghitung total biaya berdasarkan jarak (km) yang dimasukkan ~~//
    if (km < 5) then 
        total := km * 5000 + 20000                          // Jika jarak kurang dari 5 km, biaya per km adalah 5000 dan biaya dasar 20000
    else if (km >= 5) and (km <= 10) then 
        total := km * 4000 + 20000                          // Jika jarak antara 5 hingga 10 km, biaya per km adalah 4000 dan biaya dasar 20000
    else if (km > 10) then 
        total := km * 3000 + 20000;                         // Jika jarak lebih dari 10 km, biaya per km adalah 3000 dan biaya dasar 20000
    //~~ Menambahkan diskon jika status premium adalah true ~~//
    if (stat = true) then   // Mengecek kondisi variabel "stat"
        begin            // memulai bagan if (stat = true)
            if (total > 100000) then    // Membuat percabangan kondisional total > 100000
                total := total * 0.9 * 0.95     // Diskon 10% dan 5% tambahan jika total lebih dari 100000
            else                        // Cabang selain kondisional
                total := total * 0.95           // Diskon 5% jika total kurang dari atau sama dengan 100000
        end;            // mengakhiri bagan if
    writeln('Total akhir : Rp ', total:0:0); // Menampilkan total biaya dengan format tanpa desimal
end. // Mengakhiri program
//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//==========//

(* Total line : 34

Input:
Jarak (KM) : 15
Anggota Premium : True

Output:
Total akhir : Rp 61750
PS D:\Perkuliahan\DASPRO\Pascal\Praktikum\UTS DP1>*)
