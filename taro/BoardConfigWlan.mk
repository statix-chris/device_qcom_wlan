ifneq ($(TARGET_WLAN_CHIP),)
	BOARD_VENDOR_KERNEL_MODULES += $(foreach chip, $(TARGET_WLAN_CHIP), $(KERNEL_MODULES_OUT)/$(WLAN_CHIPSET)_$(chip).ko)
else
	BOARD_VENDOR_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/qca_cld3_wlan.ko
endif

BOARD_VENDOR_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/q5drv_linux.ko

WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_DRIVER_STATE_OFF := "OFF"
BOARD_WPA_SUPPLICANT_PRIVATE_LIB_EVENT := "ON"
BOARD_HOSTAPD_PRIVATE_LIB_EVENT := "ON"
