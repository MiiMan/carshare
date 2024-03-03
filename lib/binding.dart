class Binding {
  final Function _callback;
  final List<Function> _disposed = [];

  Binding(this._callback);

  BValue<T> add<T>(T value) {
    var b = _BindingInstance(value);
    b.callback = _callback;
    _disposed.add(b.dispose);
    return b;
  }

  void dispose() {
    for (var d in _disposed) {
      d();
    }
  }
}

abstract class _BindingInstanceInitializer {
  late Function callback;
  void dispose();
}

abstract class BValue<T> {
  set value(T value);
  T get value;

  void depends(List<BValue> values, Function callback);
  void listen(Function callback);
}

class _BindingInstance<T> implements BValue<T>, _BindingInstanceInitializer  {
  static void _emptyFunction() {
    throw Exception('Binding was disposed!');
  }

  List<Function> _callbacks = [_emptyFunction];


  @override
  Function get callback => _callbacks.first;
  @override
  set callback(Function f) => _callbacks.first = f;


  T _value;

  @override
  set value(T value) {
    _value = value;
    for (var c in _callbacks) {
      c();
    }
  }

  @override
  T get value => _value;

  _BindingInstance(this._value);

  @override
  void dispose() {
    _callbacks.clear();
    _callbacks.add(_emptyFunction);
  }

  @override
  void depends(List<BValue<dynamic>> values, Function callback) {
    for (var v in values) {
      v.listen(callback);
    }
  }

  @override
  void listen(Function callback) {
    _callbacks.add(callback);
  }
}