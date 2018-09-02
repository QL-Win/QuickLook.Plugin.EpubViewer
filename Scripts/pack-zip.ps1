Remove-Item ..\QuickLook.Plugin.EpubViewer.qlplugin -ErrorAction SilentlyContinue

$files = Get-ChildItem -Path ..\bin\Release\ -Exclude *.pdb,*.xml
Compress-Archive $files ..\QuickLook.Plugin.EpubViewer.zip
Move-Item ..\QuickLook.Plugin.EpubViewer.zip ..\QuickLook.Plugin.EpubViewer.qlplugin