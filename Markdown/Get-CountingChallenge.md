---
external help file:
Module Name:
online version:
schema: 2.0.0
---

# Get-CountingChallenge

## SYNOPSIS
An answer to the IronScripter Challenge at https://ironscripter.us/a-powershell-counting-challenge/

## SYNTAX

```
Get-CountingChallenge [-Start] <Int32> [-Stop] <Int32> [-Interval] <Int32> [<CommonParameters>]
```

## DESCRIPTION
Gets the sum and average of every Nth number in a user specified range of positive values.


## EXAMPLES

### Example 1
```powershell
PS C:\> Get-CountingChallenge -Start 1 -Stop 512 -Interval 4

  Sum Average DataSet
  --- ------- -------
32640     255 {1, 5, 9, 13…}
```

Gets the Sum, Average and DataSet using a Start of 1, Stop of 512, and Interval of 4

### Example 2
```powershell
PS C:\> Get-CountingChallenge -Start 2 -Stop 150 -Interval 4

  Sum Average DataSet
  --- ------- -------
 2888      76 {2, 6, 10, 14…}
```

Gets the Sum, Average and DataSet using a Start of 2, Stop of 150, and Interval of 4

### Example 2
```powershell
PS C:\> Get-CountingChallenge -Start 5 -Stop 1020 -Interval 3

    Sum Average DataSet
    --- ------- -------
 173568     512 {5, 8, 11, 14…}
```

Gets the Sum, Average and DataSet using a Start of 5, Stop of 1020, and Interval of 3

## PARAMETERS

### -Interval
The value used to obtain the successive numbers in the set

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: Step

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Start
The lower boundar for the set (inclusive)

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: Begin, Iterator, LowerLimit, LowerBound

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Stop
The upper boundary for the set (inclusive based on the interval)

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: End, Limit, UpperLimit, UpperBound

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
