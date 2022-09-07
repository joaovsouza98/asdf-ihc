import 'package:flutter/material.dart';
import 'package:pickpack_ihc/models/blocos_repository.dart';
import 'package:pickpack_ihc/ui/apartamentos_page.dart';

class Blocos extends StatefulWidget {
  const Blocos({super.key, required this.title});

  final String title;

  @override
  State<Blocos> createState() => _BlocosState();
}

class _BlocosState extends State<Blocos> {

  abrirPagina (String blocoNome, int totalApto, List<int> asdf ) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => 
          ApartamentosPage(
            nomeBloco: blocoNome, 
            totalApto: totalApto,
            numApto: asdf,
            ),
          ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: BlocoRepository.blocos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: TextButton(
                onPressed: () {
                  String blocoNome = BlocoRepository.blocos[index].nome;
                  int totalApto = BlocoRepository.blocos[index].totalApto;
                  List<int> numApto = BlocoRepository.blocos[index].numeroApartamentos;
                  abrirPagina(blocoNome, totalApto, numApto);
                },
                child: Text(BlocoRepository.blocos[index].nome),
              ),
            );
          },
        ),
      ),
    );
  }
}
