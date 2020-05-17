# initialize all sum variables to 0
$sum1 = 0
$sum2 = 0
$sum3 = 0

# using a for loop
for ($i = 1; $i -le 100; $i++) {
    # if the current number is even...
    if ($i % 2 -eq 0) {
        # ...add it to the sum variable
        $sum1 += $i
    }
}

# using ForEach-Object
1..100 | ForEach-Object {
    # if the current number is even...
    if ($_ % 2 -eq 0) {
        # ...add it to the sum2 variable
        $sum2 += $_
    }
}

# using a while loop
$j = 1
while ($j -le 100) {
    # check variable j to see if it is even...
    if ($j % 2 -eq 0) {
        # ...if it is, add it to sum3
        $sum3 += $j
    }
    # increment j
    $j++
}

# the checks - the answer should be 2550
Write-Output "The for loop produced a sum of $sum1"
Write-Output "The ForEach-Object loop produced a sum of $sum2"
Write-Output "The while loop produced a sum of $sum3"