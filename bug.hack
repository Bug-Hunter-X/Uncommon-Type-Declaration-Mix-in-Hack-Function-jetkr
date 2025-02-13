```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function main(): void {
  echo bar(5);
}
```
This code will compile and run without error, but it's unusual in that it uses a combination of implicit and explicit type declarations that might lead to confusion for someone unfamiliar with Hack's type system.

The `foo` function uses an implicit return type (Hack infers `int` based on the return value), while `bar` function uses explicit type declaration for return type. This is perfectly legal but can introduce inconsistency. Also, the `main` function is declared to return `void` which is not the standard practice for main method in many languages.
It's good practice to either use explicit types for all functions or stick with implicit typing across the codebase to avoid this kind of code.
