import 'dart:io';
import 'cmahasiswa.dart';
import 'cpegawai.dart';
import 'cperson.dart';
import 'cstaf.dart';
import 'fdosen.dart';

//link github:https://github.com/JHanov/Tugas2Dart

void main(List<String> arguments) {
  print('Akses:\n1. Mahasiswa\n2. Dosen\n3. Staf');
  String? Menu = stdin.readLineSync();
  int menu = int.parse(Menu!);

  switch (menu) {
    case 1:
      {
        print('nama mahasiswa:');
        String? nama = stdin.readLineSync();
        print('Jumlah SKS yang diambil: ');
        String? SKS = stdin.readLineSync();
        int sks = int.parse(SKS!);
        if (sks > 24 || sks < 2) {
          print('SKS Melebihi atau kurang! Ulang dari awal.');
          break;
        } else {
          print('Status mahasiswa:\n 1. Aktif\n2. Cuti');
          String? Status = stdin.readLineSync();
          int status = int.parse(Status!);
          if (status == 1) {
            print('Jumlah IPS yang diperoleh: ');
            String? IPS = stdin.readLineSync();
            int ips = int.parse(IPS!);

            print('Jumlah IPK yang diperoleh: ');
            String? IPK = stdin.readLineSync();
            int ipk = int.parse(IPK!);
            var mahasiswa = Mahasiswa(nama, sks, status, ips, ipk);

            print(
                'Data Mahasiswa = \n Nama ${mahasiswa.nama}\n SKS: ${mahasiswa.sks}\n Status ${mahasiswa.status}\n IPS ${mahasiswa.ips}\n IPK ${mahasiswa.ipk}');
          } else if (status == 2) {
            print('Jumlah IPS yang diperoleh: ');
            String? IPS = stdin.readLineSync();
            int ips = int.parse(IPS!);

            print('Jumlah IPK yang diperoleh: ');
            String? IPK = stdin.readLineSync();
            int ipk = int.parse(IPK!);
            var mahasiswa = Mahasiswa(nama, sks, status, ips, ipk);

            print(
                'Data Mahasiswa = \n Nama ${mahasiswa.nama}\n SKS: ${mahasiswa.sks}\n Status ${mahasiswa.status}\n IPS ${mahasiswa.ips}\n IPK ${mahasiswa.ipk}');
          }
        }
      }
      break;
    case 2:
      {
        print('nama Dosen:');
        String? nama = stdin.readLineSync();
        print('Jumlah SKS yang diajar: ');
        String? SKS = stdin.readLineSync();
        int sks = int.parse(SKS!);
        print('Tunjangan Kehadiran (enter jika tidak ada)');
        String? TunjKehadiran = stdin.readLineSync();
        int tunjkeh = int.parse(TunjKehadiran!);
        print('Gaji Dasar (0 jika tidak ada)');
        String? GajiDasar = stdin.readLineSync();
        int gajidasar = int.parse(GajiDasar!);
        print('Pilih:\n1. Dosen Tetap\n2. Dosen LB\n3. Dosen Tamu');
        String? JDosen = stdin.readLineSync();
        int jdosen = int.parse(JDosen!);
        switch (jdosen) {
          case 1:
            {
              var dosentetap1 = DosenTetap(nama, tunjkeh, gajidasar, sks);
              print('Gajinya ${dosentetap1.Gaji}');
            }
            break;
          case 2:
            {
              var dosenlb1 = DosenLB(nama, sks, gajidasar);
              print('Gajinya ${dosenlb1.Gaji}');
            }
            break;
          case 3:
            {
              var dosentamu = DosenTamu(nama, sks);
              print('Gajinya ${dosentamu.Gaji}');
            }
        }
      }
      break;
    case 3:
      {
        print('nama Staf:');
        String? nama = stdin.readLineSync();
        print('Tunjangan Kehadiran');
        String? TunjKehadiran = stdin.readLineSync();
        int tunjkeh = int.parse(TunjKehadiran!);
        print('Kehadiran');
        String? Kehadiran = stdin.readLineSync();
        int keh = int.parse(Kehadiran!);
        print('Gaji Dasar (0 jika tidak ada)');
        String? GajiDasar = stdin.readLineSync();
        int gajidasar = int.parse(GajiDasar!);
        print('Berapa kali cuti: ');
        String? Cuti = stdin.readLineSync();
        int cuti = int.parse(Cuti!);
        int totaltunjangan = tunjkeh * keh;
        if (cuti > 12) {
          print('Jumlah cuti habis');
          break;
        } else {
          var staf1 = Staf(nama, totaltunjangan, (12 - cuti), gajidasar);
          print(
              'Data Staf = \n Nama ${staf1.nama}\n Total tunjangan kehadiran: ${staf1.tunjKehadiran}\n Sisa jumlah cuti: ${staf1.cuti}\n Total Gaji: ${staf1.Gaji}');
        }
      }
      break;
  }
}
