import 'package:flutter/material.dart';
import 'package:flutter_fitness_tracker/models/categor_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<CategoryModel> categories = [];

  void _getCategories(){ 
    categories = CategoryModel.getCategories();
  }
  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchBar(),
          SizedBox(height: 30,),
          Categories()
        ],
      ),
    );
  }

  Column Categories() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Categoriën',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 150,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 10.00, right: 10.00),
                    child: Container(
                      width: 130,
                      decoration: BoxDecoration(
                        color: categories[index].boxColor.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              categories[index].iconPath,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            categories[index].name,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ],
                      ),
                    ),
                    
                  );
                },
              ),
            ),
          ],
        );
  }

  Container _searchBar() {
    return Container(
          margin: EdgeInsets.only(top: 40, left: 20, right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(000).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0,
              )
            ]
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),
              hintText: 'Zoek eten',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              suffixIcon: Container(
                width: 100,
                child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      VerticalDivider(
                        color: Colors.black,
                        indent: 10,
                        endIndent: 10,
                        thickness: 0.1,
                      ),
                      Icon(
                        Icons.filter_list_alt
                      ) 
                    ],
                  
                  ),
                ),
                ),
              ),
            ),
          ),
        );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'Voedingstracker',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {

        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          width: 30,
          height: 30,
            child: Icon(Icons.navigate_before),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 243, 237, 237),
              borderRadius: BorderRadius.circular(10)
            ),
        ),
      ),
      actions: [
        GestureDetector(
        onTap: (){
          
        },
        child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        width: 30,
        height: 30,
        child: Icon(Icons.more_horiz),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 243, 237, 237),
          borderRadius: BorderRadius.circular(10)
        ),
        ),
      )
      ],
    );
  }
}