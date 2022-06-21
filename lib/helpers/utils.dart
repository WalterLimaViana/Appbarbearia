import 'package:flutter/material.dart';
import 'package:appBarbearia/models/category.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
          name: 'Cabelo',
          imgName: 'img/cabelo.jpg',
          color: Colors.black,
          descricao: 'Na tesoura ou na máquina, como o cliente preferir',
          preco: 'R\$ 25,00'),
      Category(
          name: 'Barba',
          imgName: 'img/barba.jpg',
          color: Colors.black,
          descricao: 'Corte e desenho profissional de barba',
          preco: 'R\$ 18,00'),
      Category(
          name: 'Cabelo e Barba',
          imgName: 'img/cabelo+barba.jpg',
          color: Colors.black,
          descricao: 'Pacote completo de corte de cabelo e barba',
          preco: 'R\$ 35,00'),
    ];
  }
}
