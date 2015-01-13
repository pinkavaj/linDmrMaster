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
Sources=aprs.c convbin.c dmr.c main.c scheduler.c sqlite.c BPTC1969.c decode34Rate.c hyteraDecode.c rdac.c smaster.c

Objects=$(Sources:%.c=$(IntermediateDirectory)/%$(ObjectSuffix))
Depends=$(Objects:%$(ObjectSuffix)=%$(DependSuffix))
Preprocesses=$(Objects:%$(ObjectSuffix)=%$(PreprocessSuffix))

##
## Main Build Targets 
##
all: makeDirStep $(OutputFile)

$(OutputFile): $(Objects)
	@$(MakeDirCommand) $(@D)
	$(LinkerName) $(OutputSwitch)$(OutputFile) $(Objects) $(LibPath) $(Libs) $(LinkOptions)

makeDirStep:
	@test -d ./Release || $(MakeDirCommand) ./Release

##
## Objects
##


$(IntermediateDirectory)/%$(PreprocessSuffix): %.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(@) $(<)

$(IntermediateDirectory)/%$(DependSuffix): %.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(@:$(DependSuffix)=$(ObjectSuffix)) -MF$(@) -MM $(<)

$(IntermediateDirectory)/%$(ObjectSuffix): %.c $(IntermediateDirectory)/%$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) $(<) $(CmpOptions) $(ObjectSwitch)$(@) $(IncludePath)

-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(Depends)
	$(RM) $(Objects)
	$(RM) $(Preprocesses)
	$(RM) $(OutputFile)

.PHONY: all clean makeDirStep

.SECONDARY: $(Depends)
