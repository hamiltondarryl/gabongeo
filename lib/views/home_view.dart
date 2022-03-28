// ignore_for_file: avoid_unnecessary_containers, avoid_print, sized_box_for_whitespace, unused_element

import 'package:flutter/material.dart';
import 'package:gabongeo/views/province_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mon pays"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/img/libreville.jpeg"),
                        fit: BoxFit.cover)),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.only(
                        bottom: 10, top: 30, left: 20, right: 20),
                    height: 100,
                    width: double.infinity,
                    color: Colors.black.withOpacity(.5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                              image: DecorationImage(
                                  image: AssetImage("assets/img/drapeau.png"),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'GABON',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text('Capitale : Libreville',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                  ),
                )),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Le Gabon, en forme longue la République gabonaise, est un pays situé en Afrique centrale, traversé par l'équateur, frontalier à l'est, au sud-est et au sud de la république du Congo, au nord-nord-ouest de la Guinée équatoriale et au nord du Cameroun. ",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProvinceView()));
                    },
                    child: const Text("PROVINCES")),
                ElevatedButton(
                    onPressed: () => showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            padding: const EdgeInsets.all(20),
                            height: 400,
                            width: double.infinity,
                            child: Column(
                              children: const [
                                Text(
                                    "Ancienne colonie française, le Gabon est indépendant depuis le 17 août 1960.C’est un pays forestier où la faune et la flore sont encore bien conservées et protégées dans treize parcs nationaux dont les parcs nationaux de la Lopé et d'Ivindo, inscrits au patrimoine mondial par l'UNESCO. Une faible population, d'importantes ressources forestières et un pétrole abondant ont permis au Gabon d'être l'un des pays les plus prospères d'Afrique. Le pays affiche l'indice de développement humain le plus élevé d'Afrique subsaharienne selon l'Organisation des Nations unies, disposant du deuxième revenu par habitant derrière la Guinée équatoriale et devant le Botswana. Le PIB a augmenté de plus de 6 % par an pour la période 2010-2012.",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(fontSize: 16))
                              ],
                            ),
                          );
                        }),
                    child: const Text('DETAILS'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
