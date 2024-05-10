// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FacturaStruct extends BaseStruct {
  FacturaStruct({
    String? documentoPDF,
    String? factura,
  })  : _documentoPDF = documentoPDF,
        _factura = factura;

  // "documentoPDF" field.
  String? _documentoPDF;
  String get documentoPDF => _documentoPDF ?? '';
  set documentoPDF(String? val) => _documentoPDF = val;
  bool hasDocumentoPDF() => _documentoPDF != null;

  // "factura" field.
  String? _factura;
  String get factura => _factura ?? '';
  set factura(String? val) => _factura = val;
  bool hasFactura() => _factura != null;

  static FacturaStruct fromMap(Map<String, dynamic> data) => FacturaStruct(
        documentoPDF: data['documentoPDF'] as String?,
        factura: data['factura'] as String?,
      );

  static FacturaStruct? maybeFromMap(dynamic data) =>
      data is Map ? FacturaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'documentoPDF': _documentoPDF,
        'factura': _factura,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'documentoPDF': serializeParam(
          _documentoPDF,
          ParamType.String,
        ),
        'factura': serializeParam(
          _factura,
          ParamType.String,
        ),
      }.withoutNulls;

  static FacturaStruct fromSerializableMap(Map<String, dynamic> data) =>
      FacturaStruct(
        documentoPDF: deserializeParam(
          data['documentoPDF'],
          ParamType.String,
          false,
        ),
        factura: deserializeParam(
          data['factura'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FacturaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FacturaStruct &&
        documentoPDF == other.documentoPDF &&
        factura == other.factura;
  }

  @override
  int get hashCode => const ListEquality().hash([documentoPDF, factura]);
}

FacturaStruct createFacturaStruct({
  String? documentoPDF,
  String? factura,
}) =>
    FacturaStruct(
      documentoPDF: documentoPDF,
      factura: factura,
    );
