part of 'pages.dart';

class DetailPage extends StatefulWidget {
  final Animals animal;
  DetailPage(this.animal);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            top: false,
            bottom: false,
            child: Stack(
              children: [
                Crausel(widget.animal),
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 38, 16, 24),
                  margin: const EdgeInsets.only(top: 334),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height - 334,
                  decoration: const BoxDecoration(
                      color: Color(0xFFFEEBDE),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: ListView(
                    padding: const EdgeInsets.all(0),
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        (widget.animal.judul) ?? "",
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        (widget.animal.deskripsi) ?? "",
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF575757),
                            wordSpacing: 1,
                            letterSpacing: 0.5),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}
