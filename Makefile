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
$(IntermediateDirectory)/main$(ObjectSuffix): main.c $(IntermediateDirectory)/main$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "main.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/main$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main$(DependSuffix): main.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/main$(ObjectSuffix) -MF$(IntermediateDirectory)/main$(DependSuffix) -MM "main.c"

$(IntermediateDirectory)/dmr$(ObjectSuffix): dmr.c $(IntermediateDirectory)/dmr$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "dmr.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/dmr$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/dmr$(DependSuffix): dmr.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/dmr$(ObjectSuffix) -MF$(IntermediateDirectory)/dmr$(DependSuffix) -MM "dmr.c"

$(IntermediateDirectory)/rdac$(ObjectSuffix): rdac.c $(IntermediateDirectory)/rdac$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "rdac.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/rdac$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/rdac$(DependSuffix): rdac.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/rdac$(ObjectSuffix) -MF$(IntermediateDirectory)/rdac$(DependSuffix) -MM "rdac.c"

$(IntermediateDirectory)/smaster$(ObjectSuffix): smaster.c $(IntermediateDirectory)/smaster$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "smaster.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/smaster$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/smaster$(DependSuffix): smaster.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/smaster$(ObjectSuffix) -MF$(IntermediateDirectory)/smaster$(DependSuffix) -MM "smaster.c"

$(IntermediateDirectory)/sqlite$(ObjectSuffix): sqlite.c $(IntermediateDirectory)/sqlite$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "sqlite.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/sqlite$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/sqlite$(DependSuffix): sqlite.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/sqlite$(ObjectSuffix) -MF$(IntermediateDirectory)/sqlite$(DependSuffix) -MM "sqlite.c"

$(IntermediateDirectory)/convbin$(ObjectSuffix): convbin.c $(IntermediateDirectory)/convbin$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "convbin.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/convbin$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/convbin$(DependSuffix): convbin.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/convbin$(ObjectSuffix) -MF$(IntermediateDirectory)/convbin$(DependSuffix) -MM "convbin.c"

$(IntermediateDirectory)/BPTC1969$(ObjectSuffix): BPTC1969.c $(IntermediateDirectory)/BPTC1969$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "BPTC1969.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/BPTC1969$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/BPTC1969$(DependSuffix): BPTC1969.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/BPTC1969$(ObjectSuffix) -MF$(IntermediateDirectory)/BPTC1969$(DependSuffix) -MM "BPTC1969.c"

$(IntermediateDirectory)/decode34Rate$(ObjectSuffix): decode34Rate.c $(IntermediateDirectory)/decode34Rate$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "decode34Rate.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/decode34Rate$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/decode34Rate$(DependSuffix): decode34Rate.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/decode34Rate$(ObjectSuffix) -MF$(IntermediateDirectory)/decode34Rate$(DependSuffix) -MM "decode34Rate.c"

$(IntermediateDirectory)/hyteraDecode$(ObjectSuffix): hyteraDecode.c $(IntermediateDirectory)/hyteraDecode$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "hyteraDecode.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/hyteraDecode$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/hyteraDecode$(DependSuffix): hyteraDecode.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/hyteraDecode$(ObjectSuffix) -MF$(IntermediateDirectory)/hyteraDecode$(DependSuffix) -MM "hyteraDecode.c"

$(IntermediateDirectory)/aprs$(ObjectSuffix): aprs.c $(IntermediateDirectory)/aprs$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "aprs.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/aprs$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/aprs$(DependSuffix): aprs.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/aprs$(ObjectSuffix) -MF$(IntermediateDirectory)/aprs$(DependSuffix) -MM "aprs.c"

$(IntermediateDirectory)/scheduler$(ObjectSuffix): scheduler.c $(IntermediateDirectory)/scheduler$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "scheduler.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/scheduler$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/scheduler$(DependSuffix): scheduler.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/scheduler$(ObjectSuffix) -MF$(IntermediateDirectory)/scheduler$(DependSuffix) -MM "scheduler.c"

$(IntermediateDirectory)/%$(PreprocessSuffix): %.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(@) $(^)

-include $(IntermediateDirectory)/*$(DependSuffix)

clean:
	$(RM) $(Objects)
	$(RM) $(Objects:%$(ObjectSuffix)=%$(DependSuffix))
	$(RM) $(Objects:%$(ObjectSuffix)=%$(PreprocessSuffix))
	$(RM) $(OutputFile)

