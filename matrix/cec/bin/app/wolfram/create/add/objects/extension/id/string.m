(* Created by Wolfram Mathematic 13.3 *)
BeginPackage["Fruits`"]

(* Exported symbols added here with SymbolName::usage *)
Apple::usage = "Apple is a type of fruit."
Banana::usage = "Banana is a type of fruit."
Cherry::usage = "Cherry is a type of fruit."
EndPackage[]
(* End of Wolfram Language Package *)
(* Wolfram Language Package *)
(* Created by Wolfram Mathematic 13.3 *)
Begin["`Private`"]
(* Implementation of the package *)
Apple[] := "This is an apple."
Banana[] := "This is a banana."
Cherry[] := "This is a cherry."
End[]
(* End of Wolfram Language Package *)
(* Wolfram Language Additions *)
(* Created by Wolfram Mathematic 13.3 *)
(* Wolfram Language Package *)
BeginPackage["Add`"]
(* Exported symbols added here with SymbolName::usage *)
EndPackage[]
(* Created by Wolfram Mathematic 13.3 *)
Begin["`Private`"]
(* Implementation of package extension *)
StringPath[path_String] := FileNameTake[path, -1]
StringCheck[file_String] := FileExistsQ[file]
StringTangent[tang_String] := StringJoin["tang:", tang]
StringAnalysis[str_String] := StringLength[str]
End[]