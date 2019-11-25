 Powershell Learning

Documenting tips and tricks I learn as I do stuff in Powershell. This
is intended to be a helpful "cheat sheet", not a comprehensive
reference. Sections here are written to quickly inform you on how to
do stuff. Heavy editing expected as I refine this material.

To find about the "core language" of PS 6, I recommend reading all of
the `about_*` articles of the official docs.

## Bash and Powershell Equivalents

| bash       | PowerShell | Notes/Comments |
| :--------- | :--------- | :------- |
| `>` | `Out-File` | PS command allows you to specify options, such as encoding |
| `>>` | `Out-File -Append` | See above! |
| `cat` | `Get-Content` | It seems `cat` is not a default Alias for `Get-Content` |

### Kinda different but possibly helpful

| bash       | PowerShell | Notes/Comments |
| :--------- | :--------- | :------- |
| ... `\| less` | `Out-Host -Paging` | Paginate output for happy scroll scroll

Note that many tasks that you may do via text-bending in bash you will
accomplish using Powershell's objects.

## One-liner Examples

Check to make sure you are using Unicode (UTF-8) for output:

```powershell
$OutputEncoding # this is an example of a "preference variable"
```

Write a list of commands to a file:

```powershell
Get-Command | Select-Object -Property Name | Out-File -FilePath ./Commands.txt
```

Find and use an object's methods:

```powershell
Get-Location | Get-Member # Find out what the methods of `Get-Location` are
# ...
(Get-Location).ToString() # Using a method
```

The next example comes from the official docs article [Objects in Pipelines](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_objects?view=powershell-6). This command outputs all the non-directory items under `C:`. Notice:

- Underscore variable

```powershell
Get-ChildItem C: | where { $_.PsIsContainer -eq $false } | Format-List
```

## Resources

- Official PS 6 docs
- [The Difference Between Bash and
  Powershell](https://www.varonis.com/blog/the-difference-between-bash-and-powershell/)
  (See the "Common Equivalents" section)
