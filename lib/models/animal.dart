part of 'models.dart';

class Animals {
  int? id;
  String? namaInd;
  String? namaEng;
  List<String> carausel = [];
  String? suara;
  String? judul;
  String? deskripsi;
  String? cover;

  Animals(
      {this.id,
      this.namaInd,
      this.namaEng,
      required this.carausel,
      this.suara,
      this.judul,
      this.deskripsi,
      this.cover});

  Animals.fromList(data) {
    id = data['id'];
    namaInd = data['namaInd'];
    namaEng = data['namaEng'];
    carausel = data['images'];
    suara = data['suara'];
    judul = data['suara'];
    deskripsi = data['deskripsi'];
    cover = data['cover'];
  }
}
