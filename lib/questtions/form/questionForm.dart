// import 'dart:html';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:file_picker_web/file_picker_web.dart';
import 'package:flutter/material.dart';

class QuestionForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Question"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: QuestionFormWidget(),
      ),
    );
  }
}

class QuestionFormWidget extends StatefulWidget {
  @override
  _QuestionFormWidgetState createState() => _QuestionFormWidgetState();
}

class _QuestionFormWidgetState extends State<QuestionFormWidget> {
  final TextEditingController _titleController = TextEditingController();

  final TextEditingController _descController = TextEditingController();

  final TextEditingController _tagController = TextEditingController();

  List<File> _imageFiles = <File>[];
  List<File> _videoFiles = <File>[];

  void _pickFiles() async {
    _imageFiles = await FilePicker.getMultiFile() ?? [];
    print(_imageFiles[0].name);
    setState(() {});
  }

  void _pickVideo() async {
    _videoFiles = await FilePicker.getMultiFile() ?? [];
    print(_videoFiles[0].name);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        width: MediaQuery.of(context).size.width / 2,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.white,
          elevation: 10,
          shadowColor: Colors.yellow,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: QuestionTextForm(
                      title: "Enter Title",
                      controller: _titleController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: QuestionTextForm(
                      title: "Enter Desc",
                      controller: _descController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: QuestionTextForm(
                      title: "Enter Tag",
                      controller: _tagController,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          "select Image",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            _pickFiles();
                          },
                          child: Icon(Icons.camera),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "select Video",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: _pickVideo,
                          child: Icon(Icons.video_label),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: RaisedButton(
                        color: Colors.deepOrangeAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        onPressed: () {},
                        child: Text("Submit"),
                      ),
                    ),
                  ),
                  // QuestionTextForm(title: "Enter Title",),
                  // QuestionTextForm(title: "Enter Title",),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class QuestionTextForm extends StatelessWidget {
  final String title;
  final TextEditingController controller;

  const QuestionTextForm({Key key, @required this.title, this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: title,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
