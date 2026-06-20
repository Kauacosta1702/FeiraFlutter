import 'package:flutter/material.dart';

class Cultura extends StatelessWidget {
  const Cultura({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: const Icon(Icons.menu, color: Color(0xFFc8b543)),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Color(0xFFc8b543)),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/perg.jpg'),
            fit: BoxFit.cover,
          ), 
        ), 
        child: SingleChildScrollView( 
          child: Column(
            children: [
              // Banner do Topo
              Container(
                width: double.infinity,
                height: 160,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/cul.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment(0, 0),
                  ),
                ),
              ),
              
              const SizedBox(height: 16),

              // Título "Costumes"
              Column(
                children: [
                  const Text(
                    'Costumes',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 0),
                    child: Image.asset(
                      'assets/lha.png',
                      width: 200,
                      height: 200,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.broken_image, size: 80, color: Colors.red);
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: _buildRedTextBox('Os costumes peruanos unem a herança ancestral andina ao legado colonial espanhol. Nas montanhas, o idioma Quéchua continua vivo e os tecidos feitos à mão exibem cores vibrantes cheias de significados. Festas tradicionais celebram santos católicos em sincronia com rituais de agradecimento à Pachamama, mantendo viva a forte identidade do seu povo.'), 
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      flex: 4,
                      child: _buildSampleImage('assets/Lhama.jpg'), 
                    ),
                  ],
                ),
              ),

              Column(
                mainAxisSize: MainAxisSize.min, 
                children: [
                  const SizedBox(height: 40),
                  const Text(
                    'Comidas',
                    style: TextStyle(
                      fontSize: 50,               
                      fontWeight: FontWeight.bold, 
                      color: Colors.black,         
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 20.0), 
                    child: Image.asset(
                      'assets/c.png', 
                      width: 200,               
                      height: 200,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.broken_image, size: 80, color: Colors.red);
                      },
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        height: 350, 
                        child: _buildSampleImage('assets/comid.png'), 
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      flex: 2,
                      child: _buildRedTextBox('A gastronomia do Peru é premiada mundialmente graças à sua imensa biodiversidade e séculos de imigração. A culinária local funde de forma genial ingredientes nativos milenares, como o ají e milhares de tipos de batatas, com técnicas e influências espanholas, africanas, chinesas e japonesas, criando pratos icônicos como o Ceviche e o Lomo Saltado.'), 
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF238859),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  icon: const Icon(Icons.arrow_back), 
                  label: const Text(
                    'Voltar a pagina inicial',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRedTextBox(String textos) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFdb1c34),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        textos,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'monospace',
          fontSize: 20,
        ),
      ),
    );
  }

  Widget _buildSampleImage(String assetPath, {double height = 400}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20), 
      child: Image.asset(
        assetPath,
        height: height,
        fit: BoxFit.cover, 
        errorBuilder: (context, error, stackTrace) {
          return Container(
            height: 150,
            color: Colors.grey[300],
            child: const Center(
              child: Icon(Icons.broken_image, color: Colors.grey),
            ),
          );
        },
      ),
    );
  }
}