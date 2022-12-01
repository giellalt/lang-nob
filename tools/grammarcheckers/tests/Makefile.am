## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

######## Test targets: ###########

if WANT_GRAMCHECK

# List here (space separated) all yaml files to be run as part of make check:
TESTS=\
	msyn-agr-adjmsc-adjneu.yaml \
	msyn-agr-adjneu-adjmsc.yaml \
	msyn-agr-detmsc-detneu.yaml \
	msyn-pred-adjmsc-adjneu.yaml \
	msyn-pred-adjneu-adjmsc.yaml \
	msyn-pron-nom-acc.yaml \
	msyn-qucompl-def-indef.yaml \
	msyn-setningar.yaml \
	msyn-v-inf-pres.yaml \
	msyn-v-pres-inf.yaml \
	neg-aa-og.yaml			    \
	neg-agr-adjmsc-adjneu.yaml  \
	neg-agr-adjneu-adjmsc.yaml  \
	neg-agr-detneu-detfem.yaml \
	neg-og-aa.yaml			    \
	neg-pred-adjmsc-adjneu.yaml \
	neg-pron-nom-acc.yaml	    \
	neg-v-inf-pres.yaml		    \
	neg-v-pres-inf.yaml		    \
	real-aa-og.yaml \
	real-og-aa.yaml \
	syn-adv-v3-v2.yaml \
	syn-embedded-v2-v3.yaml \
	syn-pp-v3-v2.yaml



# List tests that are presently (expected) failures here, ie things that should
# be fixed *later*, but is not critical at the moment:
XFAIL_TESTS=\
	msyn-setningar.yaml \
	real-bli-vaere.yaml \
	real-vaere-bli.yaml \
	syn-adv-v3-v2.yaml \
	syn-embedded-v2-v3.yaml \
	syn-pp-v3-v2.yaml

endif # WANT_GRAMCHECK

#### Do NOT edit below here: ####
include $(top_srcdir)/../giella-core/am-shared/tools-grammarcheckers-tests-dir-include.am
