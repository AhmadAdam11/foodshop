import 'package:flutter/material.dart';
import 'package:food_shop/widgets/AppBarWidgets2.dart';
import 'package:image_picker/image_picker.dart';

class Tambahdatawidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductFrom(),
    );
  }
}

class ProductFrom extends StatefulWidget {
  @override
  _ProductFromState createState() => _ProductFromState();
}

class _ProductFromState extends State<ProductFrom> {
  String _katagori = 'Makanan';
  XFile? _imageFile;

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? selectedImage = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = selectedImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Appbarwidgets2(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Nama Produk',
                          hintText: 'Masukan Nama Produk',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(height: 25),

                      
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Harga',
                          hintText: 'Masukan Harga',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(height: 25),

                      
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Kategori produk',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        value: 'Makanan',
                        items: [
                          DropdownMenuItem(
                            value: 'Makanan',
                            child: Text('Makanan'),
                          ),
                          DropdownMenuItem(
                            value: 'Minuman',
                            child: Text('Minuman'),
                          ),
                        ],
                        onChanged: (value) {
                          
                        },
                      ),
                      SizedBox(height: 25),

                      
                      GestureDetector(
                        onTap: _pickImage,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(_imageFile == null ? 'Choose file' : 'Image Selected'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40),

                        
                      ElevatedButton(
                        onPressed: () {
                             
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                            horizontal: 130,
                            vertical: 20,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
