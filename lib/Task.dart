import 'package:flutter/material.dart';



class FeaturePage extends StatefulWidget {
  @override
  _FeaturePageState createState() => _FeaturePageState();
}

class _FeaturePageState extends State<FeaturePage> {
  // Color Picker
  Color selectedColor = Colors.grey;

  // Image Viewer
  String selectedImage = " Assets/cats.jpg";

  // FAQ Toggle
  List<bool> isExpanded = [false, false, false];

  // Form
  final _formKey = GlobalKey<FormState>();
  String name = '', email = '', password = '';
  bool submitted = false;

  // Like Button
  bool isLiked = false;
  int likeCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Features Demo")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// 1. COLOR PICKER
            Text("1. Color Picker", style: _sectionStyle()),
            Container(height: 100, color: selectedColor, margin: EdgeInsets.symmetric(vertical: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () => _setColor(Colors.red), child: Text("Red")),
                ElevatedButton(onPressed: () => _setColor(Colors.green), child: Text("Green")),
                ElevatedButton(onPressed: () => _setColor(Colors.blue), child: Text("Blue")),
              ],
            ),

            Divider(),

            /// 2. IMAGE GALLERY VIEWER
            Text("2. Image Gallery Viewer", style: _sectionStyle()),
            Center(child: Image.network(selectedImage, height: 200)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _thumb('Assets/cats.jpg'),
                _thumb('Assets/cats.jpg'),
                _thumb('Assets/cats.jpg'),
                _thumb('Assets/cats.jpg'),
              ],
            ),

            Divider(),

            /// 3. FAQ SECTION
            Text("3. FAQ Section", style: _sectionStyle()),
            _faq(0, "What is Flutter?", "Flutter is a UI toolkit by Google."),
            _faq(1, "What is Dart?", "Dart is the language used in Flutter."),
            _faq(2, "Why use Flutter?", "For fast cross-platform development."),

            Divider(),

            /// 4. FORM WITH VALIDATION
            Text("4. Form with Validation", style: _sectionStyle()),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Name'),
                    validator: (value) => value!.isEmpty ? 'Name is required' : null,
                    onSaved: (val) => name = val!,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Email'),
                    validator: (value) => RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value!)
                        ? null : 'Invalid email',
                    onSaved: (val) => email = val!,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    validator: (value) => value!.length < 6
                        ? 'Password must be at least 6 characters' : null,
                    onSaved: (val) => password = val!,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: Text('Submit'),
                  ),
                  if (submitted)
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("Submitted:\nName: $name\nEmail: $email\nPassword: $password"),
                    )
                ],
              ),
            ),

            Divider(),

            /// 5. LIKE BUTTON
            Text("5. Like Button", style: _sectionStyle()),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked ? Colors.red : Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;
                      likeCount += isLiked ? 1 : -1;
                    });
                  },
                ),
                Text("Likes: $likeCount")
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Set selected color
  void _setColor(Color color) {
    setState(() {
      selectedColor = color;
    });
  }

  // Thumbnail image
  Widget _thumb(String url) {
    return GestureDetector(
      onTap: () => setState(() => selectedImage = url),
      child: Image.network(url, height: 60),
    );
  }

  // FAQ Card
  Widget _faq(int index, String title, String answer) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: Icon(isExpanded[index] ? Icons.expand_less : Icons.expand_more),
        onTap: () {
          setState(() => isExpanded[index] = !isExpanded[index]);
        },
        subtitle: isExpanded[index] ? Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(answer),
        ) : null,
      ),
    );
  }

  // Form submission
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        submitted = true;
      });
    }
  }

  // Section Title Style
  TextStyle _sectionStyle() => TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
}



