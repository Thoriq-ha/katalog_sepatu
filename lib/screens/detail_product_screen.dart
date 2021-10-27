import 'package:flutter/material.dart';
import '../models/product.dart';

class DetailProductScreen extends StatefulWidget {
  static const nameRoute = '/detailProduct';

  const DetailProductScreen({Key? key}) : super(key: key);

  @override
  _DetailProductScreenState createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  late bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      floatingActionButton: buildLoveButton(),
      appBar: buildAppBar(context),
      body: Column(
        children: [
          Image.asset(
            '${product.image}',
            height: 300,
          ),
          buildOverView(product)
        ],
      ),
    );
  }

  Align buildLoveButton() {
    return Align(
      alignment: Alignment(0.9, 0.12),
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: IconButton(
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
              print(isFavorite);
            });
          },
          iconSize: 30,
          color: Colors.redAccent,
          icon: (isFavorite
              ? Icon(Icons.favorite_border_sharp)
              : Icon(Icons.favorite)),
        ),
      ),
    );
  }

  Expanded buildOverView(Product product) {
    return Expanded(
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${product.name}',
                      style: TextStyle(fontSize: 34),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text('${product.description}'),
                    // Expanded(child: Container()),
                    Expanded(
                      child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset('${product.image}',
                                    // height: 10,
                                    fit: BoxFit.fill),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 58,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('SHARE'),
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              )),
        );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
              ),
            ],
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        'Product Overview',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
