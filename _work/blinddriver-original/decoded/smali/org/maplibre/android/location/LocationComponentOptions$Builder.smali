.class public Lorg/maplibre/android/location/LocationComponentOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/location/LocationComponentOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accuracyAlpha:Ljava/lang/Float;

.field private accuracyAnimationEnabled:Ljava/lang/Boolean;

.field private accuracyColor:Ljava/lang/Integer;

.field private backgroundDrawable:Ljava/lang/Integer;

.field private backgroundDrawableStale:Ljava/lang/Integer;

.field private backgroundName:Ljava/lang/String;

.field private backgroundStaleName:Ljava/lang/String;

.field private backgroundStaleTintColor:Ljava/lang/Integer;

.field private backgroundTintColor:Ljava/lang/Integer;

.field private bearingDrawable:Ljava/lang/Integer;

.field private bearingName:Ljava/lang/String;

.field private bearingOnTop:Z

.field private bearingTintColor:Ljava/lang/Integer;

.field private compassAnimationEnabled:Ljava/lang/Boolean;

.field private elevation:Ljava/lang/Float;

.field private enableStaleState:Ljava/lang/Boolean;

.field private foregroundDrawable:Ljava/lang/Integer;

.field private foregroundDrawableStale:Ljava/lang/Integer;

.field private foregroundName:Ljava/lang/String;

.field private foregroundStaleName:Ljava/lang/String;

.field private foregroundStaleTintColor:Ljava/lang/Integer;

.field private foregroundTintColor:Ljava/lang/Integer;

.field private gpsDrawable:Ljava/lang/Integer;

.field private gpsName:Ljava/lang/String;

.field private layerAbove:Ljava/lang/String;

.field private layerBelow:Ljava/lang/String;

.field private maxZoomIconScale:Ljava/lang/Float;

.field private minZoomIconScale:Ljava/lang/Float;

.field private padding:[I

.field private pulseAlpha:F

.field private pulseColor:I

.field private pulseEnabled:Ljava/lang/Boolean;

.field private pulseFadeEnabled:Ljava/lang/Boolean;

.field private pulseInterpolator:Landroid/view/animation/Interpolator;

.field private pulseMaxRadius:F

.field private pulseSingleDuration:F

.field private staleStateTimeout:Ljava/lang/Long;

.field private trackingAnimationDurationMultiplier:Ljava/lang/Float;

.field private trackingGesturesManagement:Ljava/lang/Boolean;

.field private trackingInitialMoveThreshold:Ljava/lang/Float;

.field private trackingMultiFingerMoveThreshold:Ljava/lang/Float;

.field private trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->accuracyAlpha:Ljava/lang/Float;

    .line 5
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->accuracyColor:Ljava/lang/Integer;

    .line 6
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawableStale()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundDrawableStale:Ljava/lang/Integer;

    .line 7
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundStaleName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawableStale()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundDrawableStale:Ljava/lang/Integer;

    .line 9
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundStaleName:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->gpsDrawable()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->gpsDrawable:Ljava/lang/Integer;

    .line 11
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->gpsName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->gpsName:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawable()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundDrawable:Ljava/lang/Integer;

    .line 13
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundName:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawable()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundDrawable:Ljava/lang/Integer;

    .line 15
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->bearingDrawable()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->bearingDrawable:Ljava/lang/Integer;

    .line 17
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->bearingName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->bearingName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->bearingTintColor()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->bearingTintColor:Ljava/lang/Integer;

    .line 19
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundTintColor()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundTintColor:Ljava/lang/Integer;

    .line 20
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundTintColor()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundTintColor:Ljava/lang/Integer;

    .line 21
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleTintColor()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundStaleTintColor:Ljava/lang/Integer;

    .line 22
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleTintColor()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundStaleTintColor:Ljava/lang/Integer;

    .line 23
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->elevation()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->elevation:Ljava/lang/Float;

    .line 24
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->enableStaleState:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->staleStateTimeout()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->staleStateTimeout:Ljava/lang/Long;

    .line 26
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->padding()[I

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->padding:[I

    .line 27
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->maxZoomIconScale()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->maxZoomIconScale:Ljava/lang/Float;

    .line 28
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->minZoomIconScale()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->minZoomIconScale:Ljava/lang/Float;

    .line 29
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingGesturesManagement:Ljava/lang/Boolean;

    .line 30
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingInitialMoveThreshold:Ljava/lang/Float;

    .line 31
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingMultiFingerMoveThreshold:Ljava/lang/Float;

    .line 32
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    .line 33
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->layerAbove:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->layerBelow:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->bearingOnTop()Z

    move-result v0

    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->bearingOnTop:Z

    .line 36
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingAnimationDurationMultiplier()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingAnimationDurationMultiplier:Ljava/lang/Float;

    .line 37
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->compassAnimationEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->compassAnimationEnabled:Ljava/lang/Boolean;

    .line 38
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAnimationEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->accuracyAnimationEnabled:Ljava/lang/Boolean;

    .line 39
    invoke-static {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->c(Lorg/maplibre/android/location/LocationComponentOptions;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseEnabled:Ljava/lang/Boolean;

    .line 40
    invoke-static {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->d(Lorg/maplibre/android/location/LocationComponentOptions;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseFadeEnabled:Ljava/lang/Boolean;

    .line 41
    invoke-static {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->b(Lorg/maplibre/android/location/LocationComponentOptions;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseColor:I

    .line 42
    invoke-static {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->g(Lorg/maplibre/android/location/LocationComponentOptions;)F

    move-result v0

    iput v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseSingleDuration:F

    .line 43
    invoke-static {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->f(Lorg/maplibre/android/location/LocationComponentOptions;)F

    move-result v0

    iput v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseMaxRadius:F

    .line 44
    invoke-static {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->a(Lorg/maplibre/android/location/LocationComponentOptions;)F

    move-result v0

    iput v0, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseAlpha:F

    .line 45
    invoke-static {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->e(Lorg/maplibre/android/location/LocationComponentOptions;)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/maplibre/android/location/LocationComponentOptions;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;-><init>(Lorg/maplibre/android/location/LocationComponentOptions;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/location/LocationComponentOptions$Builder;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->accuracyAnimationEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic b(Lorg/maplibre/android/location/LocationComponentOptions$Builder;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->compassAnimationEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic c(Lorg/maplibre/android/location/LocationComponentOptions$Builder;F)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseAlpha:F

    return-void
.end method

.method public static bridge synthetic d(Lorg/maplibre/android/location/LocationComponentOptions$Builder;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic e(Lorg/maplibre/android/location/LocationComponentOptions$Builder;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseFadeEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic f(Lorg/maplibre/android/location/LocationComponentOptions$Builder;F)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseMaxRadius:F

    return-void
.end method

.method public static bridge synthetic g(Lorg/maplibre/android/location/LocationComponentOptions$Builder;F)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseSingleDuration:F

    return-void
.end method


# virtual methods
.method public accuracyAlpha(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->accuracyAlpha:Ljava/lang/Float;

    return-object p0
.end method

.method public accuracyAnimationEnabled(Z)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->accuracyAnimationEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public accuracyColor(I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->accuracyColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public autoBuild()Lorg/maplibre/android/location/LocationComponentOptions;
    .locals 47

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->accuracyAlpha:Ljava/lang/Float;

    if-nez v1, :cond_0

    const-string v1, " accuracyAlpha"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->accuracyColor:Ljava/lang/Integer;

    if-nez v2, :cond_1

    const-string v2, " accuracyColor"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundDrawableStale:Ljava/lang/Integer;

    if-nez v2, :cond_2

    const-string v2, " backgroundDrawableStale"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundDrawableStale:Ljava/lang/Integer;

    if-nez v2, :cond_3

    const-string v2, " foregroundDrawableStale"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->gpsDrawable:Ljava/lang/Integer;

    if-nez v2, :cond_4

    const-string v2, " gpsDrawable"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundDrawable:Ljava/lang/Integer;

    if-nez v2, :cond_5

    const-string v2, " foregroundDrawable"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundDrawable:Ljava/lang/Integer;

    if-nez v2, :cond_6

    const-string v2, " backgroundDrawable"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->bearingDrawable:Ljava/lang/Integer;

    if-nez v2, :cond_7

    const-string v2, " bearingDrawable"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_7
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->elevation:Ljava/lang/Float;

    if-nez v2, :cond_8

    const-string v2, " elevation"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_8
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->enableStaleState:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    const-string v2, " enableStaleState"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->staleStateTimeout:Ljava/lang/Long;

    if-nez v2, :cond_a

    const-string v2, " staleStateTimeout"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_a
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->padding:[I

    if-nez v2, :cond_b

    const-string v2, " padding"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->maxZoomIconScale:Ljava/lang/Float;

    if-nez v2, :cond_c

    const-string v2, " maxZoomIconScale"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_c
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->minZoomIconScale:Ljava/lang/Float;

    if-nez v2, :cond_d

    const-string v2, " minZoomIconScale"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_d
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingGesturesManagement:Ljava/lang/Boolean;

    if-nez v2, :cond_e

    const-string v2, " trackingGesturesManagement"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_e
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingInitialMoveThreshold:Ljava/lang/Float;

    if-nez v2, :cond_f

    const-string v2, " trackingInitialMoveThreshold"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_f
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingMultiFingerMoveThreshold:Ljava/lang/Float;

    if-nez v2, :cond_10

    const-string v2, " trackingMultiFingerMoveThreshold"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_10
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingAnimationDurationMultiplier:Ljava/lang/Float;

    if-nez v2, :cond_11

    const-string v2, " trackingAnimationDurationMultiplier"

    invoke-static {v1, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v3, Lorg/maplibre/android/location/LocationComponentOptions;

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->accuracyAlpha:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->accuracyColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundDrawableStale:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundStaleName:Ljava/lang/String;

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundDrawableStale:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundStaleName:Ljava/lang/String;

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->gpsDrawable:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->gpsName:Ljava/lang/String;

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundDrawable:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundName:Ljava/lang/String;

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundDrawable:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v15, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundName:Ljava/lang/String;

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->bearingDrawable:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->bearingName:Ljava/lang/String;

    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->bearingTintColor:Ljava/lang/Integer;

    move-object/from16 v17, v1

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundTintColor:Ljava/lang/Integer;

    move-object/from16 v19, v1

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundTintColor:Ljava/lang/Integer;

    move-object/from16 v20, v1

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundStaleTintColor:Ljava/lang/Integer;

    move-object/from16 v21, v1

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundStaleTintColor:Ljava/lang/Integer;

    move-object/from16 v22, v1

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->elevation:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v23

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->enableStaleState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->staleStateTimeout:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->padding:[I

    move-object/from16 v27, v1

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->maxZoomIconScale:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v28

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->minZoomIconScale:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v29

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingGesturesManagement:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingInitialMoveThreshold:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v31

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingMultiFingerMoveThreshold:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v32

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    move-object/from16 v33, v1

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->layerAbove:Ljava/lang/String;

    move-object/from16 v34, v1

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->layerBelow:Ljava/lang/String;

    move-object/from16 v35, v1

    iget-boolean v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->bearingOnTop:Z

    move/from16 v36, v1

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingAnimationDurationMultiplier:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v37

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->compassAnimationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->accuracyAnimationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v39

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseEnabled:Ljava/lang/Boolean;

    move-object/from16 v40, v1

    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseFadeEnabled:Ljava/lang/Boolean;

    move-object/from16 v41, v1

    iget v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    iget v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseSingleDuration:F

    move/from16 v43, v1

    iget v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseMaxRadius:F

    move/from16 v44, v1

    iget v1, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseAlpha:F

    iget-object v0, v0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v46, v0

    move/from16 v45, v1

    move-object/from16 v18, v2

    invoke-direct/range {v3 .. v46}, Lorg/maplibre/android/location/LocationComponentOptions;-><init>(FIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;FZJ[IFFZFFLandroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;ZFZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;FFFLandroid/view/animation/Interpolator;)V

    return-object v3

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public backgroundDrawable(I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundDrawable:Ljava/lang/Integer;

    return-object p0
.end method

.method public backgroundDrawableStale(I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundDrawableStale:Ljava/lang/Integer;

    return-object p0
.end method

.method public backgroundName(Ljava/lang/String;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundName:Ljava/lang/String;

    return-object p0
.end method

.method public backgroundStaleName(Ljava/lang/String;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundStaleName:Ljava/lang/String;

    return-object p0
.end method

.method public backgroundStaleTintColor(Ljava/lang/Integer;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundStaleTintColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public backgroundTintColor(Ljava/lang/Integer;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->backgroundTintColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public bearingDrawable(I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->bearingDrawable:Ljava/lang/Integer;

    return-object p0
.end method

.method public bearingName(Ljava/lang/String;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->bearingName:Ljava/lang/String;

    return-object p0
.end method

.method public bearingOnTop(Z)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->bearingOnTop:Z

    return-object p0
.end method

.method public bearingTintColor(Ljava/lang/Integer;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->bearingTintColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public build()Lorg/maplibre/android/location/LocationComponentOptions;
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->autoBuild()Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_b

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_b

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions;->elevation()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_a

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot set both layerAbove and layerBelow options. Choose one or the other."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseFadeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, " pulseFadeEnabled"

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, " pulseColor"

    invoke-static {v0, v3}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseSingleDuration()F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_4

    const-string v3, " pulseSingleDuration"

    invoke-static {v0, v3}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseMaxRadius()F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_5

    const-string v3, " pulseMaxRadius"

    invoke-static {v0, v3}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseAlpha()F

    move-result v3

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_6

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseAlpha()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    const-string v1, " pulseAlpha"

    invoke-static {v0, v1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, " pulseInterpolator"

    invoke-static {v0, v1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "You\'ve set up the following pulsing circle options but have not enabled the pulsing circle via the LocationComponentOptions builder:"

    const-string v2, ". Enable the pulsing circle if you\'re going to set pulsing options."

    invoke-static {v1, v0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_2
    return-object p0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid shadow size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions;->elevation()F

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ". Must be >= 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Accuracy alpha value must be between 0.0 and 1.0."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public compassAnimationEnabled(Ljava/lang/Boolean;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->compassAnimationEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public elevation(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->elevation:Ljava/lang/Float;

    return-object p0
.end method

.method public enableStaleState(Z)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->enableStaleState:Ljava/lang/Boolean;

    return-object p0
.end method

.method public foregroundDrawable(I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundDrawable:Ljava/lang/Integer;

    return-object p0
.end method

.method public foregroundDrawableStale(I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundDrawableStale:Ljava/lang/Integer;

    return-object p0
.end method

.method public foregroundName(Ljava/lang/String;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundName:Ljava/lang/String;

    return-object p0
.end method

.method public foregroundStaleName(Ljava/lang/String;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundStaleName:Ljava/lang/String;

    return-object p0
.end method

.method public foregroundStaleTintColor(Ljava/lang/Integer;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundStaleTintColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public foregroundTintColor(Ljava/lang/Integer;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->foregroundTintColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public gpsDrawable(I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->gpsDrawable:Ljava/lang/Integer;

    return-object p0
.end method

.method public gpsName(Ljava/lang/String;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->gpsName:Ljava/lang/String;

    return-object p0
.end method

.method public layerAbove(Ljava/lang/String;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->layerAbove:Ljava/lang/String;

    return-object p0
.end method

.method public layerBelow(Ljava/lang/String;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->layerBelow:Ljava/lang/String;

    return-object p0
.end method

.method public maxZoomIconScale(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->maxZoomIconScale:Ljava/lang/Float;

    return-object p0
.end method

.method public minZoomIconScale(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->minZoomIconScale:Ljava/lang/Float;

    return-object p0
.end method

.method public padding([I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->padding:[I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null padding"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pulseAlpha(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseAlpha:F

    return-object p0
.end method

.method public pulseColor(I)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseColor:I

    return-object p0
.end method

.method public pulseEnabled(Z)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public pulseFadeEnabled(Z)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseFadeEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public pulseInterpolator(Landroid/view/animation/Interpolator;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public pulseMaxRadius(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseMaxRadius:F

    return-object p0
.end method

.method public pulseSingleDuration(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->pulseSingleDuration:F

    return-object p0
.end method

.method public staleStateTimeout(J)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->staleStateTimeout:Ljava/lang/Long;

    return-object p0
.end method

.method public trackingAnimationDurationMultiplier(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingAnimationDurationMultiplier:Ljava/lang/Float;

    return-object p0
.end method

.method public trackingGesturesManagement(Z)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingGesturesManagement:Ljava/lang/Boolean;

    return-object p0
.end method

.method public trackingInitialMoveThreshold(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingInitialMoveThreshold:Ljava/lang/Float;

    return-object p0
.end method

.method public trackingMultiFingerMoveThreshold(F)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingMultiFingerMoveThreshold:Ljava/lang/Float;

    return-object p0
.end method

.method public trackingMultiFingerProtectedMoveArea(Landroid/graphics/RectF;)Lorg/maplibre/android/location/LocationComponentOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentOptions$Builder;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    return-object p0
.end method
