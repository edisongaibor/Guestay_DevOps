// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habitaciones_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HabitacionesRecord> _$habitacionesRecordSerializer =
    new _$HabitacionesRecordSerializer();

class _$HabitacionesRecordSerializer
    implements StructuredSerializer<HabitacionesRecord> {
  @override
  final Iterable<Type> types = const [HabitacionesRecord, _$HabitacionesRecord];
  @override
  final String wireName = 'HabitacionesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, HabitacionesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.costo;
    if (value != null) {
      result
        ..add('costo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('imagen')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.capacidad;
    if (value != null) {
      result
        ..add('capacidad')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idHabitacion;
    if (value != null) {
      result
        ..add('idHabitacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripcion;
    if (value != null) {
      result
        ..add('descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  HabitacionesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HabitacionesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'costo':
          result.costo = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'imagen':
          result.imagen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'capacidad':
          result.capacidad = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'idHabitacion':
          result.idHabitacion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$HabitacionesRecord extends HabitacionesRecord {
  @override
  final String nombre;
  @override
  final double costo;
  @override
  final String imagen;
  @override
  final String capacidad;
  @override
  final String idHabitacion;
  @override
  final String descripcion;
  @override
  final DocumentReference<Object> reference;

  factory _$HabitacionesRecord(
          [void Function(HabitacionesRecordBuilder) updates]) =>
      (new HabitacionesRecordBuilder()..update(updates)).build();

  _$HabitacionesRecord._(
      {this.nombre,
      this.costo,
      this.imagen,
      this.capacidad,
      this.idHabitacion,
      this.descripcion,
      this.reference})
      : super._();

  @override
  HabitacionesRecord rebuild(
          void Function(HabitacionesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HabitacionesRecordBuilder toBuilder() =>
      new HabitacionesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HabitacionesRecord &&
        nombre == other.nombre &&
        costo == other.costo &&
        imagen == other.imagen &&
        capacidad == other.capacidad &&
        idHabitacion == other.idHabitacion &&
        descripcion == other.descripcion &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nombre.hashCode), costo.hashCode),
                        imagen.hashCode),
                    capacidad.hashCode),
                idHabitacion.hashCode),
            descripcion.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HabitacionesRecord')
          ..add('nombre', nombre)
          ..add('costo', costo)
          ..add('imagen', imagen)
          ..add('capacidad', capacidad)
          ..add('idHabitacion', idHabitacion)
          ..add('descripcion', descripcion)
          ..add('reference', reference))
        .toString();
  }
}

class HabitacionesRecordBuilder
    implements Builder<HabitacionesRecord, HabitacionesRecordBuilder> {
  _$HabitacionesRecord _$v;

  String _nombre;
  String get nombre => _$this._nombre;
  set nombre(String nombre) => _$this._nombre = nombre;

  double _costo;
  double get costo => _$this._costo;
  set costo(double costo) => _$this._costo = costo;

  String _imagen;
  String get imagen => _$this._imagen;
  set imagen(String imagen) => _$this._imagen = imagen;

  String _capacidad;
  String get capacidad => _$this._capacidad;
  set capacidad(String capacidad) => _$this._capacidad = capacidad;

  String _idHabitacion;
  String get idHabitacion => _$this._idHabitacion;
  set idHabitacion(String idHabitacion) => _$this._idHabitacion = idHabitacion;

  String _descripcion;
  String get descripcion => _$this._descripcion;
  set descripcion(String descripcion) => _$this._descripcion = descripcion;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  HabitacionesRecordBuilder() {
    HabitacionesRecord._initializeBuilder(this);
  }

  HabitacionesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _costo = $v.costo;
      _imagen = $v.imagen;
      _capacidad = $v.capacidad;
      _idHabitacion = $v.idHabitacion;
      _descripcion = $v.descripcion;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HabitacionesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HabitacionesRecord;
  }

  @override
  void update(void Function(HabitacionesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HabitacionesRecord build() {
    final _$result = _$v ??
        new _$HabitacionesRecord._(
            nombre: nombre,
            costo: costo,
            imagen: imagen,
            capacidad: capacidad,
            idHabitacion: idHabitacion,
            descripcion: descripcion,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
