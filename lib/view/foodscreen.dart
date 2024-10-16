// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sinnonteq_test/model/carousalmodel.dart';
import 'package:sinnonteq_test/utils/colorconstant/colorconstant.dart';

class Foodscreen extends StatelessWidget {
  const Foodscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OfferItem> offers = [
      OfferItem(
        title: '20% OFF',
        subtitle: 'On first order',
        iconColor: Colors.green,
      ),
      OfferItem(
        title: 'Free Delivery',
        subtitle: 'Above ₹499',
        iconColor: Colors.blue,
      ),
      OfferItem(
        title: 'Flat ₹100 OFF',
        subtitle: 'On orders above ₹999',
        iconColor: Colors.orange,
      ),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 242, 242),
        appBar: AppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colorconstant.primarywhite,
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: const Text(
                              "Kuttichira Biriyani Center",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      color: colorconstant.primarygreen,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Icon(
                                    Icons.star,
                                    color: colorconstant.primarygreen,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 4),
                                  Container(
                                    height: 10,
                                    width: 1,
                                    color: colorconstant.primaryblack,
                                  ),
                                  const SizedBox(width: 5),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "39",
                                          style: TextStyle(
                                            color: colorconstant.primaryblack,
                                            fontSize: 15,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " Minutes",
                                          style: TextStyle(
                                            color: colorconstant.primaryblack,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.currency_rupee),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "300",
                                          style: TextStyle(
                                            color: colorconstant.primaryblack,
                                            fontSize: 15,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " for",
                                          style: TextStyle(
                                            color: colorconstant.primaryblack,
                                            fontSize: 15,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " two",
                                          style: TextStyle(
                                            color: colorconstant.primaryblack,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Text(
                        "Biriyani, South Indian",
                        style: TextStyle(fontSize: 15),
                      ),
                      Row(
                        children: [
                          Text(
                            "Free delivery above",
                            style: TextStyle(
                                color: colorconstant.primaryyellow,
                                fontSize: 15),
                          ),
                          const Icon(
                            Icons.currency_rupee,
                          ),
                          Text(
                            "499",
                            style: TextStyle(
                                color: colorconstant.primaryyellow,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Center(
                  child: carousalwidget(offers),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Search in Kuttichira Biryani Center',
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        OutlinedButton.icon(
                          icon: Icon(Icons.circle,
                              color: colorconstant.primarygreen, size: 12),
                          label: Text('Veg',
                              style: TextStyle(color: Colors.black)),
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            side: const BorderSide(color: Colors.grey),
                          ),
                        ),
                        const SizedBox(width: 8),
                        OutlinedButton.icon(
                          icon: Icon(Icons.circle, color: Colors.red, size: 12),
                          label: Text('Non-veg',
                              style: TextStyle(color: Colors.black)),
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            side: const BorderSide(color: Colors.grey),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          child: Text(
                            'Top picks',
                            style: TextStyle(color: colorconstant.primarywhite),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: colorconstant.primaryyellow,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Top Picks",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadowColor: Colors.grey.withOpacity(0.5),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xffF8F8FB),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Beef Biriyani",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.currency_rupee),
                                        const Text("125.0")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "4.5",
                                          style: TextStyle(
                                              color: colorconstant.primarygreen,
                                              fontSize: 15),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: colorconstant.primarygreen,
                                        ),
                                        const Text("(80)")
                                      ],
                                    ),
                                    const Text("Delicious beef biriyani."),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Positioned(
                                          child: Container(
                                            height: 150,
                                            width: 150,
                                          ),
                                        ),
                                        Positioned(
                                          child: Container(
                                            height: 120,
                                            width: 120,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.grey[200],
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/biriyani.jpeg"),
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 10,
                                          right: 15,
                                          child: Icon(
                                            Icons.favorite,
                                            color: colorconstant.primaryblack,
                                            size: 24,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            child: const Text('ADD'),
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  5,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  CarouselSlider carousalwidget(List<OfferItem> offers) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        height: 100,
        viewportFraction: 0.7,
        enlargeCenterPage: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
      ),
      items: offers.map((offer) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.local_offer, color: offer.iconColor, size: 24),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 8),
                        Text(
                          offer.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(height: 4),
                        Text(offer.subtitle),
                      ],
                    ),
                    Icon(Icons.local_offer, color: offer.iconColor, size: 24),
                  ],
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
