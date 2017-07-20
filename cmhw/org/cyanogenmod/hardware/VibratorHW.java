package org.cyanogenmod.hardware;

import org.cyanogenmod.internal.util.FileUtils;

public class VibratorHW {

    private static String LEVEL_PATH = "/sys/class/timed_output/vibrator/level";

    public static boolean isSupported() {
        return FileUtils.isFileWritable(LEVEL_PATH);
    }

    public static int getMaxIntensity()  {
        return 3300;
    }

    public static int getMinIntensity()  {
        return 1500;
    }

    public static int getWarningThreshold()  {
        return 3200;
    }

    public static int getCurIntensity()  {
        return Integer.parseInt(FileUtils.readOneLine(LEVEL_PATH));
    }

    public static int getDefaultIntensity()  {
        return 2800;
    }

    public static boolean setIntensity(int intensity)  {
        return FileUtils.writeLine(LEVEL_PATH, String.valueOf(intensity));
    }
}
