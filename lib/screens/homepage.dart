
import 'package:flutter/material.dart';
import 'package:app_fashion_e_commerce/custom widgets/typesproducts.dart';

void main() {
  runApp(HomePageFashion());
}

class HomePageFashion extends StatefulWidget {
  const HomePageFashion({super.key});

  @override
  HomePageFashionState createState() => HomePageFashionState();
}


class HomePageFashionState extends State<HomePageFashion> {
 bool isPressed = false;
  List<String> categories = [
    "Birthday",
    "Wedding",
    "Party",
    "Casual",
    "Day Outfits",
    "Night Out",
  ];

  final List<double> valorproduto = [25.50, 21.70, 29.99, 49.99];

  final List<String> nomeproduto = [
    "Velvet Muse Dress",
    "Classic Leather Jacket",
    "Autumn Terracota Jacket",
    "Black Diamond Jacket",
  ];
  // Esses dois últimos produtos eu inventei o nome, pq a página só mostra o nome dos dois primeiros kkkk

  final List<Image> imagensProdutos = [
    Image.asset('lib/images/produtos/produto_1.jpeg', width: 17.0,),
    Image.asset('lib/images/produtos/produto_2.png'),
    Image.asset('lib/images/produtos/produto_3.png'),
    Image.asset('lib/images/produtos/produto_4.jpeg'),
  ];
  // Sobre as imagens, ainda tenho que buscá-las na internet!
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
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
              // Container
              Container(
                margin: EdgeInsets.all(20),
                // padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(color: Color(0xFF282826)),
                child:
                  Stack(
                    children: [
                    Image.asset('lib/images/produtos/banner_fundo.png', fit: BoxFit.cover, width: double.infinity),
                 
              Align(
                 alignment: Alignment.bottomLeft,
                 
                       child: Padding(padding: EdgeInsets.all(15.0),
                       child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Book now!',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
              ),
               )
                    ]
                  ),
              ),
              // Categorias
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 23),
                child: SizedBox(
                  width: 725,
                  height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsetsGeometry.symmetric(
                        vertical: 0,
                        horizontal: 3,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isPressed
                              ? Colors.white
                              : Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          // padding: EdgeInsets.all(13.0),
                        ),
                        onPressed: () {
                          setState(() {
                            isPressed = !isPressed;
                          });
                        },
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            color: isPressed ? Colors.black : Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

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
                        width: 140,
                        height: 150.2,
                        margin:  EdgeInsets.all(5),
                        color: Colors.white,
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
        ),
      ),
    );
  }
}

// Adicionar o gridview.builder -> ok.
// Adicionar o caminho das 4 imagens
// criar a classe dos produtos
