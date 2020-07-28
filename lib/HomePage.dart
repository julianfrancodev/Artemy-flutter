import 'package:artemy_app/ProductPage.dart';
import 'package:artemy_app/models/Product.dart';
import 'package:artemy_app/widgets/CategoryItem.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List bannerAdsSlider = [
    "assets/banner1.jpg",
    "assets/banner2.jpg",
    "assets/banner3.jpg",
    "assets/banner4.jpg",
    "assets/banner5.jpg",
    "assets/banner7.jpg",
    "assets/banner8.jpg",
  ];

  List<Product> products = [
    Product(
        image: "assets/product1.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
            "Donec sed ex nulla. Aliquam accumsan ut urna quis hendrerit. In hac habitasse platea dictumst.",
        price: "100",
        productName: "Product 1"),
    Product(
        image: "assets/product2.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
            "Donec sed ex nulla. Aliquam accumsan ut urna quis hendrerit. In hac habitasse platea dictumst.",
        price: "100",
        productName: "Product 2"),
    Product(
        image: "assets/product3.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
            "Donec sed ex nulla. Aliquam accumsan ut urna quis hendrerit. In hac habitasse platea dictumst.",
        price: "100",
        productName: "Product 3"),
    Product(
        image: "assets/product4.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
            "Donec sed ex nulla. Aliquam accumsan ut urna quis hendrerit. In hac habitasse platea dictumst.",
        price: "100",
        productName: "Product 4"),
    Product(
        image: "assets/product5.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
            "Donec sed ex nulla. Aliquam accumsan ut urna quis hendrerit. In hac habitasse platea dictumst.",
        price: "100",
        productName: "Product 5"),
    Product(
        image: "assets/product6.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
            "Donec sed ex nulla. Aliquam accumsan ut urna quis hendrerit. In hac habitasse platea dictumst.",
        price: "100",
        productName: "Product 6"),
    Product(
        image: "assets/product7.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
            "Donec sed ex nulla. Aliquam accumsan ut urna quis hendrerit. In hac habitasse platea dictumst.",
        price: "100",
        productName: "Product 7"),
    Product(
        image: "assets/product8.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
            "Donec sed ex nulla. Aliquam accumsan ut urna quis hendrerit. In hac habitasse platea dictumst.",
        price: "100",
        productName: "Product 8"),
    Product(
        image: "assets/product9.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
            "Donec sed ex nulla. Aliquam accumsan ut urna quis hendrerit. In hac habitasse platea dictumst.",
        price: "100",
        productName: "Product 9"),
    Product(
        image: "assets/product10.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
            "Donec sed ex nulla. Aliquam accumsan ut urna quis hendrerit. In hac habitasse platea dictumst.",
        price: "100",
        productName: "Product 10"),
    Product(
        image: "assets/product11.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
            "Donec sed ex nulla. Aliquam accumsan ut urna quis hendrerit. In hac habitasse platea dictumst.",
        price: "100",
        productName: "Product 11"),
    Product(
        image: "assets/product12.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
            "Donec sed ex nulla. Aliquam accumsan ut urna quis hendrerit. In hac habitasse platea dictumst.",
        price: "100",
        productName: "Product 12"),
  ];

  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      key: drawerKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Artemy", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
          icon: Icon(EvaIcons.menu2Outline),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(EvaIcons.shoppingBagOutline),
          ),
        ],
      ),
      drawerEdgeDragWidth: 0,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(16)),
              accountEmail: Text(
                "person@email.com",
                style: TextStyle(color: Colors.black),
              ),
              accountName: Text(
                "Julian",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image(
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://cdn.shopify.com/s/files/1/0045/5104/9304/t/27/assets/AC_ECOM_SITE_2020_REFRESH_1_INDEX_M2_THUMBS-V2-1.jpg?v=8913815134086573859")),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Inicio"),
              leading: Icon(EvaIcons.homeOutline),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Account"),
              leading: Icon(EvaIcons.personOutline),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Arte Wayu"),
              leading: Icon(EvaIcons.heart),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Arte Precolombino"),
              leading: Icon(EvaIcons.brushOutline),
              onTap: () {},
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                    aspectRatio: 16 / 5,
                    child: Image.asset(
                      "assets/banner8.jpg",
                      fit: BoxFit.cover,
                    )),
              ),
            )
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Categorias",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    CategoryItem(
                      icon: EvaIcons.giftOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFFC1E7E3),
                    ),
                    CategoryItem(
                      icon: EvaIcons.brushOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFFFFDFD3),
                    ),
                    CategoryItem(
                      icon: EvaIcons.colorPaletteOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFFFEC8D8),
                    ),
                    CategoryItem(
                      icon: EvaIcons.colorPickerOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFFD291BC),
                    ),
                    CategoryItem(
                      icon: EvaIcons.bulbOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFF957DAD),
                    ),
                    CategoryItem(
                      icon: EvaIcons.compassOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFFE0BBE4),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                ),
                items: bannerAdsSlider.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image(
                              image: AssetImage(i),
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                          ));
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Productos",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.count(
                physics: ClampingScrollPhysics(),
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 1 / 1.25,
                children: products.map((product) {
                  return Stack(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Hero(
                              tag: product.image,
                              child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Image(
                                  image: AssetImage(product.image),
                                ),
                              ),
                            ),
                            Text(product.productName),
                            Text(
                              "${product.price}\$",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.amber),
                            )
                          ],
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ProductPage(product: product)));
                          },
                        ),
                      )
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
