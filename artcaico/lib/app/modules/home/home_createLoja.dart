import 'package:artcaico/app/modules/home/models/loja.dart';
import 'package:flutter/material.dart';

class CreateLoja extends StatefulWidget {
  @override
  _CreateLojaState createState() => _CreateLojaState();
}

class _CreateLojaState extends State<CreateLoja> {
  //  final _formData = Map<String, Object>();
  final _form = GlobalKey<FormState>();
  Loja loja;

  bool isValidImageUrl(String url) {
    bool startWithHttp = url.toLowerCase().startsWith('http://');
    bool startWithHttps = url.toLowerCase().startsWith('https://');
    bool endsWithPng = url.toLowerCase().endsWith('.png');
    bool endsWithJpg = url.toLowerCase().endsWith('.jpg');
    bool endsWithJpe = url.toLowerCase().endsWith('.png');
    return (startWithHttp || startWithHttps) &&
        (endsWithPng || endsWithJpg || endsWithJpe);
  }

  Future<void> _saveForm() async {
    bool isValid = _form.currentState.validate();
    if (!isValid) {
      return;
    }
    loja.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha Loja"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _form,
          child: ListView(
            children: [
              TextFormField(
                initialValue: loja.title,
                onChanged: (value) => loja.title = value,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Title",
                ),
                validator: (value) {
                  bool isEmpty = value.trim().isEmpty;
                  bool isInvalid = value.trim().length <= 3;
                  if (isEmpty || isInvalid) {
                    return 'Informe um título valido com mínimo 3 caracteres!';
                  }
                  return null;
                },
              ),
              TextFormField(
                initialValue: loja.description,
                onChanged: (value) => loja.description = value,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "description",
                ),
                validator: (value) {
                  bool isEmpty = value.trim().isEmpty;
                  bool isInvalid = value.trim().length <= 8;
                  if (isEmpty || isInvalid) {
                    return 'Informe uma descrição valido com mínimo 8 caracteres!';
                  }
                  return null;
                },
              ),
              TextFormField(
                initialValue: loja.description,
                onChanged: (value) => loja.description = value,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "description",
                ),
                validator: (value) {
                  bool isEmpty = value.trim().isEmpty;
                  bool isInvalid = value.trim().length <= 8;
                  if (isEmpty || isInvalid) {
                    return 'Informe uma descrição valido com mínimo 8 caracteres!';
                  }
                  return null;
                },
              ),
              TextFormField(
                initialValue: loja.imageUrl,
                onChanged: (value) => loja.imageUrl = value,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "URL da Imagem",
                ),
                validator: (value) {
                  bool isEmpty = value.trim().isEmpty;
                  if (isEmpty || isValidImageUrl(value)) {
                    return 'Informe uma Url valida da imagem!';
                  }
                  return null;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RaisedButton(
                    child: Text('Concluir'),
                    onPressed: () {
                      _saveForm();
                    },
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Cancelar'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
