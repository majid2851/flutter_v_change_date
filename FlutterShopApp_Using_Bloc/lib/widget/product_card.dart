

import 'package:flutter/material.dart';

import '../models/product_model.dart';


class ProductCard extends StatelessWidget
{
  final ProductModel productModel;
  final double widthFactor;

  const ProductCard({
    required this.productModel,
    this.widthFactor=2.5,

  });

  @override
  Widget build(BuildContext context)
  {
    final double widthValue=MediaQuery.of(context).size.width/widthFactor;

    return Stack(
      children: [
        Container(
          width:widthValue ,
          height: 150,
          child: Image.network(productModel.imageUrl,fit: BoxFit.cover,),
        ),
        Positioned(
          top: 60,
          left: 5,
          child: Container(
            width:MediaQuery.of(context).size.width/2.5,
            height: 80,
            decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
          ),
        ),
        Positioned(
          top: 60,
          left: 5,
          child: Container(
            width:MediaQuery.of(context).size.width/2.5,
            height: 80,
            decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
          ),
        ),
        Positioned(
          top: 65,
          left: 5,
          child: Container(
            width:MediaQuery.of(context).size.width/2.5-10,
            height: 70,
            decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productModel.name,
                          style: Theme.of(context).
                          textTheme.headline5!.copyWith(color: Colors.white),
                        ),
                        Text(
                          '\$${productModel.price}',
                          style: Theme.of(context).
                          textTheme.headline6!.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                        onPressed: (){

                        },
                        icon: Icon(Icons.add_circle,color: Colors.white,)
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
