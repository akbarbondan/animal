import '../models/models.dart';

class DataDumy {
  List<Map> data = [
    {
      'id': 1,
      'namaInd': 'Gajah',
      'namaEng': 'Elephant',
      'images': [
        'https://images.unsplash.com/photo-1557050543-4d5f4e07ef46?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2832&q=80'
            'https://images.unsplash.com/photo-1505148230895-d9a785a555fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
        'https://plus.unsplash.com/premium_photo-1661813619558-573f6e2bfc8a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80'
      ],
      'suara': 'suara_gajah',
      'judul': 'Deskripsi Mengenai Gajah',
      'deskripsi': 'gajaaaaaaaaaaaaaaaah',
      'cover':
          'https://images.unsplash.com/photo-1557050543-4d5f4e07ef46?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2832&q=80'
    },
    {
      'id': 2,
      'namaInd': 'Harimau',
      'namaEng': 'Tiger',
      'images': [
        'https://images.unsplash.com/photo-1557050543-4d5f4e07ef46?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2832&q=80'
            'https://images.unsplash.com/photo-1505148230895-d9a785a555fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
        'https://plus.unsplash.com/premium_photo-1661813619558-573f6e2bfc8a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80'
      ],
      'suara': 'suara_harimau',
      'judul': 'Deskripsi Mengenai harimau',
      'deskripsi': 'Harimauuuuuuuuuuu',
      'cover':
          'https://images.unsplash.com/photo-1557050543-4d5f4e07ef46?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2832&q=80'
    }
  ];

  getDataList() {
    List<Animals> animal = data.map((e) => Animals.fromList(e)).toList();
    return animal;
  }
}
