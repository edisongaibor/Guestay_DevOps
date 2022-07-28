import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'habitaciones_record.g.dart';

abstract class HabitacionesRecord
    implements Built<HabitacionesRecord, HabitacionesRecordBuilder> {
  static Serializer<HabitacionesRecord> get serializer =>
      _$habitacionesRecordSerializer;

  @nullable
  String get nombre;

  @nullable
  double get costo;

  @nullable
  String get imagen;

  @nullable
  String get capacidad;

  @nullable
  String get idHabitacion;

  @nullable
  String get descripcion;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(HabitacionesRecordBuilder builder) => builder
    ..nombre = ''
    ..costo = 0.0
    ..imagen = ''
    ..capacidad = ''
    ..idHabitacion = ''
    ..descripcion = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('habitaciones');

  static Stream<HabitacionesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<HabitacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  HabitacionesRecord._();
  factory HabitacionesRecord(
          [void Function(HabitacionesRecordBuilder) updates]) =
      _$HabitacionesRecord;

  static HabitacionesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createHabitacionesRecordData({
  String nombre,
  double costo,
  String imagen,
  String capacidad,
  String idHabitacion,
  String descripcion,
}) =>
    serializers.toFirestore(
        HabitacionesRecord.serializer,
        HabitacionesRecord((h) => h
          ..nombre = nombre
          ..costo = costo
          ..imagen = imagen
          ..capacidad = capacidad
          ..idHabitacion = idHabitacion
          ..descripcion = descripcion));
