## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

######## Test targets: ###########

if WANT_GRAMCHECK

# List here (space separated) all yaml files to be run as part of make check:
TESTS=\
	msyn-agr-adjmsc-adjneu.yaml \
	msyn-agr-adjneu-adjmsc.yaml \
	msyn-det-msc-neu.yaml \
	msyn-pred-adjmsc-adjneu.yaml \
	msyn-pred-adjneu-adjmsc.yaml \
	msyn-pron-nom-acc.yaml \
	msyn-qucompl-def-indef.yaml \
	msyn-setningar.yaml \
	msyn-v-inf-pres.yaml \
	msyn-v-pres-inf.yaml \
	real-aa-og.yaml \
	real-bli-vaere.yaml \
	real-og-aa.yaml \
	real-og-aa.yaml \
	real-vaere-bli.yaml



# List tests that are presently (expected) failures here, ie things that should
# be fixed *later*, but is not critical at the moment:
XFAIL_TESTS=\
	msyn-agr-adjmsc-adjneu.yaml \
	msyn-agr-adjneu-adjmsc.yaml \
	msyn-det-msc-neu.yaml \
	msyn-pred-adjmsc-adjneu.yaml \
	msyn-pred-adjneu-adjmsc.yaml \
	msyn-pron-nom-acc.yaml \
	msyn-qucompl-def-indef.yaml \
	msyn-setningar.yaml \
	msyn-v-inf-pres.yaml \
	msyn-v-pres-inf.yaml \
	real-aa-og.yaml \
	real-bli-vaere.yaml \
	real-og-aa.yaml \
	real-og-aa.yaml \
	real-vaere-bli.yaml

endif # WANT_GRAMCHECK

#### Do NOT edit below here: ####
include $(top_srcdir)/../giella-core/am-shared/tools-grammarcheckers-tests-dir-include.am
