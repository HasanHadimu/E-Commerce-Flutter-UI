import 'package:ecommerceflutterfirebase/widget/suport_widget.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context), // Navigate back on tap
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: const EdgeInsets.all(8.0),
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 24.0,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 0.0), // Add spacing between widgets
            Center(
              child: Image.asset(
                "images/headphone2.png",
                width: 350.0,
                height: 350.0,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Headphone", style: AppWidget.boldTextFieldStyle()),
                      Text("\$300",
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 25,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Align to left
                    children: [
                      Text("Details",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                      "This Product very Good This Product very Good This Product very Good This Product very Good This Product very Good This Product very Good This Product very Good",
                      style: AppWidget.lightTextFieldStyle()),
                  SizedBox(
                    height: 90,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
