sealed class Result<T> {
  const Result();

  factory Result.ok(T value) => Ok(value);
  factory Result.error(T value) => Error(value);
}

class Ok<T> extends Result<T> {
  Ok(this.value);

  final T value;
}

class Error<T> extends Result<T> {
  Error(this.value);

  final T value;
}
