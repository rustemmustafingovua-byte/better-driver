.class public Landroidx/exifinterface/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/exifinterface/media/ExifInterface$ExifTag;,
        Landroidx/exifinterface/media/ExifInterface$ExifAttribute;,
        Landroidx/exifinterface/media/ExifInterface$Rational;,
        Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;,
        Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;,
        Landroidx/exifinterface/media/ExifInterface$IfdType;,
        Landroidx/exifinterface/media/ExifInterface$ExifStreamType;
    }
.end annotation


# static fields
.field public static final ALTITUDE_ABOVE_SEA_LEVEL:S = 0x0s

.field public static final ALTITUDE_BELOW_SEA_LEVEL:S = 0x1s

.field private static final ASCII:Ljava/nio/charset/Charset;

.field public static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field public static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field public static final BITS_PER_SAMPLE_RGB:[I

.field static final BYTE_ALIGN_II:S = 0x4949s

.field static final BYTE_ALIGN_MM:S = 0x4d4ds

.field public static final COLOR_SPACE_S_RGB:I = 0x1

.field public static final COLOR_SPACE_UNCALIBRATED:I = 0xffff

.field public static final CONTRAST_HARD:S = 0x2s

.field public static final CONTRAST_NORMAL:S = 0x0s

.field public static final CONTRAST_SOFT:S = 0x1s

.field public static final DATA_DEFLATE_ZIP:I = 0x8

.field public static final DATA_HUFFMAN_COMPRESSED:I = 0x2

.field public static final DATA_JPEG:I = 0x6

.field public static final DATA_JPEG_COMPRESSED:I = 0x7

.field public static final DATA_LOSSY_JPEG:I = 0x884c

.field public static final DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field public static final DATA_UNCOMPRESSED:I = 0x1

.field private static final DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DATETIME_VALUE_STRING_LENGTH:I = 0x13

.field private static final DEBUG:Z

.field private static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field static final EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final EXPOSURE_MODE_AUTO:S = 0x0s

.field public static final EXPOSURE_MODE_AUTO_BRACKET:S = 0x2s

.field public static final EXPOSURE_MODE_MANUAL:S = 0x1s

.field public static final EXPOSURE_PROGRAM_ACTION:S = 0x6s

.field public static final EXPOSURE_PROGRAM_APERTURE_PRIORITY:S = 0x3s

.field public static final EXPOSURE_PROGRAM_CREATIVE:S = 0x5s

.field public static final EXPOSURE_PROGRAM_LANDSCAPE_MODE:S = 0x8s

.field public static final EXPOSURE_PROGRAM_MANUAL:S = 0x1s

.field public static final EXPOSURE_PROGRAM_NORMAL:S = 0x2s

.field public static final EXPOSURE_PROGRAM_NOT_DEFINED:S = 0x0s

.field public static final EXPOSURE_PROGRAM_PORTRAIT_MODE:S = 0x7s

.field public static final EXPOSURE_PROGRAM_SHUTTER_PRIORITY:S = 0x4s

.field public static final FILE_SOURCE_DSC:S = 0x3s

.field public static final FILE_SOURCE_OTHER:S = 0x0s

.field public static final FILE_SOURCE_REFLEX_SCANNER:S = 0x2s

.field public static final FILE_SOURCE_TRANSPARENT_SCANNER:S = 0x1s

.field public static final FLAG_FLASH_FIRED:S = 0x1s

.field public static final FLAG_FLASH_MODE_AUTO:S = 0x18s

.field public static final FLAG_FLASH_MODE_COMPULSORY_FIRING:S = 0x8s

.field public static final FLAG_FLASH_MODE_COMPULSORY_SUPPRESSION:S = 0x10s

.field public static final FLAG_FLASH_NO_FLASH_FUNCTION:S = 0x20s

.field public static final FLAG_FLASH_RED_EYE_SUPPORTED:S = 0x40s

.field public static final FLAG_FLASH_RETURN_LIGHT_DETECTED:S = 0x6s

.field public static final FLAG_FLASH_RETURN_LIGHT_NOT_DETECTED:S = 0x4s

.field private static final FLIPPED_ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_CHUNKY:S = 0x1s

.field public static final FORMAT_PLANAR:S = 0x2s

.field public static final GAIN_CONTROL_HIGH_GAIN_DOWN:S = 0x4s

.field public static final GAIN_CONTROL_HIGH_GAIN_UP:S = 0x2s

.field public static final GAIN_CONTROL_LOW_GAIN_DOWN:S = 0x3s

.field public static final GAIN_CONTROL_LOW_GAIN_UP:S = 0x1s

.field public static final GAIN_CONTROL_NONE:S = 0x0s

.field public static final GPS_DIRECTION_MAGNETIC:Ljava/lang/String; = "M"

.field public static final GPS_DIRECTION_TRUE:Ljava/lang/String; = "T"

.field public static final GPS_DISTANCE_KILOMETERS:Ljava/lang/String; = "K"

.field public static final GPS_DISTANCE_MILES:Ljava/lang/String; = "M"

.field public static final GPS_DISTANCE_NAUTICAL_MILES:Ljava/lang/String; = "N"

.field public static final GPS_MEASUREMENT_2D:Ljava/lang/String; = "2"

.field public static final GPS_MEASUREMENT_3D:Ljava/lang/String; = "3"

.field public static final GPS_MEASUREMENT_DIFFERENTIAL_CORRECTED:S = 0x1s

.field public static final GPS_MEASUREMENT_INTERRUPTED:Ljava/lang/String; = "V"

.field public static final GPS_MEASUREMENT_IN_PROGRESS:Ljava/lang/String; = "A"

.field public static final GPS_MEASUREMENT_NO_DIFFERENTIAL:S = 0x0s

.field public static final GPS_SPEED_KILOMETERS_PER_HOUR:Ljava/lang/String; = "K"

.field public static final GPS_SPEED_KNOTS:Ljava/lang/String; = "N"

.field public static final GPS_SPEED_MILES_PER_HOUR:Ljava/lang/String; = "M"

.field private static final GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEIF_BRAND_AVIF:[B

.field private static final HEIF_BRAND_AVIS:[B

.field private static final HEIF_BRAND_HEIC:[B

.field private static final HEIF_BRAND_MIF1:[B

.field private static final HEIF_TYPE_FTYP:[B

.field static final IDENTIFIER_EXIF_APP1:[B

.field private static final IDENTIFIER_XMP_APP1:[B

.field private static final IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field private static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_IFD:I = 0xd

.field private static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_OFFSET:I = 0x8

.field private static final IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_TYPE_EXIF:I = 0x1

.field private static final IFD_TYPE_GPS:I = 0x2

.field private static final IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final IFD_TYPE_PEF:I = 0x9

.field private static final IFD_TYPE_PREVIEW:I = 0x5

.field private static final IFD_TYPE_PRIMARY:I = 0x0

.field private static final IFD_TYPE_THUMBNAIL:I = 0x4

.field private static final IMAGE_TYPE_AVIF:I = 0xf

.field private static final IMAGE_TYPE_DNG:I = 0x3

.field private static final IMAGE_TYPE_HEIC:I = 0xc

.field private static final IMAGE_TYPE_JPEG:I = 0x4

.field private static final IMAGE_TYPE_ORF:I = 0x7

.field private static final IMAGE_TYPE_PEF:I = 0x8

.field private static final IMAGE_TYPE_PNG:I = 0xd

.field private static final IMAGE_TYPE_RAF:I = 0x9

.field private static final IMAGE_TYPE_RW2:I = 0xa

.field private static final IMAGE_TYPE_UNKNOWN:I = 0x0

.field private static final IMAGE_TYPE_WEBP:I = 0xe

.field static final JPEG_SIGNATURE:[B

.field public static final LATITUDE_NORTH:Ljava/lang/String; = "N"

.field public static final LATITUDE_SOUTH:Ljava/lang/String; = "S"

.field public static final LIGHT_SOURCE_CLOUDY_WEATHER:S = 0xas

.field public static final LIGHT_SOURCE_COOL_WHITE_FLUORESCENT:S = 0xes

.field public static final LIGHT_SOURCE_D50:S = 0x17s

.field public static final LIGHT_SOURCE_D55:S = 0x14s

.field public static final LIGHT_SOURCE_D65:S = 0x15s

.field public static final LIGHT_SOURCE_D75:S = 0x16s

.field public static final LIGHT_SOURCE_DAYLIGHT:S = 0x1s

.field public static final LIGHT_SOURCE_DAYLIGHT_FLUORESCENT:S = 0xcs

.field public static final LIGHT_SOURCE_DAY_WHITE_FLUORESCENT:S = 0xds

.field public static final LIGHT_SOURCE_FINE_WEATHER:S = 0x9s

.field public static final LIGHT_SOURCE_FLASH:S = 0x4s

.field public static final LIGHT_SOURCE_FLUORESCENT:S = 0x2s

.field public static final LIGHT_SOURCE_ISO_STUDIO_TUNGSTEN:S = 0x18s

.field public static final LIGHT_SOURCE_OTHER:S = 0xffs

.field public static final LIGHT_SOURCE_SHADE:S = 0xbs

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_A:S = 0x11s

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_B:S = 0x12s

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_C:S = 0x13s

.field public static final LIGHT_SOURCE_TUNGSTEN:S = 0x3s

.field public static final LIGHT_SOURCE_UNKNOWN:S = 0x0s

.field public static final LIGHT_SOURCE_WARM_WHITE_FLUORESCENT:S = 0x10s

.field public static final LIGHT_SOURCE_WHITE_FLUORESCENT:S = 0xfs

.field public static final LONGITUDE_EAST:Ljava/lang/String; = "E"

.field public static final LONGITUDE_WEST:Ljava/lang/String; = "W"

.field private static final MARKER:B = -0x1t

.field static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field private static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field private static final MAX_THUMBNAIL_SIZE:I = 0x200

.field public static final METERING_MODE_AVERAGE:S = 0x1s

.field public static final METERING_MODE_CENTER_WEIGHT_AVERAGE:S = 0x2s

.field public static final METERING_MODE_MULTI_SPOT:S = 0x4s

.field public static final METERING_MODE_OTHER:S = 0xffs

.field public static final METERING_MODE_PARTIAL:S = 0x6s

.field public static final METERING_MODE_PATTERN:S = 0x5s

.field public static final METERING_MODE_SPOT:S = 0x3s

.field public static final METERING_MODE_UNKNOWN:S = 0x0s

.field private static final NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_SIGNATURE_1:S = 0x4f52s

.field private static final ORF_SIGNATURE_2:S = 0x5352s

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field public static final PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field public static final PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field public static final PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final PNG_CHUNK_CRC_BYTE_LENGTH:I = 0x4

.field private static final PNG_CHUNK_TYPE_EXIF:I = 0x65584966

.field private static final PNG_CHUNK_TYPE_IEND:I = 0x49454e44

.field private static final PNG_CHUNK_TYPE_IHDR:I = 0x49484452

.field private static final PNG_CHUNK_TYPE_ITXT:I = 0x69545874

.field static final PNG_ITXT_XMP_KEYWORD:[B

.field private static final PNG_SIGNATURE:[B

.field private static final RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field private static final RATIONAL_TAGS_HANDLED_AS_DECIMALS_FOR_COMPATIBILITY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final REDUCED_RESOLUTION_IMAGE:I = 0x1

.field public static final RENDERED_PROCESS_CUSTOM:S = 0x1s

.field public static final RENDERED_PROCESS_NORMAL:S = 0x0s

.field public static final RESOLUTION_UNIT_CENTIMETERS:S = 0x3s

.field public static final RESOLUTION_UNIT_INCHES:S = 0x2s

.field private static final ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RW2_SIGNATURE:S = 0x55s

.field public static final SATURATION_HIGH:S = 0x0s

.field public static final SATURATION_LOW:S = 0x0s

.field public static final SATURATION_NORMAL:S = 0x0s

.field public static final SCENE_CAPTURE_TYPE_LANDSCAPE:S = 0x1s

.field public static final SCENE_CAPTURE_TYPE_NIGHT:S = 0x3s

.field public static final SCENE_CAPTURE_TYPE_PORTRAIT:S = 0x2s

.field public static final SCENE_CAPTURE_TYPE_STANDARD:S = 0x0s

.field public static final SCENE_TYPE_DIRECTLY_PHOTOGRAPHED:S = 0x1s

.field public static final SENSITIVITY_TYPE_ISO_SPEED:S = 0x3s

.field public static final SENSITIVITY_TYPE_REI:S = 0x2s

.field public static final SENSITIVITY_TYPE_REI_AND_ISO:S = 0x6s

.field public static final SENSITIVITY_TYPE_SOS:S = 0x1s

.field public static final SENSITIVITY_TYPE_SOS_AND_ISO:S = 0x5s

.field public static final SENSITIVITY_TYPE_SOS_AND_REI:S = 0x4s

.field public static final SENSITIVITY_TYPE_SOS_AND_REI_AND_ISO:S = 0x7s

.field public static final SENSITIVITY_TYPE_UNKNOWN:S = 0x0s

.field public static final SENSOR_TYPE_COLOR_SEQUENTIAL:S = 0x5s

.field public static final SENSOR_TYPE_COLOR_SEQUENTIAL_LINEAR:S = 0x8s

.field public static final SENSOR_TYPE_NOT_DEFINED:S = 0x1s

.field public static final SENSOR_TYPE_ONE_CHIP:S = 0x2s

.field public static final SENSOR_TYPE_THREE_CHIP:S = 0x4s

.field public static final SENSOR_TYPE_TRILINEAR:S = 0x7s

.field public static final SENSOR_TYPE_TWO_CHIP:S = 0x3s

.field public static final SHARPNESS_HARD:S = 0x2s

.field public static final SHARPNESS_NORMAL:S = 0x0s

.field public static final SHARPNESS_SOFT:S = 0x1s

.field private static final SIGNATURE_CHECK_SIZE:I = 0x1388

.field private static final SKIP_BUFFER_SIZE:I = 0x2000

.field static final START_CODE:B = 0x2at

.field public static final STREAM_TYPE_EXIF_DATA_ONLY:I = 0x1

.field public static final STREAM_TYPE_FULL_IMAGE_DATA:I = 0x0

.field public static final SUBJECT_DISTANCE_RANGE_CLOSE_VIEW:S = 0x2s

.field public static final SUBJECT_DISTANCE_RANGE_DISTANT_VIEW:S = 0x3s

.field public static final SUBJECT_DISTANCE_RANGE_MACRO:S = 0x1s

.field public static final SUBJECT_DISTANCE_RANGE_UNKNOWN:S = 0x0s

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BODY_SERIAL_NUMBER:Ljava/lang/String; = "BodySerialNumber"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CAMARA_OWNER_NAME:Ljava/lang/String; = "CameraOwnerName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_CAMERA_OWNER_NAME:Ljava/lang/String; = "CameraOwnerName"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GAMMA:Ljava/lang/String; = "Gamma"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_H_POSITIONING_ERROR:Ljava/lang/String; = "GPSHPositioningError"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO_SPEED:Ljava/lang/String; = "ISOSpeed"

.field public static final TAG_ISO_SPEED_LATITUDE_YYY:Ljava/lang/String; = "ISOSpeedLatitudeyyy"

.field public static final TAG_ISO_SPEED_LATITUDE_ZZZ:Ljava/lang/String; = "ISOSpeedLatitudezzz"

.field public static final TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LENS_MAKE:Ljava/lang/String; = "LensMake"

.field public static final TAG_LENS_MODEL:Ljava/lang/String; = "LensModel"

.field public static final TAG_LENS_SERIAL_NUMBER:Ljava/lang/String; = "LensSerialNumber"

.field public static final TAG_LENS_SPECIFICATION:Ljava/lang/String; = "LensSpecification"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_OFFSET_TIME:Ljava/lang/String; = "OffsetTime"

.field public static final TAG_OFFSET_TIME_DIGITIZED:Ljava/lang/String; = "OffsetTimeDigitized"

.field public static final TAG_OFFSET_TIME_ORIGINAL:Ljava/lang/String; = "OffsetTimeOriginal"

.field public static final TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOGRAPHIC_SENSITIVITY:Ljava/lang/String; = "PhotographicSensitivity"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final TAG_RECOMMENDED_EXPOSURE_INDEX:Ljava/lang/String; = "RecommendedExposureIndex"

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SENSITIVITY_TYPE:Ljava/lang/String; = "SensitivityType"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STANDARD_OUTPUT_SENSITIVITY:Ljava/lang/String; = "StandardOutputSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field public static final TAG_THUMBNAIL_ORIENTATION:Ljava/lang/String; = "ThumbnailOrientation"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_XMP:Ljava/lang/String; = "Xmp"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field private static final WEBP_CHUNK_SIZE_BYTE_LENGTH:I = 0x4

.field private static final WEBP_CHUNK_TYPE_ANIM:[B

.field private static final WEBP_CHUNK_TYPE_ANMF:[B

.field private static final WEBP_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final WEBP_CHUNK_TYPE_EXIF:[B

.field private static final WEBP_CHUNK_TYPE_VP8:[B

.field private static final WEBP_CHUNK_TYPE_VP8L:[B

.field private static final WEBP_CHUNK_TYPE_VP8X:[B

.field private static final WEBP_CHUNK_TYPE_VP8X_DEFAULT_LENGTH:I = 0xa

.field private static final WEBP_FILE_SIZE_BYTE_LENGTH:I = 0x4

.field private static final WEBP_SIGNATURE_1:[B

.field private static final WEBP_SIGNATURE_2:[B

.field private static final WEBP_VP8L_SIGNATURE:B = 0x2ft

.field private static final WEBP_VP8_SIGNATURE:[B

.field public static final WHITEBALANCE_AUTO:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHITEBALANCE_MANUAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHITE_BALANCE_AUTO:S = 0x0s

.field public static final WHITE_BALANCE_MANUAL:S = 0x1s

.field private static final XMP_HANDLING_PREFER_SEPARATE:I = 0x2

.field private static final XMP_HANDLING_PREFER_TIFF_700_IF_PRESENT:I = 0x3

.field private static final XMP_HANDLING_TIFF_700_ONLY:I = 0x1

.field public static final Y_CB_CR_POSITIONING_CENTERED:S = 0x1s

.field public static final Y_CB_CR_POSITIONING_CO_SITED:S = 0x2s

.field private static final sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/exifinterface/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/exifinterface/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatterPrimary:Ljava/text/SimpleDateFormat;

.field private static final sFormatterSecondary:Ljava/text/SimpleDateFormat;


# instance fields
.field private mAreThumbnailStripsConsecutive:Z

.field private mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/exifinterface/media/ExifInterface$ExifAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mAttributesOffsets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mFileOnDiskContainsSeparateXmpMarker:Z

.field private mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private mHasThumbnailStrips:Z

.field private mIsExifDataOnly:Z

.field private mMimeType:I

.field private mModified:Z

.field private mOffsetToExifData:I

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I

.field private mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 133
    const-string v0, "ExifInterface"

    const/4 v1, 0x3

    .line 2333
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 2332
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2333
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v3, v5, v2, v7}, [Ljava/lang/Integer;

    move-result-object v5

    .line 2332
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Landroidx/exifinterface/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    .line 2334
    nop

    .line 2335
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 2336
    const/4 v13, 0x5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v8, v10, v12, v14}, [Ljava/lang/Integer;

    move-result-object v12

    .line 2334
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    .line 2977
    filled-new-array {v6, v6, v6}, [I

    move-result-object v12

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 2982
    filled-new-array {v11}, [I

    move-result-object v12

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    .line 2987
    filled-new-array {v6}, [I

    move-result-object v12

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 3068
    new-array v12, v1, [B

    fill-array-data v12, :array_0

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 3072
    new-array v12, v11, [B

    fill-array-data v12, :array_1

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    .line 3073
    new-array v12, v11, [B

    fill-array-data v12, :array_2

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    .line 3074
    new-array v12, v11, [B

    fill-array-data v12, :array_3

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    .line 3075
    new-array v12, v11, [B

    fill-array-data v12, :array_4

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_AVIF:[B

    .line 3076
    new-array v12, v11, [B

    fill-array-data v12, :array_5

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_AVIS:[B

    .line 3084
    new-array v12, v4, [B

    fill-array-data v12, :array_6

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 3086
    const/16 v12, 0xa

    new-array v15, v12, [B

    fill-array-data v15, :array_7

    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 3102
    new-array v15, v6, [B

    fill-array-data v15, :array_8

    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 3115
    const-string v15, "XML:com.adobe.xmp\u0000\u0000\u0000\u0000\u0000"

    move/from16 v16, v12

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v15, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->PNG_ITXT_XMP_KEYWORD:[B

    .line 3118
    new-array v12, v11, [B

    fill-array-data v12, :array_9

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 3119
    new-array v12, v11, [B

    fill-array-data v12, :array_a

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 3121
    new-array v12, v11, [B

    fill-array-data v12, :array_b

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    .line 3123
    new-array v12, v1, [B

    fill-array-data v12, :array_c

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 3126
    const-string v12, "VP8X"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    .line 3127
    const-string v12, "VP8L"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 3128
    const-string v12, "VP8 "

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    .line 3129
    const-string v12, "ANIM"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    .line 3130
    const-string v12, "ANMF"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    .line 3170
    const-string v29, "DOUBLE"

    const-string v30, "IFD"

    const-string v17, ""

    const-string v18, "BYTE"

    const-string v19, "STRING"

    const-string v20, "USHORT"

    const-string v21, "ULONG"

    const-string v22, "URATIONAL"

    const-string v23, "SBYTE"

    const-string v24, "UNDEFINED"

    const-string v25, "SSHORT"

    const-string v26, "SLONG"

    const-string v27, "SRATIONAL"

    const-string v28, "SINGLE"

    filled-new-array/range {v17 .. v30}, [Ljava/lang/String;

    move-result-object v12

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 3175
    const/16 v12, 0xe

    new-array v15, v12, [I

    fill-array-data v15, :array_d

    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 3179
    new-array v15, v6, [B

    fill-array-data v15, :array_e

    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 3648
    const/16 v15, 0x2a

    new-array v15, v15, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move/from16 v17, v12

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move/from16 v18, v6

    const-string v6, "NewSubfileType"

    move/from16 v19, v0

    const/16 v0, 0xfe

    invoke-direct {v12, v6, v0, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v0, 0x0

    aput-object v12, v15, v0

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SubfileType"

    move/from16 v20, v0

    const/16 v0, 0xff

    invoke-direct {v6, v12, v0, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v15, v19

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ImageWidth"

    const/16 v12, 0x100

    invoke-direct {v0, v6, v12, v1, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v0, v15, v5

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ImageLength"

    const/16 v12, 0x101

    invoke-direct {v0, v6, v12, v1, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v0, v15, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "BitsPerSample"

    const/16 v12, 0x102

    invoke-direct {v0, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v15, v11

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Compression"

    const/16 v12, 0x103

    invoke-direct {v0, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v15, v13

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "PhotometricInterpretation"

    const/16 v12, 0x106

    invoke-direct {v0, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v15, v4

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ImageDescription"

    const/16 v12, 0x10e

    invoke-direct {v0, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v15, v9

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Make"

    const/16 v12, 0x10f

    invoke-direct {v0, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v15, v18

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Model"

    const/16 v12, 0x110

    invoke-direct {v0, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x9

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "StripOffsets"

    move/from16 v21, v6

    const/16 v6, 0x111

    invoke-direct {v0, v12, v6, v1, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v0, v15, v16

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Orientation"

    const/16 v12, 0x112

    invoke-direct {v0, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xb

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SamplesPerPixel"

    move/from16 v22, v6

    const/16 v6, 0x115

    invoke-direct {v0, v12, v6, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xc

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "RowsPerStrip"

    move/from16 v23, v6

    const/16 v6, 0x116

    invoke-direct {v0, v12, v6, v1, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0xd

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "StripByteCounts"

    move/from16 v24, v6

    const/16 v6, 0x117

    invoke-direct {v0, v12, v6, v1, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v0, v15, v17

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "XResolution"

    const/16 v12, 0x11a

    invoke-direct {v0, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xf

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "YResolution"

    move/from16 v25, v6

    const/16 v6, 0x11b

    invoke-direct {v0, v12, v6, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x10

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "PlanarConfiguration"

    move/from16 v26, v6

    const/16 v6, 0x11c

    invoke-direct {v0, v12, v6, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x11

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ResolutionUnit"

    move/from16 v27, v6

    const/16 v6, 0x128

    invoke-direct {v0, v12, v6, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x12

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "TransferFunction"

    move/from16 v28, v6

    const/16 v6, 0x12d

    invoke-direct {v0, v12, v6, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x13

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Software"

    const/16 v12, 0x131

    invoke-direct {v0, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x14

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "DateTime"

    const/16 v12, 0x132

    invoke-direct {v0, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Artist"

    const/16 v12, 0x13b

    invoke-direct {v0, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "WhitePoint"

    const/16 v12, 0x13e

    invoke-direct {v0, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x17

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "PrimaryChromaticities"

    const/16 v6, 0x13f

    invoke-direct {v0, v12, v6, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubIFDPointer"

    const/16 v12, 0x14a

    invoke-direct {v0, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "JPEGInterchangeFormat"

    const/16 v12, 0x201

    invoke-direct {v0, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "JPEGInterchangeFormatLength"

    move/from16 v30, v6

    const/16 v6, 0x202

    invoke-direct {v0, v12, v6, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "YCbCrCoefficients"

    const/16 v12, 0x211

    invoke-direct {v0, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "YCbCrSubSampling"

    const/16 v12, 0x212

    invoke-direct {v0, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "YCbCrPositioning"

    const/16 v12, 0x213

    invoke-direct {v0, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ReferenceBlackWhite"

    const/16 v12, 0x214

    invoke-direct {v0, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Copyright"

    const v12, 0x8298

    invoke-direct {v0, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ExifIFDPointer"

    const v12, 0x8769

    invoke-direct {v0, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSInfoIFDPointer"

    const v12, 0x8825

    invoke-direct {v0, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SensorTopBorder"

    invoke-direct {v0, v6, v11, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SensorLeftBorder"

    invoke-direct {v0, v6, v13, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x24

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SensorBottomBorder"

    invoke-direct {v0, v6, v4, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x25

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SensorRightBorder"

    invoke-direct {v0, v6, v9, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x26

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ISO"

    const/16 v12, 0x17

    invoke-direct {v0, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x27

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "JpgFromRaw"

    const/16 v12, 0x2e

    invoke-direct {v0, v6, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x28

    aput-object v0, v15, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Xmp"

    const/16 v12, 0x2bc

    move/from16 v31, v4

    move/from16 v4, v19

    invoke-direct {v0, v6, v12, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x29

    aput-object v0, v15, v4

    sput-object v15, Landroidx/exifinterface/media/ExifInterface;->IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3698
    const/16 v0, 0x4a

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ExposureTime"

    const v12, 0x829a

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v20

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FNumber"

    const v12, 0x829d

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v19, 0x1

    aput-object v4, v0, v19

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ExposureProgram"

    const v12, 0x8822

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v5

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SpectralSensitivity"

    const v12, 0x8824

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v1

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "PhotographicSensitivity"

    const v12, 0x8827

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v11

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "OECF"

    const v12, 0x8828

    invoke-direct {v4, v6, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v13

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SensitivityType"

    const v12, 0x8830

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v31

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "StandardOutputSensitivity"

    const v12, 0x8831

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v9

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "RecommendedExposureIndex"

    const v12, 0x8832

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v18

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ISOSpeed"

    const v12, 0x8833

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v21

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ISOSpeedLatitudeyyy"

    const v12, 0x8834

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v16

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ISOSpeedLatitudezzz"

    const v12, 0x8835

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v22

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ExifVersion"

    const v12, 0x9000

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v23

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "DateTimeOriginal"

    const v12, 0x9003

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v24

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "DateTimeDigitized"

    const v12, 0x9004

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v17

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "OffsetTime"

    const v12, 0x9010

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v25

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "OffsetTimeOriginal"

    const v12, 0x9011

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v26

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "OffsetTimeDigitized"

    const v12, 0x9012

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v27

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ComponentsConfiguration"

    const v12, 0x9101

    invoke-direct {v4, v6, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v28

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "CompressedBitsPerPixel"

    const v12, 0x9102

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x13

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ShutterSpeedValue"

    const v12, 0x9201

    move/from16 v15, v16

    invoke-direct {v4, v6, v12, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x14

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ApertureValue"

    const v12, 0x9202

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "BrightnessValue"

    const v12, 0x9203

    const/16 v15, 0xa

    invoke-direct {v4, v6, v12, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ExposureBiasValue"

    const v12, 0x9204

    invoke-direct {v4, v6, v12, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v29, 0x17

    aput-object v4, v0, v29

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "MaxApertureValue"

    const v12, 0x9205

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubjectDistance"

    const v12, 0x9206

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "MeteringMode"

    const v12, 0x9207

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v30

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "LightSource"

    const v12, 0x9208

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Flash"

    const v12, 0x9209

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FocalLength"

    const v12, 0x920a

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubjectArea"

    const v12, 0x9214

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "MakerNote"

    const v12, 0x927c

    invoke-direct {v4, v6, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "UserComment"

    const v12, 0x9286

    invoke-direct {v4, v6, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubSecTime"

    const v12, 0x9290

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubSecTimeOriginal"

    const v12, 0x9291

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubSecTimeDigitized"

    const v12, 0x9292

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FlashpixVersion"

    const v12, 0xa000

    invoke-direct {v4, v6, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x24

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ColorSpace"

    const v12, 0xa001

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x25

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "PixelXDimension"

    const v12, 0xa002

    invoke-direct {v4, v6, v12, v1, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x26

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "PixelYDimension"

    const v12, 0xa003

    invoke-direct {v4, v6, v12, v1, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x27

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "RelatedSoundFile"

    const v12, 0xa004

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x28

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "InteroperabilityIFDPointer"

    const v12, 0xa005

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x29

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FlashEnergy"

    const v12, 0xa20b

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2a

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SpatialFrequencyResponse"

    const v12, 0xa20c

    invoke-direct {v4, v6, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2b

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FocalPlaneXResolution"

    const v12, 0xa20e

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2c

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FocalPlaneYResolution"

    const v12, 0xa20f

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2d

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FocalPlaneResolutionUnit"

    const v12, 0xa210

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2e

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubjectLocation"

    const v12, 0xa214

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2f

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ExposureIndex"

    const v12, 0xa215

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x30

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SensingMethod"

    const v12, 0xa217

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x31

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FileSource"

    const v12, 0xa300

    invoke-direct {v4, v6, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x32

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SceneType"

    const v12, 0xa301

    invoke-direct {v4, v6, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x33

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "CFAPattern"

    const v12, 0xa302

    invoke-direct {v4, v6, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x34

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "CustomRendered"

    const v12, 0xa401

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x35

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ExposureMode"

    const v12, 0xa402

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x36

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "WhiteBalance"

    const v12, 0xa403

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x37

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "DigitalZoomRatio"

    const v12, 0xa404

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x38

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FocalLengthIn35mmFilm"

    const v12, 0xa405

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x39

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SceneCaptureType"

    const v12, 0xa406

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3a

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GainControl"

    const v12, 0xa407

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3b

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Contrast"

    const v12, 0xa408

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3c

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Saturation"

    const v12, 0xa409

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3d

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Sharpness"

    const v12, 0xa40a

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3e

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "DeviceSettingDescription"

    const v12, 0xa40b

    invoke-direct {v4, v6, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3f

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubjectDistanceRange"

    const v12, 0xa40c

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x40

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ImageUniqueID"

    const v12, 0xa420

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x41

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "CameraOwnerName"

    const v12, 0xa430

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x42

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "BodySerialNumber"

    const v12, 0xa431

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x43

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "LensSpecification"

    const v12, 0xa432

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x44

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "LensMake"

    const v12, 0xa433

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x45

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "LensModel"

    const v12, 0xa434

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x46

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Gamma"

    const v12, 0xa500

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x47

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "DNGVersion"

    const v12, 0xc612

    const/4 v15, 0x1

    invoke-direct {v4, v6, v12, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x48

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "DefaultCropSize"

    const v12, 0xc620

    invoke-direct {v4, v6, v12, v1, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x49

    aput-object v4, v0, v6

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3776
    const/16 v0, 0x20

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSVersionID"

    move/from16 v12, v20

    const/4 v15, 0x1

    invoke-direct {v4, v6, v12, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v12

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSLatitudeRef"

    invoke-direct {v4, v6, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v15

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSLatitude"

    const/16 v15, 0xa

    invoke-direct {v4, v6, v5, v13, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v4, v0, v5

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSLongitudeRef"

    invoke-direct {v4, v6, v1, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v1

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSLongitude"

    invoke-direct {v4, v6, v11, v13, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v4, v0, v11

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSAltitudeRef"

    const/4 v15, 0x1

    invoke-direct {v4, v6, v13, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v13

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSAltitude"

    move/from16 v12, v31

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v12

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSTimeStamp"

    invoke-direct {v4, v6, v9, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v9

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSSatellites"

    move/from16 v12, v18

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v12

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSStatus"

    move/from16 v12, v21

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v12

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSMeasureMode"

    const/16 v15, 0xa

    invoke-direct {v4, v6, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v15

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDOP"

    move/from16 v12, v22

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v12

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSSpeedRef"

    move/from16 v12, v23

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v12

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSSpeed"

    move/from16 v12, v24

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v12

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSTrackRef"

    move/from16 v12, v17

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v12

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSTrack"

    move/from16 v12, v25

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v12

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSImgDirectionRef"

    move/from16 v12, v26

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v12

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSImgDirection"

    move/from16 v12, v27

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v12

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSMapDatum"

    move/from16 v12, v28

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v12

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDestLatitudeRef"

    const/16 v12, 0x13

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x13

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDestLatitude"

    const/16 v12, 0x14

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x14

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDestLongitudeRef"

    const/16 v12, 0x15

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDestLongitude"

    const/16 v12, 0x16

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDestBearingRef"

    const/16 v12, 0x17

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v12

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDestBearing"

    const/16 v12, 0x18

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDestDistanceRef"

    const/16 v12, 0x19

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDestDistance"

    move/from16 v12, v30

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v12

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSProcessingMethod"

    const/16 v12, 0x1b

    invoke-direct {v4, v6, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSAreaInformation"

    const/16 v12, 0x1c

    invoke-direct {v4, v6, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDateStamp"

    const/16 v12, 0x1d

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDifferential"

    const/16 v12, 0x1e

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSHPositioningError"

    const/16 v12, 0x1f

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v4, v0, v6

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3813
    const/4 v15, 0x1

    new-array v0, v15, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "InteroperabilityIndex"

    invoke-direct {v4, v6, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v20, 0x0

    aput-object v4, v0, v20

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3817
    const/16 v0, 0x25

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "NewSubfileType"

    const/16 v12, 0xfe

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v20

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubfileType"

    const/16 v12, 0xff

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v19, 0x1

    aput-object v4, v0, v19

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ThumbnailImageWidth"

    const/16 v12, 0x100

    invoke-direct {v4, v6, v12, v1, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v4, v0, v5

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ThumbnailImageLength"

    const/16 v12, 0x101

    invoke-direct {v4, v6, v12, v1, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v4, v0, v1

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "BitsPerSample"

    const/16 v12, 0x102

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v11

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Compression"

    const/16 v12, 0x103

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v13

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "PhotometricInterpretation"

    const/16 v12, 0x106

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v31, 0x6

    aput-object v4, v0, v31

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ImageDescription"

    const/16 v12, 0x10e

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v9

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Make"

    const/16 v12, 0x10f

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v18, 0x8

    aput-object v4, v0, v18

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Model"

    const/16 v12, 0x110

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v21, 0x9

    aput-object v4, v0, v21

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "StripOffsets"

    const/16 v12, 0x111

    invoke-direct {v4, v6, v12, v1, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v16, 0xa

    aput-object v4, v0, v16

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ThumbnailOrientation"

    const/16 v12, 0x112

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v22, 0xb

    aput-object v4, v0, v22

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SamplesPerPixel"

    const/16 v12, 0x115

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v23, 0xc

    aput-object v4, v0, v23

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "RowsPerStrip"

    const/16 v12, 0x116

    invoke-direct {v4, v6, v12, v1, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v24, 0xd

    aput-object v4, v0, v24

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "StripByteCounts"

    const/16 v12, 0x117

    invoke-direct {v4, v6, v12, v1, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v17, 0xe

    aput-object v4, v0, v17

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "XResolution"

    const/16 v12, 0x11a

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v25, 0xf

    aput-object v4, v0, v25

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "YResolution"

    const/16 v12, 0x11b

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v26, 0x10

    aput-object v4, v0, v26

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "PlanarConfiguration"

    const/16 v12, 0x11c

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v27, 0x11

    aput-object v4, v0, v27

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ResolutionUnit"

    const/16 v12, 0x128

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v28, 0x12

    aput-object v4, v0, v28

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "TransferFunction"

    const/16 v12, 0x12d

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x13

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Software"

    const/16 v12, 0x131

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x14

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "DateTime"

    const/16 v12, 0x132

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Artist"

    const/16 v12, 0x13b

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "WhitePoint"

    const/16 v12, 0x13e

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v29, 0x17

    aput-object v4, v0, v29

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "PrimaryChromaticities"

    const/16 v12, 0x13f

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubIFDPointer"

    const/16 v12, 0x14a

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "JPEGInterchangeFormat"

    const/16 v12, 0x201

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v30, 0x1a

    aput-object v4, v0, v30

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "JPEGInterchangeFormatLength"

    const/16 v12, 0x202

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "YCbCrCoefficients"

    const/16 v12, 0x211

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "YCbCrSubSampling"

    const/16 v12, 0x212

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "YCbCrPositioning"

    const/16 v12, 0x213

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ReferenceBlackWhite"

    const/16 v12, 0x214

    invoke-direct {v4, v6, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Copyright"

    const v12, 0x8298

    invoke-direct {v4, v6, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ExifIFDPointer"

    const v12, 0x8769

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSInfoIFDPointer"

    const v12, 0x8825

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "DNGVersion"

    const v12, 0xc612

    const/4 v15, 0x1

    invoke-direct {v4, v6, v12, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v4, v0, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "DefaultCropSize"

    const v12, 0xc620

    invoke-direct {v4, v6, v12, v1, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x24

    aput-object v4, v0, v6

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3860
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v4, "StripOffsets"

    const/16 v6, 0x111

    invoke-direct {v0, v4, v6, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3864
    new-array v0, v1, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ThumbnailImage"

    const/16 v12, 0x100

    invoke-direct {v4, v6, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v20, 0x0

    aput-object v4, v0, v20

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "CameraSettingsIFDPointer"

    const/16 v12, 0x2020

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v19, 0x1

    aput-object v4, v0, v19

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ImageProcessingIFDPointer"

    const/16 v12, 0x2040

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v5

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3869
    new-array v0, v5, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "PreviewImageStart"

    const/16 v12, 0x101

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v20, 0x0

    aput-object v4, v0, v20

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "PreviewImageLength"

    const/16 v12, 0x102

    invoke-direct {v4, v6, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v15, 0x1

    aput-object v4, v0, v15

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3873
    new-array v0, v15, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "AspectFrame"

    const/16 v12, 0x1113

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v20, 0x0

    aput-object v4, v0, v20

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3877
    new-array v0, v15, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ColorSpace"

    const/16 v12, 0x37

    invoke-direct {v4, v6, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v20

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3904
    const/16 v15, 0xa

    new-array v0, v15, [[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v4, v0, v20

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v19, 0x1

    aput-object v4, v0, v19

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v4, v0, v5

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v4, v0, v1

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v4, v0, v11

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v4, v0, v13

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v12, 0x6

    aput-object v4, v0, v12

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v4, v0, v9

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v18, 0x8

    aput-object v4, v0, v18

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v21, 0x9

    aput-object v4, v0, v21

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3911
    new-array v0, v12, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubIFDPointer"

    const/16 v9, 0x14a

    invoke-direct {v4, v6, v9, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v20, 0x0

    aput-object v4, v0, v20

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ExifIFDPointer"

    const v9, 0x8769

    invoke-direct {v4, v6, v9, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v19, 0x1

    aput-object v4, v0, v19

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSInfoIFDPointer"

    const v9, 0x8825

    invoke-direct {v4, v6, v9, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v5

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "InteroperabilityIFDPointer"

    const v9, 0xa005

    invoke-direct {v4, v6, v9, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v1

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "CameraSettingsIFDPointer"

    const/16 v9, 0x2020

    const/4 v15, 0x1

    invoke-direct {v4, v6, v9, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v11

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ImageProcessingIFDPointer"

    const/16 v9, 0x2040

    invoke-direct {v4, v6, v9, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v13

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3922
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 3926
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 3943
    new-instance v0, Ljava/util/HashSet;

    const-string v4, "ExposureTime"

    const-string v6, "SubjectDistance"

    const-string v9, "FNumber"

    const-string v12, "DigitalZoomRatio"

    filled-new-array {v9, v12, v4, v6}, [Ljava/lang/String;

    move-result-object v4

    .line 3946
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3944
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->RATIONAL_TAGS_HANDLED_AS_DECIMALS_FOR_COMPATIBILITY:Ljava/util/Set;

    .line 3953
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 3959
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 3961
    const-string v0, "Exif\u0000\u0000"

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 3963
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 3964
    const-string v4, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 4002
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy:MM:dd HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    .line 4003
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4004
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sFormatterSecondary:Ljava/text/SimpleDateFormat;

    .line 4005
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sFormatterSecondary:Ljava/text/SimpleDateFormat;

    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4008
    const/4 v0, 0x0

    .local v0, "ifdType":I
    :goto_0
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 4009
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    aput-object v6, v4, v0

    .line 4010
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    aput-object v6, v4, v0

    .line 4011
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v4, v4, v0

    array-length v6, v4

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v6, :cond_0

    aget-object v9, v4, v12

    .line 4012
    .local v9, "tag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    sget-object v15, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v15, v15, v0

    move/from16 v16, v1

    iget v1, v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4013
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    iget-object v15, v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v1, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4011
    .end local v9    # "tag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v16

    goto :goto_1

    .line 4008
    :cond_0
    move/from16 v16, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move/from16 v16, v1

    .line 4018
    .end local v0    # "ifdType":I
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v20, 0x0

    aget-object v1, v1, v20

    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4019
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v19, 0x1

    aget-object v1, v1, v19

    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4020
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v1, v1, v5

    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4021
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v1, v1, v16

    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4022
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v1, v1, v11

    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4023
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v1, v1, v13

    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4071
    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 4073
    nop

    .line 4074
    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 4076
    nop

    .line 4077
    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 4079
    nop

    .line 4080
    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 4079
    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_4
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x66t
    .end array-data

    :array_5
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x73t
    .end array-data

    :array_6
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_8
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_9
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_a
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_b
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_c
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_e
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4031
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4033
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 4034
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4092
    if-eqz p1, :cond_0

    .line 4095
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    .line 4096
    return-void

    .line 4093
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4031
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4033
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 4034
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4123
    if-eqz p1, :cond_3

    .line 4126
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4127
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 4129
    const/4 v1, 0x0

    .line 4130
    .local v1, "isFdDuped":Z
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4131
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 4136
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 4137
    const/4 v1, 0x1

    .line 4140
    goto :goto_0

    .line 4138
    :catch_0
    move-exception v0

    .line 4139
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to duplicate file descriptor"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 4142
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 4144
    :goto_0
    const/4 v0, 0x0

    .line 4146
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v2

    .line 4147
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4149
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4150
    if-eqz v1, :cond_1

    .line 4151
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 4154
    :cond_1
    return-void

    .line 4149
    :catchall_0
    move-exception v2

    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4150
    if-eqz v1, :cond_2

    .line 4151
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 4153
    :cond_2
    throw v2

    .line 4124
    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "isFdDuped":Z
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fileDescriptor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;I)V

    .line 4167
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4031
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4033
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 4034
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4183
    if-eqz p1, :cond_4

    .line 4186
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 4188
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    .line 4189
    iget-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    if-eqz v1, :cond_1

    .line 4190
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4191
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 4193
    :cond_1
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_2

    .line 4194
    move-object v1, p1

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4195
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 4196
    :cond_2
    instance-of v1, p1, Ljava/io/FileInputStream;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    .line 4197
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4198
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4199
    move-object v0, p1

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 4201
    :cond_3
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4202
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 4205
    :goto_1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    .line 4206
    return-void

    .line 4184
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4031
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4033
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 4034
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4107
    if-eqz p1, :cond_0

    .line 4110
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    .line 4111
    return-void

    .line 4108
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 131
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    return-object v0
.end method

.method static synthetic access$100()Ljava/nio/charset/Charset;
    .locals 1

    .line 131
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 131
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[B
    .locals 1

    .line 131
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 7

    .line 7004
    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7005
    .local v0, "valueOfDateTimeOriginal":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 7006
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    .line 7007
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 7006
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7011
    :cond_0
    const-string v2, "ImageWidth"

    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_1

    .line 7012
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7013
    invoke-static {v4, v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 7012
    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7015
    :cond_1
    const-string v2, "ImageLength"

    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 7016
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7017
    invoke-static {v4, v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 7016
    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7019
    :cond_2
    const-string v2, "Orientation"

    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 7020
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v3, v1

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7021
    invoke-static {v4, v5, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 7020
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7023
    :cond_3
    const-string v1, "LightSource"

    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 7024
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7025
    invoke-static {v4, v5, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 7024
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7027
    :cond_4
    return-void
.end method

.method private convertDecimalDegree(D)Ljava/lang/String;
    .locals 10
    .param p1, "decimalDegree"    # D

    .line 5515
    double-to-long v0, p1

    .line 5516
    .local v0, "degrees":J
    long-to-double v2, v0

    sub-double v2, p1, v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 5517
    .local v2, "minutes":J
    long-to-double v6, v0

    sub-double v6, p1, v6

    long-to-double v8, v2

    div-double/2addr v8, v4

    sub-double/2addr v6, v8

    const-wide v4, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v6, v4

    const-wide v4, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 5518
    .local v4, "seconds":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/1,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/10000000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 13
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    .line 5484
    const-string v0, "/"

    :try_start_0
    const-string v1, ","

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 5487
    .local v1, "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 5488
    .local v4, "pair":[Ljava/lang/String;
    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const/4 v7, 0x1

    aget-object v8, v4, v7

    .line 5489
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    div-double/2addr v5, v8

    .line 5491
    .local v5, "degrees":D
    aget-object v8, v1, v7

    invoke-virtual {v8, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 5492
    .end local v4    # "pair":[Ljava/lang/String;
    .local v8, "pair":[Ljava/lang/String;
    aget-object v4, v8, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    aget-object v4, v8, v7

    .line 5493
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    div-double/2addr v9, v11

    .line 5495
    .local v9, "minutes":D
    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 5496
    .end local v8    # "pair":[Ljava/lang/String;
    .local v0, "pair":[Ljava/lang/String;
    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aget-object v4, v0, v7

    .line 5497
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    div-double/2addr v2, v7

    .line 5499
    .local v2, "seconds":D
    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    div-double v7, v9, v7

    add-double/2addr v7, v5

    const-wide v11, 0x40ac200000000000L    # 3600.0

    div-double v11, v2, v11

    add-double/2addr v7, v11

    .line 5500
    .local v7, "result":D
    const-string v4, "S"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "W"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 5502
    :cond_0
    const-string v4, "N"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "E"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 5506
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "rationalString":Ljava/lang/String;
    .end local p1    # "ref":Ljava/lang/String;
    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5503
    .restart local p0    # "rationalString":Ljava/lang/String;
    .restart local p1    # "ref":Ljava/lang/String;
    :cond_2
    :goto_0
    return-wide v7

    .line 5501
    :cond_3
    :goto_1
    neg-double v11, v7

    return-wide v11

    .line 5508
    .end local v0    # "pair":[Ljava/lang/String;
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "seconds":D
    .end local v5    # "degrees":D
    .end local v7    # "result":D
    .end local v9    # "minutes":D
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 5510
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private copyChunksUpToGivenChunkType(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V
    .locals 2
    .param p1, "inputStream"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "outputStream"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    .param p3, "firstGivenType"    # [B
    .param p4, "secondGivenType"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6971
    nop

    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 6972
    .local v0, "type":[B
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6973
    invoke-direct {p0, p1, p2, v0}, Landroidx/exifinterface/media/ExifInterface;->copyWebPChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B)V

    .line 6974
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p4, :cond_0

    .line 6975
    invoke-static {v0, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6976
    goto :goto_1

    .line 6978
    .end local v0    # "type":[B
    :cond_0
    goto :goto_0

    .line 6979
    :cond_1
    :goto_1
    return-void
.end method

.method private copyWebPChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B)V
    .locals 3
    .param p1, "inputStream"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "outputStream"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    .param p3, "type"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6983
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    .line 6984
    .local v0, "size":I
    invoke-virtual {p2, p3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6985
    invoke-virtual {p2, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6987
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6988
    return-void
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 4248
    if-eqz p1, :cond_6

    .line 4252
    const-string v0, "ISOSpeedRatings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4253
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4254
    const-string v0, "ExifInterface"

    const-string v1, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    :cond_0
    const-string p1, "PhotographicSensitivity"

    .line 4259
    :cond_1
    const-string v0, "Xmp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 4260
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->getXmpHandlingForImageType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_2

    .line 4262
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    return-object v0

    .line 4266
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 4267
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 4268
    .local v2, "value":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_3

    .line 4269
    return-object v2

    .line 4266
    .end local v2    # "value":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4272
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_5

    .line 4273
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    return-object v0

    .line 4275
    :cond_5
    const/4 v0, 0x0

    return-object v0

    .line 4249
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 24
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6002
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "yes"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_c

    .line 6003
    const/16 v3, 0xf

    const/16 v4, 0x1f

    move/from16 v5, p2

    if-ne v5, v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_0

    goto :goto_0

    .line 6004
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Reading EXIF from AVIF files is supported from SDK 31 and above"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6007
    :cond_1
    :goto_0
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 6009
    .local v3, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$1;

    invoke-direct {v6, v1, v2}, Landroidx/exifinterface/media/ExifInterface$1;-><init>(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    invoke-static {v3, v6}, Landroidx/exifinterface/media/ExifInterfaceUtils$Api23Impl;->setDataSource(Landroid/media/MediaMetadataRetriever;Landroid/media/MediaDataSource;)V

    .line 6062
    const/16 v6, 0x21

    invoke-virtual {v3, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 6064
    .local v6, "exifOffsetStr":Ljava/lang/String;
    const/16 v7, 0x22

    invoke-virtual {v3, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 6066
    .local v7, "exifLengthStr":Ljava/lang/String;
    const/16 v8, 0x1a

    invoke-virtual {v3, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 6068
    .local v8, "hasImage":Ljava/lang/String;
    const/16 v9, 0x11

    invoke-virtual {v3, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 6071
    .local v9, "hasVideo":Ljava/lang/String;
    const/4 v10, 0x0

    .line 6072
    .local v10, "width":Ljava/lang/String;
    const/4 v11, 0x0

    .line 6073
    .local v11, "height":Ljava/lang/String;
    const/4 v12, 0x0

    .line 6074
    .local v12, "rotation":Ljava/lang/String;
    move-object v13, v0

    .line 6078
    .local v13, "metadataValueYes":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v14, :cond_2

    .line 6079
    const/16 v0, 0x1d

    :try_start_1
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 6081
    const/16 v0, 0x1e

    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 6083
    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v0

    goto :goto_1

    .line 6169
    .end local v6    # "exifOffsetStr":Ljava/lang/String;
    .end local v7    # "exifLengthStr":Ljava/lang/String;
    .end local v8    # "hasImage":Ljava/lang/String;
    .end local v9    # "hasVideo":Ljava/lang/String;
    .end local v10    # "width":Ljava/lang/String;
    .end local v11    # "height":Ljava/lang/String;
    .end local v12    # "rotation":Ljava/lang/String;
    .end local v13    # "metadataValueYes":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v3

    goto/16 :goto_8

    .line 6165
    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_7

    .line 6085
    .restart local v6    # "exifOffsetStr":Ljava/lang/String;
    .restart local v7    # "exifLengthStr":Ljava/lang/String;
    .restart local v8    # "hasImage":Ljava/lang/String;
    .restart local v9    # "hasVideo":Ljava/lang/String;
    .restart local v10    # "width":Ljava/lang/String;
    .restart local v11    # "height":Ljava/lang/String;
    .restart local v12    # "rotation":Ljava/lang/String;
    .restart local v13    # "metadataValueYes":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    .line 6086
    const/16 v0, 0x12

    :try_start_3
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 6088
    const/16 v0, 0x13

    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 6090
    const/16 v0, 0x18

    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 6094
    :cond_3
    :goto_1
    const/4 v0, 0x0

    if-eqz v10, :cond_4

    .line 6095
    iget-object v4, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v0

    const-string v14, "ImageWidth"

    .line 6096
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v0

    iget-object v0, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 6095
    invoke-virtual {v4, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 6094
    :cond_4
    move/from16 v16, v0

    .line 6099
    :goto_2
    if-eqz v11, :cond_5

    .line 6100
    iget-object v0, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v16

    const-string v4, "ImageLength"

    .line 6101
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iget-object v15, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 6100
    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6104
    :cond_5
    if-eqz v12, :cond_6

    .line 6105
    const/4 v0, 0x1

    .line 6108
    .local v0, "orientation":I
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_3

    .line 6116
    :sswitch_0
    const/16 v0, 0x8

    goto :goto_3

    .line 6113
    :sswitch_1
    const/4 v0, 0x3

    .line 6114
    goto :goto_3

    .line 6110
    :sswitch_2
    const/4 v0, 0x6

    .line 6111
    nop

    .line 6120
    :goto_3
    iget-object v4, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v16

    const-string v14, "Orientation"

    iget-object v15, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6121
    invoke-static {v0, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v15

    .line 6120
    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6124
    .end local v0    # "orientation":I
    :cond_6
    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    .line 6125
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 6126
    .local v0, "offset":I
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 6127
    .local v4, "length":I
    const/4 v14, 0x6

    if-le v4, v14, :cond_8

    .line 6130
    int-to-long v14, v0

    invoke-virtual {v2, v14, v15}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 6131
    const/4 v14, 0x6

    new-array v15, v14, [B

    .line 6132
    .local v15, "identifier":[B
    invoke-virtual {v2, v15}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readFully([B)V

    .line 6133
    add-int/2addr v0, v14

    .line 6134
    add-int/lit8 v4, v4, -0x6

    .line 6135
    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v15, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 6140
    new-array v14, v4, [B

    .line 6141
    .local v14, "bytes":[B
    invoke-virtual {v2, v14}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readFully([B)V

    .line 6143
    iput v0, v1, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 6144
    move/from16 v17, v0

    move/from16 v0, v16

    .end local v0    # "offset":I
    .local v17, "offset":I
    invoke-direct {v1, v14, v0}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    goto :goto_4

    .line 6136
    .end local v14    # "bytes":[B
    .end local v17    # "offset":I
    .restart local v0    # "offset":I
    :cond_7
    move/from16 v17, v0

    .end local v0    # "offset":I
    .restart local v17    # "offset":I
    new-instance v0, Ljava/io/IOException;

    const-string v14, "Invalid identifier"

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p1    # "in":Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    .end local p2    # "imageType":I
    throw v0

    .line 6128
    .end local v15    # "identifier":[B
    .end local v17    # "offset":I
    .restart local v0    # "offset":I
    .restart local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local p1    # "in":Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    .restart local p2    # "imageType":I
    :cond_8
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Invalid exif length"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p1    # "in":Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    .end local p2    # "imageType":I
    throw v14
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6147
    .end local v0    # "offset":I
    .end local v4    # "length":I
    .restart local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local p1    # "in":Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    .restart local p2    # "imageType":I
    :cond_9
    :goto_4
    const/16 v0, 0x29

    :try_start_4
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 6149
    .local v0, "xmpOffsetStr":Ljava/lang/String;
    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 6151
    .local v4, "xmpLengthStr":Ljava/lang/String;
    if-eqz v0, :cond_a

    if-eqz v4, :cond_a

    .line 6152
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 6153
    .local v14, "offset":I
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6154
    .local v15, "length":I
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local v4    # "xmpLengthStr":Ljava/lang/String;
    .local v16, "retriever":Landroid/media/MediaMetadataRetriever;
    .local v17, "xmpLengthStr":Ljava/lang/String;
    int-to-long v3, v14

    :try_start_5
    invoke-virtual {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 6155
    new-array v3, v15, [B

    .line 6156
    .local v3, "xmpBytes":[B
    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readFully([B)V

    .line 6157
    new-instance v18, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v4, v3

    move-object/from16 v23, v3

    .end local v3    # "xmpBytes":[B
    .local v23, "xmpBytes":[B
    int-to-long v2, v14

    const/16 v19, 0x1

    move-wide/from16 v21, v2

    move/from16 v20, v4

    invoke-direct/range {v18 .. v23}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    move-object/from16 v2, v18

    iput-object v2, v1, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6159
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/exifinterface/media/ExifInterface;->mFileOnDiskContainsSeparateXmpMarker:Z

    goto :goto_5

    .line 6151
    .end local v14    # "offset":I
    .end local v15    # "length":I
    .end local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local v17    # "xmpLengthStr":Ljava/lang/String;
    .end local v23    # "xmpBytes":[B
    .local v3, "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v4    # "xmpLengthStr":Ljava/lang/String;
    :cond_a
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 6162
    .end local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local v4    # "xmpLengthStr":Ljava/lang/String;
    .restart local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v17    # "xmpLengthStr":Ljava/lang/String;
    :goto_5
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 6163
    const-string v2, "ExifInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Heif meta: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rotation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 6170
    .end local v0    # "xmpOffsetStr":Ljava/lang/String;
    .end local v6    # "exifOffsetStr":Ljava/lang/String;
    .end local v7    # "exifLengthStr":Ljava/lang/String;
    .end local v8    # "hasImage":Ljava/lang/String;
    .end local v9    # "hasVideo":Ljava/lang/String;
    .end local v10    # "width":Ljava/lang/String;
    .end local v11    # "height":Ljava/lang/String;
    .end local v12    # "rotation":Ljava/lang/String;
    .end local v13    # "metadataValueYes":Ljava/lang/String;
    .end local v17    # "xmpLengthStr":Ljava/lang/String;
    :cond_b
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 6173
    goto :goto_6

    .line 6171
    :catch_1
    move-exception v0

    .line 6174
    nop

    .line 6175
    .end local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_6
    nop

    .line 6179
    return-void

    .line 6165
    .restart local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_2
    move-exception v0

    goto :goto_7

    .line 6169
    .end local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    move-object v2, v0

    .end local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_8

    .line 6165
    .end local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_3
    move-exception v0

    move-object/from16 v16, v3

    .line 6166
    .end local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_7
    :try_start_7
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    invoke-direct {v2, v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p1    # "in":Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    .end local p2    # "imageType":I
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 6169
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local p1    # "in":Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    .restart local p2    # "imageType":I
    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 6170
    :goto_8
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 6173
    goto :goto_9

    .line 6171
    :catch_4
    move-exception v0

    .line 6174
    :goto_9
    throw v2

    .line 6176
    .end local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_c
    move/from16 v5, p2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Reading EXIF from HEIC files is supported from SDK 28 and above"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 22
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "offsetToJpeg"    # I
    .param p3, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5767
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_0

    .line 5768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getJpegAttributes starting with: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5771
    :cond_0
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5773
    const/4 v3, 0x0

    .line 5776
    .local v3, "bytesRead":I
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v5

    move v6, v5

    .local v6, "marker":B
    const-string v7, "Invalid marker: "

    const/4 v8, -0x1

    if-ne v5, v8, :cond_e

    .line 5779
    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 5780
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v9

    const/16 v10, -0x28

    if-ne v9, v10, :cond_d

    .line 5783
    add-int/2addr v3, v5

    .line 5785
    :goto_0
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v6

    .line 5786
    if-ne v6, v8, :cond_c

    .line 5789
    add-int/lit8 v3, v3, 0x1

    .line 5790
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v6

    .line 5791
    sget-boolean v7, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 5792
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found JPEG segment indicator: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit16 v9, v6, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5794
    :cond_1
    add-int/2addr v3, v5

    .line 5798
    const/16 v7, -0x27

    if-eq v6, v7, :cond_b

    const/16 v7, -0x26

    if-ne v6, v7, :cond_2

    .line 5799
    goto/16 :goto_4

    .line 5801
    :cond_2
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    .line 5802
    .local v7, "length":I
    add-int/lit8 v3, v3, 0x2

    .line 5803
    sget-boolean v9, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v9, :cond_3

    .line 5804
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "JPEG segment: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    and-int/lit16 v10, v6, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v7, 0x2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5807
    :cond_3
    const-string v9, "Invalid length"

    if-ltz v7, :cond_a

    .line 5810
    sparse-switch v6, :sswitch_data_0

    move-object/from16 v21, v9

    goto/16 :goto_3

    .line 5841
    :sswitch_0
    new-array v10, v7, [B

    .line 5842
    .local v10, "bytes":[B
    invoke-virtual {v1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5843
    const/4 v7, 0x0

    .line 5844
    const-string v11, "UserComment"

    invoke-virtual {v0, v11}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_4

    .line 5845
    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v5

    new-instance v13, Ljava/lang/String;

    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v13, v10, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5879
    .end local v10    # "bytes":[B
    :cond_4
    move-object/from16 v21, v9

    goto/16 :goto_3

    .line 5812
    :sswitch_1
    move v10, v3

    .line 5813
    .local v10, "start":I
    new-array v11, v7, [B

    .line 5814
    .local v11, "bytes":[B
    invoke-virtual {v1, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5815
    add-int/2addr v3, v7

    .line 5816
    const/4 v7, 0x0

    .line 5818
    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v11, v12}, Landroidx/exifinterface/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 5819
    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v12, v12

    array-length v13, v11

    invoke-static {v11, v12, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 5822
    .local v12, "value":[B
    add-int v13, p2, v10

    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v14, v14

    add-int/2addr v13, v14

    iput v13, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 5825
    invoke-direct {v0, v12, v2}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    .line 5827
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v13, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {v0, v13}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 5828
    .end local v12    # "value":[B
    move-object/from16 v21, v9

    goto :goto_3

    :cond_5
    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    invoke-static {v11, v12}, Landroidx/exifinterface/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 5830
    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    array-length v12, v12

    add-int/2addr v12, v10

    .line 5831
    .local v12, "offset":I
    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    array-length v13, v13

    array-length v14, v11

    invoke-static {v11, v13, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 5833
    .local v13, "value":[B
    new-instance v15, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v14, v13

    move-object/from16 v21, v9

    int-to-long v8, v12

    const/16 v16, 0x1

    move-wide/from16 v18, v8

    move-object/from16 v20, v13

    move/from16 v17, v14

    .end local v13    # "value":[B
    .local v20, "value":[B
    invoke-direct/range {v15 .. v20}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    iput-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5835
    iput-boolean v5, v0, Landroidx/exifinterface/media/ExifInterface;->mFileOnDiskContainsSeparateXmpMarker:Z

    .line 5836
    .end local v12    # "offset":I
    .end local v20    # "value":[B
    goto :goto_3

    .line 5828
    :cond_6
    move-object/from16 v21, v9

    goto :goto_3

    .line 5864
    .end local v10    # "start":I
    .end local v11    # "bytes":[B
    :sswitch_2
    move-object/from16 v21, v9

    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 5865
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v2

    const/4 v9, 0x4

    if-eq v2, v9, :cond_7

    .line 5866
    const-string v10, "ImageLength"

    goto :goto_1

    :cond_7
    const-string v10, "ThumbnailImageLength"

    .line 5867
    :goto_1
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v11

    int-to-long v11, v11

    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 5865
    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5868
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v2

    if-eq v2, v9, :cond_8

    .line 5869
    const-string v9, "ImageWidth"

    goto :goto_2

    :cond_8
    const-string v9, "ThumbnailImageWidth"

    .line 5870
    :goto_2
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    int-to-long v10, v10

    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 5868
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5871
    add-int/lit8 v7, v7, -0x5

    .line 5872
    nop

    .line 5879
    :goto_3
    if-ltz v7, :cond_9

    .line 5882
    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 5883
    add-int/2addr v3, v7

    .line 5884
    .end local v7    # "length":I
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 5880
    .restart local v7    # "length":I
    :cond_9
    new-instance v4, Ljava/io/IOException;

    move-object/from16 v5, v21

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5808
    :cond_a
    move-object v5, v9

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5886
    .end local v7    # "length":I
    :cond_b
    :goto_4
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5887
    return-void

    .line 5787
    :cond_c
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid marker:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v7, v6, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5781
    :cond_d
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v7, v6, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5777
    :cond_e
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v7, v6, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_data_0
    .sparse-switch
        -0x40 -> :sswitch_2
        -0x3f -> :sswitch_2
        -0x3e -> :sswitch_2
        -0x3d -> :sswitch_2
        -0x3b -> :sswitch_2
        -0x3a -> :sswitch_2
        -0x39 -> :sswitch_2
        -0x37 -> :sswitch_2
        -0x36 -> :sswitch_2
        -0x35 -> :sswitch_2
        -0x33 -> :sswitch_2
        -0x32 -> :sswitch_2
        -0x31 -> :sswitch_2
        -0x1f -> :sswitch_1
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 3
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5523
    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 5524
    new-array v0, v0, [B

    .line 5525
    .local v0, "signatureCheckBytes":[B
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 5526
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 5527
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->isJpegFormat([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5528
    const/4 v1, 0x4

    return v1

    .line 5530
    :cond_0
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isRafFormat([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5531
    const/16 v1, 0x9

    return v1

    .line 5533
    :cond_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isHeicOrAvifFormat([B)I

    move-result v1

    .line 5534
    .local v1, "heicOrAvifImageType":I
    if-eqz v1, :cond_2

    .line 5535
    return v1

    .line 5537
    :cond_2
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isOrfFormat([B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5538
    const/4 v2, 0x7

    return v2

    .line 5540
    :cond_3
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isRw2Format([B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5541
    const/16 v2, 0xa

    return v2

    .line 5543
    :cond_4
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isPngFormat([B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5544
    const/16 v2, 0xd

    return v2

    .line 5546
    :cond_5
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isWebpFormat([B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5547
    const/16 v2, 0xe

    return v2

    .line 5550
    :cond_6
    const/4 v2, 0x0

    return v2
.end method

.method private getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 16
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6211
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 6216
    iget-object v1, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 6217
    const-string v3, "MakerNote"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6218
    .local v1, "makerNoteAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_6

    .line 6220
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    iget-object v4, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 6222
    .local v3, "makerNoteDataInputStream":Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6226
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v4, v4

    new-array v4, v4, [B

    .line 6227
    .local v4, "makerNoteHeader1Bytes":[B
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readFully([B)V

    .line 6228
    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 6229
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v5, v5

    new-array v5, v5, [B

    .line 6230
    .local v5, "makerNoteHeader2Bytes":[B
    invoke-virtual {v3, v5}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readFully([B)V

    .line 6232
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6233
    const-wide/16 v6, 0x8

    invoke-virtual {v3, v6, v7}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    goto :goto_0

    .line 6234
    :cond_0
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6235
    const-wide/16 v6, 0xc

    invoke-virtual {v3, v6, v7}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 6239
    :cond_1
    :goto_0
    const/4 v6, 0x6

    invoke-direct {v0, v3, v6}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 6242
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    .line 6243
    const-string v8, "PreviewImageStart"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6244
    .local v6, "imageStartAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v8, v7

    .line 6245
    const-string v8, "PreviewImageLength"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6247
    .local v7, "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 6248
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    const-string v10, "JPEGInterchangeFormat"

    invoke-virtual {v8, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6250
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v9

    const-string v9, "JPEGInterchangeFormatLength"

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6257
    :cond_2
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v9, 0x8

    aget-object v8, v8, v9

    .line 6258
    const-string v9, "AspectFrame"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6259
    .local v8, "aspectFrameAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v8, :cond_6

    .line 6260
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 6261
    .local v9, "aspectFrameValues":[I
    if-eqz v9, :cond_5

    array-length v10, v9

    const/4 v11, 0x4

    if-eq v10, v11, :cond_3

    goto :goto_1

    .line 6266
    :cond_3
    const/4 v10, 0x2

    aget v11, v9, v10

    const/4 v12, 0x0

    aget v13, v9, v12

    if-le v11, v13, :cond_6

    const/4 v11, 0x3

    aget v13, v9, v11

    aget v14, v9, v2

    if-le v13, v14, :cond_6

    .line 6268
    aget v10, v9, v10

    aget v13, v9, v12

    sub-int/2addr v10, v13

    add-int/2addr v10, v2

    .line 6269
    .local v10, "primaryImageWidth":I
    aget v11, v9, v11

    aget v13, v9, v2

    sub-int/2addr v11, v13

    add-int/2addr v11, v2

    .line 6271
    .local v11, "primaryImageLength":I
    if-ge v10, v11, :cond_4

    .line 6272
    add-int/2addr v10, v11

    .line 6273
    sub-int v11, v10, v11

    .line 6274
    sub-int/2addr v10, v11

    .line 6276
    :cond_4
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6277
    invoke-static {v10, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 6278
    .local v2, "primaryImageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6279
    invoke-static {v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 6281
    .local v13, "primaryImageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v12

    const-string v15, "ImageWidth"

    invoke-virtual {v14, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6282
    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v14, v12

    const-string v14, "ImageLength"

    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 6262
    .end local v2    # "primaryImageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v10    # "primaryImageWidth":I
    .end local v11    # "primaryImageLength":I
    .end local v13    # "primaryImageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_5
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid aspect frame values. frame="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6263
    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6262
    const-string v10, "ExifInterface"

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6264
    return-void

    .line 6286
    .end local v3    # "makerNoteDataInputStream":Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    .end local v4    # "makerNoteHeader1Bytes":[B
    .end local v5    # "makerNoteHeader2Bytes":[B
    .end local v6    # "imageStartAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v7    # "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v8    # "aspectFrameAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v9    # "aspectFrameValues":[I
    :cond_6
    :goto_2
    return-void
.end method

.method private getPngAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 17
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6321
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPngAttributes starting with: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ExifInterface"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6327
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6329
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v3

    .line 6332
    .local v3, "startPosition":I
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v0, v0

    invoke-virtual {v2, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6345
    const/4 v0, 0x0

    .line 6346
    .local v0, "foundExif":Z
    const/4 v4, 0x0

    .line 6347
    .local v4, "foundXmpItxt":Z
    :goto_0
    if-eqz v0, :cond_1

    if-nez v4, :cond_4

    .line 6348
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v5

    .line 6349
    .local v5, "length":I
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 6350
    .local v6, "type":I
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v7

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, 0x4

    .line 6353
    .local v7, "startOfNextChunk":I
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v8

    sub-int/2addr v8, v3

    const/16 v9, 0x10

    if-ne v8, v9, :cond_3

    const v8, 0x49484452

    if-ne v6, v8, :cond_2

    goto :goto_1

    .line 6354
    :cond_2
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Encountered invalid PNG file--IHDR chunk should appear as the first chunk"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "startPosition":I
    .end local p1    # "in":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    throw v8

    .line 6359
    .restart local v3    # "startPosition":I
    .restart local p1    # "in":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_3
    :goto_1
    const v8, 0x49454e44    # 808164.25f

    if-ne v6, v8, :cond_5

    .line 6361
    nop

    .line 6410
    .end local v5    # "length":I
    .end local v6    # "type":I
    .end local v7    # "startOfNextChunk":I
    :cond_4
    iput-boolean v4, v1, Landroidx/exifinterface/media/ExifInterface;->mFileOnDiskContainsSeparateXmpMarker:Z

    .line 6415
    .end local v0    # "foundExif":Z
    .end local v4    # "foundXmpItxt":Z
    nop

    .line 6416
    return-void

    .line 6362
    .restart local v0    # "foundExif":Z
    .restart local v4    # "foundXmpItxt":Z
    .restart local v5    # "length":I
    .restart local v6    # "type":I
    .restart local v7    # "startOfNextChunk":I
    :cond_5
    const v8, 0x65584966

    if-ne v6, v8, :cond_8

    if-nez v0, :cond_8

    .line 6364
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v8

    sub-int/2addr v8, v3

    iput v8, v1, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 6367
    new-array v8, v5, [B

    .line 6368
    .local v8, "data":[B
    invoke-virtual {v2, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6371
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v9

    .line 6373
    .local v9, "dataCrcValue":I
    new-instance v10, Ljava/util/zip/CRC32;

    invoke-direct {v10}, Ljava/util/zip/CRC32;-><init>()V

    .line 6374
    .local v10, "crc":Ljava/util/zip/CRC32;
    invoke-static {v10, v6}, Landroidx/exifinterface/media/ExifInterface;->updateCrcWithInt(Ljava/util/zip/CRC32;I)V

    .line 6375
    invoke-virtual {v10, v8}, Ljava/util/zip/CRC32;->update([B)V

    .line 6376
    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v11

    long-to-int v11, v11

    if-ne v11, v9, :cond_7

    .line 6385
    const/4 v11, 0x0

    invoke-direct {v1, v8, v11}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    .line 6386
    invoke-direct {v1}, Landroidx/exifinterface/media/ExifInterface;->validateImages()V

    .line 6388
    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v11, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {v1, v11}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 6389
    const/4 v0, 0x1

    .line 6390
    .end local v8    # "data":[B
    .end local v9    # "dataCrcValue":I
    .end local v10    # "crc":Ljava/util/zip/CRC32;
    :cond_6
    goto :goto_2

    .line 6377
    .restart local v8    # "data":[B
    .restart local v9    # "dataCrcValue":I
    .restart local v10    # "crc":Ljava/util/zip/CRC32;
    :cond_7
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", calculated CRC value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 6383
    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "startPosition":I
    .end local p1    # "in":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    throw v11

    .line 6390
    .end local v8    # "data":[B
    .end local v9    # "dataCrcValue":I
    .end local v10    # "crc":Ljava/util/zip/CRC32;
    .restart local v3    # "startPosition":I
    .restart local p1    # "in":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_8
    const v8, 0x69545874

    if-ne v6, v8, :cond_6

    if-nez v4, :cond_6

    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->PNG_ITXT_XMP_KEYWORD:[B

    array-length v8, v8

    if-lt v5, v8, :cond_6

    .line 6394
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->PNG_ITXT_XMP_KEYWORD:[B

    array-length v8, v8

    new-array v8, v8, [B

    .line 6395
    .local v8, "keyword":[B
    invoke-virtual {v2, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6396
    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->PNG_ITXT_XMP_KEYWORD:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 6397
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v9

    sub-int/2addr v9, v3

    .line 6398
    .local v9, "xmpDataOffset":I
    array-length v10, v8

    sub-int v13, v5, v10

    .line 6399
    .local v13, "xmpLength":I
    new-array v10, v13, [B

    .line 6400
    .local v10, "xmpData":[B
    invoke-virtual {v2, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6401
    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const/4 v12, 0x1

    int-to-long v14, v9

    move-object/from16 v16, v10

    .end local v10    # "xmpData":[B
    .local v16, "xmpData":[B
    invoke-direct/range {v11 .. v16}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    iput-object v11, v1, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6404
    const/4 v4, 0x1

    .line 6408
    .end local v8    # "keyword":[B
    .end local v9    # "xmpDataOffset":I
    .end local v13    # "xmpLength":I
    .end local v16    # "xmpData":[B
    :cond_9
    :goto_2
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {v2, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6409
    .end local v5    # "length":I
    .end local v6    # "type":I
    .end local v7    # "startOfNextChunk":I
    goto/16 :goto_0

    .line 6411
    .end local v0    # "foundExif":Z
    .end local v4    # "foundXmpItxt":Z
    :catch_0
    move-exception v0

    .line 6414
    .local v0, "e":Ljava/io/EOFException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Encountered corrupt PNG file."

    invoke-direct {v4, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 22
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5941
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const-string v3, "ExifInterface"

    if-eqz v2, :cond_0

    .line 5942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRafAttributes starting with: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5945
    :cond_0
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 5946
    const/4 v2, 0x4

    new-array v4, v2, [B

    .line 5947
    .local v4, "offsetToJpegBytes":[B
    new-array v5, v2, [B

    .line 5948
    .local v5, "jpegLengthBytes":[B
    new-array v2, v2, [B

    .line 5949
    .local v2, "cfaHeaderOffsetBytes":[B
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5950
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5951
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5952
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 5953
    .local v6, "offsetToJpeg":I
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 5954
    .local v7, "jpegLength":I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 5956
    .local v8, "cfaHeaderOffset":I
    new-array v9, v7, [B

    .line 5957
    .local v9, "jpegBytes":[B
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v10

    sub-int v10, v6, v10

    invoke-virtual {v1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 5958
    invoke-virtual {v1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5961
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v10, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 5962
    .local v10, "jpegInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v11, 0x5

    invoke-direct {v0, v10, v6, v11}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 5965
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v11

    sub-int v11, v8, v11

    invoke-virtual {v1, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 5968
    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5969
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v11

    .line 5970
    .local v11, "numberOfDirectoryEntry":I
    sget-boolean v12, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v12, :cond_1

    .line 5971
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "numberOfDirectoryEntry: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5976
    :cond_1
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_4

    .line 5977
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v13

    .line 5978
    .local v13, "tagNumber":I
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v14

    .line 5979
    .local v14, "numberOfBytes":I
    sget-object v15, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget v15, v15, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    if-ne v13, v15, :cond_3

    .line 5980
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v15

    .line 5981
    .local v15, "imageLength":I
    move-object/from16 v16, v2

    .end local v2    # "cfaHeaderOffsetBytes":[B
    .local v16, "cfaHeaderOffsetBytes":[B
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    .line 5982
    .local v2, "imageWidth":I
    move-object/from16 v17, v4

    .end local v4    # "offsetToJpegBytes":[B
    .local v17, "offsetToJpegBytes":[B
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5983
    invoke-static {v15, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 5984
    .local v4, "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    move-object/from16 v18, v5

    .end local v5    # "jpegLengthBytes":[B
    .local v18, "jpegLengthBytes":[B
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5985
    invoke-static {v2, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 5986
    .local v5, "imageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    move/from16 v19, v6

    .end local v6    # "offsetToJpeg":I
    .local v19, "offsetToJpeg":I
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v20, 0x0

    aget-object v6, v6, v20

    move/from16 v21, v7

    .end local v7    # "jpegLength":I
    .local v21, "jpegLength":I
    const-string v7, "ImageLength"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5987
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v20

    const-string v7, "ImageWidth"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5988
    sget-boolean v6, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 5989
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated to length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5991
    :cond_2
    return-void

    .line 5993
    .end local v15    # "imageLength":I
    .end local v16    # "cfaHeaderOffsetBytes":[B
    .end local v17    # "offsetToJpegBytes":[B
    .end local v18    # "jpegLengthBytes":[B
    .end local v19    # "offsetToJpeg":I
    .end local v21    # "jpegLength":I
    .local v2, "cfaHeaderOffsetBytes":[B
    .local v4, "offsetToJpegBytes":[B
    .local v5, "jpegLengthBytes":[B
    .restart local v6    # "offsetToJpeg":I
    .restart local v7    # "jpegLength":I
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v21, v7

    .end local v2    # "cfaHeaderOffsetBytes":[B
    .end local v4    # "offsetToJpegBytes":[B
    .end local v5    # "jpegLengthBytes":[B
    .end local v6    # "offsetToJpeg":I
    .end local v7    # "jpegLength":I
    .restart local v16    # "cfaHeaderOffsetBytes":[B
    .restart local v17    # "offsetToJpegBytes":[B
    .restart local v18    # "jpegLengthBytes":[B
    .restart local v19    # "offsetToJpeg":I
    .restart local v21    # "jpegLength":I
    invoke-virtual {v1, v14}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 5976
    .end local v13    # "tagNumber":I
    .end local v14    # "numberOfBytes":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 5995
    .end local v12    # "i":I
    .end local v16    # "cfaHeaderOffsetBytes":[B
    .end local v17    # "offsetToJpegBytes":[B
    .end local v18    # "jpegLengthBytes":[B
    .end local v19    # "offsetToJpeg":I
    .end local v21    # "jpegLength":I
    .restart local v2    # "cfaHeaderOffsetBytes":[B
    .restart local v4    # "offsetToJpegBytes":[B
    .restart local v5    # "jpegLengthBytes":[B
    .restart local v6    # "offsetToJpeg":I
    .restart local v7    # "jpegLength":I
    :cond_4
    return-void
.end method

.method private getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 6
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5891
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 5894
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 5897
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 5898
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 5899
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 5902
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->validateImages()V

    .line 5904
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5907
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 5908
    const-string v2, "MakerNote"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5909
    .local v0, "makerNoteAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    .line 5911
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 5913
    .local v2, "makerNoteDataInputStream":Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5916
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->skipFully(I)V

    .line 5919
    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 5922
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    .line 5923
    const-string v4, "ColorSpace"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5924
    .local v3, "colorSpaceAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_0

    .line 5925
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v5, v1

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5929
    .end local v0    # "makerNoteAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v2    # "makerNoteDataInputStream":Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    .end local v3    # "colorSpaceAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_0
    return-void
.end method

.method private getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 6
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6292
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRw2Attributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6296
    :cond_0
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 6299
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 6300
    const-string v2, "JpgFromRaw"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6301
    .local v0, "jpgFromRawAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_1

    .line 6302
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 6304
    .local v2, "jpegInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    iget-wide v3, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytesOffset:J

    long-to-int v3, v3

    const/4 v4, 0x5

    invoke-direct {p0, v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 6309
    .end local v2    # "jpegInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_1
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    .line 6310
    const-string v2, "ISO"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6311
    .local v1, "rw2IsoAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 6312
    const-string v4, "PhotographicSensitivity"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6313
    .local v2, "exifIsoAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 6315
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v5, v3

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6317
    :cond_2
    return-void
.end method

.method private getStandaloneAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)Z
    .locals 4
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6184
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 6185
    .local v0, "signatureCheckBytes":[B
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readFully([B)V

    .line 6186
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 6187
    const-string v1, "ExifInterface"

    const-string v3, "Given data is not EXIF-only."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6188
    return v2

    .line 6191
    :cond_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readToEnd()[B

    move-result-object v1

    .line 6193
    .local v1, "data":[B
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v3, v3

    iput v3, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 6194
    invoke-direct {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    .line 6195
    const/4 v2, 0x1

    return v2
.end method

.method private getWebpAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 7
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6429
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWebpAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6434
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6436
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6439
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 6440
    .local v0, "fileSize":I
    const/16 v1, 0x8

    .line 6442
    .local v1, "bytesRead":I
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6443
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 6457
    :goto_0
    const/4 v2, 0x4

    :try_start_0
    new-array v2, v2, [B

    .line 6458
    .local v2, "code":[B
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6459
    add-int/lit8 v1, v1, 0x4

    .line 6461
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    .line 6462
    .local v3, "chunkSize":I
    add-int/lit8 v1, v1, 0x4

    .line 6464
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6466
    new-array v4, v3, [B

    .line 6467
    .local v4, "payload":[B
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6472
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v4, v5}, Landroidx/exifinterface/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6473
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v5, v5

    array-length v6, v4

    .line 6474
    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    move-object v4, v5

    .line 6479
    :cond_1
    iput v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 6480
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    .line 6482
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v5, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, v5}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 6483
    goto :goto_2

    .line 6486
    .end local v4    # "payload":[B
    :cond_2
    rem-int/lit8 v4, v3, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v3, 0x1

    goto :goto_1

    :cond_3
    move v4, v3

    .line 6489
    .end local v3    # "chunkSize":I
    .local v4, "chunkSize":I
    :goto_1
    add-int v3, v1, v4

    if-ne v3, v0, :cond_4

    .line 6491
    nop

    .line 6505
    .end local v2    # "code":[B
    .end local v4    # "chunkSize":I
    :goto_2
    nop

    .line 6506
    return-void

    .line 6492
    .restart local v2    # "code":[B
    .restart local v4    # "chunkSize":I
    :cond_4
    add-int v3, v1, v4

    if-gt v3, v0, :cond_5

    .line 6497
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6498
    add-int/2addr v1, v4

    .line 6500
    .end local v2    # "code":[B
    .end local v4    # "chunkSize":I
    goto :goto_0

    .line 6493
    .restart local v2    # "code":[B
    .restart local v4    # "chunkSize":I
    :cond_5
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Encountered WebP file with invalid chunk size"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p1    # "in":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    throw v3
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6501
    .end local v2    # "code":[B
    .end local v4    # "chunkSize":I
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p1    # "in":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_0
    move-exception v2

    .line 6504
    .local v2, "e":Ljava/io/EOFException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered corrupt WebP file."

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getXmpHandlingForImageType(I)I
    .locals 1
    .param p0, "imageType"    # I

    .line 4279
    sparse-switch p0, :sswitch_data_0

    .line 4301
    const/4 v0, 0x1

    return v0

    .line 4291
    :sswitch_0
    const/4 v0, 0x2

    return v0

    .line 4284
    :sswitch_1
    const/4 v0, 0x3

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x9 -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 13
    .param p0, "entryValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7905
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 7954
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 7905
    const/4 v5, -0x1

    .line 7954
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 7905
    if-eqz v1, :cond_9

    .line 7906
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 7907
    .local v0, "entryValues":[Ljava/lang/String;
    aget-object v1, v0, v2

    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 7908
    .local v1, "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 7909
    return-object v1

    .line 7911
    :cond_0
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_8

    .line 7912
    aget-object v3, v0, v2

    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 7913
    .local v3, "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v7, -0x1

    .local v7, "first":I
    const/4 v8, -0x1

    .line 7914
    .local v8, "second":I
    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 7915
    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 7916
    :cond_1
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 7918
    :cond_2
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v5, :cond_4

    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 7919
    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7920
    :cond_3
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 7922
    :cond_4
    if-ne v7, v5, :cond_5

    if-ne v8, v5, :cond_5

    .line 7923
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 7925
    :cond_5
    if-ne v7, v5, :cond_6

    .line 7926
    new-instance v9, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7927
    .end local v1    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v9, "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v1, v9

    goto :goto_1

    .line 7929
    .end local v9    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v1    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    if-ne v8, v5, :cond_7

    .line 7930
    new-instance v9, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7931
    .end local v1    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v9    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v1, v9

    .line 7911
    .end local v3    # "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v7    # "first":I
    .end local v8    # "second":I
    .end local v9    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v1    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7934
    .end local v2    # "i":I
    :cond_8
    return-object v1

    .line 7937
    .end local v0    # "entryValues":[Ljava/lang/String;
    .end local v1    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_9
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v7, 0x0

    if-eqz v1, :cond_f

    .line 7938
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 7939
    .local v0, "rationalNumber":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v3, :cond_e

    .line 7941
    :try_start_0
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-long v1, v1

    .line 7942
    .local v1, "numerator":J
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-long v9, v9

    .line 7943
    .local v9, "denominator":J
    cmp-long v3, v1, v7

    const/16 v5, 0xa

    if-ltz v3, :cond_d

    cmp-long v3, v9, v7

    if-gez v3, :cond_a

    goto :goto_3

    .line 7946
    :cond_a
    const-wide/32 v7, 0x7fffffff

    cmp-long v3, v1, v7

    const/4 v11, 0x5

    if-gtz v3, :cond_c

    cmp-long v3, v9, v7

    if-lez v3, :cond_b

    goto :goto_2

    .line 7949
    :cond_b
    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 7947
    :cond_c
    :goto_2
    new-instance v3, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 7944
    :cond_d
    :goto_3
    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 7950
    .end local v1    # "numerator":J
    .end local v9    # "denominator":J
    :catch_0
    move-exception v1

    .line 7954
    :cond_e
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 7957
    .end local v0    # "rationalNumber":[Ljava/lang/String;
    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 7958
    .local v0, "longValue":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v7

    const/4 v2, 0x4

    if-ltz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/32 v11, 0xffff

    cmp-long v1, v9, v11

    if-gtz v1, :cond_10

    .line 7959
    new-instance v1, Landroid/util/Pair;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 7961
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-gez v1, :cond_11

    .line 7962
    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 7964
    :cond_11
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 7965
    .end local v0    # "longValue":Ljava/lang/Long;
    :catch_1
    move-exception v0

    .line 7969
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 7970
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 7971
    :catch_2
    move-exception v0

    .line 7974
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/exifinterface/media/ExifInterface$ExifAttribute;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7369
    .local p2, "thumbnailData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    nop

    .line 7370
    const-string v0, "JPEGInterchangeFormat"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7371
    .local v0, "jpegInterchangeFormatAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    nop

    .line 7372
    const-string v1, "JPEGInterchangeFormatLength"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7373
    .local v1, "jpegInterchangeFormatLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 7375
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 7376
    .local v2, "thumbnailOffset":I
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 7378
    .local v3, "thumbnailLength":I
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 7380
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v2, v4

    .line 7383
    :cond_0
    if-lez v2, :cond_2

    if-lez v3, :cond_2

    .line 7384
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 7385
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v4, :cond_1

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v4, :cond_1

    .line 7389
    new-array v4, v3, [B

    .line 7390
    .local v4, "thumbnailBytes":[B
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 7391
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 7392
    iput-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 7394
    .end local v4    # "thumbnailBytes":[B
    :cond_1
    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 7395
    iput v3, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 7397
    :cond_2
    sget-boolean v4, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 7398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting thumbnail attributes with offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ExifInterface"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7402
    .end local v2    # "thumbnailOffset":I
    .end local v3    # "thumbnailLength":I
    :cond_3
    return-void
.end method

.method private handleThumbnailFromStrips(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 24
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/exifinterface/media/ExifInterface$ExifAttribute;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7407
    .local p2, "thumbnailData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, " bytes."

    .line 7408
    const-string v0, "StripOffsets"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7409
    .local v5, "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    nop

    .line 7410
    const-string v0, "StripByteCounts"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7412
    .local v6, "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v5, :cond_a

    if-eqz v6, :cond_a

    .line 7413
    iget-object v0, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7414
    invoke-virtual {v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v7

    .line 7415
    .local v7, "stripOffsets":[J
    iget-object v0, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7416
    invoke-virtual {v6, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v8

    .line 7418
    .local v8, "stripByteCounts":[J
    const-string v9, "ExifInterface"

    if-eqz v7, :cond_9

    array-length v0, v7

    if-nez v0, :cond_0

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    goto/16 :goto_4

    .line 7422
    :cond_0
    if-eqz v8, :cond_8

    array-length v0, v8

    if-nez v0, :cond_1

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    goto/16 :goto_3

    .line 7426
    :cond_1
    array-length v0, v7

    array-length v10, v8

    if-eq v0, v10, :cond_2

    .line 7427
    const-string v0, "stripOffsets and stripByteCounts should have same length."

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7428
    return-void

    .line 7431
    :cond_2
    const-wide/16 v10, 0x0

    .line 7432
    .local v10, "totalStripByteCount":J
    array-length v0, v8

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v0, :cond_3

    aget-wide v14, v8, v13

    .line 7433
    .local v14, "byteCount":J
    add-long/2addr v10, v14

    .line 7432
    .end local v14    # "byteCount":J
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 7438
    :cond_3
    long-to-int v0, v10

    new-array v13, v0, [B

    .line 7440
    .local v13, "totalStripBytes":[B
    const/4 v0, 0x0

    .line 7441
    .local v0, "bytesRead":I
    const/4 v14, 0x0

    .line 7442
    .local v14, "bytesAdded":I
    const/4 v15, 0x1

    iput-boolean v15, v1, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    iput-boolean v15, v1, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    iput-boolean v15, v1, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 7443
    const/16 v16, 0x0

    move v12, v14

    move v14, v0

    move v0, v15

    move v15, v12

    move/from16 v12, v16

    .end local v0    # "bytesRead":I
    .local v12, "i":I
    .local v14, "bytesRead":I
    .local v15, "bytesAdded":I
    :goto_1
    move/from16 v17, v0

    array-length v0, v7

    if-ge v12, v0, :cond_7

    .line 7444
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .end local v5    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v6    # "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .local v18, "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .local v19, "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    aget-wide v5, v7, v12

    long-to-int v5, v5

    .line 7445
    .local v5, "stripOffset":I
    move/from16 v20, v5

    .end local v5    # "stripOffset":I
    .local v20, "stripOffset":I
    aget-wide v5, v8, v12

    long-to-int v5, v5

    .line 7449
    .local v5, "stripByteCount":I
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    if-ge v12, v0, :cond_4

    add-int v0, v20, v5

    move-object/from16 v21, v7

    .end local v7    # "stripOffsets":[J
    .local v21, "stripOffsets":[J
    int-to-long v6, v0

    add-int/lit8 v0, v12, 0x1

    aget-wide v22, v21, v0

    cmp-long v0, v6, v22

    if-eqz v0, :cond_5

    .line 7451
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    goto :goto_2

    .line 7449
    .end local v21    # "stripOffsets":[J
    .restart local v7    # "stripOffsets":[J
    :cond_4
    move-object/from16 v21, v7

    .line 7455
    .end local v7    # "stripOffsets":[J
    .restart local v21    # "stripOffsets":[J
    :cond_5
    :goto_2
    sub-int v6, v20, v14

    .line 7456
    .local v6, "bytesToSkip":I
    if-gez v6, :cond_6

    .line 7457
    const-string v0, "Invalid strip offset value"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7458
    return-void

    .line 7461
    :cond_6
    :try_start_0
    invoke-virtual {v2, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7465
    nop

    .line 7466
    add-int/2addr v14, v6

    .line 7468
    new-array v7, v5, [B

    .line 7470
    .local v7, "stripBytes":[B
    :try_start_1
    invoke-virtual {v2, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7474
    nop

    .line 7475
    add-int/2addr v14, v5

    .line 7478
    array-length v0, v7

    const/4 v2, 0x0

    invoke-static {v7, v2, v13, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7480
    array-length v0, v7

    add-int/2addr v15, v0

    .line 7443
    .end local v5    # "stripByteCount":I
    .end local v6    # "bytesToSkip":I
    .end local v7    # "stripBytes":[B
    .end local v20    # "stripOffset":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p1

    move/from16 v0, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v21

    goto :goto_1

    .line 7471
    .restart local v5    # "stripByteCount":I
    .restart local v6    # "bytesToSkip":I
    .restart local v7    # "stripBytes":[B
    .restart local v20    # "stripOffset":I
    :catch_0
    move-exception v0

    .line 7472
    .local v0, "e":Ljava/io/EOFException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/io/EOFException;
    .local v16, "e":Ljava/io/EOFException;
    const-string v0, "Failed to read "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7473
    return-void

    .line 7462
    .end local v7    # "stripBytes":[B
    .end local v16    # "e":Ljava/io/EOFException;
    :catch_1
    move-exception v0

    .line 7463
    .restart local v0    # "e":Ljava/io/EOFException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to skip "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7464
    return-void

    .line 7443
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v18    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v19    # "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v20    # "stripOffset":I
    .end local v21    # "stripOffsets":[J
    .local v5, "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .local v6, "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .local v7, "stripOffsets":[J
    :cond_7
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    .line 7482
    .end local v5    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v6    # "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v7    # "stripOffsets":[J
    .end local v12    # "i":I
    .restart local v18    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v19    # "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v21    # "stripOffsets":[J
    iput-object v13, v1, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 7484
    iget-boolean v0, v1, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v0, :cond_b

    .line 7485
    const/16 v16, 0x0

    aget-wide v4, v21, v16

    long-to-int v0, v4

    iput v0, v1, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 7486
    array-length v0, v13

    iput v0, v1, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    goto :goto_5

    .line 7422
    .end local v10    # "totalStripByteCount":J
    .end local v13    # "totalStripBytes":[B
    .end local v14    # "bytesRead":I
    .end local v15    # "bytesAdded":I
    .end local v18    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v19    # "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v21    # "stripOffsets":[J
    .restart local v5    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v6    # "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v7    # "stripOffsets":[J
    :cond_8
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    .line 7423
    .end local v5    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v6    # "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v7    # "stripOffsets":[J
    .restart local v18    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v19    # "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v21    # "stripOffsets":[J
    :goto_3
    const-string v0, "stripByteCounts should not be null or have zero length."

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7424
    return-void

    .line 7418
    .end local v18    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v19    # "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v21    # "stripOffsets":[J
    .restart local v5    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v6    # "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v7    # "stripOffsets":[J
    :cond_9
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    .line 7419
    .end local v5    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v6    # "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v7    # "stripOffsets":[J
    .restart local v18    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v19    # "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v21    # "stripOffsets":[J
    :goto_4
    const-string v0, "stripOffsets should not be null or have zero length."

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7420
    return-void

    .line 7412
    .end local v8    # "stripByteCounts":[J
    .end local v18    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v19    # "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v21    # "stripOffsets":[J
    .restart local v5    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v6    # "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_a
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 7489
    .end local v5    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v6    # "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v18    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v19    # "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_b
    :goto_5
    return-void
.end method

.method private initForFilename(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5463
    if-eqz p1, :cond_1

    .line 5466
    const/4 v0, 0x0

    .line 5467
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 5468
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 5470
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 5471
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5472
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 5474
    :cond_0
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 5476
    :goto_0
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5478
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 5479
    nop

    .line 5480
    return-void

    .line 5478
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 5479
    throw v1

    .line 5464
    .end local v0    # "in":Ljava/io/FileInputStream;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isHeicOrAvifFormat([B)I
    .locals 21
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5583
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 5585
    .local v2, "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v2, v0

    .line 5587
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v4, v0

    .line 5588
    .local v4, "chunkSize":J
    const/4 v0, 0x4

    new-array v6, v0, [B

    .line 5589
    .local v6, "chunkType":[B
    invoke-virtual {v2, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5591
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 5592
    nop

    .line 5655
    nop

    .line 5656
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5657
    const/4 v0, 0x0

    .line 5592
    .end local v2    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .local v0, "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    return v3

    .line 5595
    .end local v0    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_0
    const-wide/16 v7, 0x8

    .line 5596
    .local v7, "chunkDataOffset":J
    const-wide/16 v9, 0x1

    cmp-long v11, v4, v9

    const-wide/16 v12, 0x8

    if-nez v11, :cond_2

    .line 5599
    :try_start_1
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v4, v14

    .line 5600
    const-wide/16 v14, 0x10

    cmp-long v11, v4, v14

    if-gez v11, :cond_1

    .line 5602
    nop

    .line 5655
    nop

    .line 5656
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5657
    const/4 v0, 0x0

    .line 5602
    .end local v2    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v0    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    return v3

    .line 5604
    .end local v0    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_1
    add-long/2addr v7, v12

    .line 5608
    :cond_2
    :try_start_2
    array-length v11, v1

    int-to-long v14, v11

    cmp-long v11, v4, v14

    if-lez v11, :cond_3

    .line 5609
    array-length v11, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v4, v11

    .line 5612
    :cond_3
    sub-long v14, v4, v7

    .line 5616
    .local v14, "chunkDataSize":J
    cmp-long v11, v14, v12

    if-gez v11, :cond_4

    .line 5617
    nop

    .line 5655
    nop

    .line 5656
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5657
    const/4 v0, 0x0

    .line 5617
    .end local v2    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v0    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    return v3

    .line 5620
    .end local v0    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_4
    :try_start_3
    new-array v0, v0, [B

    move-object v11, v0

    .line 5621
    .local v11, "brand":[B
    const/4 v0, 0x0

    .line 5622
    .local v0, "isMif1":Z
    const/4 v12, 0x0

    .line 5623
    .local v12, "isHeic":Z
    const/4 v13, 0x0

    .line 5624
    .local v13, "isAvif":Z
    const-wide/16 v16, 0x0

    move-wide/from16 v17, v16

    move/from16 v16, v13

    move v13, v12

    move v12, v0

    .end local v0    # "isMif1":Z
    .local v12, "isMif1":Z
    .local v13, "isHeic":Z
    .local v16, "isAvif":Z
    .local v17, "i":J
    :goto_0
    const-wide/16 v19, 0x4

    div-long v19, v14, v19
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v0, v17, v19

    if-gez v0, :cond_c

    .line 5626
    :try_start_4
    invoke-virtual {v2, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5629
    nop

    .line 5630
    cmp-long v0, v17, v9

    if-nez v0, :cond_5

    .line 5632
    goto :goto_2

    .line 5634
    :cond_5
    :try_start_5
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    invoke-static {v11, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5635
    const/4 v12, 0x1

    goto :goto_1

    .line 5636
    :cond_6
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    invoke-static {v11, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5637
    const/4 v13, 0x1

    goto :goto_1

    .line 5638
    :cond_7
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_AVIF:[B

    invoke-static {v11, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_AVIS:[B

    .line 5639
    invoke-static {v11, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_9

    .line 5640
    :cond_8
    const/16 v16, 0x1

    .line 5642
    :cond_9
    :goto_1
    if-eqz v12, :cond_b

    .line 5643
    if-eqz v13, :cond_a

    .line 5644
    nop

    .line 5655
    nop

    .line 5656
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5657
    const/4 v0, 0x0

    .line 5644
    .end local v2    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .local v0, "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    const/16 v2, 0xc

    return v2

    .line 5645
    .end local v0    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_a
    if-eqz v16, :cond_b

    .line 5646
    nop

    .line 5655
    nop

    .line 5656
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5657
    const/4 v0, 0x0

    .line 5646
    .end local v2    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v0    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    const/16 v2, 0xf

    return v2

    .line 5624
    .end local v0    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_b
    :goto_2
    add-long v17, v17, v9

    goto :goto_0

    .line 5627
    :catch_0
    move-exception v0

    .line 5628
    .local v0, "e":Ljava/io/EOFException;
    nop

    .line 5655
    nop

    .line 5656
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5657
    const/4 v2, 0x0

    .line 5628
    return v3

    .line 5655
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v4    # "chunkSize":J
    .end local v6    # "chunkType":[B
    .end local v7    # "chunkDataOffset":J
    .end local v11    # "brand":[B
    .end local v12    # "isMif1":Z
    .end local v13    # "isHeic":Z
    .end local v14    # "chunkDataSize":J
    .end local v16    # "isAvif":Z
    .end local v17    # "i":J
    :cond_c
    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 5650
    :catch_1
    move-exception v0

    .line 5651
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    sget-boolean v4, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v4, :cond_d

    .line 5652
    const-string v4, "ExifInterface"

    const-string v5, "Exception parsing HEIF file type box."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 5655
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d
    if-eqz v2, :cond_e

    .line 5656
    :goto_3
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5657
    const/4 v0, 0x0

    .end local v2    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .local v0, "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    goto :goto_4

    .line 5655
    .end local v0    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_e
    move-object v0, v2

    .line 5660
    .end local v2    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v0    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_4
    return v3

    .line 5655
    .end local v0    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_5
    if-eqz v2, :cond_f

    .line 5656
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5657
    const/4 v2, 0x0

    .line 5659
    :cond_f
    throw v0
.end method

.method private static isJpegFormat([B)Z
    .locals 3
    .param p0, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5558
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 5559
    aget-byte v1, p0, v0

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 5560
    const/4 v1, 0x0

    return v1

    .line 5558
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5563
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isOrfFormat([B)Z
    .locals 4
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5672
    const/4 v0, 0x0

    .line 5675
    .local v0, "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v0, v2

    .line 5678
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5680
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5682
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5683
    .local v2, "orfSignature":S
    const/16 v3, 0x4f52

    if-eq v2, v3, :cond_0

    const/16 v3, 0x5352

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 5687
    :cond_1
    nop

    .line 5688
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5683
    return v1

    .line 5687
    .end local v2    # "orfSignature":S
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 5688
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5690
    :cond_2
    throw v1

    .line 5684
    :catch_0
    move-exception v2

    .line 5687
    if-eqz v0, :cond_3

    .line 5688
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5691
    :cond_3
    return v1
.end method

.method private isPngFormat([B)Z
    .locals 3
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5726
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 5727
    aget-byte v1, p1, v0

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 5728
    const/4 v1, 0x0

    return v1

    .line 5726
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5731
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isRafFormat([B)Z
    .locals 4
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5573
    const-string v0, "FUJIFILMCCD-RAW"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 5574
    .local v0, "rafSignatureBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 5575
    aget-byte v2, p1, v1

    aget-byte v3, v0, v1

    if-eq v2, v3, :cond_0

    .line 5576
    const/4 v2, 0x0

    return v2

    .line 5574
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5579
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isRw2Format([B)Z
    .locals 4
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5699
    const/4 v0, 0x0

    .line 5702
    .local v0, "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v0, v2

    .line 5705
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5707
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5709
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5710
    .local v2, "signatureByte":S
    const/16 v3, 0x55

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 5714
    :cond_0
    nop

    .line 5715
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5710
    return v1

    .line 5714
    .end local v2    # "signatureByte":S
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 5715
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5717
    :cond_1
    throw v1

    .line 5711
    :catch_0
    move-exception v2

    .line 5714
    if-eqz v0, :cond_2

    .line 5715
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5718
    :cond_2
    return v1
.end method

.method private static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 4841
    :try_start_0
    sget v0, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4842
    const/4 v0, 0x1

    return v0

    .line 4843
    :catch_0
    move-exception v0

    .line 4844
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 4845
    const-string v1, "ExifInterface"

    const-string v2, "The file descriptor for the given input is not seekable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4847
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/exifinterface/media/ExifInterface$ExifAttribute;",
            ">;)Z"
        }
    .end annotation

    .line 7493
    .local p1, "thumbnailData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    nop

    .line 7494
    const-string v0, "BitsPerSample"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7495
    .local v0, "bitsPerSampleAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_3

    .line 7496
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 7498
    .local v1, "bitsPerSampleValue":[I
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 7499
    return v3

    .line 7503
    :cond_0
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 7504
    nop

    .line 7505
    const-string v2, "PhotometricInterpretation"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7506
    .local v2, "photometricInterpretationAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_3

    .line 7507
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7508
    invoke-virtual {v2, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v4

    .line 7509
    .local v4, "photometricInterpretationValue":I
    if-ne v4, v3, :cond_1

    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 7510
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 7512
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7513
    :cond_2
    return v3

    .line 7520
    .end local v1    # "bitsPerSampleValue":[I
    .end local v2    # "photometricInterpretationAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v4    # "photometricInterpretationValue":I
    :cond_3
    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 7521
    const-string v1, "ExifInterface"

    const-string v2, "Unsupported data type value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7523
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private static isSupportedFormatForSavingAttributes(I)Z
    .locals 1
    .param p0, "mimeType"    # I

    .line 8419
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 8423
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 8421
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedMimeType(Ljava/lang/String;)Z
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 4215
    if-eqz p0, :cond_1

    .line 4219
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "image/x-canon-cr2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "image/x-nikon-nrw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "image/x-nikon-nef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "image/x-olympus-orf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "image/x-pentax-pef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "image/x-panasonic-rw2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "image/x-adobe-dng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_8
    const-string v1, "image/webp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_9
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_a
    const-string v1, "image/heif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_b
    const-string v1, "image/heic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_c
    const-string v1, "image/x-sony-arw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_d
    const-string v1, "image/x-samsung-srw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_e
    const-string v1, "image/x-fuji-raf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 4237
    return v2

    .line 4235
    :pswitch_0
    return v3

    .line 4216
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mimeType shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x6fc6acff -> :sswitch_e
        -0x617ac9e4 -> :sswitch_d
        -0x5f082c57 -> :sswitch_c
        -0x58a8e8f5 -> :sswitch_b
        -0x58a8e8f2 -> :sswitch_a
        -0x58a7d764 -> :sswitch_9
        -0x58a21830 -> :sswitch_8
        -0x54d6098a -> :sswitch_7
        -0x3ab85cc1 -> :sswitch_6
        -0x34686c8b -> :sswitch_5
        -0x13d592a1 -> :sswitch_4
        0x52243d4a -> :sswitch_3
        0x7d1e84e8 -> :sswitch_2
        0x7d1e868c -> :sswitch_1
        0x7dd6e2bc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/exifinterface/media/ExifInterface$ExifAttribute;",
            ">;)Z"
        }
    .end annotation

    .line 7529
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    const-string v0, "ImageLength"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7530
    .local v0, "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    const-string v1, "ImageWidth"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7532
    .local v1, "imageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 7533
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 7534
    .local v2, "imageLengthValue":I
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 7535
    .local v3, "imageWidthValue":I
    const/16 v4, 0x200

    if-gt v2, v4, :cond_0

    if-gt v3, v4, :cond_0

    .line 7536
    const/4 v4, 0x1

    return v4

    .line 7539
    .end local v2    # "imageLengthValue":I
    .end local v3    # "imageWidthValue":I
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isWebpFormat([B)Z
    .locals 4
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5740
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 5741
    aget-byte v1, p1, v0

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    aget-byte v3, v3, v0

    if-eq v1, v3, :cond_0

    .line 5742
    return v2

    .line 5740
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5745
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 5746
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v1, v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x4

    aget-byte v1, p1, v1

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    aget-byte v3, v3, v0

    if-eq v1, v3, :cond_2

    .line 5748
    return v2

    .line 5745
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5751
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 4778
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 4779
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v0

    .line 4778
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4783
    .end local v0    # "i":I
    :cond_0
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    if-nez v0, :cond_1

    .line 4784
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1388

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    .line 4785
    move-object v0, p1

    check-cast v0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result v0

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 4788
    :cond_1
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->shouldSupportSeek(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4789
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4791
    .local v0, "inputStream":Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    iget-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    if-eqz v1, :cond_3

    .line 4792
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getStandaloneAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_8

    .line 4831
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 4833
    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 4834
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    .line 4793
    :cond_2
    return-void

    .line 4796
    :cond_3
    :try_start_1
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_7

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 4798
    :cond_4
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 4799
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    goto :goto_2

    .line 4800
    :cond_5
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 4801
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    goto :goto_2

    .line 4803
    :cond_6
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    goto :goto_2

    .line 4797
    :cond_7
    :goto_1
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    invoke-direct {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 4807
    :cond_8
    :goto_2
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 4808
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 4809
    .end local v0    # "inputStream":Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    goto :goto_3

    .line 4810
    :cond_9
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4811
    .local v0, "inputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    .line 4812
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    goto :goto_3

    .line 4814
    :cond_a
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_b

    .line 4815
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getPngAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_3

    .line 4816
    :cond_b
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_c

    .line 4817
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_3

    .line 4818
    :cond_c
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_d

    .line 4819
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getWebpAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4831
    .end local v0    # "inputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_d
    :goto_3
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 4833
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 4834
    :goto_4
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    goto :goto_6

    .line 4831
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 4822
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 4825
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_2
    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_e

    .line 4826
    const-string v1, "ExifInterface"

    const-string v2, "Invalid image: ExifInterface got an unsupported image format file (ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4831
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 4833
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 4834
    goto :goto_4

    .line 4837
    :cond_f
    :goto_6
    return-void

    .line 4831
    :goto_7
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 4833
    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_10

    .line 4834
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    .line 4836
    :cond_10
    throw v0
.end method

.method private static parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 13
    .param p0, "dateTimeString"    # Ljava/lang/String;
    .param p1, "subSecs"    # Ljava/lang/String;
    .param p2, "offsetString"    # Ljava/lang/String;

    .line 5394
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 5398
    :cond_0
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 5402
    .local v1, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    .line 5403
    .local v3, "dateTime":Ljava/util/Date;
    if-nez v3, :cond_1

    .line 5404
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sFormatterSecondary:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v4

    move-object v3, v4

    .line 5405
    if-nez v3, :cond_1

    .line 5406
    return-object v0

    .line 5409
    :cond_1
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 5410
    .local v4, "msecs":J
    if-eqz p2, :cond_4

    .line 5411
    const/4 v6, 0x1

    invoke-virtual {p2, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5412
    .local v2, "sign":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 5413
    .local v8, "hour":I
    const/4 v9, 0x6

    const/4 v10, 0x4

    invoke-virtual {p2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 5414
    .local v9, "min":I
    const-string v11, "+"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "-"

    if-nez v11, :cond_2

    :try_start_1
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_2
    const-string v11, ":"

    .line 5415
    invoke-virtual {p2, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0xe

    if-gt v8, v7, :cond_4

    .line 5417
    mul-int/lit8 v7, v8, 0x3c

    add-int/2addr v7, v9

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, -0x1

    :goto_0
    mul-int/2addr v7, v6

    int-to-long v6, v7

    add-long/2addr v4, v6

    .line 5421
    .end local v2    # "sign":Ljava/lang/String;
    .end local v8    # "hour":I
    .end local v9    # "min":I
    :cond_4
    if-eqz p1, :cond_5

    .line 5422
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->parseSubSeconds(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 5424
    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 5425
    .end local v3    # "dateTime":Ljava/util/Date;
    .end local v4    # "msecs":J
    :catch_0
    move-exception v2

    .line 5426
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    return-object v0

    .line 5395
    .end local v1    # "pos":Ljava/text/ParsePosition;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6
    :goto_1
    return-object v0
.end method

.method private parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 5
    .param p1, "dataInputStream"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7051
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7053
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 7056
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 7057
    .local v0, "startCode":I
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 7058
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid start code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7062
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    .line 7063
    .local v1, "firstIfdOffset":I
    const/16 v2, 0x8

    if-lt v1, v2, :cond_3

    .line 7066
    add-int/lit8 v1, v1, -0x8

    .line 7067
    if-lez v1, :cond_2

    .line 7068
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 7070
    :cond_2
    return-void

    .line 7064
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid first Ifd offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private printAttributes()V
    .locals 7

    .line 4853
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The size of tag group["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExifInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4855
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4856
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 4857
    .local v4, "tagValue":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tagType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tagValue: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4858
    invoke-virtual {v4, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4857
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4859
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    .end local v4    # "tagValue":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    goto :goto_1

    .line 4853
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 4861
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 4
    .param p1, "dataInputStream"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7032
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 7033
    .local v0, "byteOrder":S
    const-string v1, "ExifInterface"

    sparse-switch v0, :sswitch_data_0

    .line 7045
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid byte order: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7040
    :sswitch_0
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 7041
    const-string v2, "readExifSegment: Byte Align MM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7043
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    .line 7035
    :sswitch_1
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 7036
    const-string v2, "readExifSegment: Byte Align II"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7038
    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x4949 -> :sswitch_1
        0x4d4d -> :sswitch_0
    .end sparse-switch
.end method

.method private readExifSegment([BI)V
    .locals 1
    .param p1, "exifBytes"    # [B
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6992
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 6996
    .local v0, "dataInputStream":Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 6999
    invoke-direct {p0, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 7000
    return-void
.end method

.method private readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 26
    .param p1, "dataInputStream"    # Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    .param p2, "ifdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7076
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->position()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7079
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readShort()S

    move-result v3

    .line 7080
    .local v3, "numberOfDirectoryEntry":S
    sget-boolean v4, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const-string v5, "ExifInterface"

    if-eqz v4, :cond_0

    .line 7081
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numberOfDirectoryEntry: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7083
    :cond_0
    if-gtz v3, :cond_1

    .line 7085
    return-void

    .line 7089
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":S
    :goto_0
    if-ge v4, v3, :cond_24

    .line 7090
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    .line 7091
    .local v9, "tagNumber":I
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    .line 7092
    .local v10, "dataFormat":I
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readInt()I

    move-result v13

    .line 7094
    .local v13, "numberOfComponents":I
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->position()I

    move-result v11

    int-to-long v11, v11

    const-wide/16 v14, 0x4

    add-long/2addr v11, v14

    .line 7097
    .local v11, "nextEntryOffset":J
    sget-object v16, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    const-wide/16 v17, 0x0

    aget-object v6, v16, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 7099
    .local v6, "tag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    sget-boolean v7, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 7100
    nop

    .line 7101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-wide/from16 v19, v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 7102
    if-eqz v6, :cond_2

    iget-object v15, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    const/16 v16, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move/from16 v21, v3

    .end local v3    # "numberOfDirectoryEntry":S
    .local v21, "numberOfDirectoryEntry":S
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v7, v14, v15, v8, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 7100
    const-string v7, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7099
    .end local v21    # "numberOfDirectoryEntry":S
    .restart local v3    # "numberOfDirectoryEntry":S
    :cond_3
    move/from16 v21, v3

    move-wide/from16 v19, v14

    const/16 v16, 0x4

    .line 7105
    .end local v3    # "numberOfDirectoryEntry":S
    .restart local v21    # "numberOfDirectoryEntry":S
    :goto_2
    const-wide/16 v7, 0x0

    .line 7106
    .local v7, "byteCount":J
    const/4 v3, 0x0

    .line 7107
    .local v3, "valid":Z
    if-nez v6, :cond_5

    .line 7108
    sget-boolean v15, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v15, :cond_4

    .line 7109
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v24, v3

    move/from16 v23, v4

    goto/16 :goto_5

    .line 7108
    :cond_4
    move/from16 v24, v3

    move/from16 v23, v4

    goto/16 :goto_5

    .line 7111
    :cond_5
    if-lez v10, :cond_d

    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v14, v14

    if-lt v10, v14, :cond_6

    move/from16 v24, v3

    move/from16 v23, v4

    goto/16 :goto_4

    .line 7115
    :cond_6
    invoke-virtual {v6, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;->isFormatCompatible(I)Z

    move-result v14

    if-nez v14, :cond_8

    .line 7116
    sget-boolean v14, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v14, :cond_7

    .line 7117
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skip the tag entry since data format ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    aget-object v15, v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") is unexpected for tag: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v24, v3

    move/from16 v23, v4

    goto :goto_5

    .line 7116
    :cond_7
    move/from16 v24, v3

    move/from16 v23, v4

    goto :goto_5

    .line 7122
    :cond_8
    const/4 v14, 0x7

    if-ne v10, v14, :cond_9

    .line 7123
    iget v10, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 7125
    :cond_9
    int-to-long v14, v13

    sget-object v23, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    move/from16 v24, v3

    .end local v3    # "valid":Z
    .local v24, "valid":Z
    aget v3, v23, v10

    move/from16 v23, v4

    .end local v4    # "i":S
    .local v23, "i":S
    int-to-long v3, v3

    mul-long v7, v14, v3

    .line 7126
    cmp-long v3, v7, v17

    if-ltz v3, :cond_b

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v7, v3

    if-lez v3, :cond_a

    goto :goto_3

    .line 7132
    :cond_a
    const/4 v3, 0x1

    .end local v24    # "valid":Z
    .restart local v3    # "valid":Z
    goto :goto_6

    .line 7127
    .end local v3    # "valid":Z
    .restart local v24    # "valid":Z
    :cond_b
    :goto_3
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_c

    .line 7128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7135
    :cond_c
    move/from16 v3, v24

    goto :goto_6

    .line 7111
    .end local v23    # "i":S
    .end local v24    # "valid":Z
    .restart local v3    # "valid":Z
    .restart local v4    # "i":S
    :cond_d
    move/from16 v24, v3

    move/from16 v23, v4

    .line 7112
    .end local v3    # "valid":Z
    .end local v4    # "i":S
    .restart local v23    # "i":S
    .restart local v24    # "valid":Z
    :goto_4
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_e

    .line 7113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7135
    .end local v23    # "i":S
    .end local v24    # "valid":Z
    .restart local v3    # "valid":Z
    .restart local v4    # "i":S
    :cond_e
    :goto_5
    move/from16 v3, v24

    .end local v4    # "i":S
    .restart local v23    # "i":S
    :goto_6
    if-nez v3, :cond_f

    .line 7136
    invoke-virtual {v1, v11, v12}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 7137
    goto/16 :goto_c

    .line 7142
    :cond_f
    cmp-long v4, v7, v19

    const-string v14, "Compression"

    if-lez v4, :cond_15

    .line 7143
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readInt()I

    move-result v4

    .line 7144
    .local v4, "offset":I
    sget-boolean v15, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v15, :cond_10

    .line 7145
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    .end local v3    # "valid":Z
    .local v19, "valid":Z
    const-string v3, "seek to data offset: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 7144
    .end local v19    # "valid":Z
    .restart local v3    # "valid":Z
    :cond_10
    move/from16 v19, v3

    .line 7147
    .end local v3    # "valid":Z
    .restart local v19    # "valid":Z
    :goto_7
    iget v3, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v15, 0x7

    if-ne v3, v15, :cond_14

    .line 7148
    const-string v3, "MakerNote"

    iget-object v15, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 7150
    iput v4, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    move/from16 v20, v9

    move/from16 v22, v10

    move-wide/from16 v24, v11

    goto :goto_8

    .line 7151
    :cond_11
    const/4 v3, 0x6

    if-ne v2, v3, :cond_13

    iget-object v15, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 7152
    const-string v3, "ThumbnailImage"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 7154
    iput v4, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 7155
    iput v13, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    .line 7157
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7158
    const/4 v15, 0x6

    invoke-static {v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 7159
    .local v3, "compressionAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget v15, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v20, v9

    move/from16 v22, v10

    .end local v9    # "tagNumber":I
    .end local v10    # "dataFormat":I
    .local v20, "tagNumber":I
    .local v22, "dataFormat":I
    int-to-long v9, v15

    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7160
    invoke-static {v9, v10, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 7161
    .local v9, "jpegInterchangeFormatAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget v10, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    move-wide/from16 v24, v11

    .end local v11    # "nextEntryOffset":J
    .local v24, "nextEntryOffset":J
    int-to-long v10, v10

    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7162
    invoke-static {v10, v11, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 7164
    .local v10, "jpegInterchangeFormatLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v16

    invoke-virtual {v11, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7165
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v16

    const-string v12, "JPEGInterchangeFormat"

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7167
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v16

    const-string v12, "JPEGInterchangeFormatLength"

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 7152
    .end local v3    # "compressionAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v20    # "tagNumber":I
    .end local v22    # "dataFormat":I
    .end local v24    # "nextEntryOffset":J
    .local v9, "tagNumber":I
    .local v10, "dataFormat":I
    .restart local v11    # "nextEntryOffset":J
    :cond_12
    move/from16 v20, v9

    move/from16 v22, v10

    move-wide/from16 v24, v11

    .end local v9    # "tagNumber":I
    .end local v10    # "dataFormat":I
    .end local v11    # "nextEntryOffset":J
    .restart local v20    # "tagNumber":I
    .restart local v22    # "dataFormat":I
    .restart local v24    # "nextEntryOffset":J
    goto :goto_8

    .line 7151
    .end local v20    # "tagNumber":I
    .end local v22    # "dataFormat":I
    .end local v24    # "nextEntryOffset":J
    .restart local v9    # "tagNumber":I
    .restart local v10    # "dataFormat":I
    .restart local v11    # "nextEntryOffset":J
    :cond_13
    move/from16 v20, v9

    move/from16 v22, v10

    move-wide/from16 v24, v11

    .end local v9    # "tagNumber":I
    .end local v10    # "dataFormat":I
    .end local v11    # "nextEntryOffset":J
    .restart local v20    # "tagNumber":I
    .restart local v22    # "dataFormat":I
    .restart local v24    # "nextEntryOffset":J
    goto :goto_8

    .line 7147
    .end local v20    # "tagNumber":I
    .end local v22    # "dataFormat":I
    .end local v24    # "nextEntryOffset":J
    .restart local v9    # "tagNumber":I
    .restart local v10    # "dataFormat":I
    .restart local v11    # "nextEntryOffset":J
    :cond_14
    move/from16 v20, v9

    move/from16 v22, v10

    move-wide/from16 v24, v11

    .line 7171
    .end local v9    # "tagNumber":I
    .end local v10    # "dataFormat":I
    .end local v11    # "nextEntryOffset":J
    .restart local v20    # "tagNumber":I
    .restart local v22    # "dataFormat":I
    .restart local v24    # "nextEntryOffset":J
    :goto_8
    int-to-long v9, v4

    invoke-virtual {v1, v9, v10}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    goto :goto_9

    .line 7142
    .end local v4    # "offset":I
    .end local v19    # "valid":Z
    .end local v20    # "tagNumber":I
    .end local v22    # "dataFormat":I
    .end local v24    # "nextEntryOffset":J
    .local v3, "valid":Z
    .restart local v9    # "tagNumber":I
    .restart local v10    # "dataFormat":I
    .restart local v11    # "nextEntryOffset":J
    :cond_15
    move/from16 v19, v3

    move/from16 v20, v9

    move/from16 v22, v10

    move-wide/from16 v24, v11

    .line 7175
    .end local v3    # "valid":Z
    .end local v9    # "tagNumber":I
    .end local v10    # "dataFormat":I
    .end local v11    # "nextEntryOffset":J
    .restart local v19    # "valid":Z
    .restart local v20    # "tagNumber":I
    .restart local v22    # "dataFormat":I
    .restart local v24    # "nextEntryOffset":J
    :goto_9
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 7176
    .local v3, "nextIfdType":Ljava/lang/Integer;
    sget-boolean v4, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v4, :cond_16

    .line 7177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nextIfdType: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " byteCount: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7180
    :cond_16
    if-eqz v3, :cond_1d

    .line 7181
    const-wide/16 v9, -0x1

    .line 7183
    .local v9, "offset":J
    sparse-switch v22, :sswitch_data_0

    goto :goto_a

    .line 7198
    :sswitch_0
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readInt()I

    move-result v4

    int-to-long v9, v4

    .line 7199
    goto :goto_a

    .line 7189
    :sswitch_1
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readShort()S

    move-result v4

    int-to-long v9, v4

    .line 7190
    goto :goto_a

    .line 7193
    :sswitch_2
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v9

    .line 7194
    goto :goto_a

    .line 7185
    :sswitch_3
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    int-to-long v9, v4

    .line 7186
    nop

    .line 7206
    :goto_a
    sget-boolean v4, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v4, :cond_17

    .line 7207
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v11, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    filled-new-array {v4, v11}, [Ljava/lang/Object;

    move-result-object v4

    const-string v11, "Offset: %d, tagName: %s"

    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7213
    :cond_17
    cmp-long v4, v9, v17

    const-string v11, ")"

    const/4 v12, -0x1

    if-lez v4, :cond_1a

    .line 7214
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->length()I

    move-result v4

    if-eq v4, v12, :cond_18

    .line 7215
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->length()I

    move-result v4

    int-to-long v14, v4

    cmp-long v4, v9, v14

    if-gez v4, :cond_1a

    .line 7216
    :cond_18
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    long-to-int v12, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 7217
    invoke-virtual {v1, v9, v10}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 7218
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    goto :goto_b

    .line 7220
    :cond_19
    sget-boolean v4, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v4, :cond_1c

    .line 7221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " (at "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 7226
    :cond_1a
    sget-boolean v4, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v4, :cond_1c

    .line 7227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7229
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->length()I

    move-result v14

    if-eq v14, v12, :cond_1b

    .line 7230
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " (total length: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->length()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7232
    :cond_1b
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7236
    .end local v4    # "message":Ljava/lang/String;
    :cond_1c
    :goto_b
    move-wide/from16 v11, v24

    .end local v24    # "nextEntryOffset":J
    .restart local v11    # "nextEntryOffset":J
    invoke-virtual {v1, v11, v12}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 7237
    goto/16 :goto_c

    .line 7240
    .end local v9    # "offset":J
    .end local v11    # "nextEntryOffset":J
    .restart local v24    # "nextEntryOffset":J
    :cond_1d
    move-wide/from16 v11, v24

    .end local v24    # "nextEntryOffset":J
    .restart local v11    # "nextEntryOffset":J
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->position()I

    move-result v4

    iget v9, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    add-int/2addr v4, v9

    .line 7241
    .local v4, "bytesOffset":I
    long-to-int v9, v7

    new-array v9, v9, [B

    .line 7242
    .local v9, "bytes":[B
    invoke-virtual {v1, v9}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readFully([B)V

    .line 7243
    nop

    .end local v11    # "nextEntryOffset":J
    .restart local v24    # "nextEntryOffset":J
    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-object v10, v14

    int-to-long v14, v4

    move-object/from16 v16, v9

    move-object v2, v10

    move/from16 v12, v22

    move-wide/from16 v9, v24

    .end local v22    # "dataFormat":I
    .end local v24    # "nextEntryOffset":J
    .local v9, "nextEntryOffset":J
    .local v12, "dataFormat":I
    .local v16, "bytes":[B
    invoke-direct/range {v11 .. v16}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    .line 7245
    .end local v12    # "dataFormat":I
    .local v11, "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v22    # "dataFormat":I
    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, p2

    iget-object v14, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v12, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7250
    const-string v12, "DNGVersion"

    iget-object v14, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 7251
    const/4 v12, 0x3

    iput v12, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 7257
    :cond_1e
    const-string v12, "Make"

    iget-object v14, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f

    const-string v12, "Model"

    iget-object v14, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    :cond_1f
    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7258
    invoke-virtual {v11, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "PENTAX"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_21

    :cond_20
    iget-object v12, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 7259
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7260
    invoke-virtual {v11, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    const v12, 0xffff

    if-ne v2, v12, :cond_22

    .line 7261
    :cond_21
    const/16 v2, 0x8

    iput v2, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 7265
    :cond_22
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->position()I

    move-result v2

    int-to-long v14, v2

    cmp-long v2, v14, v9

    if-eqz v2, :cond_23

    .line 7266
    invoke-virtual {v1, v9, v10}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 7089
    .end local v3    # "nextIfdType":Ljava/lang/Integer;
    .end local v4    # "bytesOffset":I
    .end local v6    # "tag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .end local v7    # "byteCount":J
    .end local v9    # "nextEntryOffset":J
    .end local v11    # "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v13    # "numberOfComponents":I
    .end local v16    # "bytes":[B
    .end local v19    # "valid":Z
    .end local v20    # "tagNumber":I
    .end local v22    # "dataFormat":I
    :cond_23
    :goto_c
    add-int/lit8 v4, v23, 0x1

    int-to-short v4, v4

    move/from16 v2, p2

    move/from16 v3, v21

    .end local v23    # "i":S
    .local v4, "i":S
    goto/16 :goto_0

    .end local v21    # "numberOfDirectoryEntry":S
    .local v3, "numberOfDirectoryEntry":S
    :cond_24
    move/from16 v21, v3

    move/from16 v23, v4

    const/16 v16, 0x4

    const-wide/16 v17, 0x0

    .line 7270
    .end local v3    # "numberOfDirectoryEntry":S
    .end local v4    # "i":S
    .restart local v21    # "numberOfDirectoryEntry":S
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readInt()I

    move-result v2

    .line 7271
    .local v2, "nextIfdOffset":I
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_25

    .line 7272
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "nextIfdOffset: %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7277
    :cond_25
    int-to-long v3, v2

    cmp-long v3, v3, v17

    if-lez v3, :cond_28

    .line 7278
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 7279
    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 7280
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v16

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 7282
    move/from16 v3, v16

    invoke-direct {v0, v1, v3}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    goto :goto_d

    .line 7283
    :cond_26
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 7284
    invoke-direct {v0, v1, v4}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    goto :goto_d

    .line 7287
    :cond_27
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_29

    .line 7288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 7293
    :cond_28
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_29

    .line 7294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7298
    :cond_29
    :goto_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 4766
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 4767
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4766
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4769
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ifdType"    # I
    .param p2, "invalidTag"    # Ljava/lang/String;
    .param p3, "validTag"    # Ljava/lang/String;

    .line 8395
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8396
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8397
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p1

    .line 8398
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8397
    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8399
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8402
    :cond_0
    return-void
.end method

.method private retrieveJpegImageSize(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 8
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7309
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    .line 7310
    const-string v1, "ImageLength"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7311
    .local v0, "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    .line 7312
    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7314
    .local v1, "imageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 7316
    :cond_0
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    .line 7317
    const-string v3, "JPEGInterchangeFormat"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7318
    .local v2, "jpegInterchangeFormatAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    .line 7319
    const-string v4, "JPEGInterchangeFormatLength"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7320
    .local v3, "jpegInterchangeFormatLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 7322
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7323
    invoke-virtual {v2, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v4

    .line 7324
    .local v4, "jpegInterchangeFormat":I
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7325
    invoke-virtual {v2, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 7328
    .local v5, "jpegInterchangeFormatLength":I
    int-to-long v6, v4

    invoke-virtual {p1, v6, v7}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 7329
    new-array v6, v5, [B

    .line 7330
    .local v6, "jpegBytes":[B
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->readFully([B)V

    .line 7331
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v7, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, v7, v4, p2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 7335
    .end local v2    # "jpegInterchangeFormatAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v3    # "jpegInterchangeFormatLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v4    # "jpegInterchangeFormat":I
    .end local v5    # "jpegInterchangeFormatLength":I
    .end local v6    # "jpegBytes":[B
    :cond_1
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6512
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveJpegAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6516
    :cond_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6517
    .local v0, "dataInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6519
    .local v1, "dataOutputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v2

    const-string v3, "Invalid marker"

    const/4 v4, -0x1

    if-ne v2, v4, :cond_c

    .line 6522
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6523
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v2

    const/16 v5, -0x28

    if-ne v2, v5, :cond_b

    .line 6526
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6529
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6530
    const/16 v2, -0x1f

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6531
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    move-result v5

    iput v5, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 6533
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v5, :cond_1

    .line 6536
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write(I)V

    .line 6537
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6538
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v5, v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v5, v5

    add-int/2addr v2, v5

    .line 6539
    .local v2, "length":I
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 6540
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6541
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v5, v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6542
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroidx/exifinterface/media/ExifInterface;->mFileOnDiskContainsSeparateXmpMarker:Z

    .line 6545
    .end local v2    # "length":I
    :cond_1
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 6548
    .local v2, "bytes":[B
    :goto_0
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v5

    .line 6549
    .local v5, "marker":B
    if-ne v5, v4, :cond_a

    .line 6552
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v5

    .line 6553
    const-string v6, "Invalid length"

    const/4 v7, 0x0

    sparse-switch v5, :sswitch_data_0

    .line 6604
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6605
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6606
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v8

    .line 6607
    .local v8, "length":I
    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 6608
    add-int/lit8 v8, v8, -0x2

    .line 6609
    if-ltz v8, :cond_9

    goto/16 :goto_3

    .line 6555
    .end local v8    # "length":I
    :sswitch_0
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    .line 6556
    .restart local v8    # "length":I
    if-ltz v8, :cond_7

    .line 6562
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    array-length v6, v6

    if-lt v8, v6, :cond_2

    .line 6563
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    array-length v6, v6

    new-array v6, v6, [B

    .local v6, "identifier":[B
    goto :goto_1

    .line 6564
    .end local v6    # "identifier":[B
    :cond_2
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v6, v6

    if-lt v8, v6, :cond_3

    .line 6565
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v6, v6

    new-array v6, v6, [B

    .restart local v6    # "identifier":[B
    goto :goto_1

    .line 6567
    .end local v6    # "identifier":[B
    :cond_3
    const/4 v6, 0x0

    .line 6569
    .restart local v6    # "identifier":[B
    :goto_1
    if-eqz v6, :cond_5

    .line 6570
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6571
    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v6, v9}, Landroidx/exifinterface/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v9

    if-nez v9, :cond_4

    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 6572
    invoke-static {v6, v9}, Landroidx/exifinterface/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 6574
    :cond_4
    array-length v7, v6

    sub-int v7, v8, v7

    invoke-virtual {v0, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6575
    goto :goto_4

    .line 6579
    :cond_5
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6580
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6581
    add-int/lit8 v9, v8, 0x2

    invoke-virtual {v1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 6582
    if-eqz v6, :cond_6

    .line 6583
    array-length v9, v6

    sub-int/2addr v8, v9

    .line 6584
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6587
    :cond_6
    :goto_2
    if-lez v8, :cond_8

    array-length v9, v2

    .line 6588
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 6587
    invoke-virtual {v0, v2, v7, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    move-result v9

    move v10, v9

    .local v10, "read":I
    if-ltz v9, :cond_8

    .line 6589
    invoke-virtual {v1, v2, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 6590
    sub-int/2addr v8, v10

    goto :goto_2

    .line 6557
    .end local v6    # "identifier":[B
    .end local v10    # "read":I
    :cond_7
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6596
    .end local v8    # "length":I
    :sswitch_1
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6597
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6599
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 6600
    return-void

    .line 6613
    .restart local v8    # "length":I
    :goto_3
    if-lez v8, :cond_8

    array-length v6, v2

    .line 6614
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 6613
    invoke-virtual {v0, v2, v7, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    move-result v6

    move v9, v6

    .local v9, "read":I
    if-ltz v6, :cond_8

    .line 6615
    invoke-virtual {v1, v2, v7, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 6616
    sub-int/2addr v8, v9

    goto :goto_3

    .line 6621
    .end local v5    # "marker":B
    .end local v8    # "length":I
    .end local v9    # "read":I
    :cond_8
    :goto_4
    goto/16 :goto_0

    .line 6610
    .restart local v5    # "marker":B
    .restart local v8    # "length":I
    :cond_9
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6550
    .end local v8    # "length":I
    :cond_a
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6524
    .end local v2    # "bytes":[B
    .end local v5    # "marker":B
    :cond_b
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6520
    :cond_c
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        -0x27 -> :sswitch_1
        -0x26 -> :sswitch_1
        -0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method private savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6626
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePngAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6630
    :cond_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6631
    .local v0, "dataInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6635
    .local v1, "dataOutputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6637
    const/4 v2, 0x1

    .line 6640
    .local v2, "needToWriteExif":Z
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroidx/exifinterface/media/ExifInterface;->mFileOnDiskContainsSeparateXmpMarker:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 6642
    .local v3, "needToHandleXmpChunk":Z
    :cond_3
    :goto_1
    if-nez v2, :cond_5

    if-eqz v3, :cond_4

    goto :goto_2

    .line 6692
    :cond_4
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 6693
    return-void

    .line 6643
    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    .line 6644
    .local v4, "chunkLength":I
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v5

    .line 6645
    .local v5, "chunkType":I
    const v6, 0x49484452

    if-ne v5, v6, :cond_7

    .line 6646
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6647
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6648
    add-int/lit8 v6, v4, 0x4

    invoke-static {v0, v1, v6}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6649
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    if-nez v6, :cond_6

    .line 6652
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->writePngExifChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 6653
    const/4 v2, 0x0

    .line 6655
    :cond_6
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Landroidx/exifinterface/media/ExifInterface;->mFileOnDiskContainsSeparateXmpMarker:Z

    if-nez v6, :cond_3

    .line 6656
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->writePngXmpItxtChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 6657
    const/4 v3, 0x0

    goto :goto_1

    .line 6660
    :cond_7
    const v6, 0x65584966

    if-ne v5, v6, :cond_8

    if-eqz v2, :cond_8

    .line 6661
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->writePngExifChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 6662
    add-int/lit8 v6, v4, 0x4

    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6663
    const/4 v2, 0x0

    .line 6664
    goto :goto_1

    .line 6665
    :cond_8
    const v6, 0x69545874

    if-ne v5, v6, :cond_b

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->PNG_ITXT_XMP_KEYWORD:[B

    array-length v6, v6

    if-lt v4, v6, :cond_b

    .line 6668
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->PNG_ITXT_XMP_KEYWORD:[B

    array-length v6, v6

    new-array v6, v6, [B

    .line 6669
    .local v6, "keyword":[B
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6670
    array-length v7, v6

    sub-int v7, v4, v7

    add-int/lit8 v7, v7, 0x4

    .line 6671
    .local v7, "remainingChunkBytes":I
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->PNG_ITXT_XMP_KEYWORD:[B

    invoke-static {v6, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 6672
    iget-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v8, :cond_9

    .line 6673
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->writePngXmpItxtChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V

    .line 6675
    :cond_9
    invoke-virtual {v0, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6676
    const/4 v3, 0x0

    goto :goto_1

    .line 6679
    :cond_a
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6680
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6681
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6682
    invoke-static {v0, v1, v7}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6684
    goto :goto_1

    .line 6686
    .end local v6    # "keyword":[B
    .end local v7    # "remainingChunkBytes":I
    :cond_b
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6687
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6688
    add-int/lit8 v6, v4, 0x4

    invoke-static {v0, v1, v6}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6689
    .end local v4    # "chunkLength":I
    .end local v5    # "chunkType":I
    goto/16 :goto_1
.end method

.method private saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 24
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6759
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveWebpAttributes starting with (inputStream: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", outputStream: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ExifInterface"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6763
    :cond_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v2, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    move-object v4, v0

    .line 6765
    .local v4, "totalInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v3, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    move-object v5, v0

    .line 6769
    .local v5, "totalOutputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v0, v0

    invoke-static {v4, v5, v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6770
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 6771
    .local v6, "riffLength":I
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v0, v0

    invoke-virtual {v4, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6774
    const/4 v7, 0x0

    .line 6775
    .local v7, "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v8, -0x1

    .line 6777
    .local v8, "exifOffset":I
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v7, v0

    .line 6778
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v7, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    move-object v9, v0

    .line 6781
    .local v9, "nonHeaderOutputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    iget v0, v1, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    const/4 v11, 0x4

    if-eqz v0, :cond_2

    .line 6784
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v0, v0

    add-int/2addr v0, v11

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v12, v12

    add-int/2addr v0, v12

    .line 6786
    .local v0, "bytesRead":I
    iget v12, v1, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    sub-int/2addr v12, v0

    sub-int/2addr v12, v11

    sub-int/2addr v12, v11

    invoke-static {v4, v9, v12}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6791
    invoke-virtual {v4, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6792
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v11

    .line 6795
    .local v11, "exifChunkLength":I
    rem-int/lit8 v12, v11, 0x2

    if-eqz v12, :cond_1

    .line 6796
    add-int/lit8 v11, v11, 0x1

    .line 6798
    :cond_1
    invoke-virtual {v4, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6801
    invoke-direct {v1, v9}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    move-result v12

    move v8, v12

    .line 6802
    .end local v0    # "bytesRead":I
    .end local v11    # "exifChunkLength":I
    const/16 v17, -0x1

    goto/16 :goto_7

    .line 6804
    :cond_2
    new-array v0, v11, [B

    move-object v12, v0

    .line 6805
    .local v12, "firstChunkType":[B
    invoke-virtual {v4, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6807
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    invoke-static {v12, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_7

    .line 6809
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    move/from16 v16, v0

    .line 6811
    .local v16, "size":I
    rem-int/lit8 v0, v16, 0x2

    if-ne v0, v15, :cond_3

    add-int/lit8 v0, v16, 0x1

    goto :goto_0

    :cond_3
    move/from16 v0, v16

    :goto_0
    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 6812
    .local v17, "data":[B
    move-object/from16 v13, v17

    const/16 v0, 0x8

    .end local v17    # "data":[B
    .local v13, "data":[B
    invoke-virtual {v4, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6815
    aget-byte v17, v13, v14

    or-int/lit8 v0, v17, 0x8

    int-to-byte v0, v0

    aput-byte v0, v13, v14

    .line 6818
    aget-byte v0, v13, v14

    shr-int/2addr v0, v15

    and-int/2addr v0, v15

    if-ne v0, v15, :cond_4

    move v14, v15

    .line 6821
    .local v14, "containsAnimation":Z
    :cond_4
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    invoke-virtual {v9, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6822
    move/from16 v10, v16

    const/16 v17, -0x1

    .end local v16    # "size":I
    .local v10, "size":I
    invoke-virtual {v9, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6823
    invoke-virtual {v9, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6832
    if-eqz v14, :cond_6

    .line 6833
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    move/from16 v16, v15

    const/4 v15, 0x0

    invoke-direct {v1, v4, v9, v0, v15}, Landroidx/exifinterface/media/ExifInterface;->copyChunksUpToGivenChunkType(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    .line 6837
    :goto_1
    new-array v0, v11, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v0

    .line 6838
    .local v15, "type":[B
    const/16 v18, 0x0

    .line 6840
    .local v18, "animationFinished":Z
    :try_start_1
    invoke-virtual {v4, v15}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6841
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    .line 6844
    .end local v18    # "animationFinished":Z
    .local v0, "animationFinished":Z
    goto :goto_2

    .line 6842
    .end local v0    # "animationFinished":Z
    .restart local v18    # "animationFinished":Z
    :catch_0
    move-exception v0

    .line 6843
    .local v0, "e":Ljava/io/EOFException;
    const/16 v18, 0x1

    move/from16 v0, v18

    .line 6845
    .end local v18    # "animationFinished":Z
    .local v0, "animationFinished":Z
    :goto_2
    if-eqz v0, :cond_5

    .line 6846
    :try_start_2
    invoke-direct {v1, v9}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    move-result v11

    .line 6847
    .end local v8    # "exifOffset":I
    .local v11, "exifOffset":I
    move v8, v11

    goto :goto_3

    .line 6849
    .end local v11    # "exifOffset":I
    .restart local v8    # "exifOffset":I
    :cond_5
    invoke-direct {v1, v4, v9, v15}, Landroidx/exifinterface/media/ExifInterface;->copyWebPChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B)V

    .line 6850
    .end local v0    # "animationFinished":Z
    .end local v15    # "type":[B
    goto :goto_1

    .line 6853
    :cond_6
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-direct {v1, v4, v9, v0, v11}, Landroidx/exifinterface/media/ExifInterface;->copyChunksUpToGivenChunkType(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    .line 6855
    invoke-direct {v1, v9}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    move-result v0

    move v8, v0

    .line 6857
    .end local v10    # "size":I
    .end local v13    # "data":[B
    .end local v14    # "containsAnimation":Z
    :goto_3
    goto/16 :goto_7

    :cond_7
    move/from16 v16, v15

    const/16 v0, 0x8

    const/16 v17, -0x1

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    invoke-static {v12, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_8

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 6858
    invoke-static {v12, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 6859
    :cond_8
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v10

    .line 6860
    .restart local v10    # "size":I
    move v13, v10

    .line 6862
    .local v13, "bytesToRead":I
    rem-int/lit8 v15, v10, 0x2

    move/from16 v18, v11

    move/from16 v11, v16

    if-ne v15, v11, :cond_9

    .line 6863
    add-int/lit8 v13, v13, 0x1

    .line 6867
    :cond_9
    const/4 v11, 0x0

    .line 6868
    .local v11, "widthAndHeight":I
    const/4 v15, 0x0

    .line 6869
    .local v15, "width":I
    const/16 v19, 0x0

    .line 6870
    .local v19, "height":I
    const/16 v20, 0x0

    .line 6872
    .local v20, "alpha":Z
    move/from16 v21, v0

    const/4 v0, 0x3

    move/from16 v22, v14

    new-array v14, v0, [B

    .line 6874
    .local v14, "vp8Frame":[B
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    invoke-static {v12, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 6875
    invoke-virtual {v4, v14}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6878
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 6879
    .local v0, "vp8Signature":[B
    invoke-virtual {v4, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6880
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6885
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    move v11, v2

    .line 6886
    and-int/lit16 v15, v11, 0x3fff

    .line 6887
    shr-int/lit8 v2, v11, 0x10

    and-int/lit16 v2, v2, 0x3fff

    .line 6888
    .end local v19    # "height":I
    .local v2, "height":I
    move/from16 v16, v2

    .end local v2    # "height":I
    .local v16, "height":I
    array-length v2, v14

    move/from16 v19, v2

    array-length v2, v0

    add-int v2, v19, v2

    add-int/lit8 v2, v2, 0x4

    sub-int/2addr v13, v2

    .line 6889
    .end local v0    # "vp8Signature":[B
    move/from16 v19, v16

    goto :goto_5

    .line 6881
    .end local v16    # "height":I
    .restart local v0    # "vp8Signature":[B
    .restart local v19    # "height":I
    :cond_a
    new-instance v2, Ljava/io/IOException;

    move-object/from16 v16, v0

    .end local v0    # "vp8Signature":[B
    .local v16, "vp8Signature":[B
    const-string v0, "Error checking VP8 signature"

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "totalInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v6    # "riffLength":I
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "exifOffset":I
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v2

    .line 6889
    .end local v16    # "vp8Signature":[B
    .restart local v4    # "totalInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v6    # "riffLength":I
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "exifOffset":I
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :cond_b
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v12, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6891
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v0

    .line 6892
    .local v0, "vp8lSignature":B
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_d

    .line 6897
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    move v11, v2

    .line 6900
    and-int/lit16 v2, v11, 0x3fff

    const/16 v16, 0x1

    add-int/lit8 v15, v2, 0x1

    .line 6901
    const v2, 0xfffc000

    and-int/2addr v2, v11

    ushr-int/lit8 v2, v2, 0xe

    add-int/lit8 v19, v2, 0x1

    .line 6903
    const/high16 v2, 0x10000000

    and-int/2addr v2, v11

    if-eqz v2, :cond_c

    goto :goto_4

    :cond_c
    move/from16 v16, v22

    :goto_4
    move/from16 v20, v16

    .line 6904
    add-int/lit8 v13, v13, -0x5

    goto :goto_5

    .line 6893
    :cond_d
    new-instance v2, Ljava/io/IOException;

    move/from16 v16, v0

    .end local v0    # "vp8lSignature":B
    .local v16, "vp8lSignature":B
    const-string v0, "Error checking VP8L signature"

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "totalInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v6    # "riffLength":I
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "exifOffset":I
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v2

    .line 6908
    .end local v16    # "vp8lSignature":B
    .restart local v4    # "totalInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v6    # "riffLength":I
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "exifOffset":I
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :cond_e
    :goto_5
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    invoke-virtual {v9, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6909
    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6910
    new-array v0, v0, [B

    .line 6912
    .local v0, "data":[B
    if-eqz v20, :cond_f

    .line 6913
    aget-byte v2, v0, v22

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v22

    .line 6916
    :cond_f
    aget-byte v2, v0, v22

    or-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v22

    .line 6918
    add-int/lit8 v15, v15, -0x1

    .line 6919
    add-int/lit8 v2, v19, -0x1

    .line 6920
    .end local v19    # "height":I
    .restart local v2    # "height":I
    int-to-byte v3, v15

    aput-byte v3, v0, v18

    .line 6921
    shr-int/lit8 v3, v15, 0x8

    int-to-byte v3, v3

    const/16 v16, 0x5

    aput-byte v3, v0, v16

    .line 6922
    shr-int/lit8 v3, v15, 0x10

    int-to-byte v3, v3

    const/16 v16, 0x6

    aput-byte v3, v0, v16

    .line 6923
    const/16 v16, 0x7

    int-to-byte v3, v2

    aput-byte v3, v0, v16

    .line 6924
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v21

    .line 6925
    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v16, 0x9

    aput-byte v3, v0, v16

    .line 6926
    invoke-virtual {v9, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6929
    invoke-virtual {v9, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6930
    invoke-virtual {v9, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6931
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    invoke-static {v12, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 6932
    invoke-virtual {v9, v14}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6933
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    invoke-virtual {v9, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6934
    invoke-virtual {v9, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_6

    .line 6935
    :cond_10
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v12, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 6936
    const/16 v3, 0x2f

    invoke-virtual {v9, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write(I)V

    .line 6937
    invoke-virtual {v9, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6939
    :cond_11
    :goto_6
    invoke-static {v4, v9, v13}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6942
    invoke-direct {v1, v9}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    move-result v3

    move v8, v3

    .line 6947
    .end local v0    # "data":[B
    .end local v2    # "height":I
    .end local v10    # "size":I
    .end local v11    # "widthAndHeight":I
    .end local v12    # "firstChunkType":[B
    .end local v13    # "bytesToRead":I
    .end local v14    # "vp8Frame":[B
    .end local v15    # "width":I
    .end local v20    # "alpha":Z
    :cond_12
    :goto_7
    add-int/lit8 v0, v6, 0x8

    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v2

    sub-int/2addr v0, v2

    .line 6948
    .local v0, "remainingRiffBytes":I
    invoke-static {v4, v9, v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6951
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v5, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6953
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    invoke-virtual {v5, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6954
    move/from16 v2, v17

    if-eq v8, v2, :cond_13

    .line 6955
    iget-object v2, v5, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->size()I

    move-result v2

    add-int/2addr v2, v8

    iput v2, v1, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 6957
    :cond_13
    invoke-virtual {v7, v5}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 6959
    invoke-static {v4, v5}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6963
    nop

    .end local v0    # "remainingRiffBytes":I
    .end local v9    # "nonHeaderOutputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-static {v7}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 6964
    nop

    .line 6965
    return-void

    .line 6963
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 6960
    :catch_1
    move-exception v0

    .line 6961
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to save WebP file"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "totalInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v6    # "riffLength":I
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "exifOffset":I
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6963
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "totalInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v6    # "riffLength":I
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "exifOffset":I
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :goto_8
    invoke-static {v7}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 6964
    throw v0
.end method

.method private setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 3
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7339
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 7341
    .local v0, "thumbnailData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    nop

    .line 7342
    const-string v1, "Compression"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7343
    .local v1, "compressionAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_1

    .line 7344
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    .line 7345
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 7347
    :sswitch_0
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 7348
    goto :goto_0

    .line 7352
    :sswitch_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7353
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromStrips(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_0
    :goto_0
    goto :goto_1

    .line 7360
    :cond_1
    const/4 v2, 0x6

    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    .line 7361
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 7363
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method private static shouldSupportSeek(I)Z
    .locals 1
    .param p0, "mimeType"    # I

    .line 8411
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 8415
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 8413
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private swapBasedOnImageSize(II)V
    .locals 11
    .param p1, "firstIfdType"    # I
    .param p2, "secondIfdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8355
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "ExifInterface"

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 8362
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    .line 8363
    const-string v2, "ImageLength"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8364
    .local v0, "firstImageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p1

    .line 8365
    const-string v4, "ImageWidth"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8366
    .local v3, "firstImageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 8367
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8368
    .local v2, "secondImageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 8369
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8371
    .local v4, "secondImageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_4

    if-nez v3, :cond_1

    goto :goto_1

    .line 8375
    :cond_1
    if-eqz v2, :cond_3

    if-nez v4, :cond_2

    goto :goto_0

    .line 8380
    :cond_2
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 8381
    .local v1, "firstImageLengthValue":I
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 8382
    .local v5, "firstImageWidthValue":I
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v6

    .line 8383
    .local v6, "secondImageLengthValue":I
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v7

    .line 8385
    .local v7, "secondImageWidthValue":I
    if-ge v1, v6, :cond_5

    if-ge v5, v7, :cond_5

    .line 8387
    iget-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, p1

    .line 8388
    .local v8, "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    iget-object v9, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v10, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, p2

    aput-object v10, v9, p1

    .line 8389
    iget-object v9, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aput-object v8, v9, p2

    goto :goto_2

    .line 8376
    .end local v1    # "firstImageLengthValue":I
    .end local v5    # "firstImageWidthValue":I
    .end local v6    # "secondImageLengthValue":I
    .end local v7    # "secondImageWidthValue":I
    .end local v8    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    :cond_3
    :goto_0
    sget-boolean v5, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 8377
    const-string v5, "Second image does not contain valid size information"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 8372
    :cond_4
    :goto_1
    sget-boolean v5, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 8373
    const-string v5, "First image does not contain valid size information"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8392
    :cond_5
    :goto_2
    return-void

    .line 8356
    .end local v0    # "firstImageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v2    # "secondImageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v3    # "firstImageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v4    # "secondImageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_6
    :goto_3
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 8357
    const-string v0, "Cannot perform swap since only one image data exists"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8359
    :cond_7
    return-void
.end method

.method private static updateCrcWithInt(Ljava/util/zip/CRC32;I)V
    .locals 1
    .param p0, "crc"    # Ljava/util/zip/CRC32;
    .param p1, "value"    # I

    .line 6419
    ushr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/util/zip/CRC32;->update(I)V

    .line 6420
    ushr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/util/zip/CRC32;->update(I)V

    .line 6421
    ushr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/util/zip/CRC32;->update(I)V

    .line 6422
    invoke-virtual {p0, p1}, Ljava/util/zip/CRC32;->update(I)V

    .line 6423
    return-void
.end method

.method private updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 17
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7601
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    .line 7602
    const-string v2, "DefaultCropSize"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7604
    .local v1, "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    .line 7605
    const-string v3, "SensorTopBorder"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7606
    .local v2, "topBorderAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    .line 7607
    const-string v4, "SensorLeftBorder"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7608
    .local v3, "leftBorderAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    .line 7609
    const-string v5, "SensorBottomBorder"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7610
    .local v4, "bottomBorderAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 7611
    const-string v6, "SensorRightBorder"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7613
    .local v5, "rightBorderAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    const-string v6, "ImageLength"

    const-string v7, "ImageWidth"

    if-eqz v1, :cond_5

    .line 7616
    iget v8, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    const-string v13, "Invalid crop size values. cropSize="

    const-string v14, "ExifInterface"

    if-ne v8, v9, :cond_2

    .line 7617
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7618
    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 7619
    .local v8, "defaultCropSizeValue":[Landroidx/exifinterface/media/ExifInterface$Rational;
    if-eqz v8, :cond_1

    array-length v9, v8

    if-eq v9, v12, :cond_0

    goto :goto_0

    .line 7624
    :cond_0
    aget-object v9, v8, v11

    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7625
    invoke-static {v9, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 7626
    .local v9, "defaultCropSizeXAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    aget-object v10, v8, v10

    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7627
    invoke-static {v10, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 7628
    .local v8, "defaultCropSizeYAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    goto :goto_1

    .line 7620
    .end local v9    # "defaultCropSizeXAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .local v8, "defaultCropSizeValue":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 7621
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7620
    invoke-static {v14, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7622
    return-void

    .line 7629
    .end local v8    # "defaultCropSizeValue":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :cond_2
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7630
    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 7631
    .local v8, "defaultCropSizeValue":[I
    if-eqz v8, :cond_4

    array-length v9, v8

    if-eq v9, v12, :cond_3

    goto :goto_2

    .line 7636
    :cond_3
    aget v9, v8, v11

    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7637
    invoke-static {v9, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 7638
    .restart local v9    # "defaultCropSizeXAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    aget v10, v8, v10

    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7639
    invoke-static {v10, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    move-object v8, v10

    .line 7641
    .local v8, "defaultCropSizeYAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :goto_1
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, p2

    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7642
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, p2

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7643
    .end local v8    # "defaultCropSizeYAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v9    # "defaultCropSizeXAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    move-object/from16 v16, v1

    goto :goto_4

    .line 7632
    .local v8, "defaultCropSizeValue":[I
    :cond_4
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 7633
    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7632
    invoke-static {v14, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7634
    return-void

    .line 7643
    .end local v8    # "defaultCropSizeValue":[I
    :cond_5
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    .line 7646
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v8

    .line 7647
    .local v8, "topBorderValue":I
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v9

    .line 7648
    .local v9, "bottomBorderValue":I
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v10

    .line 7649
    .local v10, "rightBorderValue":I
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v11

    .line 7650
    .local v11, "leftBorderValue":I
    if-le v9, v8, :cond_6

    if-le v10, v11, :cond_6

    .line 7651
    sub-int v12, v9, v8

    .line 7652
    .local v12, "length":I
    sub-int v13, v10, v11

    .line 7653
    .local v13, "width":I
    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7654
    invoke-static {v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 7655
    .local v14, "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7656
    invoke-static {v13, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v15

    .line 7657
    .local v15, "imageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    move-object/from16 v16, v1

    .end local v1    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .local v16, "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v1, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7658
    iget-object v1, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 7650
    .end local v12    # "length":I
    .end local v13    # "width":I
    .end local v14    # "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v15    # "imageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v16    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v1    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_6
    move-object/from16 v16, v1

    .line 7660
    .end local v1    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v8    # "topBorderValue":I
    .end local v9    # "bottomBorderValue":I
    .end local v10    # "rightBorderValue":I
    .end local v11    # "leftBorderValue":I
    .restart local v16    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :goto_3
    goto :goto_4

    .line 7643
    .end local v16    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v1    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_7
    move-object/from16 v16, v1

    .line 7661
    .end local v1    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v16    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    invoke-direct/range {p0 .. p2}, Landroidx/exifinterface/media/ExifInterface;->retrieveJpegImageSize(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 7663
    :goto_4
    return-void
.end method

.method private validateImages()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7545
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 7546
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 7547
    invoke-direct {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 7553
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 7554
    const-string v5, "PixelXDimension"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7555
    .local v3, "pixelXDimAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    .line 7556
    const-string v5, "PixelYDimension"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7557
    .local v4, "pixelYDimAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 7558
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7559
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7564
    :cond_0
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7565
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v1

    invoke-direct {p0, v7}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7566
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v1

    aput-object v8, v7, v2

    .line 7567
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    aput-object v8, v7, v1

    .line 7572
    :cond_1
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    invoke-direct {p0, v7}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 7573
    const-string v7, "ExifInterface"

    const-string v8, "No image meets the size requirements of a thumbnail image."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7577
    :cond_2
    const-string v7, "ThumbnailOrientation"

    const-string v8, "Orientation"

    invoke-direct {p0, v0, v7, v8}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7578
    const-string v9, "ThumbnailImageLength"

    invoke-direct {p0, v0, v9, v5}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7579
    const-string v10, "ThumbnailImageWidth"

    invoke-direct {p0, v0, v10, v6}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7580
    invoke-direct {p0, v1, v7, v8}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7581
    invoke-direct {p0, v1, v9, v5}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7582
    invoke-direct {p0, v1, v10, v6}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7583
    invoke-direct {p0, v2, v8, v7}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7584
    invoke-direct {p0, v2, v5, v9}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7585
    invoke-direct {p0, v2, v6, v10}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7586
    return-void
.end method

.method private writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I
    .locals 21
    .param p1, "dataOutputStream"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7673
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v2, v2

    new-array v2, v2, [I

    .line 7674
    .local v2, "ifdOffsets":[I
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v3, v3

    new-array v3, v3, [I

    .line 7677
    .local v3, "ifdDataSizes":[I
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v4, v7

    .line 7678
    .local v8, "tag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    iget-object v9, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v9}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 7677
    .end local v8    # "tag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 7681
    :cond_0
    iget-boolean v4, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const-string v5, "StripByteCounts"

    const-string v7, "JPEGInterchangeFormatLength"

    const-string v8, "StripOffsets"

    const-string v9, "JPEGInterchangeFormat"

    if-eqz v4, :cond_2

    .line 7682
    iget-boolean v4, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v4, :cond_1

    .line 7683
    invoke-direct {v0, v8}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 7684
    invoke-direct {v0, v5}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    goto :goto_1

    .line 7686
    :cond_1
    invoke-direct {v0, v9}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 7687
    invoke-direct {v0, v7}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 7692
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .local v4, "ifdType":I
    :goto_2
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v10, v10

    if-ge v4, v10, :cond_5

    .line 7693
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v4

    .line 7694
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 7695
    .local v10, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;>;"
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 7696
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 7697
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_3

    .line 7698
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 7700
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    :cond_3
    goto :goto_3

    .line 7692
    .end local v10    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;>;"
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 7705
    .end local v4    # "ifdType":I
    :cond_5
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v10, 0x1

    aget-object v4, v4, v10

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const-wide/16 v11, 0x0

    if-nez v4, :cond_6

    .line 7706
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v13, v13, v10

    iget-object v13, v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7707
    invoke-static {v11, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 7706
    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7709
    :cond_6
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 7710
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v14, v14, v13

    iget-object v14, v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7711
    invoke-static {v11, v12, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v15

    .line 7710
    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7713
    :cond_7
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v14, 0x3

    aget-object v4, v4, v14

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 7714
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v10

    sget-object v15, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v15, v15, v14

    iget-object v15, v15, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move/from16 v16, v13

    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7715
    invoke-static {v11, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 7714
    invoke-virtual {v4, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 7713
    :cond_8
    move/from16 v16, v13

    .line 7717
    :goto_4
    iget-boolean v4, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v13, 0x4

    if-eqz v4, :cond_a

    .line 7718
    iget-boolean v4, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v4, :cond_9

    .line 7719
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v13

    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7720
    invoke-static {v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 7719
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7721
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v13

    iget v7, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7722
    invoke-static {v7, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 7721
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v17, v14

    goto :goto_5

    .line 7724
    :cond_9
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v13

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7725
    invoke-static {v11, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 7724
    invoke-virtual {v4, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7726
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v13

    iget v5, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    move/from16 v17, v14

    int-to-long v14, v5

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7727
    invoke-static {v14, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 7726
    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 7717
    :cond_a
    move/from16 v17, v14

    .line 7733
    :goto_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v5, v5

    if-ge v4, v5, :cond_d

    .line 7734
    const/4 v5, 0x0

    .line 7735
    .local v5, "sum":I
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 7736
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7737
    .local v15, "exifAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    move/from16 v18, v10

    invoke-virtual {v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->size()I

    move-result v10

    .line 7738
    .local v10, "size":I
    if-le v10, v13, :cond_b

    .line 7739
    add-int/2addr v5, v10

    .line 7741
    .end local v10    # "size":I
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    .end local v15    # "exifAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_b
    move/from16 v10, v18

    goto :goto_7

    .line 7742
    :cond_c
    move/from16 v18, v10

    aget v7, v3, v4

    add-int/2addr v7, v5

    aput v7, v3, v4

    .line 7733
    .end local v5    # "sum":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    move/from16 v18, v10

    .line 7748
    .end local v4    # "i":I
    const/16 v4, 0x8

    .line 7749
    .local v4, "position":I
    const/4 v5, 0x0

    .local v5, "ifdType":I
    :goto_8
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v5, v7, :cond_f

    .line 7750
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    .line 7751
    aput v4, v2, v5

    .line 7752
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0xc

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v13

    aget v10, v3, v5

    add-int/2addr v7, v10

    add-int/2addr v4, v7

    .line 7749
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 7755
    .end local v5    # "ifdType":I
    :cond_f
    iget-boolean v5, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v5, :cond_11

    .line 7756
    move v5, v4

    .line 7757
    .local v5, "thumbnailOffset":I
    iget-boolean v7, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v7, :cond_10

    .line 7758
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v13

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7759
    invoke-static {v5, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 7758
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 7761
    :cond_10
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v13

    int-to-long v14, v5

    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7762
    invoke-static {v14, v15, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 7761
    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7764
    :goto_9
    iput v5, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 7765
    iget v7, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    add-int/2addr v4, v7

    .line 7768
    .end local v5    # "thumbnailOffset":I
    :cond_11
    move v5, v4

    .line 7769
    .local v5, "totalSize":I
    iget v7, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    if-ne v7, v13, :cond_12

    .line 7771
    add-int/lit8 v5, v5, 0x8

    .line 7773
    :cond_12
    sget-boolean v7, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v7, :cond_13

    .line 7774
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v7, v8, :cond_13

    .line 7775
    nop

    .line 7776
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget v9, v2, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v7

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aget v14, v3, v7

    .line 7777
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v8, v9, v10, v14, v15}, [Ljava/lang/Object;

    move-result-object v8

    .line 7775
    const-string v9, "index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ExifInterface"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7774
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 7782
    .end local v7    # "i":I
    :cond_13
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v18

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    .line 7783
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v8, v8, v18

    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v2, v18

    int-to-long v9, v9

    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7784
    invoke-static {v9, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 7783
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7786
    :cond_14
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v16

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_15

    .line 7787
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v8, v8, v16

    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v2, v16

    int-to-long v9, v9

    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7788
    invoke-static {v9, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 7787
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7790
    :cond_15
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v17

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_16

    .line 7791
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v18

    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v8, v8, v17

    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v2, v17

    int-to-long v9, v9

    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7795
    :cond_16
    iget v7, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    sparse-switch v7, :sswitch_data_0

    goto :goto_b

    .line 7813
    :sswitch_0
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 7814
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_b

    .line 7808
    :sswitch_1
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 7809
    const v7, 0x65584966

    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 7810
    goto :goto_b

    .line 7797
    :sswitch_2
    const v7, 0xffff

    if-gt v5, v7, :cond_17

    .line 7803
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7804
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 7805
    goto :goto_b

    .line 7798
    :cond_17
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Size of exif data ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes) exceeds the max size of a JPEG APP1 segment (65536 bytes)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7818
    :goto_b
    iget-object v7, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->size()I

    move-result v7

    .line 7821
    .local v7, "offsetToExifData":I
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v9, :cond_18

    const/16 v8, 0x4d4d

    goto :goto_c

    :cond_18
    const/16 v8, 0x4949

    :goto_c
    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 7822
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 7823
    const/16 v8, 0x2a

    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7824
    const-wide/16 v8, 0x8

    invoke-virtual {v1, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 7827
    const/4 v8, 0x0

    .local v8, "ifdType":I
    :goto_d
    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v9, v9

    if-ge v8, v9, :cond_20

    .line 7828
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1f

    .line 7831
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7834
    aget v9, v2, v8

    add-int/lit8 v9, v9, 0x2

    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    mul-int/lit8 v10, v10, 0xc

    add-int/2addr v9, v10

    add-int/2addr v9, v13

    .line 7835
    .local v9, "dataOffset":I
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 7837
    .restart local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    sget-object v15, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v15, v15, v8

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 7838
    .local v11, "tag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    iget v12, v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 7839
    .local v12, "tagNumber":I
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7840
    .local v15, "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    invoke-virtual {v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->size()I

    move-result v6

    .line 7842
    .local v6, "size":I
    invoke-virtual {v1, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7843
    iget v13, v15, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v1, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7844
    iget v13, v15, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-virtual {v1, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 7845
    const/4 v13, 0x4

    if-le v6, v13, :cond_19

    .line 7846
    move-object/from16 v20, v14

    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    int-to-long v13, v9

    invoke-virtual {v1, v13, v14}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 7847
    add-int/2addr v9, v6

    goto :goto_10

    .line 7849
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    .restart local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    :cond_19
    move-object/from16 v20, v14

    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    .restart local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    iget-object v13, v15, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v1, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 7851
    const/4 v13, 0x4

    if-ge v6, v13, :cond_1a

    .line 7852
    move v14, v6

    .local v14, "i":I
    :goto_f
    if-ge v14, v13, :cond_1a

    .line 7853
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 7852
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x4

    goto :goto_f

    .line 7857
    .end local v6    # "size":I
    .end local v11    # "tag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .end local v12    # "tagNumber":I
    .end local v14    # "i":I
    .end local v15    # "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    :cond_1a
    :goto_10
    const/4 v6, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x4

    goto :goto_e

    .line 7862
    :cond_1b
    if-nez v8, :cond_1c

    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v19, 0x4

    aget-object v6, v6, v19

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 7863
    aget v6, v2, v19

    int-to-long v10, v6

    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const-wide/16 v10, 0x0

    goto :goto_11

    .line 7865
    :cond_1c
    const-wide/16 v10, 0x0

    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 7869
    :goto_11
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 7870
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7872
    .local v13, "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v14, v13, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v14, v14

    const/4 v15, 0x4

    if-le v14, v15, :cond_1d

    .line 7873
    iget-object v14, v13, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    iget-object v10, v13, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v10, v10

    const/4 v11, 0x0

    invoke-virtual {v1, v14, v11, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 7875
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    .end local v13    # "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_1d
    const-wide/16 v10, 0x0

    goto :goto_12

    .line 7869
    :cond_1e
    const/4 v15, 0x4

    goto :goto_13

    .line 7828
    .end local v9    # "dataOffset":I
    :cond_1f
    move v15, v13

    .line 7827
    :goto_13
    add-int/lit8 v8, v8, 0x1

    move v13, v15

    const/4 v6, 0x0

    const-wide/16 v11, 0x0

    goto/16 :goto_d

    .line 7880
    .end local v8    # "ifdType":I
    :cond_20
    iget-boolean v6, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v6, :cond_21

    .line 7881
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 7885
    :cond_21
    iget v6, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v8, 0xe

    if-ne v6, v8, :cond_22

    rem-int/lit8 v6, v5, 0x2

    move/from16 v8, v18

    if-ne v6, v8, :cond_22

    .line 7886
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 7890
    :cond_22
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 7892
    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0xd -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private writePngExifChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V
    .locals 6
    .param p1, "dataOutputStream"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6698
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6700
    .local v0, "exifByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v0, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6701
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    move-result v1

    .line 6703
    .local v1, "exifOffset":I
    iget-object v2, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->size()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 6704
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 6705
    .local v2, "exifBytes":[B
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6706
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 6707
    .local v3, "crc":Ljava/util/zip/CRC32;
    array-length v4, v2

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v2, v5, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 6708
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6709
    return-void
.end method

.method private writePngXmpItxtChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)V
    .locals 3
    .param p1, "dataOutputStream"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6713
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v0, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x16

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6714
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 6715
    .local v0, "crc":Ljava/util/zip/CRC32;
    const v1, 0x69545874

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6716
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->updateCrcWithInt(Ljava/util/zip/CRC32;I)V

    .line 6717
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->PNG_ITXT_XMP_KEYWORD:[B

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6718
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->PNG_ITXT_XMP_KEYWORD:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 6719
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6720
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 6721
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6722
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mFileOnDiskContainsSeparateXmpMarker:Z

    .line 6723
    return-void
.end method


# virtual methods
.method public flipHorizontally()V
    .locals 4

    .line 4676
    const/4 v0, 0x1

    const-string v1, "Orientation"

    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 4678
    .local v0, "currentOrientation":I
    packed-switch v0, :pswitch_data_0

    .line 4705
    const/4 v2, 0x0

    .local v2, "resultOrientation":I
    goto :goto_0

    .line 4698
    .end local v2    # "resultOrientation":I
    :pswitch_0
    const/4 v2, 0x7

    .line 4699
    .restart local v2    # "resultOrientation":I
    goto :goto_0

    .line 4695
    .end local v2    # "resultOrientation":I
    :pswitch_1
    const/16 v2, 0x8

    .line 4696
    .restart local v2    # "resultOrientation":I
    goto :goto_0

    .line 4692
    .end local v2    # "resultOrientation":I
    :pswitch_2
    const/4 v2, 0x5

    .line 4693
    .restart local v2    # "resultOrientation":I
    goto :goto_0

    .line 4689
    .end local v2    # "resultOrientation":I
    :pswitch_3
    const/4 v2, 0x6

    .line 4690
    .restart local v2    # "resultOrientation":I
    goto :goto_0

    .line 4686
    .end local v2    # "resultOrientation":I
    :pswitch_4
    const/4 v2, 0x3

    .line 4687
    .restart local v2    # "resultOrientation":I
    goto :goto_0

    .line 4683
    .end local v2    # "resultOrientation":I
    :pswitch_5
    const/4 v2, 0x4

    .line 4684
    .restart local v2    # "resultOrientation":I
    goto :goto_0

    .line 4680
    .end local v2    # "resultOrientation":I
    :pswitch_6
    const/4 v2, 0x1

    .line 4681
    .restart local v2    # "resultOrientation":I
    goto :goto_0

    .line 4701
    .end local v2    # "resultOrientation":I
    :pswitch_7
    const/4 v2, 0x2

    .line 4702
    .restart local v2    # "resultOrientation":I
    nop

    .line 4708
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4709
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public flipVertically()V
    .locals 4

    .line 4637
    const/4 v0, 0x1

    const-string v1, "Orientation"

    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 4639
    .local v0, "currentOrientation":I
    packed-switch v0, :pswitch_data_0

    .line 4666
    const/4 v2, 0x0

    .local v2, "resultOrientation":I
    goto :goto_0

    .line 4659
    .end local v2    # "resultOrientation":I
    :pswitch_0
    const/4 v2, 0x5

    .line 4660
    .restart local v2    # "resultOrientation":I
    goto :goto_0

    .line 4656
    .end local v2    # "resultOrientation":I
    :pswitch_1
    const/4 v2, 0x6

    .line 4657
    .restart local v2    # "resultOrientation":I
    goto :goto_0

    .line 4653
    .end local v2    # "resultOrientation":I
    :pswitch_2
    const/4 v2, 0x7

    .line 4654
    .restart local v2    # "resultOrientation":I
    goto :goto_0

    .line 4650
    .end local v2    # "resultOrientation":I
    :pswitch_3
    const/16 v2, 0x8

    .line 4651
    .restart local v2    # "resultOrientation":I
    goto :goto_0

    .line 4647
    .end local v2    # "resultOrientation":I
    :pswitch_4
    const/4 v2, 0x1

    .line 4648
    .restart local v2    # "resultOrientation":I
    goto :goto_0

    .line 4644
    .end local v2    # "resultOrientation":I
    :pswitch_5
    const/4 v2, 0x2

    .line 4645
    .restart local v2    # "resultOrientation":I
    goto :goto_0

    .line 4641
    .end local v2    # "resultOrientation":I
    :pswitch_6
    const/4 v2, 0x3

    .line 4642
    .restart local v2    # "resultOrientation":I
    goto :goto_0

    .line 4662
    .end local v2    # "resultOrientation":I
    :pswitch_7
    const/4 v2, 0x4

    .line 4663
    .restart local v2    # "resultOrientation":I
    nop

    .line 4669
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4670
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAltitude(D)D
    .locals 6
    .param p1, "defaultValue"    # D

    .line 5298
    const-string v0, "GPSAltitude"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 5299
    .local v0, "altitude":D
    const-string v2, "GPSAltitudeRef"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 5301
    .local v2, "ref":I
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1

    if-ltz v2, :cond_1

    .line 5302
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    int-to-double v3, v3

    mul-double/2addr v3, v0

    return-wide v3

    .line 5304
    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;

    .line 4312
    if-eqz p1, :cond_6

    .line 4315
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 4316
    .local v0, "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4317
    return-object v1

    .line 4319
    :cond_0
    const-string v2, "GPSTimeStamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4321
    iget v2, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/4 v3, 0x5

    const-string v4, "ExifInterface"

    if-eq v2, v3, :cond_1

    iget v2, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 4323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS Timestamp format is not rational. format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    return-object v1

    .line 4326
    :cond_1
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 4327
    .local v2, "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    if-eqz v2, :cond_3

    array-length v3, v2

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    goto :goto_0

    .line 4331
    :cond_2
    const/4 v1, 0x0

    aget-object v3, v2, v1

    iget-wide v3, v3, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v3, v3

    aget-object v1, v2, v1

    iget-wide v4, v1, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float v1, v4

    div-float/2addr v3, v1

    float-to-int v1, v3

    .line 4332
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v4, v2, v3

    iget-wide v4, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v4, v4

    aget-object v3, v2, v3

    iget-wide v5, v3, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float v3, v5

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 4333
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v5, v2, v4

    iget-wide v5, v5, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v5

    aget-object v4, v2, v4

    iget-wide v6, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float v4, v6

    div-float/2addr v5, v4

    float-to-int v4, v5

    .line 4334
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 4331
    const-string v3, "%02d:%02d:%02d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4328
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid GPS Timestamp array. array="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4329
    return-object v1

    .line 4335
    .end local v2    # "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :cond_4
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->RATIONAL_TAGS_HANDLED_AS_DECIMALS_FOR_COMPATIBILITY:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4338
    :try_start_0
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 4339
    :catch_0
    move-exception v2

    .line 4340
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v1

    .line 4343
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4313
    .end local v0    # "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeBytes(Ljava/lang/String;)[B
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 5185
    if-eqz p1, :cond_1

    .line 5188
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 5189
    .local v0, "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    .line 5190
    iget-object v1, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    return-object v1

    .line 5192
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 5186
    .end local v0    # "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 4380
    if-eqz p1, :cond_1

    .line 4383
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 4384
    .local v0, "exifAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-nez v0, :cond_0

    .line 4385
    return-wide p2

    .line 4389
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 4390
    :catch_0
    move-exception v1

    .line 4391
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-wide p2

    .line 4381
    .end local v0    # "exifAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 4356
    if-eqz p1, :cond_1

    .line 4359
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 4360
    .local v0, "exifAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-nez v0, :cond_0

    .line 4361
    return p2

    .line 4365
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 4366
    :catch_0
    move-exception v1

    .line 4367
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2

    .line 4357
    .end local v0    # "exifAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeRange(Ljava/lang/String;)[J
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;

    .line 5161
    if-eqz p1, :cond_2

    .line 5164
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mModified:Z

    if-nez v0, :cond_1

    .line 5169
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 5170
    .local v0, "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    .line 5171
    iget-wide v1, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytesOffset:J

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v3, v3

    int-to-long v3, v3

    const/4 v5, 0x2

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide v1, v5, v6

    const/4 v1, 0x1

    aput-wide v3, v5, v1

    return-object v5

    .line 5173
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 5165
    .end local v0    # "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The underlying file has been modified since being parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5162
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDateTime()Ljava/lang/Long;
    .locals 3

    .line 5353
    const-string v0, "DateTime"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5354
    const-string v1, "SubSecTime"

    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5355
    const-string v2, "OffsetTime"

    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5353
    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeDigitized()Ljava/lang/Long;
    .locals 3

    .line 5370
    const-string v0, "DateTimeDigitized"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5371
    const-string v1, "SubSecTimeDigitized"

    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5372
    const-string v2, "OffsetTimeDigitized"

    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5370
    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeOriginal()Ljava/lang/Long;
    .locals 3

    .line 5387
    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5388
    const-string v1, "SubSecTimeOriginal"

    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5389
    const-string v2, "OffsetTimeOriginal"

    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5387
    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getGpsDateTime()Ljava/lang/Long;
    .locals 8

    .line 5437
    const-string v0, "GPSDateStamp"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5438
    .local v0, "date":Ljava/lang/String;
    const-string v1, "GPSTimeStamp"

    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5439
    .local v1, "time":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 5440
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 5441
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5445
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5447
    .local v3, "dateTimeString":Ljava/lang/String;
    new-instance v4, Ljava/text/ParsePosition;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/text/ParsePosition;-><init>(I)V

    .line 5449
    .local v4, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    .line 5450
    .local v5, "dateTime":Ljava/util/Date;
    if-nez v5, :cond_1

    .line 5451
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->sFormatterSecondary:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v6

    move-object v5, v6

    .line 5452
    if-nez v5, :cond_1

    .line 5453
    return-object v2

    .line 5456
    :cond_1
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 5457
    .end local v5    # "dateTime":Ljava/util/Date;
    :catch_0
    move-exception v5

    .line 5458
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    return-object v2

    .line 5442
    .end local v3    # "dateTimeString":Ljava/lang/String;
    .end local v4    # "pos":Ljava/text/ParsePosition;
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_0
    return-object v2
.end method

.method public getLatLong([F)Z
    .locals 4
    .param p1, "output"    # [F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5204
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getLatLong()[D

    move-result-object v0

    .line 5205
    .local v0, "latLong":[D
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5206
    return v1

    .line 5209
    :cond_0
    aget-wide v2, v0, v1

    double-to-float v2, v2

    aput v2, p1, v1

    .line 5210
    const/4 v1, 0x1

    aget-wide v2, v0, v1

    double-to-float v2, v2

    aput v2, p1, v1

    .line 5211
    return v1
.end method

.method public getLatLong()[D
    .locals 10

    .line 5222
    const-string v0, "GPSLatitude"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5223
    .local v0, "latValue":Ljava/lang/String;
    const-string v1, "GPSLatitudeRef"

    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5224
    .local v1, "latRef":Ljava/lang/String;
    const-string v2, "GPSLongitude"

    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5225
    .local v2, "lngValue":Ljava/lang/String;
    const-string v3, "GPSLongitudeRef"

    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5227
    .local v3, "lngRef":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 5229
    :try_start_0
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v4

    .line 5230
    .local v4, "latitude":D
    invoke-static {v2, v3}, Landroidx/exifinterface/media/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v6

    .line 5231
    .local v6, "longitude":D
    const/4 v8, 0x2

    new-array v8, v8, [D

    const/4 v9, 0x0

    aput-wide v4, v8, v9

    const/4 v9, 0x1

    aput-wide v6, v8, v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 5232
    .end local v4    # "latitude":D
    .end local v6    # "longitude":D
    :catch_0
    move-exception v4

    .line 5233
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Latitude/longitude values are not parsable. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v6

    .line 5234
    const-string v7, "latValue=%s, latRef=%s, lngValue=%s, lngRef=%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5233
    const-string v6, "ExifInterface"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5238
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method

.method public getRotationDegrees()I
    .locals 2

    .line 4741
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 4742
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_0

    .line 4756
    const/4 v1, 0x0

    return v1

    .line 4745
    :pswitch_0
    const/16 v1, 0x5a

    return v1

    .line 4751
    :pswitch_1
    const/16 v1, 0x10e

    return v1

    .line 4748
    :pswitch_2
    const/16 v1, 0xb4

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getThumbnail()[B
    .locals 2

    .line 5009
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5012
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 5010
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 5075
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5076
    return-object v1

    .line 5077
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    if-nez v0, :cond_1

    .line 5078
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 5081
    :cond_1
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 5083
    :cond_2
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 5084
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    .line 5085
    .local v0, "rgbValues":[I
    const/4 v3, 0x0

    .line 5086
    .local v3, "alpha":B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 5087
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v6, v4, 0x3

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v3

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v7, v4, 0x3

    add-int/2addr v7, v2

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v7, v4, 0x3

    add-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    add-int/2addr v5, v6

    aput v5, v0, v4

    .line 5086
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5091
    .end local v4    # "i":I
    :cond_3
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x4

    aget-object v2, v2, v4

    .line 5092
    const-string v5, "ThumbnailImageLength"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5093
    .local v2, "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    .line 5094
    const-string v5, "ThumbnailImageWidth"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5095
    .local v4, "imageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    .line 5096
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 5097
    .local v1, "imageLength":I
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 5098
    .local v5, "imageWidth":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 5102
    .end local v0    # "rgbValues":[I
    .end local v1    # "imageLength":I
    .end local v2    # "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v3    # "alpha":B
    .end local v4    # "imageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v5    # "imageWidth":I
    :cond_4
    return-object v1

    .line 5082
    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    const/4 v1, 0x0

    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBytes()[B
    .locals 7

    .line 5020
    const-string v0, "ExifInterface"

    iget-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 5021
    return-object v2

    .line 5023
    :cond_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v1, :cond_1

    .line 5024
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    return-object v0

    .line 5028
    :cond_1
    const/4 v1, 0x0

    .line 5029
    .local v1, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 5031
    .local v3, "newFileDescriptor":Ljava/io/FileDescriptor;
    :try_start_0
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v4, :cond_4

    .line 5032
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    move-object v1, v4

    .line 5033
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5034
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 5036
    :cond_2
    const-string v4, "Cannot read thumbnail from inputstream without mark/reset support"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5037
    nop

    .line 5062
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 5063
    if-eqz v3, :cond_3

    .line 5064
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 5037
    :cond_3
    return-object v2

    .line 5039
    :cond_4
    :try_start_1
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 5040
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .end local v1    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    goto :goto_0

    .line 5042
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    :cond_5
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v4}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v3, v4

    .line 5043
    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v5, 0x0

    invoke-static {v3, v5, v6, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 5044
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v4

    .line 5046
    :goto_0
    if-eqz v1, :cond_7

    .line 5051
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v4, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5052
    .local v4, "inputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    iget v5, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    iget v6, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 5054
    iget v5, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    new-array v5, v5, [B

    .line 5055
    .local v5, "buffer":[B
    invoke-virtual {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5056
    iput-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5057
    nop

    .line 5062
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 5063
    if-eqz v3, :cond_6

    .line 5064
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 5057
    :cond_6
    return-object v5

    .line 5048
    .end local v4    # "inputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "buffer":[B
    :cond_7
    :try_start_2
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5062
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 5058
    :catch_0
    move-exception v4

    .line 5060
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "Encountered exception while getting thumbnail"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5062
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 5063
    if-eqz v3, :cond_8

    .line 5064
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 5067
    :cond_8
    return-object v2

    .line 5062
    :goto_1
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 5063
    if-eqz v3, :cond_9

    .line 5064
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 5066
    :cond_9
    throw v0
.end method

.method public getThumbnailRange()[J
    .locals 6

    .line 5132
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mModified:Z

    if-nez v0, :cond_2

    .line 5137
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5138
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-nez v0, :cond_0

    .line 5139
    return-object v1

    .line 5141
    :cond_0
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    int-to-long v2, v2

    const/4 v4, 0x2

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v0, v4, v5

    const/4 v0, 0x1

    aput-wide v2, v4, v0

    return-object v4

    .line 5143
    :cond_1
    return-object v1

    .line 5133
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The underlying file has been modified since being parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 4999
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .line 4990
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public isFlipped()Z
    .locals 2

    .line 4717
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 4718
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_0

    .line 4725
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 4723
    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isThumbnailCompressed()Z
    .locals 3

    .line 5110
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5111
    return v1

    .line 5113
    :cond_0
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 5116
    :cond_1
    return v1

    .line 5114
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetOrientation()V
    .locals 2

    .line 4599
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Orientation"

    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4600
    return-void
.end method

.method public rotate(I)V
    .locals 6
    .param p1, "degree"    # I

    .line 4609
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_4

    .line 4613
    const/4 v0, 0x1

    const-string v1, "Orientation"

    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 4616
    .local v0, "currentOrientation":I
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v2, :cond_1

    .line 4617
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4618
    .local v2, "currentIndex":I
    div-int/lit8 v5, p1, 0x5a

    add-int/2addr v5, v2

    rem-int/2addr v5, v4

    .line 4619
    .local v5, "newIndex":I
    if-gez v5, :cond_0

    move v3, v4

    :cond_0
    add-int/2addr v5, v3

    .line 4620
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "resultOrientation":I
    goto :goto_0

    .line 4621
    .end local v2    # "currentIndex":I
    .end local v3    # "resultOrientation":I
    .end local v5    # "newIndex":I
    :cond_1
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4622
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4623
    .restart local v2    # "currentIndex":I
    div-int/lit8 v5, p1, 0x5a

    add-int/2addr v5, v2

    rem-int/2addr v5, v4

    .line 4624
    .restart local v5    # "newIndex":I
    if-gez v5, :cond_2

    move v3, v4

    :cond_2
    add-int/2addr v5, v3

    .line 4625
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3    # "resultOrientation":I
    goto :goto_0

    .line 4627
    .end local v2    # "currentIndex":I
    .end local v3    # "resultOrientation":I
    .end local v5    # "newIndex":I
    :cond_3
    const/4 v3, 0x0

    .line 4630
    .restart local v3    # "resultOrientation":I
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4631
    return-void

    .line 4610
    .end local v0    # "currentOrientation":I
    .end local v3    # "resultOrientation":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "degree should be a multiple of 90"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveAttributes()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4883
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->isSupportedFormatForSavingAttributes(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4887
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4888
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4891
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4892
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes when the image file has non-consecutive thumbnail strips"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4898
    :cond_3
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mModified:Z

    .line 4901
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnail()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 4903
    const/4 v0, 0x0

    .line 4904
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 4908
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v2, "temp"

    const-string v3, "tmp"

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 4909
    .local v2, "tempFile":Ljava/io/File;
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_4

    .line 4910
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .end local v0    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 4912
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    :cond_4
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 4916
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v3

    .line 4918
    :goto_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 4919
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4923
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4924
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4925
    nop

    .line 4927
    const/4 v0, 0x0

    .line 4928
    const/4 v1, 0x0

    .line 4929
    const/4 v3, 0x0

    .line 4930
    .local v3, "bufferedIn":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 4931
    .local v6, "bufferedOut":Ljava/io/BufferedOutputStream;
    const/4 v7, 0x0

    .line 4934
    .local v7, "shouldKeepTempFile":Z
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v8

    .line 4935
    iget-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 4936
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v8

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v8, "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 4938
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :cond_5
    iget-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 4939
    .local v8, "fd":Ljava/io/FileDescriptor;
    sget v9, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v8, v4, v5, v9}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 4940
    new-instance v9, Ljava/io/FileOutputStream;

    iget-object v10, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v9

    .line 4942
    .end local v8    # "fd":Ljava/io/FileDescriptor;
    :goto_3
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v8

    .line 4943
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v6, v8

    .line 4944
    iget v8, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    .line 4945
    invoke-direct {p0, v3, v6}, Landroidx/exifinterface/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_4

    .line 4946
    :cond_6
    iget v8, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v9, 0xd

    if-ne v8, v9, :cond_7

    .line 4947
    invoke-direct {p0, v3, v6}, Landroidx/exifinterface/media/ExifInterface;->savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_4

    .line 4948
    :cond_7
    iget v8, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v9, 0xe

    if-ne v8, v9, :cond_8

    .line 4949
    invoke-direct {p0, v3, v6}, Landroidx/exifinterface/media/ExifInterface;->saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4975
    :cond_8
    :goto_4
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4976
    invoke-static {v6}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4977
    if-nez v7, :cond_9

    .line 4978
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4983
    :cond_9
    const/4 v4, 0x0

    iput-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 4984
    return-void

    .line 4975
    :catchall_0
    move-exception v4

    goto :goto_7

    .line 4951
    :catch_0
    move-exception v8

    .line 4954
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v9

    .line 4955
    iget-object v9, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v9, :cond_a

    .line 4956
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 4958
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :cond_a
    iget-object v9, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    sget v10, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v9, v4, v5, v10}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 4962
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v4

    .line 4964
    :goto_5
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4970
    :try_start_3
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4971
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4972
    nop

    .line 4973
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to save new file"

    invoke-direct {v4, v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .end local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .end local v7    # "shouldKeepTempFile":Z
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4970
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .restart local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .restart local v7    # "shouldKeepTempFile":Z
    :catchall_1
    move-exception v4

    goto :goto_6

    .line 4965
    :catch_1
    move-exception v4

    .line 4966
    .local v4, "exception":Ljava/lang/Exception;
    const/4 v7, 0x1

    .line 4967
    :try_start_4
    new-instance v5, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to save new file. Original file is stored in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4968
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .end local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .end local v7    # "shouldKeepTempFile":Z
    .end local v8    # "e":Ljava/lang/Exception;
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4970
    .end local v4    # "exception":Ljava/lang/Exception;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .restart local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .restart local v7    # "shouldKeepTempFile":Z
    .restart local v8    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_5
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4971
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4972
    nop

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .end local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .end local v7    # "shouldKeepTempFile":Z
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4975
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .restart local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .restart local v7    # "shouldKeepTempFile":Z
    :goto_7
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4976
    invoke-static {v6}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4977
    if-nez v7, :cond_b

    .line 4978
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4980
    :cond_b
    throw v4

    .line 4923
    .end local v2    # "tempFile":Ljava/io/File;
    .end local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .end local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .end local v7    # "shouldKeepTempFile":Z
    :catchall_2
    move-exception v2

    goto :goto_8

    .line 4920
    :catch_2
    move-exception v2

    .line 4921
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to copy original file to temp file"

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 4923
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :goto_8
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4924
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4925
    throw v2

    .line 4884
    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface only supports saving attributes for JPEG, PNG, and WebP formats."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAltitude(D)V
    .locals 3
    .param p1, "altitude"    # D

    .line 5312
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 5313
    .local v0, "ref":Ljava/lang/String;
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/exifinterface/media/ExifInterface$Rational;->createFromDouble(D)Landroidx/exifinterface/media/ExifInterface$Rational;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPSAltitude"

    invoke-virtual {p0, v2, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5314
    const-string v1, "GPSAltitudeRef"

    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5315
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 25
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 4403
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    if-eqz v0, :cond_23

    .line 4408
    const-string v3, "ISOSpeedRatings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_1

    .line 4409
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 4410
    const-string v3, "setAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4413
    :cond_0
    const-string v0, "PhotographicSensitivity"

    move-object v3, v0

    .end local p1    # "tag":Ljava/lang/String;
    .local v0, "tag":Ljava/lang/String;
    goto :goto_0

    .line 4408
    .end local v0    # "tag":Ljava/lang/String;
    .restart local p1    # "tag":Ljava/lang/String;
    :cond_1
    move-object v3, v0

    .line 4416
    .end local p1    # "tag":Ljava/lang/String;
    .local v3, "tag":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x3

    const/4 v5, 0x2

    const-string v6, "/"

    const/4 v7, 0x1

    if-eqz v2, :cond_8

    .line 4417
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->RATIONAL_TAGS_HANDLED_AS_DECIMALS_FOR_COMPATIBILITY:Ljava/util/Set;

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, " : "

    const-string v10, "Invalid value for "

    if-eqz v8, :cond_2

    .line 4418
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 4422
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 4423
    .local v11, "doubleValue":D
    invoke-static {v11, v12}, Landroidx/exifinterface/media/ExifInterface$Rational;->createFromDouble(D)Landroidx/exifinterface/media/ExifInterface$Rational;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/exifinterface/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4427
    .end local v11    # "doubleValue":D
    .end local p2    # "value":Ljava/lang/String;
    .local v8, "value":Ljava/lang/String;
    move-object v2, v8

    goto/16 :goto_2

    .line 4424
    .end local v8    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4425
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4426
    return-void

    .line 4428
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v8, "GPSTimeStamp"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4429
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 4430
    .local v8, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-nez v11, :cond_3

    .line 4431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4432
    return-void

    .line 4434
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 4435
    invoke-virtual {v8, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/1,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4437
    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4439
    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4441
    .end local v8    # "m":Ljava/util/regex/Matcher;
    .end local p2    # "value":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    goto :goto_2

    .end local v2    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :cond_4
    const-string v8, "DateTime"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 4442
    const-string v8, "DateTimeOriginal"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 4443
    const-string v8, "DateTimeDigitized"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 4445
    :cond_5
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    .line 4446
    .local v8, "isPrimaryFormat":Z
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    .line 4448
    .local v11, "isSecondaryFormat":Z
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x13

    if-ne v12, v13, :cond_7

    if-nez v8, :cond_6

    if-nez v11, :cond_6

    goto :goto_1

    .line 4457
    :cond_6
    if-eqz v11, :cond_8

    .line 4459
    const-string v9, "-"

    const-string v10, ":"

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local p2    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_2

    .line 4450
    .end local v2    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4451
    return-void

    .line 4464
    .end local v8    # "isPrimaryFormat":Z
    .end local v11    # "isSecondaryFormat":Z
    .end local p2    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_8
    :goto_2
    const-string v8, "Xmp"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_e

    .line 4465
    iget-object v9, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v10

    .line 4466
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v11, 0x5

    aget-object v9, v9, v11

    .line 4467
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_3

    :cond_9
    move v8, v10

    goto :goto_4

    :cond_a
    :goto_3
    move v8, v7

    .line 4468
    .local v8, "containsTiff700Xmp":Z
    :goto_4
    iget v9, v1, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    invoke-static {v9}, Landroidx/exifinterface/media/ExifInterface;->getXmpHandlingForImageType(I)I

    move-result v9

    .line 4469
    .local v9, "xmpHandling":I
    if-ne v9, v5, :cond_b

    iget-object v11, v1, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-nez v11, :cond_c

    if-eqz v8, :cond_c

    :cond_b
    if-ne v9, v0, :cond_e

    if-nez v8, :cond_e

    .line 4473
    :cond_c
    if-eqz v2, :cond_d

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_5
    iput-object v0, v1, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 4474
    return-void

    .line 4478
    .end local v8    # "containsTiff700Xmp":Z
    .end local v9    # "xmpHandling":I
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v0, v8, :cond_22

    .line 4479
    const/4 v8, 0x4

    if-ne v0, v8, :cond_f

    iget-boolean v8, v1, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-nez v8, :cond_f

    .line 4480
    move/from16 v22, v7

    move/from16 v23, v10

    goto/16 :goto_12

    .line 4482
    :cond_f
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v8, v8, v0

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 4483
    .local v8, "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    if-eqz v8, :cond_21

    .line 4484
    if-nez v2, :cond_10

    .line 4485
    iget-object v9, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v0

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4486
    move/from16 v22, v7

    move/from16 v23, v10

    goto/16 :goto_12

    .line 4488
    :cond_10
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 4490
    .local v9, "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v11, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, -0x1

    if-eq v11, v12, :cond_19

    iget v11, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v11, v12, :cond_11

    goto/16 :goto_a

    .line 4492
    :cond_11
    iget v11, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-eq v11, v13, :cond_13

    iget v11, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v11, v12, :cond_12

    iget v11, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    .line 4493
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v11, v12, :cond_13

    .line 4494
    :cond_12
    iget v11, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    .local v11, "dataFormat":I
    goto/16 :goto_b

    .line 4495
    .end local v11    # "dataFormat":I
    :cond_13
    iget v11, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    if-eq v11, v7, :cond_18

    iget v11, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_18

    iget v11, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    if-ne v11, v5, :cond_14

    goto/16 :goto_9

    .line 4500
    :cond_14
    sget-boolean v11, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v11, :cond_17

    .line 4501
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Given tag ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") value didn\'t match with one of expected formats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v14, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v12, v12, v14

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4504
    iget v12, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    const-string v14, ""

    const-string v15, ", "

    if-ne v12, v13, :cond_15

    move-object v5, v14

    goto :goto_7

    .line 4505
    :cond_15
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v16, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v5, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v5, v16, v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_7
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " (guess: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    .line 4506
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v13, :cond_16

    goto :goto_8

    .line 4507
    :cond_16
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v13, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_8
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ")"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4501
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v22, v7

    move/from16 v23, v10

    goto/16 :goto_12

    .line 4500
    :cond_17
    move/from16 v22, v7

    move/from16 v23, v10

    goto/16 :goto_12

    .line 4498
    :cond_18
    :goto_9
    iget v11, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .restart local v11    # "dataFormat":I
    goto :goto_b

    .line 4491
    .end local v11    # "dataFormat":I
    :cond_19
    :goto_a
    iget v11, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 4511
    .restart local v11    # "dataFormat":I
    :goto_b
    const-string v5, ","

    packed-switch v11, :pswitch_data_0

    .line 4586
    :pswitch_0
    move/from16 v22, v7

    move-object/from16 p2, v8

    move/from16 v23, v10

    move/from16 v24, v11

    .end local v8    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .end local v11    # "dataFormat":I
    .local v24, "dataFormat":I
    .local p2, "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    sget-boolean v5, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v5, :cond_20

    .line 4587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data format isn\'t one of expected formats: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v11, v24

    .end local v24    # "dataFormat":I
    .restart local v11    # "dataFormat":I
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 4576
    .end local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .restart local v8    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    :pswitch_1
    invoke-virtual {v2, v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 4577
    .local v5, "values":[Ljava/lang/String;
    array-length v12, v5

    new-array v12, v12, [D

    .line 4578
    .local v12, "doubleArray":[D
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_c
    array-length v14, v5

    if-ge v13, v14, :cond_1a

    .line 4579
    aget-object v14, v5, v13

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    aput-wide v14, v12, v13

    .line 4578
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 4581
    .end local v13    # "j":I
    :cond_1a
    iget-object v13, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v0

    iget-object v14, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4582
    invoke-static {v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 4581
    invoke-virtual {v13, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4583
    move/from16 v22, v7

    move/from16 v23, v10

    goto/16 :goto_12

    .line 4564
    .end local v5    # "values":[Ljava/lang/String;
    .end local v12    # "doubleArray":[D
    :pswitch_2
    invoke-virtual {v2, v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 4565
    .restart local v5    # "values":[Ljava/lang/String;
    array-length v12, v5

    new-array v12, v12, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 4566
    .local v12, "rationalArray":[Landroidx/exifinterface/media/ExifInterface$Rational;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_d
    array-length v15, v5

    if-ge v14, v15, :cond_1b

    .line 4567
    aget-object v15, v5, v14

    invoke-virtual {v15, v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    .line 4568
    .local v15, "numbers":[Ljava/lang/String;
    new-instance v16, Landroidx/exifinterface/media/ExifInterface$Rational;

    aget-object v17, v15, v10

    move/from16 v22, v7

    move-object/from16 p2, v8

    .end local v8    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .restart local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    aget-object v17, v15, v22

    .line 4569
    move/from16 v23, v10

    move/from16 v24, v11

    .end local v11    # "dataFormat":I
    .restart local v24    # "dataFormat":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-long v10, v10

    const/16 v21, 0x0

    move-wide/from16 v17, v7

    move-wide/from16 v19, v10

    invoke-direct/range {v16 .. v21}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJLandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v16, v12, v14

    .line 4566
    .end local v15    # "numbers":[Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p2

    move/from16 v7, v22

    move/from16 v10, v23

    move/from16 v11, v24

    goto :goto_d

    .end local v24    # "dataFormat":I
    .end local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .restart local v8    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .restart local v11    # "dataFormat":I
    :cond_1b
    move/from16 v22, v7

    move-object/from16 p2, v8

    move/from16 v23, v10

    move/from16 v24, v11

    .line 4571
    .end local v8    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .end local v11    # "dataFormat":I
    .end local v14    # "j":I
    .restart local v24    # "dataFormat":I
    .restart local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    iget-object v7, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    iget-object v8, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4572
    invoke-static {v12, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSRational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 4571
    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4573
    goto/16 :goto_12

    .line 4532
    .end local v5    # "values":[Ljava/lang/String;
    .end local v12    # "rationalArray":[Landroidx/exifinterface/media/ExifInterface$Rational;
    .end local v24    # "dataFormat":I
    .end local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .restart local v8    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .restart local v11    # "dataFormat":I
    :pswitch_3
    move/from16 v22, v7

    move-object/from16 p2, v8

    move/from16 v23, v10

    move/from16 v24, v11

    .end local v8    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .end local v11    # "dataFormat":I
    .restart local v24    # "dataFormat":I
    .restart local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    invoke-virtual {v2, v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 4533
    .restart local v5    # "values":[Ljava/lang/String;
    array-length v7, v5

    new-array v7, v7, [I

    .line 4534
    .local v7, "intArray":[I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_e
    array-length v10, v5

    if-ge v8, v10, :cond_1c

    .line 4535
    aget-object v10, v5, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v7, v8

    .line 4534
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 4537
    .end local v8    # "j":I
    :cond_1c
    iget-object v8, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v0

    iget-object v10, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4538
    invoke-static {v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 4537
    invoke-virtual {v8, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4539
    goto/16 :goto_12

    .line 4552
    .end local v5    # "values":[Ljava/lang/String;
    .end local v7    # "intArray":[I
    .end local v24    # "dataFormat":I
    .end local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .local v8, "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .restart local v11    # "dataFormat":I
    :pswitch_4
    move/from16 v22, v7

    move-object/from16 p2, v8

    move/from16 v23, v10

    move/from16 v24, v11

    .end local v8    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .end local v11    # "dataFormat":I
    .restart local v24    # "dataFormat":I
    .restart local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    invoke-virtual {v2, v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 4553
    .restart local v5    # "values":[Ljava/lang/String;
    array-length v7, v5

    new-array v7, v7, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 4554
    .local v7, "rationalArray":[Landroidx/exifinterface/media/ExifInterface$Rational;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_f
    array-length v10, v5

    if-ge v8, v10, :cond_1d

    .line 4555
    aget-object v10, v5, v8

    invoke-virtual {v10, v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 4556
    .local v10, "numbers":[Ljava/lang/String;
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$Rational;

    aget-object v11, v10, v23

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-long v11, v11

    aget-object v15, v10, v22

    .line 4557
    move-object/from16 v16, v14

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    double-to-long v13, v13

    const/16 v19, 0x0

    move-wide/from16 v17, v13

    move-object/from16 v14, v16

    move-wide v15, v11

    invoke-direct/range {v14 .. v19}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJLandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v14, v7, v8

    .line 4554
    .end local v10    # "numbers":[Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    const/4 v13, -0x1

    goto :goto_f

    .line 4559
    .end local v8    # "j":I
    :cond_1d
    iget-object v8, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v0

    iget-object v10, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4560
    invoke-static {v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 4559
    invoke-virtual {v8, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4561
    goto/16 :goto_12

    .line 4542
    .end local v5    # "values":[Ljava/lang/String;
    .end local v7    # "rationalArray":[Landroidx/exifinterface/media/ExifInterface$Rational;
    .end local v24    # "dataFormat":I
    .end local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .local v8, "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .restart local v11    # "dataFormat":I
    :pswitch_5
    move/from16 v22, v7

    move-object/from16 p2, v8

    move/from16 v23, v10

    move/from16 v24, v11

    .end local v8    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .end local v11    # "dataFormat":I
    .restart local v24    # "dataFormat":I
    .restart local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    const/4 v7, -0x1

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 4543
    .restart local v5    # "values":[Ljava/lang/String;
    array-length v7, v5

    new-array v7, v7, [J

    .line 4544
    .local v7, "longArray":[J
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_10
    array-length v10, v5

    if-ge v8, v10, :cond_1e

    .line 4545
    aget-object v10, v5, v8

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v7, v8

    .line 4544
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 4547
    .end local v8    # "j":I
    :cond_1e
    iget-object v8, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v0

    iget-object v10, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4548
    invoke-static {v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 4547
    invoke-virtual {v8, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4549
    goto :goto_12

    .line 4522
    .end local v5    # "values":[Ljava/lang/String;
    .end local v7    # "longArray":[J
    .end local v24    # "dataFormat":I
    .end local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .local v8, "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .restart local v11    # "dataFormat":I
    :pswitch_6
    move/from16 v22, v7

    move-object/from16 p2, v8

    move/from16 v23, v10

    move/from16 v24, v11

    .end local v8    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .end local v11    # "dataFormat":I
    .restart local v24    # "dataFormat":I
    .restart local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    const/4 v7, -0x1

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 4523
    .restart local v5    # "values":[Ljava/lang/String;
    array-length v7, v5

    new-array v7, v7, [I

    .line 4524
    .local v7, "intArray":[I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_11
    array-length v10, v5

    if-ge v8, v10, :cond_1f

    .line 4525
    aget-object v10, v5, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v7, v8

    .line 4524
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 4527
    .end local v8    # "j":I
    :cond_1f
    iget-object v8, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v0

    iget-object v10, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4528
    invoke-static {v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 4527
    invoke-virtual {v8, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4529
    goto :goto_12

    .line 4518
    .end local v5    # "values":[Ljava/lang/String;
    .end local v7    # "intArray":[I
    .end local v24    # "dataFormat":I
    .end local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .local v8, "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .restart local v11    # "dataFormat":I
    :pswitch_7
    move/from16 v22, v7

    move-object/from16 p2, v8

    move/from16 v23, v10

    move/from16 v24, v11

    .end local v8    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .end local v11    # "dataFormat":I
    .restart local v24    # "dataFormat":I
    .restart local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    iget-object v5, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v0

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4519
    goto :goto_12

    .line 4513
    .end local v24    # "dataFormat":I
    .end local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .restart local v8    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .restart local v11    # "dataFormat":I
    :pswitch_8
    move/from16 v22, v7

    move-object/from16 p2, v8

    move/from16 v23, v10

    move/from16 v24, v11

    .end local v8    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .end local v11    # "dataFormat":I
    .restart local v24    # "dataFormat":I
    .restart local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    iget-object v5, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v0

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4514
    goto :goto_12

    .line 4586
    :cond_20
    move/from16 v11, v24

    .end local v24    # "dataFormat":I
    .restart local v11    # "dataFormat":I
    goto :goto_12

    .line 4483
    .end local v9    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v11    # "dataFormat":I
    .end local p2    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .restart local v8    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    :cond_21
    move/from16 v22, v7

    move-object/from16 p2, v8

    move/from16 v23, v10

    .line 4478
    .end local v8    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    :goto_12
    add-int/lit8 v0, v0, 0x1

    move/from16 v7, v22

    move/from16 v10, v23

    const/4 v5, 0x2

    goto/16 :goto_6

    .line 4593
    .end local v0    # "i":I
    :cond_22
    return-void

    .line 4404
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    .restart local p1    # "tag":Ljava/lang/String;
    .local p2, "value":Ljava/lang/String;
    :cond_23
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "tag shouldn\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDateTime(Ljava/lang/Long;)V
    .locals 7
    .param p1, "timeStamp"    # Ljava/lang/Long;

    .line 5324
    if-eqz p1, :cond_2

    .line 5328
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 5332
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    .line 5333
    .local v0, "subsec":J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 5334
    .local v2, "subsecString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 5335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5334
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5337
    .end local v3    # "i":I
    :cond_0
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DateTime"

    invoke-virtual {p0, v4, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5338
    const-string v3, "SubSecTime"

    invoke-virtual {p0, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5339
    return-void

    .line 5329
    .end local v0    # "subsec":J
    .end local v2    # "subsecString":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timestamp should a positive value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5325
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Timestamp should not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGpsInfo(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .line 5250
    if-nez p1, :cond_0

    .line 5251
    return-void

    .line 5253
    :cond_0
    const-string v0, "GPSProcessingMethod"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5254
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setLatLong(DD)V

    .line 5255
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAltitude(D)V

    .line 5257
    const-string v0, "GPSSpeedRef"

    const-string v1, "K"

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5258
    nop

    .line 5260
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface$Rational;->createFromDouble(D)Landroidx/exifinterface/media/ExifInterface$Rational;

    move-result-object v0

    .line 5261
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5258
    const-string v1, "GPSSpeed"

    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5262
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    .line 5263
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 5262
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 5263
    const-string v1, "\\s+"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 5264
    .local v0, "dateTime":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "GPSDateStamp"

    invoke-virtual {p0, v2, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5265
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v2, "GPSTimeStamp"

    invoke-virtual {p0, v2, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5266
    return-void
.end method

.method public setLatLong(DD)V
    .locals 4
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 5279
    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    const-string v1, " is not valid."

    if-ltz v0, :cond_3

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v2

    if-gtz v0, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5282
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p3, v2

    if-ltz v0, :cond_2

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, p3, v2

    if-gtz v0, :cond_2

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5285
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    const-string v2, "N"

    goto :goto_0

    :cond_0
    const-string v2, "S"

    :goto_0
    const-string v3, "GPSLatitudeRef"

    invoke-virtual {p0, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5286
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->convertDecimalDegree(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPSLatitude"

    invoke-virtual {p0, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5287
    cmpl-double v0, p3, v0

    if-ltz v0, :cond_1

    const-string v0, "E"

    goto :goto_1

    :cond_1
    const-string v0, "W"

    :goto_1
    const-string v1, "GPSLongitudeRef"

    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5288
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->convertDecimalDegree(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSLongitude"

    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5289
    return-void

    .line 5283
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Longitude value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5280
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Latitude value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
