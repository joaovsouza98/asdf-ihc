import 'package:flutter/material.dart';

class EncomendasPage extends StatefulWidget {
  const EncomendasPage({super.key});

  
  @override
  // ignore: library_private_types_in_public_api
  _EncomendasPageState createState() => _EncomendasPageState();
}

class _EncomendasPageState extends State<EncomendasPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: const Text("Encomenda"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Morador(
                  nome: 'Joao',
                  telefone: "(11) 12345-6789",),

                Morador(
                  nome: 'Victor',
                  telefone: "(11) 98765-4321",),
              ],
            )
              ),

            Expanded(
            flex: 4,
            child: Container(
              color: Colors.amber
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  heroTag: "btn1",
                  onPressed: () {},
                  child: const Icon(Icons.camera_alt)),

                FloatingActionButton(
                  heroTag: "btn2",
                  onPressed: () {},
                  child: const Icon(Icons.send))
              ],
            )
        ],
      ),
    );
  }
}

class Morador extends StatelessWidget {
  final String nome;
  final String telefone;

  const Morador({ Key? key, required this.nome, required this.telefone}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            const Icon(Icons.people),
            Text(nome)
          ],),

        Row(
          children: [
            const Icon(Icons.phone),
            Text(telefone)
        ],)
        
      ],
    );
  }
}