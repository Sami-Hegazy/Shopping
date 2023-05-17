import 'package:flutter/material.dart';

import 'package:store_app/models/products_model.dart';

import '../helper/constant.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.products,
  }) : super(key: key);
  final ProductsModel products;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Card(
          color: Colors.teal[50],
          elevation: 6,
          shadowColor: purble,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
                child: Image.network(
                  products.images[2],
                  height: 160,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      products.title.substring(0, 10),
                      style: const TextStyle(
                        fontSize: 18,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      products.description.substring(0, 6),
                      style: const TextStyle(
                        fontSize: 14,
                        color: purble,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ ${products.price}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite, color: Colors.red),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
