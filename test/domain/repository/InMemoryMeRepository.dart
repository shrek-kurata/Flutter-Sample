import 'dart:async';

import 'package:penmark/domain/me.dart';
import 'package:penmark/domain/repository/MeRepository.dart';

import '../../helper.dart';

class InMemoryMeRepository extends MeRepository{

  var sample = sampleMe();

  Future<Me> fromAuth(){
    return Future.value(sample);
  }

  Future save(Me me)async{
    sample = me;
  }
}