class Http503ServiceUnavailable implements Exception {
  @override
  String toString() {
    return 'O serviço requisitado não está disponível no momento';
  }
}
