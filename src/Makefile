# ************************************************************************ #
# This is a makefile that builds the Norwegian Bokmål morphological parser #
# ************************************************************************ #

LEX=nob-lex.txt adj-nob-lex.txt adj-nob-morph.txt adv-nob-lex.txt \
	noun-nob-lex.txt noun-nob-morph.txt verb-nob-lex.txt verb-nob-morph.txt \
	closed-nob-lex.txt pp-nob-lex.txt propernoun-nob-lex.txt punct-nob-lex.txt \
	abbr-nob-lex.txt


XFST = xfst #-utf8
LEXC = lexc #-utf8
TWOLC = twolc #-utf8

ifeq (victorio.uit.no, $(shell hostname))
XFST = /opt/sami/xerox/c-fsm/ix86-linux2.6-gcc3.4/bin/fst -utf8
LEXC = /opt/sami/xerox/bin/lexc -utf8
TWOLC = /opt/sami/xerox/bin/twolc -utf8
endif


# The ultimate goal is to build inob.fst, the generator
# This goal depends on nob.save being up to date.

inob.fst: ../bin/inob.fst
../bin/inob.fst: ../bin/nob.fst ../bin/nob.save ../bin/tok.fst ../bin/abbr.txt \
	../bin/allcaps.fst
	@echo
	@echo "*** Building the inverse inob.fst ***"
	@echo
	@printf "load ../bin/nob.save \n\
	invert net \n\
	save stack ../bin/inob.fst \n\
	quit \n" > ../tmp/inob-fst-script
	$(XFST) < ../tmp/inob-fst-script
	@rm -f ../tmp/inob-fst-script

 
# The first goal is to build nob.fst, the analyzer.
# This goal depends on nob.save and caseconv.fst being up to date

nob.fst: ../bin/nob.fst
../bin/nob.fst: ../bin/nob.save ../bin/caseconv.fst ../bin/allcaps.fst \
	../bin/tok.fst
	@echo
	@echo "*** Building nob.fst ***" ;
	@echo
	@printf "read regex @\"../bin/nob.save\" .o. \
	@\"../bin/caseconv.fst\" ; \n\
	save stack ../bin/nob.fst \n\
	quit \n" > ../tmp/nob-fst-script
	$(XFST) < ../tmp/nob-fst-script
	@rm -f ../tmp/nob-fst-script



# Here we make the abbrevation file for our current preprocessor, 
# the perl-based preprocess (located in the script catalogue)

empty:=
comma:=,
space:=$(empty) $(empty)
ABBRSRCS=$(subst $(space),$(comma),$(LEX))

scripts=$(HOME)/gtsvn/gt/script

abbr: ../bin/abbr.txt
../bin/abbr.txt: $(scripts)/abbr-extract $(scripts)/langTools/Util.pm $(LEX)
	@echo
	@echo "*** Extracting abbreviations from abbr-nob-lex.txt to abbr.txt ***" ;
	@echo
	@perl -I $(scripts) $(scripts)/abbr-extract \
		--output=$@ \
		--abbr_lex=abbr-nob-lex.txt \
		--lex=$(ABBRSRCS)


# The second goal is to build the caseconv.fst file
# This goal depends on case.regex

caseconv.fst: ../bin/caseconv.fst
../bin/caseconv.fst: case.regex
	@echo
	@echo "*** Building caseconv.fst ***" ;
	@echo
	@printf "read regex < case.regex \n\
	save stack ../bin/caseconv.fst \n\
	quit \n" > ../tmp/caseconv-script
	$(XFST) < ../tmp/caseconv-script
	@rm -f ../tmp/caseconv-script


# This goal depends on allcaps.regex

allcaps.fst: ../bin/allcaps.fst
../bin/allcaps.fst: allcaps.regex
	@echo
	@echo "*** Building allcaps.fst ***" ;
	@echo
	@printf "source allcaps.regex \n\
	save stack ../bin/allcaps.fst \n\
	quit \n" > ../tmp/tok-script
	$(XFST) < ../tmp/tok-script
	@rm -f ../tmp/tok-script


# The third goal is to build nob.save
# This goal depends on twol-nob.bin and a bunch of lexicon files

nob.save: ../bin/nob.save
../bin/nob.save: ../bin/twol-nob.bin $(LEX)
	@echo
	@echo "*** Building nob.save ***" ;
	@echo
	printf "compile-source $(LEX) \n\
	read-rules ../bin/twol-nob.bin \n\
	compose-result \n\
	save-result ../bin/nob.save \n\
	quit \n" > ../tmp/nob-save-script
	$(LEXC) < ../tmp/nob-save-script
	rm -f ../tmp/nob-save-script


# The fourth goal is to build twol-nob.bin
# This goal depends on twol-nob.txt

twol-nob.bin: ../bin/twol.nob.bin
../bin/twol-nob.bin: twol-nob.txt
	@echo
	@echo "*** Building twol-nob.bin ***" ;
	@echo
	@printf "read-grammar twol-nob.txt \n\
	compile \n\
	save-binary ../bin/twol-nob.bin \n\
	quit \n" > ../tmp/twol-nob-script
	$(TWOLC) < ../tmp/twol-nob-script
	@rm -f ../tmp/twol-nob-script

# Here we include a preprocessor.
# This goal depends on tok.txt

tok.fst: ../bin/tok.fst 
../bin/tok.fst: tok.txt
	@echo
	@echo "*** Building the tokenizer tok.fst ***" ;
	@echo
	@printf "source tok.txt \n\
	save stack ../bin/tok.fst \n\
	quit \n" > ../tmp/tok-script
	$(XFST) < ../tmp/tok-script
	@rm -f ../tmp/tok-script


# "make clean" is there to remove the binary files at will.

clean:
	@rm -f ../bin/*.fst ../bin/*.save ../bin/*.bin




