import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  ScrollController _scrollController = ScrollController();


  bool showBtmAppBr = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              const SizedBox(
                height: 36.0,
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: ListTile(
                  onTap: () {},
                  selected: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  selectedTileColor: Colors.pink.shade100,
                  title: Text(
                    "Welcome Back",
                    style: Theme.of(context).textTheme.subtitle1!.merge(
                      const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    "A Greet welcome to you all.",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),

                ),
              ),

              const SizedBox(
                height: 12.0,
              ),

              const Padding(
                padding: EdgeInsets.all(24.0),
                child: GridB(),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: AnimatedContainer(
        child: BottomAppBar(
          notchMargin: 8.0,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home_outlined,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.heart,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.cart,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.bell,
                ),
              ),
            ],
          ),
        ),
        duration: const Duration(
          milliseconds: 800,
        ),
        curve: Curves.easeInOutSine,
        height: showBtmAppBr ? 70 : 0,
      ),
    );
  }
}


class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "white sneaker with adidas logo",
      "price": "\$255",
      "images": "https://images.unsplash.com/flagged/photo-1556637640-2c80d3201be8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c25lYWtlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
    },
    {
      "title": "Blue Jeans",
      "price": "\$245",
      "images":
      "https://images.unsplash.com/photo-1618225747659-433d5a5c6af7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGplYW5zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
    },
    {
      "title": "Red shoes with black stripes",
      "price": "\$155",
      "images":
      "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    },
    {
      "title": "Gamma shoes with beta brand.",
      "price": "\$275",
      "images":
      "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Alpha t-shirt for alpha testers.",
      "price": "\$25",
      "images":
      "https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Beta jeans for beta testers",
      "price": "\$27",
      "images":
      "https://images.unsplash.com/photo-1602293589930-45aad59ba3ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "V&V  model white t shirts.",
      "price": "\$55",
      "images":
      "https://images.unsplash.com/photo-1554568218-0f1715e72254?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 310,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: Colors.pink.shade100,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.network(
                  "${gridMap.elementAt(index)['images']}",
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${gridMap.elementAt(index)['title']}",
                      style: Theme.of(context).textTheme.subtitle1!.merge(
                        const TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "${gridMap.elementAt(index)['price']}",
                      style: Theme.of(context).textTheme.subtitle2!.merge(
                        TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.heart,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.cart,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
