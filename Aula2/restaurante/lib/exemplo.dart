import 'package:flutter/material.dart';

class WidgetExemplo extends StatelessWidget {
  const WidgetExemplo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        onPressed: () {},
        child: Text('Clique aqui'),
      ),
    );
  }
}

class ExemploStateful extends StatefulWidget {
  const ExemploStateful({super.key});

  @override
  _ExemploStatefulState createState() => _ExemploStatefulState();
}

class _ExemploStatefulState extends State<ExemploStateful> {
  String texto = 'Clique aqui';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        onPressed: () {
          setState(() {
            texto = 'Texto alterado';
          });
        },
        child: Text(texto),
      ),
    );
  }

  @override
  void initState() {
    print('Tela iniciada');
    super.initState();
  }

  @override
  void dispose() {
    print('Tela desmontada');
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    print('Estado da tela alterado');
    super.didChangeDependencies();
  }
}

class PremiumRow extends StatelessWidget {
  final bool isPremium;
  final String nome;
  const PremiumRow({super.key, required this.isPremium, required this.nome});

  @override
  Widget build(BuildContext context) {
    print('build PremiumRow');
    print('isPremium: $isPremium');
    print('nome: $nome');
    return Row(
      children: [
        Text(nome),
        if (isPremium) Icon(Icons.star) else Icon(Icons.star_border),
      ],
    );
  }
}

class ProductList extends StatelessWidget {
  final List<String> products;
  final bool arePremium;
  const ProductList({
    super.key,
    required this.products,
    required this.arePremium,
  });

  @override
  Widget build(BuildContext context) {
    final listProducts = products
        .map((product) => PremiumRow(isPremium: arePremium, nome: product))
        .toList();
    final column = Column(children: listProducts);
    return column;
  }
}
