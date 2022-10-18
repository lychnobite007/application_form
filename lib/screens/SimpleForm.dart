import 'package:application_form/FormModel.dart';
import 'package:flutter/material.dart';


class SimpleForm extends StatefulWidget {
  @override
  State<SimpleForm> createState() => _SimpleFormState();
}

class _SimpleFormState extends State<SimpleForm> {
  bool value = false;
  bool value2 = false;
  String gender = "";
  FormModel model = FormModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: () {}, child: Text("Sign Up", style: TextStyle(color: Colors.white),)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.highlight_remove_rounded))
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Let's create your ",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Account",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "First Name*",
                style: TextStyle(fontSize: 16),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                    hintText: 'First Name',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Last Name*",
                style: TextStyle(fontSize: 16),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                    hintText: 'First Name',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Mobile No*",
                style: TextStyle(fontSize: 16),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      color: Colors.black26,
                      height: 50,
                      width: 50,
                      child: Center(child: Text("+91")),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                    hintText: 'Mobile Number',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Enter Email*",
                style: TextStyle(fontSize: 16),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                    hintText: 'Your Email',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Genre*",
                style: TextStyle(fontSize: 16),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_downward_rounded),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Performance Type*",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Expanded(
                  child: Row(
                    children: [
                      Checkbox(
                        value: value,
                        onChanged: (bool value) {
                          setState(() {
                            this.value = value;
                          });
                        },
                      ),
                      Text(
                        "In Person",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Checkbox(
                          value: value2,
                          onChanged: (bool value2) {
                            setState(() {
                              this.value2 = value2;
                            });
                          }),
                      Text("Virtual"),
                    ],
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Submit"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }

}
