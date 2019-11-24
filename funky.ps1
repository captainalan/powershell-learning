<# no parameters #>
function Say-Hello {
    Write-Host "Hello there!"
}

Say-Hello

<# param function syntax #>
function Add-Two {
    param([int] $op1, [int] $op2)
    $op1 + $op2
}

<# Different syntax #>
function Multiply-Two ([int]$op1, [int]$op2){
    $op1 * $op2
}

$foo = Add-Two 1 1
Write-Host "1 + 1 is $foo"

$bar = Multiply-Two 1 1
Write-Host "1 * 1 is $bar"
