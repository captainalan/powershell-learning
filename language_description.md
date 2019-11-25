Powershell Language
===================

A tutorial of PS 6 as you would expect an introduction to some other
programming language.  It is expected that you have basic proficiency
in a C-like language (e.g. Python, JavaScript, C++, Golang...).

Syntax Basics
-------------

"Script blocks", expressions

Data Structures
---------------

PS is all about "objects", but many of these objects are similar to
other data structures (lists, arrays, hashes, etc.).

### Arrays

Use the `Length` or `Count` properties of an array in conjunction with
control flow statements (such as `for`, described below) to iterate
over its elements.

### Hash Tables

[Hash tables](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_hash_tables?view=powershell-6)

Find out more by looking to `System.Collections.Hashtable`.

```powershell
$hash = { Number = 1; Shape = "Square"; Color = "Blue"}
$ordered_hash = [ordered]@{ Number = 2; Shape = "Circle"; Color = "Red"}

$hash.keys   # Get keys
$hash.values # Get values

$ordered_hash["Number"] # Access member
```

Operators and other funny symbols
---------------------------------

(If you can recognize what symbols are, code is not so mysterious)

Control Flow
------------

### Conditional Statements

### Looping

Some of the code examples here come from the [official docs](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_arrays?view=powershell-6).

`for` statement:

```powershell
$a = 0..9
for ($i = 0; $i -le ($a.length - 1); $i += 2) {
  $a[$i]
}
```

There is also a `ForEach` statement which has many different forms.

```
ForEach(scriptblock expression)
ForEach(type convertToType)
ForEach(string propertyName)
ForEach(string propertyName, object[] newValue)
ForEach(string methodName)
ForEach(string methodName, object[] arguments)
ForEach(scriptblock expression, object[] arguments)
```

`while` statement

```powershell
$a = 0..9
$i=0
while($i -lt 4) {
  $a[$i];
  $i++
}
```

Summary
-------

This document was created to provide a quick "language overview" of
Powershell, showing the many syntactic tools available with
easy-to-follow examples.

Now, go forth and automate stuff!
