# This is a makefile that builds the Northern Sami morphological parser
# *****************************************************************

# The ultimate goal is to build inob.fst, the generator
# This goal depends on nob.save being up to date.

inob.fst: ../bin/inob.fst
../bin/inob.fst: ../bin/nob.fst ../bin/nob.save ../bin/tok.fst \
	../bin/allcaps.fst
	@echo
	@echo "*** Building the inverse inob.fst ***"
	@echo
	@printf "load ../bin/nob.save \n\
	invert net \n\
	save stack ../bin/inob.fst \n\
	quit \n" > /tmp/inob-fst-script
	@xfst < /tmp/inob-fst-script
	@rm -f /tmp/inob-fst-script

 
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
	quit \n" > /tmp/nob-fst-script
	@xfst < /tmp/nob-fst-script
	@rm -f /tmp/nob-fst-script

# The second goal is to build the caseconv.fst file
# This goal depends on case.regex

caseconv.fst: ../bin/caseconv.fst
../bin/caseconv.fst: case.regex
	@echo
	@echo "*** Building caseconv.fst ***" ;
	@echo
	@printf "read regex < case.regex \n\
	save stack ../bin/caseconv.fst \n\
	quit \n" > /tmp/caseconv-script
	@xfst < /tmp/caseconv-script
	@rm -f /tmp/caseconv-script


# This goal depends on allcaps.regex

allcaps.fst: ../bin/allcaps.fst
../bin/allcaps.fst: allcaps.regex
	@echo
	@echo "*** Building allcaps.fst ***" ;
	@echo
	@printf "source allcaps.regex \n\
	save stack ../bin/allcaps.fst \n\
	quit \n" > /tmp/tok-script
	@xfst < /tmp/tok-script
	@rm -f /tmp/tok-script


# The third goal is to build nob.save
# This goal depends on twol-nob.bin and a bunch of lexicon files

nob.save: ../bin/nob.save
../bin/nob.save: ../bin/twol-nob.bin nob-lex.txt adj-nob-lex.txt \
	adv-nob-lex.txt noun-nob-lex.txt verb-nob-lex.txt \
	closed-nob-lex.txt pp-nob-lex.txt propernoun-nob-lex.txt
	@echo
	@echo "*** Building nob.save ***" ;
	@echo
	printf "compile-source nob-lex.txt adj-nob-lex.txt adv-nob-lex.txt \
	noun-nob-lex.txt verb-nob-lex.txt closed-nob-lex.txt \
	pp-nob-lex.txt propernoun-nob-lex.txt \n\
	read-rules ../bin/twol-nob.bin \n\
	compose-result \n\
	save-result ../bin/nob.save \n\
	quit \n" > /tmp/nob-save-script
	@lexc < /tmp/nob-save-script
	rm -f /tmp/nob-save-script


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
	quit \n" > /tmp/twol-nob-script
	@twolc < /tmp/twol-nob-script
	@rm -f /tmp/twol-nob-script

# Here we include a preprocessor.
# This goal depends on tok.txt

tok.fst: ../bin/tok.fst 
../bin/tok.fst: tok.txt
	@echo
	@echo "*** Building the tokenizer tok.fst ***" ;
	@echo
	@printf "source tok.txt \n\
	save stack ../bin/tok.fst \n\
	quit \n" > /tmp/tok-script
	@xfst < /tmp/tok-script
	@rm -f /tmp/tok-script


# "make clean" is there to remove the binary files at will.

clean:
	@rm -f ../bin/*.fst ../bin/*.save ../bin/*.bin




