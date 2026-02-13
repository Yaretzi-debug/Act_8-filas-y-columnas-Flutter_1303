import 'package:flutter/material.dart';

void main() => runApp(const AppReposteria());

class AppReposteria extends StatelessWidget {
  const AppReposteria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Repostería Coquette",
      theme: ThemeData(
        primaryColor: const Color(0xFFFADADD), // Rosa pastel principal
        scaffoldBackgroundColor: const Color(0xFFFFF8E1), // Fondo crema
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFADADD), // Barra de navegación rosa pastel
          titleTextStyle: TextStyle(
            color: Color(0xFF5D4037), // Texto marrón oscuro
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Color(0xFF5D4037), // Iconos marrón oscuro
          ),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFF5D4037), fontSize: 16),
          bodyMedium: TextStyle(color: Color(0xFF5D4037), fontSize: 14),
          headlineSmall: TextStyle(
              color: Color(0xFF5D4037),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
      home: const ReposteriaScreen(),
    );
  }
}

class ReposteriaScreen extends StatelessWidget {
  const ReposteriaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Repostería Fresh Tarts"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
            tooltip: 'Carrito de compras',
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: const [
          DessertCard(
            color: Color(0xFFFADADD), // Rosa Pastel
            icon: Icons.cake_outlined,
            text: 'Pasteles',
          ),
          DessertCard(
            color: Color(0xFFE6E0FF), // Lavanda Pastel
            icon: Icons.icecream_outlined,
            text: 'Helados',
          ),
          DessertCard(
            color: Color(0xFFD4F0F0), // Menta Pastel
            icon: Icons.coffee_outlined,
            text: 'Bebidas',
          ),
          DessertCard(
            color: Color(0xFFFFE5B4), // Durazno Pastel
            icon: Icons.cookie_outlined,
            text: 'Galletas',
          ),
          DessertCard(
            color: Color(0xFFC9E4DE), // Celeste Pastel
            icon: Icons.donut_small_outlined,
            text: 'Donas',
          ),
          DessertCard(
            color: Color(0xFFFFFACD), // Limón Pastel
            icon: Icons.pie_chart_outline,
            text: 'Pays',
          ),
        ],
      ),
    );
  }
}

class DessertCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;

  const DessertCard({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: const Color(0xFF5D4037).withOpacity(0.8),
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
