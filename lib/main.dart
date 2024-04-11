import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // Inicializa o aplicativo Flutter com MaterialApp, que configura a estrutura básica do aplicativo.
    debugShowCheckedModeBanner: false,
    title: 'Professor online', // Título do aplicativo.
    theme: ThemeData(
        // Define o tema do aplicativo.
        primarySwatch: Colors.blue // Define a cor primária do tema como azul.
        ),
    home:
        PrimeiraRota(), // Define a tela inicial do aplicativo como PrimeiraRota().
  ));
}

class PrimeiraRota extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 60)),
          Image.network(
              'https://play-lh.googleusercontent.com/ZO3X-6kabQZ7QoGSqHUqT4vfqO5hLI1WtZ6ur8dEQ-Pejgpi10SGTr6-Imgjk9r6Jjjq=w240-h480-rw',
              width: 80),
          Text(
            'Professor Online',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'OpenSans',
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'O portal do professor da rede estadual',
            style: TextStyle(
                color: Colors.white, fontFamily: 'OpenSans', fontSize: 13),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 25)),
          TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(strokeAlign: 2, color: Colors.white)),
                  hintText: "CPF",
                  hintStyle: TextStyle(color: Colors.white),
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ))),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(strokeAlign: 2, color: Colors.white)),
                  hintText: "Senha",
                  hintStyle: TextStyle(color: Colors.white),
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ))),
          Padding(padding: EdgeInsets.symmetric(vertical: 2)),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 151, 136),
                minimumSize: Size(325, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text(
                'Entrar',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaRota()),
                );
              }),
          Padding(padding: EdgeInsets.symmetric(vertical: 15)),
          Row(
            children: [
              Text(
                "Primeiro acesso",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 85),
              Text(
                "Recuperar senha",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                ),
              ),
            ],
          )
        ]),
      ),
      backgroundColor: (Color.fromARGB(255, 45, 108, 99)),
    );
  }
}

class SegundaRota extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Professor Online',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 151, 136),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.refresh_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              "https://www.socialbauru.com.br/wp-content/uploads/2018/10/link2-11-1240x540.jpg",
              height: 145,
            ),
            Text(
              "Professor Online SEDUC",
              style: TextStyle(
                  color: Color.fromARGB(255, 169, 169, 169),
                  fontFamily: "OpenSans",
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'O portal do professor da rede estadual',
              style: TextStyle(
                  color: Color.fromARGB(255, 169, 169, 169),
                  fontFamily: "OpenSans",
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Text("Bem vindo, Professor...!"),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Icon(
              Icons.filter_none,
              size: 80,
            )
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        child: ListView(
          children: <Widget>[
            ListBody(
              children: <Widget>[
                Container(
                  height: 100,
                  color: const Color.fromARGB(255, 0, 151, 136),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_pin,
                        size: 60,
                        color: Colors.white,
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 9)),
                      Text(
                        'O portal do professor da rede estadual',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Dados Pessoais"),
              iconColor: const Color.fromARGB(255, 0, 151, 136),
              textColor: const Color.fromARGB(255, 0, 151, 136),
            ),
            ListTile(
              leading: Icon(Icons.query_builder),
              title: Text("Horários"),
              iconColor: const Color.fromARGB(255, 0, 151, 136),
              textColor: const Color.fromARGB(255, 0, 151, 136),
            ),
            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text("Calendário Letivo"),
              iconColor: const Color.fromARGB(255, 0, 151, 136),
              textColor: const Color.fromARGB(255, 0, 151, 136),
            ),
            ListTile(
              leading: Icon(Icons.groups_3),
              title: Text("Minhas turmas"),
              iconColor: const Color.fromARGB(255, 0, 151, 136),
              textColor: const Color.fromARGB(255, 0, 151, 136),
            ),
            ListTile(
              leading: Icon(Icons.done),
              title: Text("Dados Pessoais"),
              iconColor: const Color.fromARGB(255, 0, 151, 136),
              textColor: const Color.fromARGB(255, 0, 151, 136),
            ),
            ListTile(
              leading: Icon(Icons.grade),
              title: Text("Avaliações e notas"),
              iconColor: const Color.fromARGB(255, 0, 151, 136),
              textColor: const Color.fromARGB(255, 0, 151, 136),
            ),
            ListTile(
              leading: Icon(Icons.create),
              title: Text("Dados Pessoais"),
              iconColor: const Color.fromARGB(255, 0, 151, 136),
              textColor: const Color.fromARGB(255, 0, 151, 136),
            ),
            ListTile(
              leading: Icon(Icons.menu),
              title: Text("Registro de aula"),
              iconColor: const Color.fromARGB(255, 0, 151, 136),
              textColor: const Color.fromARGB(255, 0, 151, 136),
            ),
            ListTile(
              leading: Icon(Icons.grade),
              title: Text("Atividades"),
              iconColor: const Color.fromARGB(255, 0, 151, 136),
              textColor: const Color.fromARGB(255, 0, 151, 136),
            ),
            ListTile(
              leading: Icon(Icons.outbond),
              title: Text("Sair da Conta"),
              iconColor: const Color.fromARGB(255, 0, 151, 136),
              textColor: const Color.fromARGB(255, 0, 151, 136),
              onTap: () => (Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrimeiraRota()),
              )),
            ),
            Text(
              "Informações",
              style: TextStyle(color: Colors.grey),
            ),
            BottomAppBar(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Desenvolvido por:"),
                      SizedBox(width: 83),
                      Icon(Icons.facebook),
                      Icon(Icons.facebook),
                      Icon(Icons.facebook),
                    ],
                  ),
                  Text(
                    "SEDUC Ceará / Astin",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "OpenSans",
                      fontSize: 11,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
