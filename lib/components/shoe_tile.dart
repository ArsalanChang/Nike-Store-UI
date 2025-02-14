import 'package:flutter/material.dart';
import '../model/shoe.dart';
class ShoeTile extends StatelessWidget {
  Shoe shoe;
  final bool isLast; // Pass whether this is the last item in the list
  void Function()? onTap;
   ShoeTile({super.key, required this.shoe,required this.isLast, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isLast
          ? const EdgeInsets.only(right: 25.0,left: 25.0) // Margin at the end of the list
          : const EdgeInsets.only(left: 25.0), // Margin at the start of the list
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              width: 500, // Set desired width
              height: 300, // Set desired height
              child: Image.asset(
                shoe.imagePath,
                fit: BoxFit.cover, // Ensure the image fits within the box
              ),
            ),
          ),


          //description
          //Padding(
            //padding: const EdgeInsets.symmetric(horizontal: 5.0),
             Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
          //),

          //prices in detail
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //shoe name
                    Text(
                        shoe.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),

                   // const SizedBox(height: 5),

                    //price
                    Text(
                      shoe.price,
                      style: const TextStyle(
                        color: Colors.grey
                      ),
                    )
                  ],
                ),

                //plus button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),

                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )

              ],
            ),
          )

          //button to add to cart
        ],
      ),

    );
  }
}
