library home_bloc;

import 'dart:convert';
import 'dart:developer';
import 'dart:ffi';
import 'dart:ffi' as ffi;

import 'package:bloc/bloc.dart';
import 'package:ffi/ffi.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager/home/bloc/entities/sort_type.dart';
import 'package:task_manager/models/configuration_model/configuration_model.dart';
import 'package:task_manager/models/process_model/process_model.dart';

part 'entities/home_state.dart';
part 'home_bloc.dart';
part 'home_events.dart';
part 'index.freezed.dart';
