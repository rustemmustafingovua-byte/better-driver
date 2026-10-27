.class public Lorg/maplibre/android/maps/MapLibreMapOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/maplibre/android/maps/MapLibreMapOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOUR_DP:F = 4.0f

.field private static final LIGHT_GRAY:I = -0xf161f

.field private static final NINETY_TWO_DP:F = 92.0f

.field private static final UNDEFINED_COLOR:I = -0x1


# instance fields
.field private actionJournalEnabled:Z

.field private actionJournalLogFileCount:J

.field private actionJournalLogFileSize:J

.field private actionJournalPath:Ljava/lang/String;

.field private actionJournalRenderingReportInterval:I

.field private apiBaseUri:Ljava/lang/String;

.field private asyncRendererCleanup:Z

.field private attributionEnabled:Z

.field private attributionGravity:I

.field private attributionMargins:[I

.field private attributionTintColor:I

.field private cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

.field private compassEnabled:Z

.field private compassGravity:I

.field private compassImage:Landroid/graphics/drawable/Drawable;

.field private compassMargins:[I

.field private crossSourceCollisions:Z

.field private debugActive:Z

.field private doubleTapGesturesEnabled:Z

.field private fadeCompassFacingNorth:Z

.field private fastPFOREnabled:Z

.field private foregroundLoadColor:I

.field private horizontalScrollGesturesEnabled:Z

.field private localIdeographFontFamilies:[Ljava/lang/String;

.field private localIdeographFontFamily:Ljava/lang/String;

.field private localIdeographFontFamilyEnabled:Z

.field private logoEnabled:Z

.field private logoGravity:I

.field private logoMargins:[I

.field private maxPitch:D

.field private maxZoom:D

.field private minPitch:D

.field private minZoom:D

.field private pixelRatio:F

.field private prefetchZoomDelta:I

.field private prefetchesTiles:Z

.field private quickZoomGesturesEnabled:Z

.field private rotateGesturesEnabled:Z

.field private scrollGesturesEnabled:Z

.field private textureMode:Z

.field private tiltGesturesEnabled:Z

.field private translucentTextureSurface:Z

.field private zMediaOverlay:Z

.field private zoomGesturesEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/maplibre/android/maps/MapLibreMapOptions$1;

    invoke-direct {v0}, Lorg/maplibre/android/maps/MapLibreMapOptions$1;-><init>()V

    sput-object v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    .line 4
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    const v1, 0x800035

    .line 5
    iput v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    .line 6
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    const v1, 0x800053

    .line 7
    iput v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    const/4 v2, -0x1

    .line 8
    iput v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    .line 9
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    .line 10
    iput v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    const-wide v3, 0x4039800000000000L    # 25.5

    .line 12
    iput-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    .line 13
    iput-wide v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    .line 14
    iput-wide v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    .line 15
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    .line 16
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    .line 17
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    .line 18
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    .line 19
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    .line 20
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    .line 21
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    .line 22
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    const/4 v1, 0x4

    .line 23
    iput v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    .line 25
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    .line 26
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    .line 27
    iput-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    const-wide/32 v2, 0x100000

    .line 29
    iput-wide v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileSize:J

    const-wide/16 v2, 0x5

    .line 30
    iput-wide v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileCount:J

    const/16 v0, 0x3c

    .line 31
    iput v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalRenderingReportInterval:I

    .line 32
    iput-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->asyncRendererCleanup:Z

    .line 33
    iput-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fastPFOREnabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    .line 36
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    const v1, 0x800035

    .line 37
    iput v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    .line 38
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    const v1, 0x800053

    .line 39
    iput v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    const/4 v2, -0x1

    .line 40
    iput v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    .line 41
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    .line 42
    iput v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    const-wide/16 v1, 0x0

    .line 43
    iput-wide v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    const-wide v3, 0x4039800000000000L    # 25.5

    .line 44
    iput-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    .line 45
    iput-wide v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    .line 46
    iput-wide v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    .line 47
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    .line 48
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    .line 49
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    .line 50
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    .line 51
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    .line 52
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    .line 53
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    .line 54
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    const/4 v1, 0x4

    .line 55
    iput v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    .line 57
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    .line 58
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    .line 59
    iput-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    .line 60
    const-string v2, ""

    iput-object v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    const-wide/32 v2, 0x100000

    .line 61
    iput-wide v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileSize:J

    const-wide/16 v2, 0x5

    .line 62
    iput-wide v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileCount:J

    const/16 v2, 0x3c

    .line 63
    iput v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalRenderingReportInterval:I

    .line 64
    iput-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->asyncRendererCleanup:Z

    .line 65
    iput-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fastPFOREnabled:Z

    .line 66
    const-class v2, Lorg/maplibre/android/camera/CameraPosition;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/maplibre/android/camera/CameraPosition;

    iput-object v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->debugActive:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassMargins:[I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 73
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage:Landroid/graphics/drawable/Drawable;

    .line 74
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoMargins:[I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionMargins:[I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    goto :goto_7

    :cond_8
    move v2, v1

    :goto_7
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_9

    move v2, v0

    goto :goto_8

    :cond_9
    move v2, v1

    :goto_8
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_a

    move v2, v0

    goto :goto_9

    :cond_a
    move v2, v1

    :goto_9
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_b

    move v2, v0

    goto :goto_a

    :cond_b
    move v2, v1

    :goto_a
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_c

    move v2, v0

    goto :goto_b

    :cond_c
    move v2, v1

    :goto_b
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_d

    move v2, v0

    goto :goto_c

    :cond_d
    move v2, v1

    :goto_c
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->textureMode:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_e

    move v2, v0

    goto :goto_d

    :cond_e
    move v2, v1

    :goto_d
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->translucentTextureSurface:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_f

    move v2, v0

    goto :goto_e

    :cond_f
    move v2, v1

    :goto_e
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_10

    move v2, v0

    goto :goto_f

    :cond_10
    move v2, v1

    :goto_f
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_11

    move v2, v0

    goto :goto_10

    :cond_11
    move v2, v1

    :goto_10
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilies:[Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio:F

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->foregroundLoadColor:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_12

    move v2, v0

    goto :goto_11

    :cond_12
    move v2, v1

    :goto_11
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_13

    move v2, v0

    goto :goto_12

    :cond_13
    move v2, v1

    :goto_12
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileSize:J

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileCount:J

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalRenderingReportInterval:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_14

    move v2, v0

    goto :goto_13

    :cond_14
    move v2, v1

    :goto_13
    iput-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->asyncRendererCleanup:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_14

    :cond_15
    move v0, v1

    :goto_14
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fastPFOREnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createFromAttributes(Landroid/content/Context;)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/maplibre/android/maps/MapLibreMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    move-result-object p0

    return-object p0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 2

    .line 2
    sget-object v0, Lorg/maplibre/android/R$styleable;->maplibre_MapView:[I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    new-instance v0, Lorg/maplibre/android/maps/MapLibreMapOptions;

    invoke-direct {v0}, Lorg/maplibre/android/maps/MapLibreMapOptions;-><init>()V

    invoke-static {v0, p0, p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->createFromAttributes(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/Context;Landroid/content/res/TypedArray;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    move-result-object p0

    return-object p0
.end method

.method public static createFromAttributes(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/Context;Landroid/content/res/TypedArray;)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 9

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath(Ljava/lang/String;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 6
    :try_start_0
    new-instance v1, Lorg/maplibre/android/camera/CameraPosition$Builder;

    invoke-direct {v1, p2}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Lorg/maplibre/android/camera/CameraPosition$Builder;->build()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->camera(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 7
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_apiBaseUrl:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUrl(Ljava/lang/String;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 8
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_apiBaseUri:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri(Ljava/lang/String;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 11
    :cond_0
    :goto_0
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiZoomGestures:I

    const/4 v2, 0x1

    .line 12
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 13
    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 14
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiScrollGestures:I

    .line 15
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 16
    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 17
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiHorizontalScrollGestures:I

    .line 18
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 19
    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 20
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiRotateGestures:I

    .line 21
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 22
    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 23
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiTiltGestures:I

    .line 24
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 25
    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 26
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiDoubleTapGestures:I

    .line 27
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 28
    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 29
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiQuickZoomGestures:I

    .line 30
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 31
    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 32
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_cameraZoomMax:I

    const/high16 v3, 0x41cc0000    # 25.5f

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {p0, v3, v4}, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoomPreference(D)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 33
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_cameraZoomMin:I

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {p0, v4, v5}, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoomPreference(D)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 34
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_cameraPitchMax:I

    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {p0, v4, v5}, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitchPreference(D)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 35
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_cameraPitchMin:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {p0, v4, v5}, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitchPreference(D)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 36
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiCompass:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 37
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiCompassGravity:I

    const v4, 0x800035

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity(I)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 38
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiCompassMarginLeft:I

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v0

    .line 39
    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    sget v5, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiCompassMarginTop:I

    .line 40
    invoke-virtual {p2, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    sget v6, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiCompassMarginRight:I

    .line 41
    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    sget v7, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiCompassMarginBottom:I

    .line 42
    invoke-virtual {p2, v7, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    float-to-int v7, v7

    filled-new-array {v1, v5, v6, v7}, [I

    move-result-object v1

    .line 43
    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassMargins([I)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 44
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiCompassFadeFacingNorth:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassFadesWhenFacingNorth(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 45
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiCompassDrawable:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lorg/maplibre/android/R$drawable;->maplibre_compass_icon:I

    sget v6, Lk3/d;->a:I

    const/4 v6, 0x0

    .line 47
    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 48
    :cond_1
    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage(Landroid/graphics/drawable/Drawable;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 49
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiLogo:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 50
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiLogoGravity:I

    const v5, 0x800053

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity(I)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 51
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiLogoMarginLeft:I

    .line 52
    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    sget v6, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiLogoMarginTop:I

    .line 53
    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    sget v7, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiLogoMarginRight:I

    .line 54
    invoke-virtual {p2, v7, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    float-to-int v7, v7

    sget v8, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiLogoMarginBottom:I

    .line 55
    invoke-virtual {p2, v8, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    float-to-int v8, v8

    filled-new-array {v1, v6, v7, v8}, [I

    move-result-object v1

    .line 56
    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoMargins([I)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 57
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiAttributionTintColor:I

    const/4 v6, -0x1

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor(I)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 58
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiAttribution:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 59
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiAttributionGravity:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity(I)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 60
    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiAttributionMarginLeft:I

    const/high16 v5, 0x42b80000    # 92.0f

    mul-float/2addr v0, v5

    .line 61
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiAttributionMarginTop:I

    .line 62
    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    sget v5, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiAttributionMarginRight:I

    .line 63
    invoke-virtual {p2, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    sget v6, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_uiAttributionMarginBottom:I

    .line 64
    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    filled-new-array {v0, v1, v5, v4}, [I

    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionMargins([I)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 66
    sget v0, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_renderTextureMode:I

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 68
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/MapLibreMapOptions;->textureMode(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 69
    sget v0, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_renderTextureTranslucentSurface:I

    .line 70
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 71
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/MapLibreMapOptions;->translucentTextureSurface(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 72
    sget v0, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_enableTilePrefetch:I

    .line 73
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 74
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/MapLibreMapOptions;->setPrefetchesTiles(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 75
    sget v0, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_prefetchZoomDelta:I

    const/4 v4, 0x4

    .line 76
    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 77
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/MapLibreMapOptions;->setPrefetchZoomDelta(I)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 78
    sget v0, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_enableZMediaOverlay:I

    .line 79
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 80
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/MapLibreMapOptions;->renderSurfaceOnTop(Z)V

    .line 81
    sget v0, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_localIdeographEnabled:I

    .line 82
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    .line 83
    sget v0, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_localIdeographFontFamilies:I

    .line 84
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily([Ljava/lang/String;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    goto :goto_1

    .line 87
    :cond_2
    sget p1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_localIdeographFontFamily:I

    .line 88
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 89
    const-string p1, "sans-serif"

    .line 90
    :cond_3
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily(Ljava/lang/String;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 91
    :goto_1
    sget p1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_pixelRatio:I

    .line 92
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 93
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio(F)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 94
    sget p1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_foregroundLoadColor:I

    const v0, -0xf161f

    .line 95
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 96
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->foregroundLoadColor(I)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 97
    sget p1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_cross_source_collisions:I

    .line 98
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 99
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 100
    sget p1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_actionJournalEnabled:I

    .line 101
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 102
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 103
    sget p1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_actionJournalLogFileSize:I

    const/high16 v0, 0x100000

    .line 104
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    int-to-long v2, p1

    .line 105
    invoke-virtual {p0, v2, v3}, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileSize(J)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 106
    sget p1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_actionJournalLogFileCount:I

    const/4 v0, 0x5

    .line 107
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    int-to-long v2, p1

    .line 108
    invoke-virtual {p0, v2, v3}, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileCount(J)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 109
    sget p1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_actionJournalRenderingReportInterval:I

    const/16 v0, 0x3c

    .line 110
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 111
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalRenderingReportInterval(I)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 112
    sget p1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_asyncRendererCleanup:I

    .line 113
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 114
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->asyncRendererCleanup(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 115
    sget p1, Lorg/maplibre/android/R$styleable;->maplibre_MapView_maplibre_fastPFOREnabled:I

    .line 116
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 117
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->fastPFOREnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :goto_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    throw p0
.end method


# virtual methods
.method public actionJournalEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    return-object p0
.end method

.method public actionJournalLogFileCount(J)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-wide p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileCount:J

    return-object p0
.end method

.method public actionJournalLogFileSize(J)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-wide p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileSize:J

    return-object p0
.end method

.method public actionJournalPath(Ljava/lang/String;)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    return-object p0
.end method

.method public actionJournalRenderingReportInterval(I)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalRenderingReportInterval:I

    return-object p0
.end method

.method public apiBaseUri(Ljava/lang/String;)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    return-object p0
.end method

.method public apiBaseUrl(Ljava/lang/String;)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    return-object p0
.end method

.method public asyncRendererCleanup(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->asyncRendererCleanup:Z

    return-object p0
.end method

.method public attributionEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    return-object p0
.end method

.method public attributionGravity(I)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    return-object p0
.end method

.method public attributionMargins([I)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionMargins:[I

    return-object p0
.end method

.method public attributionTintColor(I)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    return-object p0
.end method

.method public camera(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    return-object p0
.end method

.method public compassEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    return-object p0
.end method

.method public compassFadesWhenFacingNorth(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    return-object p0
.end method

.method public compassGravity(I)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    return-object p0
.end method

.method public compassImage(Landroid/graphics/drawable/Drawable;)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public compassMargins([I)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassMargins:[I

    return-object p0
.end method

.method public crossSourceCollisions(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    return-object p0
.end method

.method public debugActive(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->debugActive:Z

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public doubleTapGesturesEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    check-cast p1, Lorg/maplibre/android/maps/MapLibreMapOptions;

    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->debugActive:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->debugActive:Z

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_5
    iget-object v1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    :goto_0
    return v0

    :cond_6
    iget v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    iget v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    if-eq v1, v2, :cond_8

    return v0

    :cond_8
    iget v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    iget v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    if-eq v1, v2, :cond_9

    return v0

    :cond_9
    iget v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    iget v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    if-eq v1, v2, :cond_a

    return v0

    :cond_a
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    if-eq v1, v2, :cond_b

    return v0

    :cond_b
    iget v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    iget v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    if-eq v1, v2, :cond_c

    return v0

    :cond_c
    iget-wide v1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    iget-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_d

    return v0

    :cond_d
    iget-wide v1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    iget-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_e

    return v0

    :cond_e
    iget-wide v1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    iget-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_f

    return v0

    :cond_f
    iget-wide v1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    iget-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_10

    return v0

    :cond_10
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    if-eq v1, v2, :cond_11

    return v0

    :cond_11
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    if-eq v1, v2, :cond_12

    return v0

    :cond_12
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    if-eq v1, v2, :cond_13

    return v0

    :cond_13
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    if-eq v1, v2, :cond_14

    return v0

    :cond_14
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    if-eq v1, v2, :cond_15

    return v0

    :cond_15
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    if-eq v1, v2, :cond_16

    return v0

    :cond_16
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    if-eq v1, v2, :cond_17

    return v0

    :cond_17
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    if-eqz v1, :cond_18

    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    invoke-virtual {v1, v2}, Lorg/maplibre/android/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_1

    :cond_18
    iget-object v1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    if-eqz v1, :cond_19

    :goto_1
    return v0

    :cond_19
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassMargins:[I

    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassMargins:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_1a

    return v0

    :cond_1a
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoMargins:[I

    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoMargins:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_1b

    return v0

    :cond_1b
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionMargins:[I

    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionMargins:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_1c

    return v0

    :cond_1c
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    if-eqz v1, :cond_1d

    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_2

    :cond_1d
    iget-object v1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    if-eqz v1, :cond_1e

    :goto_2
    return v0

    :cond_1e
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    if-eq v1, v2, :cond_1f

    return v0

    :cond_1f
    iget v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    iget v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    if-eq v1, v2, :cond_20

    return v0

    :cond_20
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    if-eq v1, v2, :cond_21

    return v0

    :cond_21
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    if-eq v1, v2, :cond_22

    return v0

    :cond_22
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily:Ljava/lang/String;

    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v0

    :cond_23
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilies:[Ljava/lang/String;

    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilies:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v0

    :cond_24
    iget v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio:F

    iget v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_25

    return v0

    :cond_25
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    if-eq v1, v2, :cond_26

    return v0

    :cond_26
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    if-eq v1, v2, :cond_27

    return v0

    :cond_27
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    iget-object p1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_28
    :goto_3
    return v0
.end method

.method public fastPFOREnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fastPFOREnabled:Z

    return-object p0
.end method

.method public foregroundLoadColor(I)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->foregroundLoadColor:I

    return-object p0
.end method

.method public getActionJournalEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    return p0
.end method

.method public getActionJournalLogFileCount()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileCount:J

    return-wide v0
.end method

.method public getActionJournalLogFileSize()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileSize:J

    return-wide v0
.end method

.method public getActionJournalPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    return-object p0
.end method

.method public getActionJournalRenderingReportInterval()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalRenderingReportInterval:I

    return p0
.end method

.method public getApiBaseUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    return-object p0
.end method

.method public getApiBaseUrl()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    return-object p0
.end method

.method public getAsyncRendererCleanup()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->asyncRendererCleanup:Z

    return p0
.end method

.method public getAttributionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    return p0
.end method

.method public getAttributionGravity()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    return p0
.end method

.method public getAttributionMargins()[I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionMargins:[I

    return-object p0
.end method

.method public getAttributionTintColor()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    return p0
.end method

.method public getCamera()Lorg/maplibre/android/camera/CameraPosition;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    return-object p0
.end method

.method public getCompassEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    return p0
.end method

.method public getCompassFadeFacingNorth()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    return p0
.end method

.method public getCompassGravity()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    return p0
.end method

.method public getCompassImage()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getCompassMargins()[I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassMargins:[I

    return-object p0
.end method

.method public getCrossSourceCollisions()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    return p0
.end method

.method public getDebugActive()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->debugActive:Z

    return p0
.end method

.method public getDoubleTapGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    return p0
.end method

.method public getFastPFOREnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fastPFOREnabled:Z

    return p0
.end method

.method public getForegroundLoadColor()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->foregroundLoadColor:I

    return p0
.end method

.method public getHorizontalScrollGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    return p0
.end method

.method public getLocalIdeographFontFamily()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLogoEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    return p0
.end method

.method public getLogoGravity()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    return p0
.end method

.method public getLogoMargins()[I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoMargins:[I

    return-object p0
.end method

.method public getMaxPitchPreference()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    return-wide v0
.end method

.method public getMaxZoomPreference()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    return-wide v0
.end method

.method public getMinPitchPreference()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    return-wide v0
.end method

.method public getMinZoomPreference()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    return-wide v0
.end method

.method public getPixelRatio()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio:F

    return p0
.end method

.method public getPrefetchZoomDelta()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    return p0
.end method

.method public getPrefetchesTiles()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    return p0
.end method

.method public getQuickZoomGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    return p0
.end method

.method public getRenderSurfaceOnTop()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    return p0
.end method

.method public getRotateGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    return p0
.end method

.method public getScrollGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    return p0
.end method

.method public getTextureMode()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->textureMode:Z

    return p0
.end method

.method public getTiltGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    return p0
.end method

.method public getTranslucentTextureSurface()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->translucentTextureSurface:Z

    return p0
.end method

.method public getZoomGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    return p0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/maplibre/android/camera/CameraPosition;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->debugActive:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassMargins:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoMargins:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionMargins:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v2, v0

    iget-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v2, v2, 0x1f

    const/16 v0, 0x20

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    iget-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v2, v2, 0x1f

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    iget-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v2, v2, 0x1f

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    iget-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v2, v2, 0x1f

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->textureMode:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->translucentTextureSurface:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilies:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio:F

    float-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileSize:J

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileCount:J

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalRenderingReportInterval:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->asyncRendererCleanup:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fastPFOREnabled:Z

    add-int/2addr v2, p0

    return v2
.end method

.method public horizontalScrollGesturesEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    return-object p0
.end method

.method public isLocalIdeographFontFamilyEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    return p0
.end method

.method public localIdeographFontFamily(Ljava/lang/String;)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/maplibre/android/utils/FontUtils;->extractValidFont([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily:Ljava/lang/String;

    return-object p0
.end method

.method public varargs localIdeographFontFamily([Ljava/lang/String;)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/maplibre/android/utils/FontUtils;->extractValidFont([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily:Ljava/lang/String;

    return-object p0
.end method

.method public localIdeographFontFamilyEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    return-object p0
.end method

.method public logoEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    return-object p0
.end method

.method public logoGravity(I)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    return-object p0
.end method

.method public logoMargins([I)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoMargins:[I

    return-object p0
.end method

.method public maxPitchPreference(D)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-wide p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    return-object p0
.end method

.method public maxZoomPreference(D)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-wide p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    return-object p0
.end method

.method public minPitchPreference(D)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-wide p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    return-object p0
.end method

.method public minZoomPreference(D)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-wide p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    return-object p0
.end method

.method public pixelRatio(F)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio:F

    return-object p0
.end method

.method public quickZoomGesturesEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    return-object p0
.end method

.method public renderSurfaceOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    return-void
.end method

.method public rotateGesturesEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    return-object p0
.end method

.method public scrollGesturesEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    return-object p0
.end method

.method public setPrefetchZoomDelta(I)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    return-object p0
.end method

.method public setPrefetchesTiles(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    return-object p0
.end method

.method public textureMode(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->textureMode:Z

    return-object p0
.end method

.method public tiltGesturesEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    return-object p0
.end method

.method public translucentTextureSurface(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->translucentTextureSurface:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->debugActive:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassMargins:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/maplibre/android/utils/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoMargins:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionMargins:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->textureMode:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->translucentTextureSurface:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilies:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->foregroundLoadColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalRenderingReportInterval:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->asyncRendererCleanup:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fastPFOREnabled:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

.method public zoomGesturesEnabled(Z)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    return-object p0
.end method
