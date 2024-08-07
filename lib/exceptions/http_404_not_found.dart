class Http404NotFoundException implements Exception {
  @override
  String toString() {
    return 'Http404NotFound: Recurso não econtrado ou não existe';
  }
}
