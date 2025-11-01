(* String manipulation functions *)
stringToUpper[str_] := StringUpper[str]
stringToLower[str_] := StringLower[str]
stringCapitalize[str_] := StringCapitalize[str]
stringLength[str_] := StringLength[str]
stringReverse[str_] := StringReverse[str]
stringReplace[str_, old_, new_] := StringReplace[str, old -> new]
stringSplit[str_, sep_] := StringSplit[str, sep]
stringJoin[list_] := StringJoin[list]
stringContainsQ[str_, substr_] := StringContainsQ[str, substr]
stringTrim[str_] := StringTrim[str]
stringPadLeft[str_, len_, pad_: " "] := StringPadLeft[str, len,
    pad]
stringPadRight[str_, len_, pad_: " "] := StringPadRight[str, len,
    pad]    
stringRepeat[str_, n_] := StringRepeat[str, n]
stringFind[str_, substr_] := StringPosition[str, substr]
stringCount[str_, substr_] := StringCount[str, substr]
stringReplaceRepeated[str_, rules_] := StringReplaceRepeated[str,
    rules]
stringJoinWithSeparator[list_, sep_] := StringRiffle[list, sep]
stringToExpression[str_] := ToExpression[str]
expressionToString[expr_] := ToString[expr]
stringFormat[fmt_, args___] := StringForm[fmt, args]
stringPadCenter[str_, len_, pad_: " "] := StringPadCenter[str, len,
    pad]
stringSplitLines[str_] := StringSplit[str, "\n"]
stringFromCharacterCode[code_] := FromCharacterCode[code]
stringToCharacterCode[str_] := ToCharacterCode[str]
stringIsAlphaNumericQ[str_] := StringMatchQ[str, 
  RegularExpression["[a-zA-Z0-9]+"]]
stringIsEquationLikeQ[str_] := StringMatchQ[str,
    RegularExpression["[a-zA-Z=+]+"]
     ]
(* End of String manipulation functions *)
(* Wolfram Language Additions *)
(* Created by Wolfram Mathematic 13.3 *)
(* Wolfram Language Package *)
(* Function to compute the composite equation for fog and gof *)
ClearAll[fog, gof]
fog[f_, g_] := f[g[x]]
gof[g_, f_] := g[f[x]]
(* Example usage *)
f[x_] := x^2
g[x_] := x + 1
(* Compute fog and gof *)
fogResult = fog[f, g]
gofResult = gof[g, f]
(* Function to compute the composite equation for matrices *)
ClearAll[matrixFog, matrixGof]
matrixFog[matrix_, f_] := f[matrix]
matrixGof[f_, matrix_] := matrix /. x_ :> f[x]
(* Example matrices *)
matrixA = {{1, 2}, {3, 4}};
matrixB = {{5, 6}, {7, 8}};
(* Example function *)
f[x_] := x^2
(* Compute matrix fog and gof *)
matrixFogResult = matrixFog[matrixA, f]
matrixGofResult = matrixGof[f, matrixB]
EndPackage[]
(* End of Wolfram Language Additions *)
(* Wolfram Language Package *)
(* Created by Wolfram Mathematic 13.3 *)
Begin["`Private`"]
(* Implementation of the package *)
End[]
(* End of Wolfram Language Package *)
