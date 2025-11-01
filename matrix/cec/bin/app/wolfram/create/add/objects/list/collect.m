(* Collect elements of a list that match a certain pattern *)
collectMatchingElements[list_, pattern_] := Select[list, StringMatchQ[#, pattern] &]

(* Example usage *)
exampleList = {"a1b2c3", "x=y+z", "hello", "12345", "foo=bar+baz"};
pattern = RegularExpression["[a-zA-Z0-9=+]+"];
collectedElements = collectMatchingElements[exampleList, pattern];
(* Matrix equation rank calculation *)
matrixEquationRank[matrix_] := Module[{},
    numericMatrix = N[matrix];
    MatrixRank[numericMatrix]
]

(* Example matrix *)
testMatrix = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
rank = matrixEquationRank[testMatrix];
Print["Matrix rank: ", rank]