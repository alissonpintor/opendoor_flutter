class Http403Forbidden implements Exception {
  @override
  String toString() {
    return 'O usuário atual não possui as permissões necessárias para acessar o recurso';
  }
}
