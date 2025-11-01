(* Created by Wolfram Mathematic 13.3 *)
BeginPackage["ISerializeWorking`"]

ISerializeWorking::usage = "ISerializeWorking[expr] serializes the expression for working with data structures."

Begin["`Private`"]

ISerializeWorking[expr_] := Module[{},
    If[Head[expr] === List,
        Map[ISerializeWorking, expr],
        ToString[expr, InputForm]
    ]
]

End[]

EndPackage[]