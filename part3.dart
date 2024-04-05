import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
  
class AppTheme {
  static const Color BLUE = Color(0xff011444) ;
  static const Color SECONDARY3 = Color(0xffF1F3FD) ;
  static const Color SECONDARY = Color.fromARGB(255, 196, 203, 242) ;
  static const Color SECONDARY2 = Color.fromARGB(255, 89, 107, 207) ;
  static const Color PRIMARY = Color(0xff4c1d95) ;
  static const Color GRAY = Color(0xffECECEE) ;
}

class MyApp extends StatelessWidget {
  final String title;
  final String description;

  const MyApp(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 34),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: AppTheme.SECONDARY3.withOpacity(0.5), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 10, // Blur radius
            offset: const Offset(0, 4) // Offset
            ),
      ], color: AppTheme.SECONDARY3, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(),
          Text(
            title,
            style: const TextStyle(
                color: AppTheme.BLUE,
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
        const  Gap(8),
          Text(
            '$description',
            style: TextStyle(
                color: AppTheme.BLUE.withOpacity(0.40),
                fontWeight: FontWeight.bold,
                fontSize: 12),
          ),
          Gap(20),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                   const PictureWidget(
                        width: 34,
                        height: 38,
                        imagePath: 'assets/images/sample3.jpg'),
                   const Gap(8), 
                   const PictureWidget(
                        width: 34,
                        height: 38,
                        imagePath: 'assets/images/sample1.jpg'),
                  const  Gap(8), 
                   const PictureWidget(
                        width: 34,
                        height: 38,
                        imagePath: 'assets/images/sample2.jpg'),
                   const Gap(8),
                    Container(
                      width: 34,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Color.fromARGB(255, 230, 230, 236),
                            width: 2),
                      ),
                      child: Center(
                        child: Text(
                          '+59',
                          style: TextStyle(
                            color: AppTheme.BLUE.withOpacity(0.40),
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
       
             const Gap(8),
            const  Row(
                children: [
                  Text(
                    'Join Forum',
                    style: TextStyle(
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Gap(4), 
                  Icon(
                    Icons.play_arrow,
                    color: Colors.indigoAccent,
                    size: 16,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class PictureWidget extends StatelessWidget {
  final double width;
  final double height;
  final String imagePath;

  const PictureWidget({
    Key? key,
    required this.width,
    required this.height,
   
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
        BoxShadow(
        color: Colors.grey.withOpacity(0.32), // Shadow color
        spreadRadius: 2, // Spread radius
        blurRadius: 10, // Blur radius
        offset: Offset(0, 6)// Offset
      ),]
      ),
      child: UnconstrainedBox(
        child: SizedBox(
          width: width,
          height: height,
          child: Stack(
            children: [
              // Profile Image
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
