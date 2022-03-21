import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  const TextForm({Key? key}) : super(key: key);

  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _textFormOne = TextEditingController();
  final TextEditingController _textFormTow = TextEditingController();
  final FocusNode _nodeOne = FocusNode();
  final FocusNode _nodeTwo = FocusNode();
  String? value;
  @override
  void dispose() {
    super.dispose();
    _textFormOne.dispose();
    _textFormTow.dispose();
    _nodeOne.dispose();
    _nodeTwo.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Form Field'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _textFormOne,
                focusNode: _nodeOne,
                keyboardType: TextInputType.emailAddress,
                keyboardAppearance: Brightness.dark,
                textInputAction: TextInputAction.search,
                //The TextField provides a few options on how to capitalise letters in the input from the user.
                textCapitalization: TextCapitalization.sentences, //this is a default can use "words" and "characters"
                textAlign: TextAlign.center,
                //Styling the text inside the TextField
                style: const TextStyle(color: Colors.red, fontWeight: FontWeight.w300),
                //Changing the cursor in the TextField
                cursorColor: Colors.red,
                cursorRadius: const Radius.circular(16.0),
                cursorWidth: 16.0,
                autocorrect: false,
                //maxLength: 4,//Controlling the Size and Maximum Length in a TextField
                //maxLines: 3, //Making an expandable TextField
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  icon: Icon(Icons.adaptive.arrow_back_sharp),
                  prefix: const Text('prefix'),//this put icon out of border
                  prefixIcon:const Text('prefix2'),
                  iconColor: Colors.greenAccent,
                  suffix: Icon(Icons.adaptive.arrow_back_sharp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                //this the same of controller can use one of them
                onChanged: (val) => value = val,
                //this the same of controller and onChanged can use one of them
                //but keep in  your mind save data by using form
                /*
                *
                *if(_formKey.currentState!.validate())
                * {
                * _formKey.currentState!.save();
                * }
                * if don't do that the value of "value" stay null
                 */
                onSaved: (val) => value = val,
                onFieldSubmitted: (val){
                  setState(() {
                    FocusScope.of(context).requestFocus(_nodeTwo);
                  });
                },
              ),
              TextFormField(
                focusNode: _nodeTwo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
