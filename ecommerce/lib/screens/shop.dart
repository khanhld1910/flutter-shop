import 'package:ecommerce/screens/product_details.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Icon(
              Icons.place,
              size: 16,
              color: Colors.black26,
            ),
            const SizedBox(width: 5),
            Text(
              '15/2 New Texas',
              style: Theme.of(context).textTheme.titleSmall,
            )
          ],
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.sort,
            size: 32,
            color: Colors.black87,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductDetail()),
              );
            },
            icon: const Icon(
              Icons.notifications,
              size: 24,
              color: Colors.black26,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Wrap(
          direction: Axis.vertical,
          spacing: 10,
          children: <Widget>[
            const SizedBox(height: 20),
            Text(
              'Explore',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'best Outfits for you',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black26, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
