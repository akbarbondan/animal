part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    List<Animals> animal = [
      Animals(
          id: 1,
          namaInd: 'Gajah',
          namaEng: 'Elephant',
          carausel: [
            'https://images.unsplash.com/photo-1557050543-4d5f4e07ef46?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2832&q=80'
                'https://images.unsplash.com/photo-1505148230895-d9a785a555fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
            'https://plus.unsplash.com/premium_photo-1661813619558-573f6e2bfc8a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80'
          ],
          suara: 'gajah',
          judul: 'Deskripsi Mengenai Gajah',
          deskripsi: 'gajaaaaaaaaaaaaaaaah',
          cover:
              'https://images.unsplash.com/photo-1557050543-4d5f4e07ef46?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2832&q=80'),
      Animals(
          id: 2,
          namaInd: 'Singa',
          namaEng: 'Tiger',
          carausel: [
            'https://media.istockphoto.com/id/1263109516/id/foto/harimau-bengal-panthera-tigris-tigris-lari-dewasa.jpg?s=612x612&w=0&k=20&c=1YuxRXD8drsA3UJ28LDhWw_UX67Sp5BkSpkk24eisZc=',
            'https://media.istockphoto.com/id/1460461882/id/foto/harimau-di-taman-margasatwa-orana.jpg?s=612x612&w=0&k=20&c=LXMmCZc4uyl1biPhdgtdu7f9txqgq_gsme5HHhUNZcY=',
            'https://media.istockphoto.com/id/1033134968/id/foto/pada-pagi-yang-indah-cahaya-harimau-jantan-di-prowl-di-taman-nasional-kanha.jpg?s=612x612&w=0&k=20&c=oJOf1khF-N0wuDIJ9E_9w89D1TpJ8pqFcOxeiGfAw5o='
          ],
          suara: 'singa',
          judul: 'Deskripsi Mengenai Singa',
          deskripsi: 'Singa',
          cover:
              'https://media.istockphoto.com/id/513164027/id/foto/harimau-benggala.jpg?s=612x612&w=0&k=20&c=zCPHsFqm8v1eCpPPcth97j3lTKD4Z0g25vKdjzaYXBM='),
      Animals(
          id: 3,
          namaInd: 'Kambing',
          namaEng: 'Sheep',
          carausel: [
            'https://media.istockphoto.com/id/182792400/id/foto/potret-domba.jpg?s=612x612&w=0&k=20&c=SYdDYCWtuFqXSJMFTtZHzU1OAw6mUPBNPN6bG0q1Ft8=',
            'https://images.unsplash.com/photo-1602847213180-50e43a80bef4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHNoZWVwfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'
          ],
          suara: 'kambing',
          judul: 'Deskripsi Mengenai Kambing',
          deskripsi: 'Kambing domba',
          cover:
              'https://media.istockphoto.com/id/645788690/id/foto/domba-lucu-potret-domba-yang-menunjukkan-lidah.jpg?s=612x612&w=0&k=20&c=C2delO06t04aGyNf6JPs8QLYAVjEwNJgXcCc-DuJznw=')
    ];
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(right: 16, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 0,
                child: Text(
                  "Selamat Datang",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: primary),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: animal.length,
                      itemBuilder: (context, index) => Card(
                            animal: animal[index],
                          )))
            ],
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final Animals animal;
  Card({
    required this.animal,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(DetailPage(animal));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage((animal.cover) ?? " "), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(8),
            color: Colors.white),
        child: Container(
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color.fromARGB(168, 2, 2, 2), Colors.transparent])),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 22,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    (animal.namaInd) ?? " ",
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    (animal.namaEng) ?? " ",
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
