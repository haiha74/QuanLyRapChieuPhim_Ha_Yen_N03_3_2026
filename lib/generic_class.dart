class GenericClass<T> {
  T obj; // biến object

  List<T> list = [];

  GenericClass({required this.obj});

  void addItem(T item) {
    list.add(item);
  }
}