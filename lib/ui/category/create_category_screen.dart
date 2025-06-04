import 'package:flutter/material.dart';

class CreateCategoryScreen extends StatefulWidget {
  const CreateCategoryScreen({super.key});

  @override
  State<CreateCategoryScreen> createState() => _CreateCategoryScreenState();
}

class _CreateCategoryScreenState extends State<CreateCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Categoria'),
        elevation: 2,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Center(
          child: Text('Tela de criação de categoria'),
        ),
      ),
    );
  }
}
