.PHONY: .FORCE

BUILD_STAMP	= $(UTILS_DIR)/build_stamp.rb
STAMP       = $(TARGET_OBJ_DIR)/build.stamp

$(STAMP): .FORCE
	$(V1) CPP_PATH="$(ARM_SDK_DIR)/bin" CFLAGS="$(CFLAGS)" TARGET=$(TARGET) ruby $(BUILD_STAMP) $(SETTINGS_FILE) $(STAMP)
