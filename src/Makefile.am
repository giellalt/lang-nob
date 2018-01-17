## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

# always build . last here, and tagsets have to be built after morphology
SUBDIRS = phonology morphology filters phonetics hyphenation orthography syntax transcriptions tagsets .

####### Automake targets: ########

# Define target variables first, before assigning to them:
GT_ANALYSERS=
GT_GENERATORS=

#### Local modifications in *fst processing: ####
####
#### Copy the fallback targets, and rename them to the desired targets. Then:
#### Replace the 'cp' command (Xerox) / Prepend the hfst-invert command (Hfst -
#### remember to move the $<) with whatever you need to complete
#### the processing to get the final target transducer.
#### Remember to add the dependencies as well.
#### Also make sure that HFST and Xerox processing are the same.
####
#### If you add new transducers to be built, you need to add them to the
#### relevant variable, e.g.:
####
#### if CAN_HFST
#### GT_GENERATORS+=generator-oahpa-gt-norm.hfst
#### endif
####
#### NB!!!! The HFST targets should get a hyphen after 'analyser'/'generator'
#### respectively, to make the local targets minimally different from and
#### slightly more specific than the fallback targets. This is to avoid warnings
#### about duplicate targets. That is, the local targets should looke like:
####
#### analyser-%.hfst: analyser-%.tmp.hfst
#### generator-%.hfst: generator-%.tmp.hfst

##################################################################
#### BEGIN: Add local processing instructions BELOW this line ####
##################################################################

########################################################
#### Add language-specific transducer targets here: ####

#### Xerox transducers:
if CAN_XFST
GT_ANALYSERS+=
GT_GENERATORS+=
endif # CAN_XFST

#### HFST transducers
if CAN_HFST
GT_ANALYSERS+=
GT_GENERATORS+=
endif # CAN_HFST

#### FOMA transducers
if CAN_FOMA
GT_ANALYSERS+=
GT_GENERATORS+=
endif # CAN_FOMA

#################################################
#### Add language-specific build rules here: ####

# We need to add processing of language-specific tags in the analyser:
# HFST:
analyser-%-norm.hfst: analyser-%-norm.tmp.hfst \
					 filters/remove-Nynorsk-strings.hfst
	$(AM_V_RGX2FST)$(PRINTF) "\
				@\"filters/remove-Nynorsk-strings.hfst\" \
			.o. @\"$<\"                                       \
			;" \
		| $(HFST_REGEXP2FST) $(MORE_VERBOSITY) $(HFST_FLAGS) $(HFST_FORMAT) \
		  -S --xerox-composition=ON \
		| $(HFST_INVERT) $(MORE_VERBOSITY) $(HFST_FLAGS) \
		> $@

# Xerox:
analyser-%-norm.xfst: analyser-%-norm.tmp.xfst \
					filters/remove-Nynorsk-strings.xfst
	$(AM_V_XFST)$(PRINTF) "read regex                         \
				@\"filters/remove-Nynorsk-strings.xfst\" \
			.o. @\"$<\"                                       \
			;\n\
		 save stack $@\n\
		 quit\n" | $(XFST) $(VERBOSITY)

# F:
analyser-%-norm.foma: analyser-%-norm.tmp.foma \
					filters/remove-Nynorsk-strings.foma
	$(AM_V_XFST)$(PRINTF) "read regex                         \
				@\"filters/remove-Nynorsk-strings.foma\" \
			.o. @\"$<\"                                       \
			;\n\
		 save stack $@\n\
		 quit\n" | $(FOMA) $(VERBOSITY)

# We need to add processing of language-specific tags in the generator:
# HFST:
generator-%-norm.hfst: generator-%-norm.tmp.hfst \
					 filters/remove-Nynorsk-strings.hfst
	$(AM_V_RGX2FST)$(PRINTF) "\
				@\"filters/remove-Nynorsk-strings.hfst\" \
			.o. @\"$<\"                                       \
			;" \
		| $(HFST_REGEXP2FST) $(MORE_VERBOSITY) $(HFST_FLAGS) $(HFST_FORMAT) \
		  -S --xerox-composition=ON \
		> $@

# Xerox:
generator-%-norm.xfst: generator-%-norm.tmp.xfst \
					 filters/remove-Nynorsk-strings.xfst
	$(AM_V_XFST)$(PRINTF) "read regex                         \
				@\"filters/remove-Nynorsk-strings.xfst\" \
			.o. @\"$<\"                                       \
			;\n\
		 invert net\n\
		 save stack $@\n\
		 quit\n" | $(XFST) $(VERBOSITY)

# Foma:
generator-%-norm.foma: generator-%-norm.tmp.foma \
					 filters/remove-Nynorsk-strings.foma
	$(AM_V_XFST)$(PRINTF) "read regex                         \
				@\"filters/remove-Nynorsk-strings.foma\" \
			.o. @\"$<\"                                       \
			;\n\
		 invert net\n\
		 save stack $@\n\
		 quit\n" | $(FOMA) $(VERBOSITY)

##################################################################
#### END: Add local processing instructions ABOVE this line ######
##################################################################

include $(top_srcdir)/am-shared/src-dir-include.am
