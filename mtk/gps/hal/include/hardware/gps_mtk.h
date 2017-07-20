#ifndef ANDROID_INCLUDE_HARDWARE_GPS_MTK_H
#define ANDROID_INCLUDE_HARDWARE_GPS_MTK_H

#include <hardware/gps.h>

__BEGIN_DECLS

typedef struct {
    size_t          size;
    int     prn;
    float   snr;
    float   elevation;
    float   azimuth;
    bool has_ephemeris;
    bool has_almanac;
    bool used_in_fix;
} GnssSvInfo_mtk;

typedef struct {
    size_t          size;
    int         num_svs;
    GnssSvInfo_mtk   sv_list[GNSS_MAX_SVS];
} GnssSvStatus_mtk;

typedef struct _GpsCallbacks_mtk {
    GpsCallbacks base;
} GpsCallbacks_mtk;

__END_DECLS

#endif