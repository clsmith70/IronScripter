# IronScripter
## A PowerShell Counting Challenge

This is my answer to the IronScripter "A PowerShell Counting Challenge" found at https://ironscripter.us/a-powershell-counting-challenge/.

There are two answers, one is in Beginner.ps1 which includes 3 separate ways to get the sum of all even numbers between 1 and 100.  The second is a function, <b>Get-CountingChallenge</b>, that allows the user to specify the starting, ending and interval numbers to return a Sum, Average and the set of numbers that were used in those calculations.

### Function Example Output

```
PS C:\&gt; Get-CountingChallenge -Start 1 -Stop 512 -Interval 4

  Sum Average DataSet
  --- ------- -------
32640     255 {1, 5, 9, 13…}
```