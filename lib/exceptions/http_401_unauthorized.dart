class Http401Unauthorized implements Exception {
  @override
  String toString() {
    return 'Você precisa de autorização para acessar este recurso';
  }
}
