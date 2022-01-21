import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final List<String> _listItem=[
    "https://www.eshopist.ro/sub/eshopist.sk/shop/product/loungesessel-tarje-mit-samtbezug-in-hellgrau-2342.jpg",
    "https://i.pinimg.com/736x/26/be/2e/26be2e95fcdbb31f8859a6ad315df3b3.jpg",   "https://www.vintage-addict.com/wp-content/uploads/2022/01/Chaise-Bicolore-Style-TapiovaaraIMG_0850.jpeg",
    "https://i0.wp.com/tdc.antoniosanchez.com.mx/wp-content/uploads/2015/05/0075.jpg?resize=314%2C314",
    "https://th.bing.com/th/id/R.03ce9ec63e6d1a44a381e88f676feec8?rik=eaF%2bSYqVuiq0Yg&pid=ImgRaw&r=0",
    "https://cdn.shopify.com/s/files/1/0260/6335/products/CHAISE-WISHBONE_NOIR_1024x1024.jpg?v=1593450764",
    "https://m.media-amazon.com/images/I/71bD5zQHsHL._AC_SL1500_.jpg",
    "https://i.pinimg.com/originals/19/3f/2b/193f2b2aa4e7db58e43b95f361351d3b.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text("Home"),
        actions:<Widget> [
          Padding(padding: EdgeInsets.all(10.0),
          child: Container(
            width: 36,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: Text("0"),),
          ),
          )
        ],

      ),

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image:DecorationImage(
                    image:NetworkImage("https://www.vigfurniture.com/media/catalog/product/cache/1/thumbnail/1200x/17f82f742ffe127f42dca9de82fb58b1/3/4/3404-74691-wilson_1__1.jpg"),
                    fit: BoxFit.cover
                  )

                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),

                      gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ]
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Lifestyle Sale",style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Center(
                            child: Text("Shop Now",style: TextStyle(color: Colors.grey[900],fontWeight: FontWeight.bold),)),


                      ),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(20),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: _listItem.map((item) => Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(item),
                              fit: BoxFit.cover
                          )
                      ),

                      child: Transform.translate(
                        offset: Offset(50,-40),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 65,vertical: 62),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Icon(Icons.bookmark_border),
                        ),
                      ),
                    ),
                  )
                  ).toList(),
                ),
              ),

            ],
          ),

        ),
      ),
    );
  }
}
