Attribute VB_Name = "LoadLibrary"
'   Test Sequencer: A macro file to communicate measurement insturuments.
'   Copyright 2023 Takatoshi Yamaoka
'
'   Licensed under the Apache License, Version 2.0 (the "License");
'   you may not use this file except in compliance with the License.
'   You may obtain a copy of the License at
'
'       http://www.apache.org/licenses/LICENSE-2.0
'
'   Unless required by applicable law or agreed to in writing, software
'   distributed under the License is distributed on an "AS IS" BASIS,
'   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
'   See the License for the specific language governing permissions and
'   limitations under the License.

Option Explicit

Declare PtrSafe Function LoadLibrary Lib "kernel32.dll" Alias "LoadLibraryA" (ByVal fileName As String) As Long

Sub AddDllDirectories(DLLFoldPath As String)
#If VBA7 And Win64 Then
    LoadLibrary (DLLFoldPath & "\YKMUSB64.dll")
    LoadLibrary (DLLFoldPath & "\tmctl64.dll")
#Else
    LoadLibrary (DLLFoldPath & "\YKMUSB.dll")
    LoadLibrary (DLLFoldPath & "\tmctl.dll")
#End If
End Sub