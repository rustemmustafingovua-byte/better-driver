.class public Lorg/maplibre/android/location/LocationComponentOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    }
.end annotation


# static fields
.field private static final ACCURACY_ALPHA_DEFAULT:F = 0.15f

.field private static final CIRCLE_PULSING_ALPHA_DEFAULT:F = 1.0f

.field private static final CIRCLE_PULSING_DURATION_DEFAULT_MS:J = 0x8fcL

.field public static final CIRCLE_PULSING_MAX_RADIUS_DEFAULT:F = 35.0f

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/maplibre/android/location/LocationComponentOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_ZOOM_ICON_SCALE_DEFAULT:F = 1.0f

.field private static final MIN_ZOOM_ICON_SCALE_DEFAULT:F = 0.6f

.field private static final PADDING_DEFAULT:[I

.field private static final STALE_STATE_DELAY_MS:J = 0x7530L

.field private static final TRACKING_ANIMATION_DURATION_MULTIPLIER_DEFAULT:F = 1.1f


# instance fields
.field private accuracyAlpha:F

.field private accuracyAnimationEnabled:Z

.field private accuracyColor:I

.field private backgroundDrawable:I

.field private backgroundDrawableStale:I

.field private backgroundName:Ljava/lang/String;

.field private backgroundStaleName:Ljava/lang/String;

.field private backgroundStaleTintColor:Ljava/lang/Integer;

.field private backgroundTintColor:Ljava/lang/Integer;

.field private bearingDrawable:I

.field private bearingName:Ljava/lang/String;

.field private bearingOnTop:Z

.field private bearingTintColor:Ljava/lang/Integer;

.field private compassAnimationEnabled:Z

.field private elevation:F

.field private enableStaleState:Z

.field private foregroundDrawable:I

.field private foregroundDrawableStale:I

.field private foregroundName:Ljava/lang/String;

.field private foregroundStaleName:Ljava/lang/String;

.field private foregroundStaleTintColor:Ljava/lang/Integer;

.field private foregroundTintColor:Ljava/lang/Integer;

.field private gpsDrawable:I

.field private gpsName:Ljava/lang/String;

.field private layerAbove:Ljava/lang/String;

.field private layerBelow:Ljava/lang/String;

.field private maxZoomIconScale:F

.field private minZoomIconScale:F

.field private padding:[I

.field private pulseAlpha:F

.field private pulseColor:Ljava/lang/Integer;

.field private pulseEnabled:Ljava/lang/Boolean;

.field private pulseFadeEnabled:Ljava/lang/Boolean;

.field private pulseInterpolator:Landroid/view/animation/Interpolator;

.field private pulseMaxRadius:F

.field private pulseSingleDuration:F

.field private staleStateTimeout:J

.field private trackingAnimationDurationMultiplier:F

.field private trackingGesturesManagement:Z

.field private trackingInitialMoveThreshold:F

.field private trackingMultiFingerMoveThreshold:F

.field private trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    sput-object v0, Lorg/maplibre/android/location/LocationComponentOptions;->PADDING_DEFAULT:[I

    new-instance v0, Lorg/maplibre/android/location/LocationComponentOptions$1;

    invoke-direct {v0}, Lorg/maplibre/android/location/LocationComponentOptions$1;-><init>()V

    sput-object v0, Lorg/maplibre/android/location/LocationComponentOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;FZJ[IFFZFFLandroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;ZFZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;FFFLandroid/view/animation/Interpolator;)V
    .locals 1

    move-object/from16 v0, p24

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAlpha:F

    .line 3
    iput p2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyColor:I

    .line 4
    iput p3, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawableStale:I

    .line 5
    iput-object p4, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    .line 6
    iput p5, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawableStale:I

    .line 7
    iput-object p6, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    .line 8
    iput p7, p0, Lorg/maplibre/android/location/LocationComponentOptions;->gpsDrawable:I

    .line 9
    iput-object p8, p0, Lorg/maplibre/android/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    .line 10
    iput p9, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawable:I

    .line 11
    iput-object p10, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    .line 12
    iput p11, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawable:I

    .line 13
    iput-object p12, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    .line 14
    iput p13, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingDrawable:I

    .line 15
    iput-object p14, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    move-object/from16 p1, p15

    .line 16
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    move-object/from16 p1, p16

    .line 17
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    move-object/from16 p1, p17

    .line 18
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    move-object/from16 p1, p18

    .line 19
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    move-object/from16 p1, p19

    .line 20
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    move/from16 p1, p20

    .line 21
    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->elevation:F

    move/from16 p1, p21

    .line 22
    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState:Z

    move-wide/from16 p1, p22

    .line 23
    iput-wide p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->staleStateTimeout:J

    if-eqz v0, :cond_0

    .line 24
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->padding:[I

    move/from16 p1, p25

    .line 25
    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->maxZoomIconScale:F

    move/from16 p1, p26

    .line 26
    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->minZoomIconScale:F

    move/from16 p1, p27

    .line 27
    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement:Z

    move/from16 p1, p28

    .line 28
    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    move/from16 p1, p29

    .line 29
    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    move-object/from16 p1, p30

    .line 30
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    move-object/from16 p1, p31

    .line 31
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    move-object/from16 p1, p32

    .line 32
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    move/from16 p1, p33

    .line 33
    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingOnTop:Z

    move/from16 p1, p34

    .line 34
    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    move/from16 p1, p35

    .line 35
    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->compassAnimationEnabled:Z

    move/from16 p1, p36

    .line 36
    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAnimationEnabled:Z

    move-object/from16 p1, p37

    .line 37
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled:Ljava/lang/Boolean;

    move-object/from16 p1, p38

    .line 38
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseFadeEnabled:Ljava/lang/Boolean;

    move-object/from16 p1, p39

    .line 39
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor:Ljava/lang/Integer;

    move/from16 p1, p40

    .line 40
    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseSingleDuration:F

    move/from16 p1, p41

    .line 41
    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseMaxRadius:F

    move/from16 p1, p42

    .line 42
    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseAlpha:F

    move-object/from16 p1, p43

    .line 43
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseInterpolator:Landroid/view/animation/Interpolator;

    return-void

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null padding"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAlpha:F

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyColor:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawableStale:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawableStale:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->gpsDrawable:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawable:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawable:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingDrawable:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    .line 60
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->elevation:F

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/maplibre/android/location/LocationComponentOptions;->staleStateTimeout:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->padding:[I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->maxZoomIconScale:F

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->minZoomIconScale:F

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    .line 74
    const-class v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iput-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingOnTop:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->compassAnimationEnabled:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    iput-boolean v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAnimationEnabled:Z

    .line 81
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled:Ljava/lang/Boolean;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseFadeEnabled:Ljava/lang/Boolean;

    .line 83
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor:Ljava/lang/Integer;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseSingleDuration:F

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseMaxRadius:F

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseAlpha:F

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/location/LocationComponentOptions;)F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseAlpha:F

    return p0
.end method

.method public static bridge synthetic b(Lorg/maplibre/android/location/LocationComponentOptions;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public static builder(Landroid/content/Context;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 1

    sget v0, Lorg/maplibre/android/R$style;->maplibre_LocationComponent:I

    invoke-static {p0, v0}, Lorg/maplibre/android/location/LocationComponentOptions;->createFromAttributes(Landroid/content/Context;I)Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions;->toBuilder()Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/maplibre/android/location/LocationComponentOptions;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static createFromAttributes(Landroid/content/Context;I)Lorg/maplibre/android/location/LocationComponentOptions;
    .locals 9

    sget-object v0, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    new-instance v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    invoke-direct {v0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->enableStaleState(Z)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->staleStateTimeout(J)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->maxZoomIconScale(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    move-result-object v0

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v3}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->minZoomIconScale(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    move-result-object v0

    sget-object v4, Lorg/maplibre/android/location/LocationComponentOptions;->PADDING_DEFAULT:[I

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->padding([I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    move-result-object v0

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_foregroundDrawable:I

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundDrawable(I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_foregroundTintColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_foregroundTintColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundTintColor(Ljava/lang/Integer;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    :cond_0
    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_backgroundDrawable:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundDrawable(I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_backgroundTintColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_backgroundTintColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundTintColor(Ljava/lang/Integer;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    :cond_1
    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_foregroundDrawableStale:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundDrawableStale(I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_foregroundStaleTintColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_foregroundStaleTintColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundStaleTintColor(Ljava/lang/Integer;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    :cond_2
    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_backgroundDrawableStale:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundDrawableStale(I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_backgroundStaleTintColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_backgroundStaleTintColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundStaleTintColor(Ljava/lang/Integer;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    :cond_3
    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_bearingDrawable:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->bearingDrawable(I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_bearingTintColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_bearingTintColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->bearingTintColor(Ljava/lang/Integer;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    :cond_4
    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_enableStaleState:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_enableStaleState:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->enableStaleState(Z)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    :cond_5
    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_staleStateTimeout:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_staleStateTimeout:I

    const/16 v6, 0x7530

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->staleStateTimeout(J)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    :cond_6
    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_gpsDrawable:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->gpsDrawable(I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_elevation:I

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    sget v6, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_accuracyColor:I

    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->accuracyColor(I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget v6, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_accuracyAlpha:I

    const v7, 0x3e19999a    # 0.15f

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {v0, v6}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->accuracyAlpha(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->elevation(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_trackingGesturesManagement:I

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingGesturesManagement(Z)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_trackingInitialMoveThreshold:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lorg/maplibre/android/R$dimen;->maplibre_locationComponentTrackingInitialMoveThreshold:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingInitialMoveThreshold(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_trackingMultiFingerMoveThreshold:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v7, Lorg/maplibre/android/R$dimen;->maplibre_locationComponentTrackingMultiFingerMoveThreshold:I

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {p1, v4, p0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingMultiFingerMoveThreshold(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget p0, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_iconPaddingLeft:I

    invoke-virtual {p1, p0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    sget v4, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_iconPaddingTop:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    sget v7, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_iconPaddingRight:I

    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    sget v8, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_iconPaddingBottom:I

    invoke-virtual {p1, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    filled-new-array {p0, v4, v7, v8}, [I

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->padding([I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget p0, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_layer_above:I

    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->layerAbove(Ljava/lang/String;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget p0, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_layer_below:I

    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->layerBelow(Ljava/lang/String;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget p0, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_bearing_on_top:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-virtual {v0, p0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->bearingOnTop(Z)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget p0, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_minZoomIconScale:I

    invoke-virtual {p1, p0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    sget v3, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_maxZoomIconScale:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, p0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->minZoomIconScale(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    invoke-virtual {v0, v3}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->maxZoomIconScale(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget p0, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_trackingAnimationDurationMultiplier:I

    const v3, 0x3f8ccccd    # 1.1f

    invoke-virtual {p1, p0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingAnimationDurationMultiplier(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    sget p0, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_compassAnimationEnabled:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->b(Lorg/maplibre/android/location/LocationComponentOptions$Builder;Ljava/lang/Boolean;)V

    sget p0, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_accuracyAnimationEnabled:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->a(Lorg/maplibre/android/location/LocationComponentOptions$Builder;Ljava/lang/Boolean;)V

    sget p0, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_pulsingLocationCircleEnabled:I

    invoke-virtual {p1, p0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->d(Lorg/maplibre/android/location/LocationComponentOptions$Builder;Ljava/lang/Boolean;)V

    sget p0, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_pulsingLocationCircleFadeEnabled:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->e(Lorg/maplibre/android/location/LocationComponentOptions$Builder;Ljava/lang/Boolean;)V

    sget p0, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_pulsingLocationCircleColor:I

    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p0

    if-eqz p0, :cond_7

    sget p0, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_pulsingLocationCircleColor:I

    invoke-virtual {p1, p0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseColor(I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    :cond_7
    sget p0, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_pulsingLocationCircleDuration:I

    const v1, 0x450fc000    # 2300.0f

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    invoke-static {v0, p0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->g(Lorg/maplibre/android/location/LocationComponentOptions$Builder;F)V

    sget p0, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_pulsingLocationCircleRadius:I

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    invoke-static {v0, p0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->f(Lorg/maplibre/android/location/LocationComponentOptions$Builder;F)V

    sget p0, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent_maplibre_pulsingLocationCircleAlpha:I

    invoke-virtual {p1, p0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    invoke-static {v0, p0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->c(Lorg/maplibre/android/location/LocationComponentOptions$Builder;F)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->build()Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lorg/maplibre/android/location/LocationComponentOptions;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseFadeEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static bridge synthetic e(Lorg/maplibre/android/location/LocationComponentOptions;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/maplibre/android/location/LocationComponentOptions;)F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseMaxRadius:F

    return p0
.end method

.method public static bridge synthetic g(Lorg/maplibre/android/location/LocationComponentOptions;)F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseSingleDuration:F

    return p0
.end method


# virtual methods
.method public accuracyAlpha()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAlpha:F

    return p0
.end method

.method public accuracyAnimationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAnimationEnabled:Z

    return p0
.end method

.method public accuracyColor()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyColor:I

    return p0
.end method

.method public backgroundDrawable()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawable:I

    return p0
.end method

.method public backgroundDrawableStale()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawableStale:I

    return p0
.end method

.method public backgroundName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    return-object p0
.end method

.method public backgroundStaleName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    return-object p0
.end method

.method public backgroundStaleTintColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public backgroundTintColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public bearingDrawable()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingDrawable:I

    return p0
.end method

.method public bearingName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    return-object p0
.end method

.method public bearingOnTop()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingOnTop:Z

    return p0
.end method

.method public bearingTintColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public compassAnimationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->compassAnimationEnabled:Z

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public elevation()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->elevation:F

    return p0
.end method

.method public enableStaleState()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState:Z

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_e

    :cond_1
    check-cast p1, Lorg/maplibre/android/location/LocationComponentOptions;

    iget v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAlpha:F

    iget v3, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyColor:I

    iget v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyColor:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawableStale:I

    iget v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawableStale:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawableStale:I

    iget v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawableStale:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->gpsDrawable:I

    iget v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->gpsDrawable:I

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawable:I

    iget v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawable:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawable:I

    iget v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawable:I

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingDrawable:I

    iget v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->bearingDrawable:I

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->elevation:F

    iget v3, p0, Lorg/maplibre/android/location/LocationComponentOptions;->elevation:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_a

    return v1

    :cond_a
    iget-boolean v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState:Z

    iget-boolean v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState:Z

    if-eq v2, v3, :cond_b

    return v1

    :cond_b
    iget-wide v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->staleStateTimeout:J

    iget-wide v4, p1, Lorg/maplibre/android/location/LocationComponentOptions;->staleStateTimeout:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    return v1

    :cond_c
    iget v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->maxZoomIconScale:F

    iget v3, p0, Lorg/maplibre/android/location/LocationComponentOptions;->maxZoomIconScale:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_d

    return v1

    :cond_d
    iget v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->minZoomIconScale:F

    iget v3, p0, Lorg/maplibre/android/location/LocationComponentOptions;->minZoomIconScale:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_e

    return v1

    :cond_e
    iget-boolean v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement:Z

    iget-boolean v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement:Z

    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    iget v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    iget v3, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_10

    return v1

    :cond_10
    iget v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    iget v3, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_11

    return v1

    :cond_11
    iget v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    iget v3, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_12

    return v1

    :cond_12
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    if-eqz v2, :cond_13

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_0

    :cond_13
    iget-object v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    if-eqz v2, :cond_14

    :goto_0
    return v1

    :cond_14
    iget-boolean v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->compassAnimationEnabled:Z

    iget-boolean v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->compassAnimationEnabled:Z

    if-eq v2, v3, :cond_15

    return v1

    :cond_15
    iget-boolean v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAnimationEnabled:Z

    iget-boolean v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAnimationEnabled:Z

    if-eq v2, v3, :cond_16

    return v1

    :cond_16
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_1

    :cond_17
    iget-object v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    if-eqz v2, :cond_18

    :goto_1
    return v1

    :cond_18
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_2

    :cond_19
    iget-object v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    if-eqz v2, :cond_1a

    :goto_2
    return v1

    :cond_1a
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_3

    :cond_1b
    iget-object v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    if-eqz v2, :cond_1c

    :goto_3
    return v1

    :cond_1c
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_4

    :cond_1d
    iget-object v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    if-eqz v2, :cond_1e

    :goto_4
    return v1

    :cond_1e
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_5

    :cond_1f
    iget-object v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    if-eqz v2, :cond_20

    :goto_5
    return v1

    :cond_20
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_6

    :cond_21
    iget-object v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    if-eqz v2, :cond_22

    :goto_6
    return v1

    :cond_22
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_7

    :cond_23
    iget-object v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_24

    :goto_7
    return v1

    :cond_24
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_25

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_8

    :cond_25
    iget-object v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_26

    :goto_8
    return v1

    :cond_26
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_27

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_9

    :cond_27
    iget-object v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_28

    :goto_9
    return v1

    :cond_28
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_29

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_a

    :cond_29
    iget-object v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_2a

    :goto_a
    return v1

    :cond_2a
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_2b

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_b

    :cond_2b
    iget-object v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_2c

    :goto_b
    return v1

    :cond_2c
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->padding:[I

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->padding:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_2d

    return v1

    :cond_2d
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    if-eqz v2, :cond_2e

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_c

    :cond_2e
    iget-object v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    if-eqz v2, :cond_2f

    :goto_c
    return v1

    :cond_2f
    iget-boolean v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingOnTop:Z

    iget-boolean v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->bearingOnTop:Z

    if-eq v2, v3, :cond_30

    return v1

    :cond_30
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_31

    return v1

    :cond_31
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseFadeEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->pulseFadeEnabled:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_32

    return v1

    :cond_32
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor:Ljava/lang/Integer;

    if-eqz v2, :cond_33

    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto :goto_d

    :cond_33
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_34

    :goto_d
    return v1

    :cond_34
    iget v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->pulseSingleDuration:F

    iget v3, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseSingleDuration:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_35

    return v1

    :cond_35
    iget v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->pulseMaxRadius:F

    iget v3, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseMaxRadius:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_36

    return v1

    :cond_36
    iget v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->pulseAlpha:F

    iget v3, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_37

    return v1

    :cond_37
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    if-eqz p0, :cond_38

    iget-object p1, p1, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_38
    iget-object p0, p1, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    if-nez p0, :cond_39

    return v0

    :cond_39
    :goto_e
    return v1
.end method

.method public foregroundDrawable()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawable:I

    return p0
.end method

.method public foregroundDrawableStale()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawableStale:I

    return p0
.end method

.method public foregroundName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    return-object p0
.end method

.method public foregroundStaleName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    return-object p0
.end method

.method public foregroundStaleTintColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public foregroundTintColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public gpsDrawable()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->gpsDrawable:I

    return p0
.end method

.method public gpsName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 8

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAlpha:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyColor:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawableStale:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawableStale:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->gpsDrawable:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawable:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawable:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingDrawable:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v3

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v3

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v3

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    move v2, v3

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    move v2, v3

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    move v2, v3

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->elevation:F

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_c

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_c

    :cond_c
    move v2, v3

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lorg/maplibre/android/location/LocationComponentOptions;->staleStateTimeout:J

    const/16 v2, 0x20

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->padding:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->maxZoomIconScale:F

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_d

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_d

    :cond_d
    move v0, v3

    :goto_d
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->minZoomIconScale:F

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_e

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_e

    :cond_e
    move v0, v3

    :goto_e
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_f

    :cond_f
    move v0, v3

    :goto_f
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_10

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_10

    :cond_10
    move v0, v3

    :goto_10
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/RectF;->hashCode()I

    move-result v0

    goto :goto_11

    :cond_11
    move v0, v3

    :goto_11
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_12

    :cond_12
    move v0, v3

    :goto_12
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_13

    :cond_13
    move v0, v3

    :goto_13
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingOnTop:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_14

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_14

    :cond_14
    move v0, v3

    :goto_14
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->compassAnimationEnabled:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAnimationEnabled:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseFadeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_15

    :cond_15
    move v0, v3

    :goto_15
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseSingleDuration:F

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_16

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_16

    :cond_16
    move v0, v3

    :goto_16
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseMaxRadius:F

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_17

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_17

    :cond_17
    move v0, v3

    :goto_17
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseAlpha:F

    cmpl-float v0, p0, v1

    if-eqz v0, :cond_18

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :cond_18
    add-int/2addr v2, v3

    return v2
.end method

.method public layerAbove()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    return-object p0
.end method

.method public layerBelow()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    return-object p0
.end method

.method public maxZoomIconScale()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->maxZoomIconScale:F

    return p0
.end method

.method public minZoomIconScale()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->minZoomIconScale:F

    return p0
.end method

.method public padding()[I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->padding:[I

    return-object p0
.end method

.method public pulseAlpha()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseAlpha:F

    return p0
.end method

.method public pulseColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public pulseEnabled()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public pulseFadeEnabled()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseFadeEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public pulseInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public pulseMaxRadius()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseMaxRadius:F

    return p0
.end method

.method public pulseSingleDuration()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseSingleDuration:F

    return p0
.end method

.method public staleStateTimeout()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->staleStateTimeout:J

    return-wide v0
.end method

.method public toBuilder()Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 2

    new-instance v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;-><init>(Lorg/maplibre/android/location/LocationComponentOptions;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationComponentOptions{accuracyAlpha="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", accuracyColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundDrawableStale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawableStale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundStaleName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundDrawableStale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawableStale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundStaleName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gpsDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->gpsDrawable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpsName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bearingDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingDrawable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bearingName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bearingTintColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundTintColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundTintColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundStaleTintColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundStaleTintColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", elevation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->elevation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", enableStaleState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", staleStateTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->staleStateTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", padding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->padding:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxZoomIconScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->maxZoomIconScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minZoomIconScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->minZoomIconScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", trackingGesturesManagement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", trackingInitialMoveThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", trackingMultiFingerMoveThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", trackingMultiFingerProtectedMoveArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layerAbove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "layerBelow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bearingOnTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingOnTop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "trackingAnimationDurationMultiplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "pulseEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "pulseFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseFadeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "pulseColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "pulseSingleDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseSingleDuration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "pulseMaxRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseMaxRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "pulseAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trackingAnimationDurationMultiplier()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    return p0
.end method

.method public trackingGesturesManagement()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement:Z

    return p0
.end method

.method public trackingInitialMoveThreshold()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    return p0
.end method

.method public trackingMultiFingerMoveThreshold()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    return p0
.end method

.method public trackingMultiFingerProtectedMoveArea()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAlpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawableStale:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawableStale:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->gpsDrawable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingDrawable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->elevation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->staleStateTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->padding:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->maxZoomIconScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->minZoomIconScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingOnTop:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean p2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->compassAnimationEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAnimationEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseFadeEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget p2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseSingleDuration:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseMaxRadius:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseAlpha:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
