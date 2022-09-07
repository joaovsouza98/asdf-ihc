import 'package:flutter/material.dart';

import 'encomenda_page.dart';

class ApartamentosPage extends StatefulWidget {
  
  final String nomeBloco;
  final int totalApto;
  final List<int> numApto;

  const ApartamentosPage({super.key, required this.nomeBloco, required this.totalApto, required this.numApto});

  @override
  // ignore: library_private_types_in_public_api
  _ApartamentosPageState createState() => _ApartamentosPageState();
}

class _ApartamentosPageState extends State<ApartamentosPage> {

  mudarPagina(){
    Navigator.push(context, MaterialPageRoute(
      builder: (_) => const EncomendasPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nomeBloco),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(50.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
            itemCount: widget.totalApto,
            itemBuilder: (BuildContext context, int index) { 
              return GridTile(
                child: TextButton(
                    onPressed: () {
                      mudarPagina();
                    }, 
                    child: Text("${widget.numApto.elementAt(index)}"),
                ),
              );
             },
          ),
        )
      )
    );
  }
}