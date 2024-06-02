import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductList(),
      child: Scaffold(
        body: Consumer<ProductList>(
          builder: (context, productList, _) {
            return IndexedStack(
              index: productList.selectedIndex,
              children: [
                HomeScreen(),
                ProfileScreen(),
              ],
            );
          },
        ),
        bottomNavigationBar: NavigationBar(),
      ),
    );
  }
}

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductList>(
      builder: (context, productList, _) => BottomNavigationBar(
        backgroundColor: Colors.green,
        currentIndex: productList.selectedIndex,
        onTap: (index) {
          productList.selectedIndex = index;
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ), // sobirjon
          BottomNavigationBarItem(
            icon: Icon(Icons.admin_panel_settings_outlined),
            label: 'Admin',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Online Store',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Consumer<ProductList>(
        builder: (context, productList, _) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(11),
                decoration: BoxDecoration(color: Colors.green),
                child: Row(
                  children: [
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: DropdownButton<String>(
                          value: productList.selectedOption,
                          onChanged: (String? newValue) {
                            productList.selectedOption = newValue!;
                          },
                          underline: SizedBox(),
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey.shade700,
                          ),
                          iconSize: 24,
                          elevation: 8,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          dropdownColor: Colors.white,
                          items: productList.options
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.grey.shade300,
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: TextField(
                            onChanged: (value) {
                              productList.searchQuery = value;
                            },
                            decoration: InputDecoration(
                              labelText: 'Search',
                              labelStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black45,
                              ),
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: productList.options1.length,
                  itemBuilder: (context, index) {
                    String category = productList.options1[index];
                    List<Product> categoryProducts =
                        productList.filteredProducts // s
                            .where((product) => product.category == category)
                            .toList();

                    if (categoryProducts.isEmpty) {
                      return SizedBox.shrink();
                    }

                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              category,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 210,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: categoryProducts.length,
                              itemBuilder: (context, index) {
                                Product product = categoryProducts[index];
                                return Container(
                                  width: 150,
                                  margin: EdgeInsets.all(8.0),
                                  padding: EdgeInsets.only(top: 17),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          product.imageURL,
                                          width: 130,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Container(
                                        // o
                                        margin: EdgeInsets.only(left: 11),
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          product.name,
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.green,
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Container(
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(left: 11),
                                        child: Text(
                                          '${product.price}\$',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Product {
  final String name;
  final String category;
  final String price;
  final String imageURL;

  Product({
    required this.name,
    required this.category,
    required this.price,
    required this.imageURL,
  });
}

class ProductList with ChangeNotifier {
  int _selectedIndex = 0;
  String _selectedOption = 'All';
  String _searchQuery = '';
  List<String> _options = ['All', 'Fruits', 'Clothes', 'Jewelry', 'Food'];
  List<Product> _products = [
    Product(
        name: 'Avocado',
        category: 'Fruits',
        price: '324',
        imageURL: // b
            'https://lh3.googleusercontent.com/proxy/bGAydTpQaCu_vI_mJ5RDSRrW8NdsPmTdkyS1-PvhllYDVF-cLLolhflLL7PuLjL57E1cySrGoMc05oJJpgUYG8Zb1rJftxt9-L6AqN4rifbK'),
    Product(
        name: 'Cherry',
        category: 'Fruits',
        price: '324',
        imageURL:
            'https://images.unsplash.com/photo-1528821128474-27f963b062bf?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTJ8fHxlbnwwfHx8fHw%3D'),
    Product(
        name: 'Kiwi',
        category: 'Fruits',
        price: '324',
        imageURL:
            'https://t4.ftcdn.net/jpg/04/18/93/79/360_F_418937997_T0o925YScI5CAHsXZtzW6oZ8GvbjPmUj.jpg'),
    Product(
        name: 'Shirt',
        category: 'Clothes',
        price: '1231',
        imageURL:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1sOovlHDUTyZTyJIYTkgcK0qCFNk69Vq4h2GlOA_r6A&s'),
    Product(
        name: 'Jacket',
        category: 'Clothes',
        price: '1231',
        imageURL: // i
            'https://atlas-content-cdn.pixelsquid.com/stock-images/men-s-jacket-white-sports-coat-o0LV9v2-600.jpg'),
    Product(
        name: 'Suit',
        category: 'Clothes',
        price: '1231',
        imageURL:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB4A0ET0gfwFBVfuEEFT40_xKrYTS-WjO88PTGRBjewQ&s'),
    Product(
        name: 'Gold',
        category: 'Jewelry',
        price: '1231',
        imageURL:
            'https://media.istockphoto.com/id/1366423409/photo/gold-chain.jpg?s=612x612&w=0&k=20&c=HOlkTfqOhdFN19VyMrfc_8aj2DxChI2NK0QXMJbvbcI='),
    Product(
        name: 'Silver',
        category: 'Jewelry',
        price: '1231',
        imageURL:
            'https://st2.depositphotos.com/4925407/9334/i/450/depositphotos_93340932-stock-illustration-chain-for-men-stainless-steel.jpg'),
    Product(
        name: 'Bronze',
        category: 'Jewelry',
        price: '1231',
        imageURL:
            'https://kristenmara.com/cdn/shop/products/CB-FLT-M_Cuff_Bronze_Flat_Medium_WEB_46571919-8175-48a4-98e3-3814bf062e6e.jpg?v=1632935983'),
    Product(
        name: 'Manti',
        category: 'Food',
        price: '1231',
        imageURL:
            'https://thumbs.dreamstime.com/b/traditional-turkish-manti-sour-cream-sauce-plate-cilantro-lunch-84253858.jpg'),
    Product(
        name: 'Plov',
        category: 'Food',
        price: '1231',
        imageURL:
            'https://t4.ftcdn.net/jpg/01/67/57/97/360_F_167579786_gVcUxMyuzCkod7d5NxX3ceYI7a63e3MA.jpg'),
    Product(
        name: 'Shashlik',
        category: 'Food',
        price: '1231',
        imageURL:
            'https://www.shutterstock.com/image-photo/roasted-chicken-kebab-grilled-meat-600nw-1715417221.jpg'),
  ];

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  String get selectedOption => _selectedOption;

  set selectedOption(String option) {
    _selectedOption = option;
    notifyListeners();
  }

  String get searchQuery => _searchQuery;

  set searchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  List<String> get options => _options;

  List<Product> get products => _products;

  List<String> get options1 {
    if (_selectedOption == 'All') {
      return _options;
    } else {
      return _options.where((option) => option == _selectedOption).toList();
    }
  }

  List<Product> get filteredProducts {
    return _products.where((product) {
      if (_selectedOption != 'All' && product.category != _selectedOption) {
        return false;
      }
      if (_searchQuery.isNotEmpty &&
          !product.name.toLowerCase().contains(_searchQuery.toLowerCase())) {
        return false;
      }
      return true;
    }).toList();
  }

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoggedIn = false;
  // r
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 99,
        title: Text(
          'Login',
          style: TextStyle(fontSize: 33, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: _isLoggedIn
          ? Container(
              child: AdminPage(),
            )
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // j
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(labelText: 'Username'),
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      String username = _usernameController.text;
                      String password = _passwordController.text;

                      if (username == 'admin' && password == 'admin123') {
                        setState(() {
                          _isLoggedIn = true;
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Incorrect username or password'),
                          ),
                        );
                      }
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            ),
    );
  }
}

class AdminPage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _imageURLController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      // o
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(labelText: 'Product Name'),
          ),
          TextField(
            controller: _categoryController,
            decoration: InputDecoration(labelText: 'Product Category'),
          ),
          TextField(
            controller: _priceController,
            decoration: InputDecoration(labelText: 'Product Price'),
          ),
          TextField(
            // n
            controller: _imageURLController,
            decoration: InputDecoration(labelText: 'Image URL'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              final name = _nameController.text;
              final category = _categoryController.text;
              final price = _priceController.text;
              final imageURL = _imageURLController.text;

              if (name.isEmpty ||
                  category.isEmpty ||
                  price.isEmpty ||
                  imageURL.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Please fill all the fields'),
                  ),
                );
              } else {
                final newProduct = Product(
                  name: name,
                  category: category,
                  price: price,
                  imageURL: imageURL,
                );

                Provider.of<ProductList>(context, listen: false)
                    .addProduct(newProduct);

                _nameController.clear();
                _categoryController.clear();
                _priceController.clear();
                _imageURLController.clear();
              }
            },
            child: Text('Add Product'),
          ),
        ],
      ),
    );
  }
}




// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SearchScreen(),
//     );
//   }
// }

// class SearchScreen extends StatefulWidget {
//   @override
//   _SearchScreenState createState() => _SearchScreenState();
// }

// class _SearchScreenState extends State<SearchScreen> {
//   TextEditingController _searchController = TextEditingController();
//   List<String> _items = [
//     'Apple',
//     'Banana',
//     'Cherry',
//     'Date',
//     'Fig',
//     'Grape',
//     'Kiwi',
//     'Lemon',
//     'Mango',
//     'Orange',
//   ];
//   List<String> _filteredItems = [];

//   @override
//   void initState() {
//     super.initState();
//     _filteredItems.addAll(_items);
//   }

//   void _filterItems(String query) {
//     List<String> filteredList = [];
//     if (query.isNotEmpty) {
//       filteredList.addAll(_items
//           .where((item) => item.toLowerCase().contains(query.toLowerCase())));
//     } else {
//       filteredList.addAll(_items);
//     }
//     setState(() {
//       _filteredItems = filteredList;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Search Example'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: _searchController,
//               onChanged: _filterItems,
//               decoration: InputDecoration(
//                 labelText: 'Search',
//                 hintText: 'Search items',
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(25.0)),
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: _filteredItems.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(_filteredItems[index]),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
