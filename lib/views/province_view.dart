
// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:gabongeo/requests/services.dart';

class ProvinceView extends StatefulWidget {
  const ProvinceView({ Key? key }) : super(key: key);

  @override
  State<ProvinceView> createState() => _ProvinceViewState();
}

class _ProvinceViewState extends State<ProvinceView> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text('Liste des provinces')
      ),
      body: Container(
        child: FutureBuilder(
          future: Services.getProvince(),
          builder: (context , AsyncSnapshot<dynamic> snapshot){
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                break;
              case ConnectionState.waiting:
                return const Center(child: CircularProgressIndicator());
              case ConnectionState.active:
                break;
              case ConnectionState.done:
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (cxt, i) {
                      return ListTile(
                        title:Text('${snapshot.data[i].nom}'),
                        leading: const Icon(Icons.location_city),
                        );
                    });
            }
            return const Text('Some error ocurred try getDoctor');
          }

          )
      )
    );
  }
}