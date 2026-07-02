import 'package:flutter/material.dart';

class Typesproducts extends StatelessWidget {
  final String nomeproduto;
  final double valorproduto;

  const Typesproducts({
    super.key,
    required this.nomeproduto,
    required this.valorproduto,
  });
  @override
  Widget build(BuildContext context) {

    return Expanded(  
      flex: 1,
     child :Column(
      children: [
        Text(nomeproduto),
        Text('\$ $valorproduto'),
        Row(
          children: [
            Text('Sizes'),
            Text('P'),
            Text('M'),
            Text('G'),
            Text('GG'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        ElevatedButton(onPressed: () {}, child: Text("Comprar")),
        IconButton(onPressed:() {}, icon: Icon(Icons.add_box_rounded))
          ]
        ),
      ],
    ),
    );
  }
}
