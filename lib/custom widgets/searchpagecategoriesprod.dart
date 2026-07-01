import 'package:flutter/material.dart';

class CategoriesProdutos extends StatefulWidget {
  const CategoriesProdutos({super.key});

  @override
  State<CategoriesProdutos> createState() => _CategoriesProdutosState();
}

class _CategoriesProdutosState extends State<CategoriesProdutos> {
  final List<Image> imgCat = [
    Image.asset('lib/images/categorias/birthday.png'),
    Image.asset('lib/images/categorias/casual.png'),
    Image.asset('lib/images/categorias/day_outfits.png'),
    Image.asset('lib/images/categorias/night_out.png'),
    Image.asset('lib/images/categorias/party.png'),
    Image.asset('lib/images/categorias/wedding.png'),
  ];

  final List<String> categories = [
    "Birthday",
    "Wedding",
    "Party",
    "Casual",
    "Day Outfits",
    "Night Out",
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2.7,
          mainAxisSpacing: 1.0,
          crossAxisSpacing: 0,
        ),
        padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
        itemCount: categories.length,
        itemBuilder: (context, index) => Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(left:8.0, right: 8.0, bottom: 2.0, top: 2.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade800,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                 
                ),
                onPressed: () {},

                child: Padding(
                  padding: EdgeInsets.only(left: 1.0, right:5.0, top: 9.0, bottom: 0.0
                  ),
                  child: Row(
                    children: [
                      Text(
                        categories[index],
                        style: TextStyle(color: Colors.white),
                      ),
                      imgCat[index],
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
