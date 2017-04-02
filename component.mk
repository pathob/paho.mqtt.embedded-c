#
# Component Makefile for ESP32
#
# This Makefile should, at the very least, just include $(SDK_PATH)/make/component.mk. By default,
# this will take the sources in this directory, compile them and link them into
# lib(subdirectory_name).a in the build directory. This behaviour is entirely configurable,
# please read the SDK documents if you need to do this.
#

COMPONENT_SRCDIRS := MQTTClient-C/src/esp32 MQTTPacket/src MQTTClient-C/src
COMPONENT_ADD_INCLUDEDIRS := $(COMPONENT_SRCDIRS)

CFLAGS += -Wno-error=implicit-function-declaration -Wno-error=format= -DMQTTCLIENT_PLATFORM_HEADER=MQTTESP32.h -DHAVE_CONFIG_H
