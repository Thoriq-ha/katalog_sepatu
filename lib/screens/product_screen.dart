import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';
import './detail_product_screen.dart';

class ProductScreen extends StatelessWidget {
  static const nameRoute = '/product';

  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              Text(
                'Katalog',
                style: TextStyle(
                  fontSize: 36,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(58, 0, 0, 8),
                child: Text(
                  'Sepatu',
                  style: TextStyle(
                      fontSize: 36, height: 0.8, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'TOTAL : ${products.length} items',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 24,
              ),
              buildListProducts(),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildListProducts() {
    return Expanded(
              child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadowColor: Colors.grey[50],
                      margin: EdgeInsets.only(bottom: 8),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, DetailProductScreen.nameRoute,
                              arguments: products[index]);
                        },
                        child: Container(
                          height: 136,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                      '${products[index].image}',
                                      height: 100,
                                      fit: BoxFit.fill),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${products[index].name}',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        Text('Mens Shoe'),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "\$ ${products[index].price}",
                                        style: TextStyle(
                                            color: Colors.purple,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), // color: ,
                    );
                  }),
            );
  }
}
