## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

SUBDIRS = filters . apertium cgbased

##################################################################
#### BEGIN: Add local processing instructions BELOW this line ####
##################################################################


generator-mt-gt-norm.hfst: generator-mt-gt-norm.tmp.hfst \
			$(top_builddir)/src/filters/remove-norm-comp-tags.hfst             \
			$(top_builddir)/src/filters/remove-Use_minus_PMatch-tags.hfst      \
			$(top_builddir)/src/filters/remove-Use_PMatch-strings.hfst         \
			$(top_builddir)/src/filters/remove-Use_GC-strings.hfst             \
			$(top_builddir)/src/filters/remove-Use_minusGC-tags.hfst
	$(AM_V_RGX2FST)$(PRINTF) "\
	    @\"$(top_builddir)/src/filters/remove-norm-comp-tags.hfst\"             \
	.o. @\"$(top_builddir)/src/filters/remove-Use_minus_PMatch-tags.hfst\"      \
	.o. @\"$(top_builddir)/src/filters/remove-Use_PMatch-strings.hfst\"         \
	.o. @\"$(top_builddir)/src/filters/remove-Use_GC-strings.hfst\"             \
	.o. @\"$(top_builddir)/src/filters/remove-Use_minusGC-tags.hfst\"           \
   	.o. @\"$<\" \
    	;" \
		| $(HFST_REGEXP2FST) $(HFST_FLAGS) $(HFST_FORMAT) \
			-S --xerox-composition=ON \
		-o $@


##################################################################
#### END: Add local processing instructions ABOVE this line ######
##################################################################

####### Other targets: ###########

# cleaning
clean-local:
	-rm -f *.hfst *.hfstol *.xfst *.foma

##########################################
# General build rules included from here:#

include $(top_srcdir)/am-shared/tools-mt-dir-include.am
