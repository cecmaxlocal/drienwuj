(* Wolfram Language Package *)
(* Created by Wolfram Mathematic 13.3 *)
BeginPackage["Fruits`"]

(* Exported symbols added here with SymbolName::usage *)

EndPackage[]
(* End of Wolfram Language Package *)
(* Wolfram Language Package *)
(* Created by Wolfram Mathematic 13.3 *)
Begin["`Private`"]
(* Implementation of the package *)
End[]
(* End of Wolfram Language Package *)
(* Wolfram Language Output *)
List[
    "CEC Matrix App Logo"
]
(* End of Wolfram Language Output *)
(* Wolfram Language Name List *)
(* Created by Wolfram Mathematic 13.3 *)
(* Begin Private Context *)
StringMatchQ[
    "a1b2c3",
    RegularExpression["[a-zA-Z0-9]+"]
] && StringMatchQ[
    "x=y+z",
    RegularExpression["[a-zA-Z=+]+"]
]
(* End Private Context *)
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