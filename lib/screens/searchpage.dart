import 'package:app_fashion_e_commerce/custom%20widgets/searchpagecategoriesprod.dart';
import 'package:app_fashion_e_commerce/custom%20widgets/typesproducts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MySearchPage());
}

class MySearchPage extends StatelessWidget {
  MySearchPage({super.key});

  final List<double> valorproduto = [25.50, 21.70, 29.99, 49.99];

  final List<String> nomeproduto = [
    'Velvet Muse Dress',
    'Classic Leather Jacket',
    'Black Diamond Jacket',
    'Autumn Terracota Jacket',
  ];
  
  final List<Image> imagensProdutos = [
    Image.asset('lib/images/produtos/produto_1.jpeg'),
    Image.asset('lib/images/produtos/produto_2.png'),
    Image.asset('lib/images/produtos/produto_3.png'),
    Image.asset('lib/images/produtos/produto_4.jpeg'),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: SearchBar(
                    leading: const Icon(Icons.search),
                    hintText: 'Search',
                    shadowColor: WidgetStateProperty.all(Colors.black),
                    side: WidgetStateProperty.all(
                      const BorderSide(
                        color: Color.fromARGB(255, 124, 116, 116),
                        width: 1.0,
                      ),
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF12120F)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.notifications),
              ),
            ],
          ),

        Expanded(child: CategoriesProdutos()),

        Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 5.0,
                  ),
                   padding: EdgeInsets.only(left: 1, right: 1, top: 10.0, bottom: 75.0),
                  itemCount: nomeproduto.length,
                  itemBuilder: (context, index) =>  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 150.2,
                        margin:  EdgeInsets.all(5),
                        color: Colors.grey,
                        child:Expanded(
                          flex:1,
                          child: imagensProdutos[index],
                      ),
                      ),
                  
                    // SizedBox(width: 2, height: 2),
                 Padding(padding: EdgeInsetsGeometry.only(left:1, right: 1, top: 1, bottom: 50),
                    child: Typesproducts(
                        nomeproduto: nomeproduto[index],
                        valorproduto: valorproduto[index],
                      ),
                  ),
                    ],
                  ),
                  
                ),
              ),
        ],
      ),
    );
  }
}
