class Http400BadRequest implements Exception {
  @override
  String toString() {
    return 'A requisição é inválida ou o recurso não existe';
  }
}
