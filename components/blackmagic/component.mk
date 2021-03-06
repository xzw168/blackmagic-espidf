#
# Component Makefile
#

COMPONENT_ADD_INCLUDEDIRS := blackmagic/src/include blackmagic/src/platforms/common

COMPONENT_SRCDIRS := blackmagic/src/target blackmagic/src blackmagic/src/platforms/common
CFLAGS += -DNO_LIBOPENCM3=1 -Wno-error=char-subscripts -Wno-char-subscripts -DPROBE_HOST=esp8266
COMPONENT_OBJEXCLUDE := blackmagic/src/platforms/common/cdcacm.o

$(COMPONENT_PATH)/blackmagic/src/include/version.h: 
	$(MAKE) -C $(COMPONENT_PATH)/blackmagic/src include/version.h
    
build: $(COMPONENT_PATH)/blackmagic/src/include/version.h
    

