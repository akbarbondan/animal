part of 'widgets.dart';

class Crausel extends StatefulWidget {
  final Animals animal;

  Crausel(this.animal);

  @override
  State<Crausel> createState() => _CrauselState();
}

class _CrauselState extends State<Crausel> {
  int activeIndex = 0;
  final controler = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        CarouselSlider.builder(
          itemCount: widget.animal.carausel.length,
          itemBuilder: (context, index, realidex) {
            final iamges = widget.animal.carausel[index];
            return buildImage(iamges, index);
          },
          options: CarouselOptions(
              height: 355,
              viewportFraction: 1,
              autoPlay: true,
              onPageChanged: (index, reason) => setState(
                    () => activeIndex = index,
                  )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 205),
          width: double.infinity,
          height: 150,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color.fromARGB(209, 0, 0, 0), Colors.transparent])),
        ),

        // nama dan indkator
        Container(
          padding: const EdgeInsets.only(right: 16, left: 16),
          margin: const EdgeInsets.only(top: 270),
          width: double.infinity,
          height: 51,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    (widget.animal.namaInd) ?? "",
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    (widget.animal.namaEng) ?? "",
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              buildIndikato(),
            ],
          ),
        ),

        // Header
        Container(
          margin: const EdgeInsets.only(top: 44),
          padding: const EdgeInsets.only(right: 16, left: 16),
          width: double.infinity,
          height: 51,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                ),
              ),
              InkWell(
                  onTap: () {
                    final audio = AudioPlayer();
                    audio.play(AssetSource("audio/${widget.animal.suara}.wav"));
                  },
                  child: const Icon(Icons.play_circle))
            ],
          ),
        )
      ],
    ));
  }

  Widget buildIndikato() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: widget.animal.carausel.length,
        onDotClicked: animatedToSlide,
        effect: ExpandingDotsEffect(
            dotWidth: 8,
            activeDotColor: primary,
            dotHeight: 8,
            dotColor: Colors.white),
      );

  void animatedToSlide(int index) => controler.animateToPage(index);
}

Widget buildImage(String urlImage, int index) => Container(
        child: Image.network(
      urlImage,
      fit: BoxFit.cover,
    ));
