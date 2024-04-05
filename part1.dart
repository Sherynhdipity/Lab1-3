import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
              padding: const EdgeInsets.all(8.0),
      child:Column(
        children: [    
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
            child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://th.bing.com/th/id/OIP.S-4wgTaPO-fv21T1eP8wDgHaHa?rs=1&pid=ImgDetMain'),        
                ),
                color: Colors.red,
              ),
              height: 72,
              width: 72,
            ),
            ),
            const SizedBox(width: 16,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text (
              'William John Malik',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
            ),
            Text(
              'Aggressive Investor',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
              ],
            )         
          ],
        ),
        Container(
          color: Colors.black12,
          height: 1,
          margin: const EdgeInsets.fromLTRB(0, 24, 0, 24),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
            child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(44, 104, 58, 183)
              ),
              height: 44,
              width: 44,
              child: const Icon(Icons.person),
            ),
            ),
            const SizedBox(width: 14,),
            const Expanded(child: Text('Personal Data')),
            const Icon(Icons.arrow_forward_ios,size: 16,)
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
            child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(44, 104, 58, 183)
              ),
              height: 44,
              width: 44,
              child: const Icon(Icons.settings),
            ),
            ),
            const SizedBox(width: 14,),
            const Expanded(child: Text('Settings')),
            const Icon(Icons.arrow_forward_ios,size: 16,)

          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
            child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(44, 104, 58, 183)
              ),
              height: 44,
              width: 44,
              child: const Icon(Icons.description),
            ),
            ),
            const SizedBox(width: 14,),
            const Expanded(child: Text('E-Statement')),
            const Icon(Icons.arrow_forward_ios,size: 16,)
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
            child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(44, 104, 58, 183)
              ),
              height: 44,
              width: 44,
              child: const Icon(Icons.favorite),
            ),
            ),
            const SizedBox(width: 14,),
            const Expanded(child: Text('Referral Code')),
            const Icon(Icons.arrow_forward_ios,size: 16,)
          ],
        ),

        Container(
          color: Colors.black12,
          height: 1,
          margin: const EdgeInsets.fromLTRB(0, 24, 0, 24),
        ),


         Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
            child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(44, 104, 58, 183)
              ),
              height: 44,
              width: 44,
              child: const Icon(Icons.pending),
            ),
            ),
            const SizedBox(width: 14,),
            const Expanded(child: Text('FAQs')),
            const Icon(Icons.arrow_forward_ios,size: 16,)
          ],
        ),

         Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
            child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(44, 104, 58, 183)
              ),
              height: 44,
              width: 44,
              child: const Icon(Icons.border_color),
            ),
            ),
            const SizedBox(width: 14,),
            const Expanded(child: Text('Our Handbook')),
            const Icon(Icons.arrow_forward_ios,size: 16,)
          ],
        ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
            child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(44, 104, 58, 183)
              ),
              height: 44,
              width: 44,
              child: const Icon(Icons.groups),
            ),
            ),
            const SizedBox(width: 14,),
            const Expanded(child: Text('Community')),
            const Icon(Icons.arrow_forward_ios,size: 16,)
          ],
        ),
        
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
            child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromARGB(44, 66, 118, 231)
              ),
              height: 90,
              width: 460,
              child: const Icon(Icons.headset_mic,color: Colors.blue),
            ),
            ),
          ],
        ),
        


        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
            child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              height: 44,
              width: 44,
              child: const Icon(Icons.groups),
            ),
            ),
          ],
        ),
      ],
      ),
    ),
    );
  }
}
