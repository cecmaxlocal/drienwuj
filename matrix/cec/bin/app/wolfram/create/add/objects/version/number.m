(* This is a comment *)
(* Wolfram Language Package *)
(* Created by Wolfram Mathematic 13.3 *)
BeginPackage["VersionNumber`"]
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
"1.0.0"
(* End of Wolfram Language Output *)
(* Wolfram Language Name List *)
(* Created by Wolfram Mathematic 13.3 *)
(* Begin Private Context *)
StringMatchQ[
    "1.0.0",
    RegularExpression["[0-9]+\\.[0-9]+\\.[0-
9]+"]
]
(* End Private Context *)
(* Wolfram Language Additions *)
(* Created by Wolfram Mathematic 13.3 *)
(* Wolfram Language Package *)
BeginPackage["Add`"]
(* Exported symbols added here with SymbolName::usage *)
EndPackage[]
(* End of Wolfram Language Additions *)
(* Wolfram Language Package *)
(* Created by Wolfram Mathematic 13.3 *)
(* Begin Private Context *)
VersionNumber = CreateFile["version.txt"]
WriteString[VersionNumber, "1.0.0"]
Close[VersionNumber]
(* End Private Context *)