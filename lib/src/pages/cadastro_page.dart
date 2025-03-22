import 'package:flutter/material.dart';

class CadastroScreen extends StatefulWidget {
  @override
  _CadastroScreenState createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _confirmarSenhaController = TextEditingController();

  bool _senhaVisivel = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundologin.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView( 
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/et.png',
                height: 150,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 24),

              
              TextFormField(
                controller: _nomeController,
                decoration: InputDecoration(
                  labelText: "Nome",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.8),
                ),
              ),
              SizedBox(height: 16),

              
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "E-mail",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.8),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),

             
              TextFormField(
                decoration: InputDecoration(
                  labelText: "CPF",
                  prefixIcon: Icon(Icons.credit_card),
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.8),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),

            
              TextFormField(
                controller: _senhaController,
                decoration: InputDecoration(
                  labelText: "Senha",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _senhaVisivel ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _senhaVisivel = !_senhaVisivel;
                      });
                    },
                  ),
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.8),
                ),
                obscureText: !_senhaVisivel,
              ),
              SizedBox(height: 16),

             
              TextFormField(
                controller: _confirmarSenhaController,
                decoration: InputDecoration(
                  labelText: "Confirmar Senha",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _senhaVisivel ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _senhaVisivel = !_senhaVisivel;
                      });
                    },
                  ),
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.8),
                ),
                obscureText: !_senhaVisivel,
              ),
              SizedBox(height: 24),

             
              ElevatedButton(
                onPressed: () {
                  
                  if (_nomeController.text.isEmpty ||
                      _emailController.text.isEmpty ||
                      _senhaController.text.isEmpty ||
                      _confirmarSenhaController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Preencha todos os campos!")),
                    );
                  } else if (_senhaController.text !=
                      _confirmarSenhaController.text) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("As senhas não coincidem!")),
                    );
                  } else {
                   
                    Navigator.pushReplacementNamed(context, '/home');
                  }
                },
                child: Text("Cadastrar"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.blue.withOpacity(0.9),
                ),
              ),
              SizedBox(height: 16),

             
              TextButton(
                onPressed: () {
                  
                  Navigator.pop(context);
                },
                child: Text("Cancelar"),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.white.withOpacity(0.9),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}