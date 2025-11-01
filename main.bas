'' -*- mode: freebasic -*-
 ''' Module: main.bas
 ''' Description: Main module for the application
#lang "fblite"
#include "matrix/cec/bin/desktop/bytreem/tree.bi"
#include "matrix/cec/bin/desktop/orange/pocket.bi"
#include "matrix/cec/bin/desktop/Queue/task.bi"
#include "matrix/cec/bin/desktop/templates/extension.bi"
#include "matrix/cec/bin/desktop/boolean/arguments.bi"
#include "matrix/cec/bin/desktop/push/event.bi"

 Sub Main()
     ' Initialize application
     InitializeApp()

     ' Start main loop
     Do While Not ShouldExit()
         ' Handle events
         ProcessEvents()
     Loop

     ' Cleanup before exit
     CleanupApp()
 End Sub