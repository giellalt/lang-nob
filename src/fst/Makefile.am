## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

# always build . last here, and tagsets have to be built after morphology
SUBDIRS = morphology filters phonetics syllabification orthography transcriptions tagsets . test

####### Automake targets: ########

# Define target variables first, before assigning to them:
GT_ANALYSERS=
GT_GENERATORS=
CUSTOM_FSTS=

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

#################################################
#### Add language-specific build rules here: ####

# Hfst - add weights to compounds if using tropical-semiring fst format:
if WITH_OFST_TROPICAL
generator-raw-gt-desc.hfst: .generated/generator-raw-gt-desc.tmp.hfst
	$(AM_V_REWEIGHT)$(HFST_REWEIGHT) $(MORE_VERBOSITY) $(HFST_FLAGS) \
			-S '+Cmp' -a 10 --arcs-only -i $< \
			-S '+CmpS' -a 10 --arcs-only -i $< \
		> $@
endif

#		| $(HFST_REWEIGHT) $(MORE_VERBOSITY) $(HFST_FLAGS) \
#			-S '+Der'  -a 5 --arcs-only \
#		| $(HFST_REWEIGHT) $(MORE_VERBOSITY) $(HFST_FLAGS) \
#			-S '+Der1' -a 5 --arcs-only \
#		| $(HFST_REWEIGHT) $(MORE_VERBOSITY) $(HFST_FLAGS) \
#			-S '+Der2' -a 5 --arcs-only \
#		| $(HFST_REWEIGHT) $(MORE_VERBOSITY) $(HFST_FLAGS) \
#			-S '+Der3' -a 5 --arcs-only \
#		| $(HFST_REWEIGHT) $(MORE_VERBOSITY) $(HFST_FLAGS) \
#			-S '+Der4' -a 5 --arcs-only \
#		| $(HFST_REWEIGHT) $(MORE_VERBOSITY) $(HFST_FLAGS) \
#			-S '+Der5' -a 5 --arcs-only


# We need to specify -gt- to avoid applying the filters to the raw fst:
.generated/analyser-gt-desc.%: .generated/analyser-gt-desc.tmp.%                    \
					filters/remove-derivation-position-tags.% \
					filters/remove-norm-comp-tags.%           \
					filters/remove-usage-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/remove-usage-tags.$*\"               \
			.o. @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-norm-comp-tags.$*\"           \
			.o. @\"$<\"                                         \
			;\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)



# And also for the normative analyser (foma and hfst):
.generated/analyser-gt-norm.%: .generated/analyser-gt-norm.tmp.%                \
					filters/remove-Nynorsk-strings.%      \
					filters/remove-MinusSpell-strings.%   \
					filters/remove-derivation-position-tags.%   \
					filters/convert_to_flags-CmpNP-tags.% \
					filters/split-CmpNP-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/remove-Nynorsk-strings.$*\"      \
			.o. @\"filters/remove-MinusSpell-strings.$*\"   \
			.o. @\"filters/remove-derivation-position-tags.$*\"      \
			.o. @\"filters/convert_to_flags-CmpNP-tags.$*\" \
			.o. @\"filters/split-CmpNP-tags.$*\"            \
			.o. @\"$<\"                                     \
			;\n\
		 twosided flag-diacritics\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# The operation 'twosided flag-diacritics" crashes Xerox badly, so we do with
# a simpler, less restrictive normative fst when building with Xerox:
.generated/analyser-gt-norm.xfst: .generated/analyser-gt-norm.tmp.xfst \
					filters/remove-norm-comp-tags.xfst
	$(AM_V_XFST)$(PRINTF) "read regex \
				@\"filters/remove-norm-comp-tags.xfst\"                \
			.o. @\"$<\"                                                \
			;\n\
		 save stack $@\n\
		 quit\n" | $(XFST) $(VERBOSITY)

# Special case for the disamb analyser, since it follows the same filename
# pattern as the raw fst:
.generated/analyser-pmatchdisamb-gt-desc.hfst: \
					.generated/analyser-pmatchdisamb-gt-desc.tmp.hfst       \
					filters/remove-orig_lang-tags.hfst           \
					filters/remove-homonymy-tags.hfst            \
					filters/remove-derivation-position-tags.hfst \
					filters/remove-norm-comp-tags.hfst           \
					filters/rename-POS_before_Der-tags.hfst
	$(AM_V_XFST)$(PRINTF) "read regex                             \
				@\"filters/remove-derivation-position-tags.hfst\" \
			.o. @\"filters/remove-orig_lang-tags.hfst\"           \
			.o. @\"filters/remove-homonymy-tags.hfst\"            \
			.o. @\"filters/remove-norm-comp-tags.hfst\"           \
			.o. @\"filters/rename-POS_before_Der-tags.hfst\"      \
			.o. @\"$<\"                                           \
			;\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(HFST_XFST) -p $(MORE_VERBOSITY)

# Special case for the disamb analyser, since it follows the same filename
# pattern as the raw fst:
.generated/analyser-disamb-gt-desc.%: .generated/analyser-disamb-gt-desc.tmp.%      \
					filters/remove-orig_lang-tags.%           \
					filters/remove-derivation-position-tags.% \
					filters/remove-homonymy-tags.%            \
					filters/remove-norm-comp-tags.%           \
					filters/rename-POS_before_Der-tags.%
	$(AM_V_XFST)$(PRINTF) "read regex                           \
				@\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-orig_lang-tags.$*\"           \
			.o. @\"filters/remove-homonymy-tags.$*\"            \
			.o. @\"filters/remove-norm-comp-tags.$*\"           \
			.o. @\"filters/rename-POS_before_Der-tags.$*\"      \
			.o. @\"$<\"                                         \
			;\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# The HFST Grammar Checker analyser (keep the Err/SpaceCmp strings):
.generated/analyser-gramcheck-gt-desc.hfst: .generated/analyser-gramcheck-gt-desc.tmp.hfst \
				filters/remove-dialect-tags.hfst             \
				filters/remove-norm-comp-tags.hfst           \
				filters/remove-word-boundary.hfst			 \
				filters/remove-derivation-position-tags.hfst \
				filters/rename-POS_before_Der-tags.hfst      \
				filters/convert_to_flags-CmpNP-tags.hfst     \
				orthography/spellrelax-with-flagtags.compose.hfst
	$(AM_V_HXFST)$(PRINTF) "\
	set encode-weights ON\n\
	read regex \
			@\"filters/remove-dialect-tags.hfst\"             \
		.o. @\"filters/remove-norm-comp-tags.hfst\"           \
		.o. @\"filters/convert_to_flags-CmpNP-tags.hfst\"     \
		.o. @\"filters/split-CmpNP-tags.hfst\"                \
		.o. @\"filters/remove-derivation-position-tags.hfst\" \
		.o. @\"filters/rename-POS_before_Der-tags.hfst\"      \
		.o. @\"$<\"                                           \
		.o. @\"orthography/spellrelax-with-flagtags.compose.hfst\" \
		.o. @\"filters/remove-word-boundary.hfst\"            \
		;\n\
	twosided flag-diacritics\n\
	invert net\n\
	save stack $@\n\
	quit\n" | $(HFST_XFST) -p $(MORE_VERBOSITY)


# We need to add processing of language-specific tags in the analyser:
.generated/analyser-dict-gt-desc.%: .generated/analyser-dict-gt-desc.tmp.% \
					filters/remove-derivation-position-tags.% \
					filters/convert_to_flags-CmpNP-tags.%     \
					filters/split-CmpNP-tags.%                \
					filters/remove-grammatical-tags.%         \
					filters/remove-norm-comp-tags.%           \
					filters/remove-usage-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/remove-usage-tags.$*\"               \
			.o. @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-grammatical-tags.$*\"         \
			.o. @\"filters/remove-norm-comp-tags.$*\"           \
			.o. @\"filters/convert_to_flags-CmpNP-tags.$*\"     \
			.o. @\"filters/split-CmpNP-tags.$*\"                \
			.o. @\"$<\"                                         \
			;\n\
		 twosided flag-diacritics\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# We need to add processing of language-specific tags in the analyser:
.generated/analyser-dict-gt-desc-mobile.%: .generated/analyser-dict-gt-desc-mobile.tmp.% \
					filters/remove-derivation-position-tags.% \
					filters/remove-grammatical-tags.%         \
					filters/remove-norm-comp-tags.%           \
					filters/convert_to_flags-CmpNP-tags.%     \
					filters/split-CmpNP-tags.%                \
					filters/remove-usage-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/remove-usage-tags.$*\"               \
			.o. @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-grammatical-tags.$*\"         \
			.o. @\"filters/remove-norm-comp-tags.$*\"           \
			.o. @\"filters/convert_to_flags-CmpNP-tags.$*\"     \
			.o. @\"filters/split-CmpNP-tags.$*\"                \
			.o. @\"$<\"                                         \
			;\n\
		 twosided flag-diacritics\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

.generated/generator-gt-norm.%: .generated/generator-gt-norm.tmp.%              \
					filters/remove-Nynorsk-strings.%      \
					filters/remove-MinusSpell-strings.%   \
					filters/remove-norm-comp-tags.%       \
					filters/remove-derivation-position-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/remove-Nynorsk-strings.$*\"      \
			.o. @\"filters/remove-MinusSpell-strings.$*\"   \
			.o. @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-norm-comp-tags.$*\"       \
			.o. @\"$<\"                                     \
			;\n\
		 $(INVERT_XFST)$(INVERT_FOMA)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

.generated/generator-gt-desc.%: .generated/generator-gt-desc.tmp.%              \
					filters/remove-norm-comp-tags.%       \
					filters/remove-derivation-position-tags.% \
					filters/remove-usage-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/remove-usage-tags.$*\"               \
			.o. @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-norm-comp-tags.$*\"       \
			.o. @\"$<\"                                     \
			;\n\
		 $(INVERT_XFST)$(INVERT_FOMA)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)


# These are older (?) -- XXX look at these.

# Xerox:
.generated/generator-%-norm.xfst: .generated/generator-%-norm.tmp.xfst \
					 filters/remove-Nynorsk-strings.xfst
	$(AM_V_XFST)$(PRINTF) "read regex                    \
				@\"filters/remove-Nynorsk-strings.xfst\" \
			.o. @\"$<\"                                  \
			;\n\
		 invert net\n\
		 save stack $@\n\
		 quit\n" | $(XFST) $(VERBOSITY)

##################################################################
#### END: Add local processing instructions ABOVE this line ######
##################################################################

include $(top_srcdir)/../giella-core/am-shared/src-fst-dir-include.am
include $(top_srcdir)/../giella-core/am-shared/devtest-include.am
