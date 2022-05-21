import 'package:flutter/material.dart';

class DataExerc{
  String leading;
  String title;
  String subtitle;
  String description;
  String level;

  DataExerc({
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.level
});
}

final List<DataExerc> round1 = [
  DataExerc(leading: 'assets/exercicios/SingleLegDeadLift.jpg',
      title: 'Single-leg deadlifts',
      subtitle: '00:30',
      description: 'Stand with both feet under hips. Shift your weight to the right leg, which should be nice and straight with a soft bend in the knee.',
      level: 'Inciante'),
  DataExerc(leading: 'assets/exercicios/RoscaMarteloBiceps.jpg',
      title: 'Rosca bíceps direta com halteres',
      subtitle: '00:45',
      description: 'Para começar, fique em pé e pegue um halter com cada mão. Os cotovelos devem estar próximos ao tronco e as palmas das mãos direcionadas para a frente; '
          'Então, com os antebraços imóveis, solte o ar e levante os pesos ao mesmo tempo em que contrai os bíceps. Isso deve ser feito até que os bíceps estejam completamente contraídos e os halteres se encontrem na altura dos ombros;'
          'Em seguida, permaneça na posição contraída por um instante;'
          'Depois, inspire o ar e retorne lentamente ao posicionamento original.',
      level: 'Médio'),
  DataExerc(leading: 'assets/exercicios/beginner_pullups.jpg',
      title: 'Pull-Ups',
      subtitle: '01:00',
      description: 'Standard dead-hang pull up is grasped with an overhand/underhand/alternative-hand grip. Then the body is pulled up until the chin clears the bar, and finished by lowering the body until arms and shoulders are fully extended. Stricter standards would only consider a full repetition to be one in which the elbows pass behind the coronal plane.',
      level: 'Avançado'),
  ];