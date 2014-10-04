ProjectName            :=Master_Server
ConfigurationName      :=Release
IntermediateDirectory  :=./Release
OutDir                 := $(IntermediateDirectory)
WorkspacePath          := 
ProjectPath            := 
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=
Date                   :=
LinkerName             :=gcc
ArchiveTool            :=ar rcus
SharedObjectLinkerName :=gcc -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
CompilerName           :=gcc
C_CompilerName         :=gcc
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
MakeDirCommand         :=mkdir -p
CmpOptions             := -g $(Preprocessors)
LinkOptions            :=  
IncludePath            :=  "$(IncludeSwitch)." "$(IncludeSwitch)." 
RcIncludePath          :=
Libs                   :=$(LibrarySwitch)pthread $(LibrarySwitch)sqlite3 $(LibrarySwitch)m
LibPath                := "$(LibraryPathSwitch)." 


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Sources=main.c dmr.c rdac.c smaster.c sqlite.c webserv.c htmlreplace.c htmlpost.c convbin.c BPTC1969.c decode34Rate.c hyteraDecode.c aprs.c scheduler.c
Objects=$(Sources:%.c=$(IntermediateDirectory)/%$(ObjectSuffix))

##
## Main Build Targets 
##
all: $(OutputFile)

$(OutputFile): makeDirStep $(Objects)
	@$(MakeDirCommand) $(@D)
	$(LinkerName) $(OutputSwitch)$(OutputFile) $(Objects) $(LibPath) $(Libs) $(LinkOptions)

makeDirStep:
	@test -d ./Release || $(MakeDirCommand) ./Release

PreBuild:

##
## Objects
##

$(IntermediateDirectory)/%$(ObjectSuffix): %.c $(IntermediateDirectory)/%$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) $(<) $(CmpOptions) $(ObjectSwitch)$(@) $(IncludePath)

$(IntermediateDirectory)/%$(DependSuffix): %.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(@:$(DependSuffix)=$(ObjectSuffix)) -MF$(@) -MM $(^)

$(IntermediateDirectory)/%$(PreprocessSuffix): %.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(@) $(^)

-include $(IntermediateDirectory)/*$(DependSuffix)

clean:
	$(RM) $(Objects)
	$(RM) $(Objects:%$(ObjectSuffix)=%$(DependSuffix))
	$(RM) $(Objects:%$(ObjectSuffix)=%$(PreprocessSuffix))
	$(RM) $(OutputFile)

.SECONDARY: $(Objects:%$(ObjectSuffix)=%$(DependSuffix))
