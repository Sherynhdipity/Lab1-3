
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

class PersonalData extends StatelessWidget {
  const PersonalData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: AppTheme.BLUE,
            )),
        centerTitle: true,
        title: const Text(
          'Personal Data',
          style: TextStyle(fontWeight: FontWeight.w700, color: AppTheme.BLUE),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(),
                        Gap(28),

            Center(child: Profile()),
                      Gap(32),


          DetailsWidget(show_icon: false, label: 'Your Name', value: 'William John Malik'),
          Gap(28),
          DetailsWidget(show_icon: false, label: 'Date of Birth', value: '29 December 1999'),
          Gap(28),
          DetailsWidget(show_icon: false, label: 'Your Job', value: 'Seccessor Designer'),
          Gap(28),
          DetailsWidget(show_icon: false, label: 'Monthly Income', value: '\$500-\$3000 / year'),
          Gap(28),
         Text('Gender', style: TextStyle(color: AppTheme.BLUE.withOpacity(0.70)),),
          Gap(8),
         GenderSelection()

            
          ],
        ),
      ),
    );
  }
}



class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: UnconstrainedBox(
        child: SizedBox(
          width: 100, // Adjust according to your needs
          height: 100, // Adjust according to your needs
          child: Stack(
            children: [
              // Profile Image
              Positioned.fill(
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(12), // Adjust the border radius
                  child: Image.asset(
                    'assets/images/profile.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Camera Icon
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppTheme.SECONDARY,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 2, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: Offset(0, 3), // Offset
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.camera_alt,
                      color: AppTheme.SECONDARY2,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsWidget extends StatelessWidget {

  final bool show_icon;
  final String label;
  final String value;
  const DetailsWidget({
    Key? key,
    required this.show_icon,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${label}', style: TextStyle(color: AppTheme.BLUE.withOpacity(0.70)),),
          Gap(8),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            decoration: BoxDecoration(
              border: Border.all(color: AppTheme.GRAY, width: 2),
              color: AppTheme.SECONDARY3,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Text('${value}',style:TextStyle(color: AppTheme.BLUE, fontWeight: FontWeight.bold),)),
        ],
      ),
    );
  }
}



enum Gender { male, female }

class GenderSelection extends StatefulWidget {
  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  Gender _selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Expanded(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppTheme.GRAY, width: 2),
              color: AppTheme.SECONDARY3,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Radio(
                  value: Gender.male,
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value as Gender;
                    });
                  },
                ),
                Text('Male'),
              ],
            ),
          ),
        ],
      ),
    ),
    Gap(8),
    Expanded(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppTheme.GRAY, width: 2),
              color: AppTheme.SECONDARY3,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Radio(
                  value: Gender.female,
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value as Gender;
                    });
                  },
                ),
                Text('Female'),
              ],
            ),
          ),
        ],
      ),
    ),
  ],
);

  }
}
