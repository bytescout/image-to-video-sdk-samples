'*******************************************************************************************'
'                                                                                           '
' Download Free Evaluation Version From:     https://bytescout.com/download/web-installer   '
'                                                                                           '
' Also available as Web API! Get free API Key https://app.pdf.co/signup                     '
'                                                                                           '
' Copyright © 2017-2020 ByteScout, Inc. All rights reserved.                                '
' https://www.bytescout.com                                                                 '
' https://www.pdf.co                                                                        '
'*******************************************************************************************'


' Create an instance of BytescoutImageToVideo.ImageToVideo ActiveX object
Set converter = CreateObject("BytescoutImageToVideo.ImageToVideo")

' Activate the component
converter.RegistrationName = "demo"
converter.RegistrationKey = "demo"

' converter.SetLogFile "log.txt"

' set input video file
converter.InputVideoFileName = "input.wmv"

' set input audio file
converter.ExternalAudioTrackFromFileName = "11k16bitpcm.wav"

' Set output video file name
converter.OutputVideoFileName = "ReplacedAudio.wmv"

' Run the conversion
converter.RunAndWait()

MsgBox "ReplacedAudio.wmv is ready. Script will try to open the video in default media player"

' Open result in default media player
Set shell = CreateObject("WScript.Shell")
shell.Run "ReplacedAudio.wmv", 1, false
Set shell = Nothing

Set converter = Nothing
