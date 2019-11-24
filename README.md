# Powershell Learning

Documenting tips and tricks I learn as I do stuff in Powershell. This
is intended to be a helpful "cheat sheet", not a comprehensive
reference. Sections here are written to quickly inform you on how to
do stuff. Heavy editing expected as I refine this material.

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


## Resources

- Official PS 6 docs
- [The Difference Between Bash and
  Powershell](https://www.varonis.com/blog/the-difference-between-bash-and-powershell/)
  (See the "Common Equivalents" section)
