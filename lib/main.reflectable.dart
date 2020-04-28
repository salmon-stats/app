// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.

import 'dart:core';
import 'package:dart_json_mapper/src/model/annotations.dart' as prefix0;
import 'package:salmonia_android/model/salmon_result.dart' as prefix2;
import 'package:salmonia_android/model/user_profile.dart' as prefix1;

// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const
// ignore_for_file: implementation_imports

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.JsonSerializable(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'UserProfile',
            r'.UserProfile',
            7,
            0,
            const prefix0.JsonSerializable(),
            const <int>[0, 1, 2, 3, 4, 37],
            const <int>[
              38,
              39,
              40,
              41,
              42,
              27,
              28,
              29,
              30,
              31,
              32,
              33,
              34,
              35,
              36
            ],
            const <int>[],
            -1,
            {},
            {},
            {r'': (b) => () => b ? prefix1.UserProfile() : null},
            -1,
            0,
            const <int>[],
            const <Object>[prefix0.jsonSerializable],
            null),
        r.NonGenericClassMirrorImpl(
            r'IdEntity',
            r'.IdEntity',
            7,
            1,
            const prefix0.JsonSerializable(),
            const <int>[5, 45, 46],
            const <int>[38, 39, 40, 41, 42, 43, 44, 45],
            const <int>[],
            -1,
            {},
            {},
            {r'': (b) => () => b ? prefix2.IdEntity() : null},
            -1,
            1,
            const <int>[],
            const <Object>[prefix0.jsonSerializable],
            null),
        r.NonGenericClassMirrorImpl(
            r'JobResult',
            r'.JobResult',
            7,
            2,
            const prefix0.JsonSerializable(),
            const <int>[6, 7, 8, 53],
            const <int>[38, 39, 40, 41, 42, 47, 48, 49, 50, 51, 52],
            const <int>[],
            -1,
            {},
            {},
            {r'': (b) => () => b ? prefix2.JobResult() : null},
            -1,
            2,
            const <int>[],
            const <Object>[prefix0.jsonSerializable],
            null),
        r.NonGenericClassMirrorImpl(
            r'SalmonResults',
            r'.SalmonResults',
            7,
            3,
            const prefix0.JsonSerializable(),
            const <int>[9, 56],
            const <int>[38, 39, 40, 41, 42, 54, 55],
            const <int>[],
            -1,
            {},
            {},
            {r'': (b) => () => b ? prefix2.SalmonResults() : null},
            -1,
            3,
            const <int>[],
            const <Object>[prefix0.jsonSerializable],
            null),
        r.NonGenericClassMirrorImpl(
            r'SalmonResult',
            r'.SalmonResult',
            7,
            4,
            const prefix0.JsonSerializable(),
            const <int>[10, 11, 12, 13, 14, 15, 16, 17, 73, 74, 75],
            const <int>[
              38,
              39,
              40,
              41,
              42,
              57,
              58,
              59,
              60,
              61,
              62,
              63,
              64,
              65,
              66,
              67,
              68,
              69,
              70,
              71,
              72,
              73,
              74
            ],
            const <int>[],
            -1,
            {},
            {},
            {r'': (b) => () => b ? prefix2.SalmonResult() : null},
            -1,
            4,
            const <int>[],
            const <Object>[prefix0.jsonSerializable],
            null),
        r.NonGenericClassMirrorImpl(
            r'ResultDetails',
            r'.ResultDetails',
            7,
            5,
            const prefix0.JsonSerializable(),
            const <int>[18, 19, 20, 21, 22, 23, 24, 25, 26, 94, 95],
            const <int>[
              38,
              39,
              40,
              41,
              42,
              76,
              77,
              78,
              79,
              80,
              81,
              82,
              83,
              84,
              85,
              86,
              87,
              88,
              89,
              90,
              91,
              92,
              93,
              94
            ],
            const <int>[],
            -1,
            {},
            {},
            {r'': (b) => () => b ? prefix2.ResultDetails() : null},
            -1,
            5,
            const <int>[],
            const <Object>[prefix0.jsonSerializable],
            null)
      ],
      <m.DeclarationMirror>[
        r.VariableMirrorImpl(r'pid', 32773, 0, const prefix0.JsonSerializable(),
            -1, 6, 6, const <int>[], const []),
        r.VariableMirrorImpl(
            r'name',
            32773,
            0,
            const prefix0.JsonSerializable(),
            -1,
            6,
            6, const <int>[], const []),
        r.VariableMirrorImpl(
            r'isActiveBool',
            32773,
            0,
            const prefix0.JsonSerializable(),
            -1,
            7,
            7, const <int>[], const []),
        r.VariableMirrorImpl(
            r'iksmSession',
            32773,
            0,
            const prefix0.JsonSerializable(),
            -1,
            6,
            6, const <int>[], const []),
        r.VariableMirrorImpl(
            r'sessionToken',
            32773,
            0,
            const prefix0.JsonSerializable(),
            -1,
            6,
            6, const <int>[], const []),
        r.VariableMirrorImpl(
            r'idStr',
            32773,
            1,
            const prefix0.JsonSerializable(),
            -1,
            6,
            6,
            const <int>[],
            const <Object>[const prefix0.JsonProperty(name: 'id')]),
        r.VariableMirrorImpl(
            r'failureReason',
            32773,
            2,
            const prefix0.JsonSerializable(),
            -1,
            6,
            6, const <int>[], const []),
        r.VariableMirrorImpl(
            r'failureWave',
            32773,
            2,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8, const <int>[], const []),
        r.VariableMirrorImpl(
            r'isClear',
            32773,
            2,
            const prefix0.JsonSerializable(),
            -1,
            7,
            7, const <int>[], const []),
        r.VariableMirrorImpl(
            r'results',
            2129925,
            3,
            const prefix0.JsonSerializable(),
            -1,
            9,
            10,
            const <int>[4],
            const []),
        r.VariableMirrorImpl(
            r'dangerRate',
            32773,
            4,
            const prefix0.JsonSerializable(),
            -1,
            11,
            11, const <int>[], const []),
        r.VariableMirrorImpl(r'grade', 32773, 4,
            const prefix0.JsonSerializable(), 1, 1, 1, const <int>[], const []),
        r.VariableMirrorImpl(
            r'gradePoint',
            32773,
            4,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8, const <int>[], const []),
        r.VariableMirrorImpl(
            r'jobId',
            32773,
            4,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8, const <int>[], const []),
        r.VariableMirrorImpl(
            r'jobRate',
            32773,
            4,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8, const <int>[], const []),
        r.VariableMirrorImpl(r'jobResult', 32773, 4,
            const prefix0.JsonSerializable(), 2, 2, 2, const <int>[], const []),
        r.VariableMirrorImpl(
            r'playTime',
            32773,
            4,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8, const <int>[], const []),
        r.VariableMirrorImpl(r'myResult', 32773, 4,
            const prefix0.JsonSerializable(), 5, 5, 5, const <int>[], const []),
        r.VariableMirrorImpl(
            r'deadCount',
            32773,
            5,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8, const <int>[], const []),
        r.VariableMirrorImpl(
            r'goldenIkuraNum',
            32773,
            5,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8, const <int>[], const []),
        r.VariableMirrorImpl(
            r'ikuraNum',
            32773,
            5,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8, const <int>[], const []),
        r.VariableMirrorImpl(
            r'name',
            32773,
            5,
            const prefix0.JsonSerializable(),
            -1,
            6,
            6, const <int>[], const []),
        r.VariableMirrorImpl(
            r'helpCount',
            32773,
            5,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8, const <int>[], const []),
        r.VariableMirrorImpl(r'pid', 32773, 5, const prefix0.JsonSerializable(),
            -1, 6, 6, const <int>[], const []),
        r.VariableMirrorImpl(r'special', 32773, 5,
            const prefix0.JsonSerializable(), 1, 1, 1, const <int>[], const []),
        r.VariableMirrorImpl(
            r'specialCounts',
            2129925,
            5,
            const prefix0.JsonSerializable(),
            -1,
            12,
            13,
            const <int>[8],
            const []),
        r.VariableMirrorImpl(
            r'weaponList',
            2129925,
            5,
            const prefix0.JsonSerializable(),
            -1,
            14,
            15,
            const <int>[1],
            const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 0, 27),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 0, 28),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 1, 29),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 1, 30),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 2, 31),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 2, 32),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 3, 33),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 3, 34),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 4, 35),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 4, 36),
        r.MethodMirrorImpl(r'', 64, 0, -1, 0, 0, const <int>[], const <int>[],
            const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(r'==', 131074, null, -1, 7, 7, const <int>[],
            const <int>[5], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(r'toString', 131074, null, -1, 6, 6, const <int>[],
            const <int>[], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(
            r'noSuchMethod',
            65538,
            null,
            null,
            null,
            null,
            const <int>[],
            const <int>[6],
            const prefix0.JsonSerializable(),
            const []),
        r.MethodMirrorImpl(r'hashCode', 131075, null, -1, 8, 8, const <int>[],
            const <int>[], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(
            r'runtimeType',
            131075,
            null,
            -1,
            16,
            16,
            const <int>[],
            const <int>[],
            const prefix0.JsonSerializable(),
            const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 5, 43),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 5, 44),
        r.MethodMirrorImpl(
            r'id',
            131075,
            1,
            -1,
            8,
            8,
            const <int>[],
            const <int>[],
            const prefix0.JsonSerializable(),
            const <Object>[const prefix0.JsonProperty(ignore: true)]),
        r.MethodMirrorImpl(r'', 64, 1, -1, 1, 1, const <int>[], const <int>[],
            const prefix0.JsonSerializable(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 6, 47),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 6, 48),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 7, 49),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 7, 50),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 8, 51),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 8, 52),
        r.MethodMirrorImpl(r'', 64, 2, -1, 2, 2, const <int>[], const <int>[],
            const prefix0.JsonSerializable(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 9, 54),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 9, 55),
        r.MethodMirrorImpl(r'', 64, 3, -1, 3, 3, const <int>[], const <int>[],
            const prefix0.JsonSerializable(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 10, 57),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 10, 58),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 11, 59),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 11, 60),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 12, 61),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 12, 62),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 13, 63),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 13, 64),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 14, 65),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 14, 66),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 15, 67),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 15, 68),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 16, 69),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 16, 70),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 17, 71),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 17, 72),
        r.MethodMirrorImpl(
            r'playDate',
            131075,
            4,
            -1,
            17,
            17,
            const <int>[],
            const <int>[],
            const prefix0.JsonSerializable(),
            const <Object>[const prefix0.JsonProperty(ignore: true)]),
        r.MethodMirrorImpl(
            r'bossCounts',
            4325379,
            4,
            -1,
            19,
            20,
            const <int>[6, 18],
            const <int>[],
            const prefix0.JsonSerializable(),
            const <Object>[const prefix0.JsonProperty(ignore: true)]),
        r.MethodMirrorImpl(r'', 64, 4, -1, 4, 4, const <int>[], const <int>[],
            const prefix0.JsonSerializable(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 18, 76),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 18, 77),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 19, 78),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 19, 79),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 20, 80),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 20, 81),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 21, 82),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 21, 83),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 22, 84),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 22, 85),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 23, 86),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 23, 87),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 24, 88),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 24, 89),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 25, 90),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 25, 91),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 26, 92),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 26, 93),
        r.MethodMirrorImpl(
            r'bossKillCounts',
            4325379,
            5,
            -1,
            19,
            20,
            const <int>[6, 18],
            const <int>[],
            const prefix0.JsonSerializable(),
            const <Object>[const prefix0.JsonProperty(ignore: true)]),
        r.MethodMirrorImpl(r'', 64, 5, -1, 5, 5, const <int>[], const <int>[],
            const prefix0.JsonSerializable(), const [])
      ],
      <m.ParameterMirror>[
        r.ParameterMirrorImpl(
            r'_pid',
            32870,
            28,
            const prefix0.JsonSerializable(),
            -1,
            6,
            6,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_name',
            32870,
            30,
            const prefix0.JsonSerializable(),
            -1,
            6,
            6,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_isActiveBool',
            32870,
            32,
            const prefix0.JsonSerializable(),
            -1,
            7,
            7,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_iksmSession',
            32870,
            34,
            const prefix0.JsonSerializable(),
            -1,
            6,
            6,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_sessionToken',
            32870,
            36,
            const prefix0.JsonSerializable(),
            -1,
            6,
            6,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'other',
            16390,
            38,
            const prefix0.JsonSerializable(),
            null,
            null,
            null,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'invocation',
            32774,
            40,
            const prefix0.JsonSerializable(),
            -1,
            21,
            21,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_idStr',
            32870,
            44,
            const prefix0.JsonSerializable(),
            -1,
            6,
            6,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_failureReason',
            32870,
            48,
            const prefix0.JsonSerializable(),
            -1,
            6,
            6,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_failureWave',
            32870,
            50,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_isClear',
            32870,
            52,
            const prefix0.JsonSerializable(),
            -1,
            7,
            7,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_results',
            2130022,
            55,
            const prefix0.JsonSerializable(),
            -1,
            9,
            10,
            const <int>[4],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_dangerRate',
            32870,
            58,
            const prefix0.JsonSerializable(),
            -1,
            11,
            11,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_grade',
            32870,
            60,
            const prefix0.JsonSerializable(),
            1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_gradePoint',
            32870,
            62,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_jobId',
            32870,
            64,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_jobRate',
            32870,
            66,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_jobResult',
            32870,
            68,
            const prefix0.JsonSerializable(),
            2,
            2,
            2,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_playTime',
            32870,
            70,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_myResult',
            32870,
            72,
            const prefix0.JsonSerializable(),
            5,
            5,
            5,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_deadCount',
            32870,
            77,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_goldenIkuraNum',
            32870,
            79,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_ikuraNum',
            32870,
            81,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_name',
            32870,
            83,
            const prefix0.JsonSerializable(),
            -1,
            6,
            6,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_helpCount',
            32870,
            85,
            const prefix0.JsonSerializable(),
            -1,
            8,
            8,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_pid',
            32870,
            87,
            const prefix0.JsonSerializable(),
            -1,
            6,
            6,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_special',
            32870,
            89,
            const prefix0.JsonSerializable(),
            1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_specialCounts',
            2130022,
            91,
            const prefix0.JsonSerializable(),
            -1,
            12,
            13,
            const <int>[8],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_weaponList',
            2130022,
            93,
            const prefix0.JsonSerializable(),
            -1,
            14,
            15,
            const <int>[1],
            const [],
            null,
            null)
      ],
      <Type>[
        prefix1.UserProfile,
        prefix2.IdEntity,
        prefix2.JobResult,
        prefix2.SalmonResults,
        prefix2.SalmonResult,
        prefix2.ResultDetails,
        String,
        bool,
        int,
        const m.TypeValue<List<prefix2.SalmonResult>>().type,
        List,
        num,
        const m.TypeValue<List<int>>().type,
        List,
        const m.TypeValue<List<prefix2.IdEntity>>().type,
        List,
        Type,
        DateTime,
        prefix2.CountEntity,
        const m.TypeValue<Map<String, prefix2.CountEntity>>().type,
        Map,
        Invocation
      ],
      6,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'pid': (dynamic instance) => instance.pid,
        r'name': (dynamic instance) => instance.name,
        r'isActiveBool': (dynamic instance) => instance.isActiveBool,
        r'iksmSession': (dynamic instance) => instance.iksmSession,
        r'sessionToken': (dynamic instance) => instance.sessionToken,
        r'idStr': (dynamic instance) => instance.idStr,
        r'id': (dynamic instance) => instance.id,
        r'failureReason': (dynamic instance) => instance.failureReason,
        r'failureWave': (dynamic instance) => instance.failureWave,
        r'isClear': (dynamic instance) => instance.isClear,
        r'results': (dynamic instance) => instance.results,
        r'dangerRate': (dynamic instance) => instance.dangerRate,
        r'grade': (dynamic instance) => instance.grade,
        r'gradePoint': (dynamic instance) => instance.gradePoint,
        r'jobId': (dynamic instance) => instance.jobId,
        r'jobRate': (dynamic instance) => instance.jobRate,
        r'jobResult': (dynamic instance) => instance.jobResult,
        r'playTime': (dynamic instance) => instance.playTime,
        r'myResult': (dynamic instance) => instance.myResult,
        r'playDate': (dynamic instance) => instance.playDate,
        r'bossCounts': (dynamic instance) => instance.bossCounts,
        r'deadCount': (dynamic instance) => instance.deadCount,
        r'goldenIkuraNum': (dynamic instance) => instance.goldenIkuraNum,
        r'ikuraNum': (dynamic instance) => instance.ikuraNum,
        r'helpCount': (dynamic instance) => instance.helpCount,
        r'special': (dynamic instance) => instance.special,
        r'specialCounts': (dynamic instance) => instance.specialCounts,
        r'weaponList': (dynamic instance) => instance.weaponList,
        r'bossKillCounts': (dynamic instance) => instance.bossKillCounts
      },
      {
        r'pid=': (dynamic instance, value) => instance.pid = value,
        r'name=': (dynamic instance, value) => instance.name = value,
        r'isActiveBool=': (dynamic instance, value) =>
            instance.isActiveBool = value,
        r'iksmSession=': (dynamic instance, value) =>
            instance.iksmSession = value,
        r'sessionToken=': (dynamic instance, value) =>
            instance.sessionToken = value,
        r'idStr=': (dynamic instance, value) => instance.idStr = value,
        r'failureReason=': (dynamic instance, value) =>
            instance.failureReason = value,
        r'failureWave=': (dynamic instance, value) =>
            instance.failureWave = value,
        r'isClear=': (dynamic instance, value) => instance.isClear = value,
        r'results=': (dynamic instance, value) => instance.results = value,
        r'dangerRate=': (dynamic instance, value) =>
            instance.dangerRate = value,
        r'grade=': (dynamic instance, value) => instance.grade = value,
        r'gradePoint=': (dynamic instance, value) =>
            instance.gradePoint = value,
        r'jobId=': (dynamic instance, value) => instance.jobId = value,
        r'jobRate=': (dynamic instance, value) => instance.jobRate = value,
        r'jobResult=': (dynamic instance, value) => instance.jobResult = value,
        r'playTime=': (dynamic instance, value) => instance.playTime = value,
        r'myResult=': (dynamic instance, value) => instance.myResult = value,
        r'deadCount=': (dynamic instance, value) => instance.deadCount = value,
        r'goldenIkuraNum=': (dynamic instance, value) =>
            instance.goldenIkuraNum = value,
        r'ikuraNum=': (dynamic instance, value) => instance.ikuraNum = value,
        r'helpCount=': (dynamic instance, value) => instance.helpCount = value,
        r'special=': (dynamic instance, value) => instance.special = value,
        r'specialCounts=': (dynamic instance, value) =>
            instance.specialCounts = value,
        r'weaponList=': (dynamic instance, value) => instance.weaponList = value
      },
      null,
      [])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
