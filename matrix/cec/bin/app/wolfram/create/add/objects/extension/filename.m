(* Wolfram Language Package *)
(* Created by Wolfram Mathematic 13.3 *)
BeginPackage["Extension`"]
(* Exported symbols added here with SymbolName::usage *)
EndPackage[]
(* End of Wolfram Language Package *)
(* Wolfram Language Package *)
(* Created by Wolfram Mathematic 13.3 *)
Begin["`Private`"]
(* Implementation of the package *)
End[]
(* End of Wolfram Language Package *)
(* Wolfram Language Filename Extension Validation *)
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
(* End of Wolfram Language Filename Extension Validation *)
(* Wolfram Language Additions *)
(* Created by Wolfram Mathematic 13.3 *)
(* Wolfram Language Package *)
BeginPackage["Add`"]
(* Exported symbols added here with SymbolName::usage *)
EndPackage[]
(* End of Wolfram Language Additions *)
(* Wolfram Language Package *)
(* Created by Wolfram Mathematic 13.3 *)
Begin["`Private`"]
(* Implementation of the package *)
End[]
(* End of Wolfram Language Package *)
(* Wolfram Language Additions *)
(* Created by Wolfram Mathematic 13.3 *)
(* Wolfram Language Package *)
(* Wolfram Language Package *)
BeginPackage["Add`ExtensionFilename`"]

CreateExtensionFilename::usage = "CreateExtensionFilename[base, ext] builds a filename from base and ext after validating ext.";
ValidExtensionFilenameQ::usage = "ValidExtensionFilenameQ[s] returns True when s is a valid filename extension (alphanumerics, dash, underscore, dot).";
ValidMathExpressionStringQ::usage = "ValidMathExpressionStringQ[s] checks whether s consists only of characters typically used in simple math expressions.";
ListPackageItems::usage = "ListPackageItems[context] lists symbol names in the specified context (e.g. \"Global`\").";
SelectMathItems::usage = "SelectMathItems[list] selects strings from list that look like simple math expressions or symbols.";

Begin["`Private`"]

ValidExtensionFilenameQ[s_String] := StringMatchQ[s, RegularExpression["^[A-Za-z0-9_.-]+$"]]

ValidMathExpressionStringQ[s_String] := StringMatchQ[s, RegularExpression["^[A-Za-z0-9=+\\-*/^()\\s]+$"]]

CreateExtensionFilename[base_String, ext_String] := Module[{cleanBase = StringTrim[base]},
    If[!StringLength[cleanBase],
        Message[CreateExtensionFilename::base, base]; Throw[$Failed],
        Null
    ];
    If[!ValidExtensionFilenameQ[ext],
        Message[CreateExtensionFilename::ext, ext]; Throw[$Failed],
        Null
    ];
    If[StringEndsQ[cleanBase, "."],
        cleanBase <> ext,
        cleanBase <> "." <> ext
    ]
]

ListPackageItems[context_String] := Module[{ctx = StringTrim[context]},
    Names[If[StringMatchQ[ctx, __ ~~ "`"], ctx <> "*", ctx <> "`*"]]
]

SelectMathItems[list_List] := Select[list, StringQ[#] && ValidMathExpressionStringQ[#] &]

(* Helpful messages *)
CreateExtensionFilename::base = "Base filename `1` is empty or invalid.";
CreateExtensionFilename::ext = "Extension `1` is not a valid filename extension.";

End[]
EndPackage[]