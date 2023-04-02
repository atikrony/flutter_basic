import 'package:flutter/material.dart';
import 'package:task01/custom_app_bar.dart';

class GiftCards extends StatefulWidget {
  const GiftCards({super.key});

  @override
  State<GiftCards> createState() => _GiftCardsState();
}

class _GiftCardsState extends State<GiftCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomAppBar(title: "home"),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.indigoAccent,
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 1),
                        )
                      ],
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.amber,
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [Icon(Icons.menu), Text("GIFT CARD!")],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "featured",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
