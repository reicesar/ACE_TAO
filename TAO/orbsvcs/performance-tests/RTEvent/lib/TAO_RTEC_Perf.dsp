# Microsoft Developer Studio Project File - Name="RTECPerf DLL" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=RTECPerf DLL - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "TAO_RTEC_Perf.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "TAO_RTEC_Perf.mak" CFG="RTECPerf DLL - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "RTECPerf DLL - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "RTECPerf DLL - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "RTECPerf DLL - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ""
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "..\..\.." /I "..\..\..\.." /I "..\..\..\..\.." /D EC_Test_HAS_DLL=1 /D "TAO_RTEC_PERF_BUILD_DLL" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /FD /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 ace.lib TAO.lib TAO_PortableServer.lib TAO_Svc_Utils.lib TAO_RTEvent.lib /nologo /subsystem:windows /dll /machine:I386 /out:"..\..\..\..\..\bin\RTECPerf.dll" /libpath:"..\..\..\orbsvcs" /libpath:"..\..\..\..\tao" /libpath:"..\..\..\..\tao\PortableServer" /libpath:"..\..\..\..\..\ace"

!ELSEIF  "$(CFG)" == "RTECPerf DLL - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ""
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /I "..\..\.." /I "..\..\..\.." /I "..\..\..\..\.." /D EC_Test_HAS_DLL=1 /D "TAO_RTEC_PERF_BUILD_DLL" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /FD /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 aced.lib TAOd.lib TAO_PortableServerd.lib TAO_Svc_Utilsd.lib TAO_RTEventd.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"..\..\..\..\..\bin\RTECPerfd.dll" /pdbtype:sept /libpath:"..\..\..\orbsvcs" /libpath:"..\..\..\..\tao" /libpath:"..\..\..\..\tao\PortableServer" /libpath:"..\..\..\..\..\ace"

!ENDIF 

# Begin Target

# Name "RTECPerf DLL - Win32 Release"
# Name "RTECPerf DLL - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter ".cpp"
# Begin Source File

SOURCE=.\Client_Group.cpp
# End Source File
# Begin Source File

SOURCE=.\Consumer.cpp
# End Source File
# Begin Source File

SOURCE=.\Loopback_Consumer.cpp
# End Source File
# Begin Source File

SOURCE=.\Loopback_Supplier.cpp
# End Source File
# Begin Source File

SOURCE=.\ORB_Holder.cpp
# End Source File
# Begin Source File

SOURCE=.\RT_Class.cpp
# End Source File
# Begin Source File

SOURCE=.\RTCORBA_Setup.cpp
# End Source File
# Begin Source File

SOURCE=.\RTEC_Initializer.cpp
# End Source File
# Begin Source File

SOURCE=.\Send_Task.cpp
# End Source File
# Begin Source File

SOURCE=.\Supplier.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter ".h"
# Begin Source File

SOURCE=.\Auto_Disconnect.h
# End Source File
# Begin Source File

SOURCE=.\Client_Group.h
# End Source File
# Begin Source File

SOURCE=.\Consumer.h
# End Source File
# Begin Source File

SOURCE=.\Loopback_Consumer.h
# End Source File
# Begin Source File

SOURCE=.\Loopback_Supplier.h
# End Source File
# Begin Source File

SOURCE=.\ORB_Holder.h
# End Source File
# Begin Source File

SOURCE=.\RIR_Narrow.h
# End Source File
# Begin Source File

SOURCE=.\RT_Class.h
# End Source File
# Begin Source File

SOURCE=.\RTCORBA_Setup.h
# End Source File
# Begin Source File

SOURCE=.\RTEC_Initializer.h
# End Source File
# Begin Source File

SOURCE=.\rtec_perf_export.h
# End Source File
# Begin Source File

SOURCE=.\Send_Task.h
# End Source File
# Begin Source File

SOURCE=.\Servant_var.h
# End Source File
# Begin Source File

SOURCE=.\Supplier.h
# End Source File
# End Group
# Begin Group "Inline Files"

# PROP Default_Filter ".i"
# Begin Source File

SOURCE=.\Auto_Disconnect.inl
# End Source File
# Begin Source File

SOURCE=.\Client_Group.inl
# End Source File
# Begin Source File

SOURCE=.\ORB_Holder.inl
# End Source File
# Begin Source File

SOURCE=.\RT_Class.inl
# End Source File
# Begin Source File

SOURCE=.\RTCORBA_Setup.inl
# End Source File
# Begin Source File

SOURCE=.\Servant_var.inl
# End Source File
# End Group
# Begin Group "Template Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Auto_Disconnect.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\RIR_Narrow.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\Servant_var.cpp
# PROP Exclude_From_Build 1
# End Source File
# End Group
# End Target
# End Project
