; �ű��� Inno Setup �ű������ɡ�
; �����ĵ���ȡ���� INNO SETUP �ű��ļ���ϸ����!

[Setup]
AppName=CommunicationTest
AppVerName=CommunicationTest 8.2
AppPublisher=yzlm
DefaultDirName={pf}\CommunicationTest
DefaultGroupName=CommunicationTest
DisableProgramGroupPage=yes
Compression=lzma
SolidCompression=yes

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Files]
Source: "D:\GitHub\CommunicationTest\CommunicationTest\bin\Release\net8.0-windows\publish\CommunicationTest.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\GitHub\CommunicationTest\CommunicationTest\bin\Release\net8.0-windows\publish\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Icons]
Name: "{group}\CommunicationTest"; Filename: "{app}\CommunicationTest.exe"
Name: "{group}\{cm:UninstallProgram,CommunicationTest}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\CommunicationTest"; Filename: "{app}\CommunicationTest.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\CommunicationTest.exe"; Description: "{cm:LaunchProgram,CommunicationTest}"; Flags: nowait postinstall skipifsilent

