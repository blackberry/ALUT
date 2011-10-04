ifndef QCONFIG
QCONFIG=qconfig.mk
endif
include $(QCONFIG)

define PINFO
PINFO DESCRIPTION=ALUT
endef

NAME=alut

#===== EXTRA_INCVPATH - a space-separated list of directories to search for include files.
PUBLIC_INCVPATH=$(PROJECT_ROOT)/include
EXTRA_INCVPATH+=$(PROJECT_ROOT)/src/Include \
	$(PROJECT_ROOT)/../openal/include

#===== EXTRA_SRCVPATH - a space-separated list of directories to search for source files.
EXTRA_SRCVPATH+=$(PROJECT_ROOT)/src

INSTALLDIR=$(firstword $(INSTALLDIR_$(OS)) usr/lib)
	
include $(MKFILES_ROOT)/qtargets.mk

OPTIMIZE_TYPE_g=none
OPTIMIZE_TYPE=$(OPTIMIZE_TYPE_$(filter g, $(VARIANTS)))
