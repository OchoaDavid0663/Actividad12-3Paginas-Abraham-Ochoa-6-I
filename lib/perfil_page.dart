import 'package:flutter/material.dart';

class PantallaPerfil extends StatefulWidget {
  const PantallaPerfil({super.key});

  @override
  State<PantallaPerfil> createState() => _PantallaPerfilState();
}

class _PantallaPerfilState extends State<PantallaPerfil> {
  int _indiceActual = 2; // Estamos en perfil
  
  // Definimos el color azul eléctrico para reutilizarlo fácilmente
  final Color azulElectrico = const Color(0xFF007BFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F4F8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: azulElectrico),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              // IMAGEN CIRCULAR CON BORDE AZUL ELÉCTRICO
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // Borde actualizado al azul eléctrico
                  border: Border.all(color: azulElectrico, width: 5),
                  image: const DecorationImage(
                    image: NetworkImage('https://raw.githubusercontent.com/OchoaDavid0663/IAMoviles-Act-9-una-pantalla-dise-o-6-I/refs/heads/main/Simi.png'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: azulElectrico.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 2,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50),

              // BOTONES CON EL NUEVO COLOR
              _botonPerfil(Icons.login, "INICIAR SESION", const Color(0xFF1877F2)),
              _botonPerfil(Icons.person, "REGISTRARSE", const Color(0xFF1877F2)), // Color oficial FB
              _botonPerfil(Icons.person_outline, "EMPLEADO", const Color(0xFF1877F2)), // Color verde éxito
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceActual,
        onTap: (index) {
          if (index == 0) Navigator.pop(context);
          setState(() => _indiceActual = index);
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF03346E), // Mantenemos el azul marino para la barra
        selectedItemColor: Colors.lightBlueAccent,
        unselectedItemColor: Colors.white38,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'Ubicación'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Carrito'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Config.'),
        ],
      ),
    );
  }

  Widget _botonPerfil(IconData icono, String texto, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 320),
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 55),
            backgroundColor: color, // AQUÍ SE APLICA EL COLOR
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 4,
            shadowColor: color.withOpacity(0.4),
          ),
          icon: Icon(icono, size: 24),
          label: Text(
            texto, 
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
          ),
          onPressed: () {
            // Acción al presionar
          },
        ),
      ),
    );
  }
}