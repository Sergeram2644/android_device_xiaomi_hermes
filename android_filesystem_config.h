#include <private/android_filesystem_config.h>

#define NO_ANDROID_FILESYSTEM_CONFIG_DEVICE_DIRS

#ifdef TARGET_HAS_LEGACY_CAMERA_HAL1
#define AID_CAMERASERVER AID_MEDIA
#else
#define AID_CAMERASERVER 1047
#endif

static const struct fs_path_config android_device_files[] = {
};
