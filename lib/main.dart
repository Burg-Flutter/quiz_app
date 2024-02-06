import 'package:flutter/material.dart';
import 'Heritage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quiz App',
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.arrow_forward),
      // ),
      appBar: AppBar(
        toolbarHeight: 200,
        toolbarOpacity: 0.1,
        title: const Text(
          'GK Quiz',
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Pacifico',
            color: Color.fromARGB(255, 1, 122, 235),
          ),
        ),
        backgroundColor: const Color.fromARGB(55, 172, 160, 168),
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: SizedBox(
                        height: 180,
                        width: 180,
                        child: Image.asset('assets/images/Sports_logo.png'),
                      ),
                    ),
                    SizedBox(
                      child: SizedBox(
                        height: 180,
                        width: 180,
                        child: Image.asset('assets/images/Politics.png'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 40),
                    ElevatedButton(
                      onPressed: () {
                        
                      },
                      child: const Text('SPORTS'),
                    ),
                    const SizedBox(width: 50),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('POLITICS'),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => const Heritage(),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 180,
                        width: 180,
                        child: Image.asset('assets/images/National.png'),
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 40),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('NATIONAL'),
                    ),
                    const SizedBox(width: 50),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('INTERNATIONAL'),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 40),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('SPORTS'),
                    ),
                    const SizedBox(width: 50),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('POLITICS'),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const Heritage()));
                      },
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                        ),
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrFeY1xJyzQ9Z6xSXrulDgB4ZZUfV4sR9eoQ&usqp=CAU'),
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 40),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('SPORTS'),
                    ),
                    const SizedBox(width: 50),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('POLITICS'),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
