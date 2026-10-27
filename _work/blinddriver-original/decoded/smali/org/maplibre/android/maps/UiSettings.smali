.class public final Lorg/maplibre/android/maps/UiSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attributionDialogManager:Lorg/maplibre/android/maps/AttributionDialogManager;

.field private final attributionsMargins:[I

.field attributionsView:Landroid/widget/ImageView;

.field private clockwiseBearing:D

.field private final compassMargins:[I

.field compassView:Lorg/maplibre/android/maps/widgets/CompassView;

.field private deselectMarkersOnTap:Z

.field private disableRotateWhenScaling:Z

.field private doubleTapGesturesEnabled:Z

.field private flingAnimationBaseTime:J

.field private flingThreshold:J

.field private flingVelocityAnimationEnabled:Z

.field private final focalPointChangeListener:Lorg/maplibre/android/maps/FocalPointChangeListener;

.field private horizontalScrollGesturesEnabled:Z

.field private increaseRotateThresholdWhenScaling:Z

.field private increaseScaleThresholdWhenRotating:Z

.field isAttributionInitialized:Z

.field isCompassInitialized:Z

.field isLogoInitialized:Z

.field private final logoMargins:[I

.field logoView:Landroid/widget/ImageView;

.field private final mapView:Lorg/maplibre/android/maps/MapView;

.field private final pixelRatio:F

.field private final projection:Lorg/maplibre/android/maps/Projection;

.field private quickZoomGesturesEnabled:Z

.field private rotateGesturesEnabled:Z

.field private rotateVelocityAnimationEnabled:Z

.field private scaleVelocityAnimationEnabled:Z

.field private scrollGesturesEnabled:Z

.field private tiltGesturesEnabled:Z

.field private userProvidedFocalPoint:Landroid/graphics/PointF;

.field private zoomGesturesEnabled:Z

.field private zoomRate:F


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/Projection;Lorg/maplibre/android/maps/FocalPointChangeListener;FLorg/maplibre/android/maps/MapView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->compassMargins:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsMargins:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->logoMargins:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->rotateGesturesEnabled:Z

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->tiltGesturesEnabled:Z

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->horizontalScrollGesturesEnabled:Z

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->doubleTapGesturesEnabled:Z

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->quickZoomGesturesEnabled:Z

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->scaleVelocityAnimationEnabled:Z

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->rotateVelocityAnimationEnabled:Z

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->flingVelocityAnimationEnabled:Z

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->increaseRotateThresholdWhenScaling:Z

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->disableRotateWhenScaling:Z

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->increaseScaleThresholdWhenRotating:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/maplibre/android/maps/UiSettings;->zoomRate:F

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->deselectMarkersOnTap:Z

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lorg/maplibre/android/maps/UiSettings;->flingAnimationBaseTime:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/maplibre/android/maps/UiSettings;->flingThreshold:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isCompassInitialized:Z

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isAttributionInitialized:Z

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isLogoInitialized:Z

    iput-object p1, p0, Lorg/maplibre/android/maps/UiSettings;->projection:Lorg/maplibre/android/maps/Projection;

    iput-object p2, p0, Lorg/maplibre/android/maps/UiSettings;->focalPointChangeListener:Lorg/maplibre/android/maps/FocalPointChangeListener;

    iput p3, p0, Lorg/maplibre/android/maps/UiSettings;->pixelRatio:F

    iput-object p4, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    return-void
.end method

.method private initialiseAttribution(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isAttributionInitialized:Z

    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapView;->initialiseAttributionView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getAttributionEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setAttributionEnabled(Z)V

    invoke-virtual {p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getAttributionGravity()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setAttributionGravity(I)V

    invoke-virtual {p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getAttributionMargins()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/maplibre/android/maps/UiSettings;->setAttributionMargins(Landroid/content/Context;[I)V

    invoke-virtual {p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getAttributionTintColor()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/maplibre/android/utils/ColorUtils;->getPrimaryColor(Landroid/content/Context;)I

    move-result p2

    :goto_0
    invoke-virtual {p0, p2}, Lorg/maplibre/android/maps/UiSettings;->setAttributionTintColor(I)V

    return-void
.end method

.method private initialiseCompass(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/res/Resources;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isCompassInitialized:Z

    iget-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView;->initialiseCompassView()Lorg/maplibre/android/maps/widgets/CompassView;

    move-result-object v1

    iput-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getCompassEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/UiSettings;->setCompassEnabled(Z)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getCompassGravity()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/UiSettings;->setCompassGravity(I)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getCompassMargins()[I

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    aget v2, v1, v2

    aget v0, v1, v0

    const/4 v3, 0x2

    aget v3, v1, v3

    const/4 v4, 0x3

    aget v1, v1, v4

    invoke-virtual {p0, v2, v0, v3, v1}, Lorg/maplibre/android/maps/UiSettings;->setCompassMargins(IIII)V

    goto :goto_0

    :cond_0
    sget v0, Lorg/maplibre/android/R$dimen;->maplibre_four_dp:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0, v0, v0, v0}, Lorg/maplibre/android/maps/UiSettings;->setCompassMargins(IIII)V

    :goto_0
    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getCompassFadeFacingNorth()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setCompassFadeFacingNorth(Z)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getCompassImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    sget v0, Lorg/maplibre/android/R$drawable;->maplibre_compass_icon:I

    sget v1, Lk3/d;->a:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage(Landroid/graphics/drawable/Drawable;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    :cond_1
    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getCompassImage()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->setCompassImage(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initialiseGestures(Lorg/maplibre/android/maps/MapLibreMapOptions;)V
    .locals 1

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getZoomGesturesEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getScrollGesturesEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getHorizontalScrollGesturesEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setHorizontalScrollGesturesEnabled(Z)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getRotateGesturesEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getTiltGesturesEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getDoubleTapGesturesEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setDoubleTapGesturesEnabled(Z)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getQuickZoomGesturesEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->setQuickZoomGesturesEnabled(Z)V

    return-void
.end method

.method private initialiseLogo(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isLogoInitialized:Z

    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapView;->initialiseLogoView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getLogoEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setLogoEnabled(Z)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getLogoGravity()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setLogoGravity(I)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getLogoMargins()[I

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/maplibre/android/maps/UiSettings;->setLogoMargins(Landroid/content/res/Resources;[I)V

    return-void
.end method

.method private restoreAttribution(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "maplibre_atrrEnabled"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/maplibre/android/maps/UiSettings;->isAttributionInitialized:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView;->initialiseAttributionView()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/maplibre/android/maps/UiSettings;->isAttributionInitialized:Z

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setAttributionEnabled(Z)V

    const-string v0, "maplibre_attrGravity"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setAttributionGravity(I)V

    const-string v0, "maplibre_attrMarginLeft"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "maplibre_attrMarginTop"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "maplibre_attrMarginRight"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "maplibre_atrrMarginBottom"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/maplibre/android/maps/UiSettings;->setAttributionMargins(IIII)V

    return-void
.end method

.method private restoreCompass(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "maplibre_compassEnabled"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/maplibre/android/maps/UiSettings;->isCompassInitialized:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView;->initialiseCompassView()Lorg/maplibre/android/maps/widgets/CompassView;

    move-result-object v1

    iput-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/maplibre/android/maps/UiSettings;->isCompassInitialized:Z

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setCompassEnabled(Z)V

    const-string v0, "maplibre_compassGravity"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setCompassGravity(I)V

    const-string v0, "maplibre_compassMarginLeft"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "maplibre_compassMarginTop"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "maplibre_compassMarginRight"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "maplibre_compassMarginBottom"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/maplibre/android/maps/UiSettings;->setCompassMargins(IIII)V

    const-string v0, "maplibre_compassFade"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setCompassFadeFacingNorth(Z)V

    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "maplibre_compassImage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/maplibre/android/utils/BitmapUtils;->getDrawableFromByteArray(Landroid/content/Context;[B)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->setCompassImage(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private restoreDeselectMarkersOnTap(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "maplibre_deselectMarkerOnTap"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->setDeselectMarkersOnTap(Z)V

    return-void
.end method

.method private restoreFocalPoint(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "maplibre_userFocalPoint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->setFocalPoint(Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method private restoreGestures(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "maplibre_horizontalScrollEnabled"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setHorizontalScrollGesturesEnabled(Z)V

    const-string v0, "maplibre_zoomEnabled"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    const-string v0, "maplibre_scrollEnabled"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    const-string v0, "maplibre_rotateEnabled"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    const-string v0, "maplibre_tiltEnabled"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    const-string v0, "maplibre_doubleTapEnabled"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setDoubleTapGesturesEnabled(Z)V

    const-string v0, "maplibre_scaleAnimationEnabled"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setScaleVelocityAnimationEnabled(Z)V

    const-string v0, "maplibre_rotateAnimationEnabled"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setRotateVelocityAnimationEnabled(Z)V

    const-string v0, "maplibre_flingAnimationEnabled"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setFlingVelocityAnimationEnabled(Z)V

    const-string v0, "maplibre_increaseRotateThreshold"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setIncreaseRotateThresholdWhenScaling(Z)V

    const-string v0, "maplibre_disableRotateWhenScaling"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setDisableRotateWhenScaling(Z)V

    const-string v0, "maplibre_increaseScaleThreshold"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setIncreaseScaleThresholdWhenRotating(Z)V

    const-string v0, "maplibre_quickZoom"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setQuickZoomGesturesEnabled(Z)V

    const-string v0, "maplibre_zoomRate"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->setZoomRate(F)V

    return-void
.end method

.method private restoreLogo(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "maplibre_logoEnabled"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/maplibre/android/maps/UiSettings;->isLogoInitialized:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView;->initialiseLogoView()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/maplibre/android/maps/UiSettings;->isLogoInitialized:Z

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setLogoEnabled(Z)V

    const-string v0, "maplibre_logoGravity"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setLogoGravity(I)V

    const-string v0, "maplibre_logoMarginLeft"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "maplibre_logoMarginTop"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "maplibre_logoMarginRight"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "maplibre_logoMarginBottom"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/maplibre/android/maps/UiSettings;->setLogoMargins(IIII)V

    return-void
.end method

.method private saveAttribution(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "maplibre_attrGravity"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getAttributionGravity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maplibre_attrMarginLeft"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getAttributionMarginLeft()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maplibre_attrMarginTop"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getAttributionMarginTop()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maplibre_attrMarginRight"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getAttributionMarginRight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maplibre_atrrMarginBottom"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getAttributionMarginBottom()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maplibre_atrrEnabled"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isAttributionEnabled()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private saveCompass(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "maplibre_compassEnabled"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isCompassEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "maplibre_compassGravity"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getCompassGravity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maplibre_compassMarginLeft"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getCompassMarginLeft()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maplibre_compassMarginTop"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getCompassMarginTop()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maplibre_compassMarginBottom"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getCompassMarginBottom()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maplibre_compassMarginRight"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getCompassMarginRight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maplibre_compassFade"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isCompassFadeWhenFacingNorth()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getCompassImage()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/utils/BitmapUtils;->getByteArrayFromDrawable(Landroid/graphics/drawable/Drawable;)[B

    move-result-object p0

    const-string v0, "maplibre_compassImage"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method private saveDeselectMarkersOnTap(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "maplibre_deselectMarkerOnTap"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isDeselectMarkersOnTap()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private saveFocalPoint(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "maplibre_userFocalPoint"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method private saveGestures(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "maplibre_horizontalScrollEnabled"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isHorizontalScrollGesturesEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "maplibre_zoomEnabled"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "maplibre_scrollEnabled"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "maplibre_rotateEnabled"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isRotateGesturesEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "maplibre_tiltEnabled"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isTiltGesturesEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "maplibre_doubleTapEnabled"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isDoubleTapGesturesEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "maplibre_scaleAnimationEnabled"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isScaleVelocityAnimationEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "maplibre_rotateAnimationEnabled"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isRotateVelocityAnimationEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "maplibre_flingAnimationEnabled"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isFlingVelocityAnimationEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "maplibre_increaseRotateThreshold"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isIncreaseRotateThresholdWhenScaling()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "maplibre_disableRotateWhenScaling"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isDisableRotateWhenScaling()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "maplibre_increaseScaleThreshold"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isIncreaseScaleThresholdWhenRotating()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "maplibre_quickZoom"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isQuickZoomGesturesEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "maplibre_zoomRate"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getZoomRate()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method private saveLogo(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "maplibre_logoGravity"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getLogoGravity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maplibre_logoMarginLeft"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getLogoMarginLeft()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maplibre_logoMarginTop"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getLogoMarginTop()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maplibre_logoMarginRight"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getLogoMarginRight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maplibre_logoMarginBottom"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getLogoMarginBottom()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maplibre_logoEnabled"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isLogoEnabled()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private setAttributionMargins(Landroid/content/Context;[I)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    aget p1, p2, p1

    const/4 v0, 0x1

    aget v0, p2, v0

    const/4 v1, 0x2

    aget v1, p2, v1

    const/4 v2, 0x3

    aget p2, p2, v2

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/maplibre/android/maps/UiSettings;->setAttributionMargins(IIII)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 3
    sget p2, Lorg/maplibre/android/R$dimen;->maplibre_four_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 4
    sget v0, Lorg/maplibre/android/R$dimen;->maplibre_ninety_two_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 5
    invoke-virtual {p0, p1, p2, p2, p2}, Lorg/maplibre/android/maps/UiSettings;->setAttributionMargins(IIII)V

    return-void
.end method

.method private setLogoMargins(Landroid/content/res/Resources;[I)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    aget p1, p2, p1

    const/4 v0, 0x1

    aget v0, p2, v0

    const/4 v1, 0x2

    aget v1, p2, v1

    const/4 v2, 0x3

    aget p2, p2, v2

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/maplibre/android/maps/UiSettings;->setLogoMargins(IIII)V

    return-void

    .line 2
    :cond_0
    sget p2, Lorg/maplibre/android/R$dimen;->maplibre_four_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 3
    invoke-virtual {p0, p1, p1, p1, p1}, Lorg/maplibre/android/maps/UiSettings;->setLogoMargins(IIII)V

    return-void
.end method

.method private setWidgetGravity(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setWidgetMargins(Landroid/view/View;[IIIII)V
    .locals 0

    const/4 p0, 0x0

    aput p3, p2, p0

    const/4 p0, 0x1

    aput p4, p2, p0

    const/4 p0, 0x2

    aput p5, p2, p0

    const/4 p0, 0x3

    aput p6, p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public areAllGesturesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->rotateGesturesEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->tiltGesturesEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->doubleTapGesturesEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/UiSettings;->quickZoomGesturesEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAttributionDialogManager()Lorg/maplibre/android/maps/AttributionDialogManager;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionDialogManager:Lorg/maplibre/android/maps/AttributionDialogManager;

    return-object p0
.end method

.method public getAttributionGravity()I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getAttributionMarginBottom()I
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsMargins:[I

    const/4 v0, 0x3

    aget p0, p0, v0

    return p0
.end method

.method public getAttributionMarginLeft()I
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsMargins:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getAttributionMarginRight()I
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsMargins:[I

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public getAttributionMarginTop()I
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsMargins:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public getCompassGravity()I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getCompassImage()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/widgets/CompassView;->getCompassImage()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCompassMarginBottom()I
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->compassMargins:[I

    const/4 v0, 0x3

    aget p0, p0, v0

    return p0
.end method

.method public getCompassMarginLeft()I
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->compassMargins:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getCompassMarginRight()I
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->compassMargins:[I

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public getCompassMarginTop()I
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->compassMargins:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public getFlingAnimationBaseTime()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/maps/UiSettings;->flingAnimationBaseTime:J

    return-wide v0
.end method

.method public getFlingThreshold()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/maps/UiSettings;->flingThreshold:J

    return-wide v0
.end method

.method public getFocalPoint()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->userProvidedFocalPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getHeight()F
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->projection:Lorg/maplibre/android/maps/Projection;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Projection;->getHeight()F

    move-result p0

    return p0
.end method

.method public getLogoGravity()I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getLogoMarginBottom()I
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->logoMargins:[I

    const/4 v0, 0x3

    aget p0, p0, v0

    return p0
.end method

.method public getLogoMarginLeft()I
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->logoMargins:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getLogoMarginRight()I
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->logoMargins:[I

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public getLogoMarginTop()I
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->logoMargins:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public getPixelRatio()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/maps/UiSettings;->pixelRatio:F

    return p0
.end method

.method public getWidth()F
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->projection:Lorg/maplibre/android/maps/Projection;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Projection;->getWidth()F

    move-result p0

    return p0
.end method

.method public getZoomRate()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/maps/UiSettings;->zoomRate:F

    return p0
.end method

.method public initialise(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/maplibre/android/maps/UiSettings;->initialiseGestures(Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    invoke-virtual {p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getCompassEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2, v0}, Lorg/maplibre/android/maps/UiSettings;->initialiseCompass(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/res/Resources;)V

    :cond_0
    invoke-virtual {p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getLogoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, v0}, Lorg/maplibre/android/maps/UiSettings;->initialiseLogo(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/res/Resources;)V

    :cond_1
    invoke-virtual {p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getAttributionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/maps/UiSettings;->initialiseAttribution(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    :cond_2
    return-void
.end method

.method public invalidate()V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getLogoMarginLeft()I

    move-result v0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getLogoMarginTop()I

    move-result v1

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getLogoMarginRight()I

    move-result v2

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getLogoMarginBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/maplibre/android/maps/UiSettings;->setLogoMargins(IIII)V

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->isCompassEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setCompassEnabled(Z)V

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getCompassMarginLeft()I

    move-result v0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getCompassMarginTop()I

    move-result v1

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getCompassMarginRight()I

    move-result v2

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getCompassMarginBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/maplibre/android/maps/UiSettings;->setCompassMargins(IIII)V

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getAttributionMarginLeft()I

    move-result v0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getAttributionMarginTop()I

    move-result v1

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getAttributionMarginRight()I

    move-result v2

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getAttributionMarginBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/maplibre/android/maps/UiSettings;->setAttributionMargins(IIII)V

    return-void
.end method

.method public isAttributionEnabled()Z
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public isCompassEnabled()Z
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCompassFadeWhenFacingNorth()Z
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/widgets/CompassView;->isFadeCompassViewFacingNorth()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDeselectMarkersOnTap()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/UiSettings;->deselectMarkersOnTap:Z

    return p0
.end method

.method public isDisableRotateWhenScaling()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/UiSettings;->disableRotateWhenScaling:Z

    return p0
.end method

.method public isDoubleTapGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/UiSettings;->doubleTapGesturesEnabled:Z

    return p0
.end method

.method public isFlingVelocityAnimationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/UiSettings;->flingVelocityAnimationEnabled:Z

    return p0
.end method

.method public isHorizontalScrollGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/UiSettings;->horizontalScrollGesturesEnabled:Z

    return p0
.end method

.method public isIncreaseRotateThresholdWhenScaling()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Lorg/maplibre/android/maps/UiSettings;->increaseRotateThresholdWhenScaling:Z

    return p0
.end method

.method public isIncreaseScaleThresholdWhenRotating()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/UiSettings;->increaseScaleThresholdWhenRotating:Z

    return p0
.end method

.method public isLogoEnabled()Z
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public isQuickZoomGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/UiSettings;->quickZoomGesturesEnabled:Z

    return p0
.end method

.method public isRotateGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/UiSettings;->rotateGesturesEnabled:Z

    return p0
.end method

.method public isRotateVelocityAnimationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/UiSettings;->rotateVelocityAnimationEnabled:Z

    return p0
.end method

.method public isScaleVelocityAnimationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/UiSettings;->scaleVelocityAnimationEnabled:Z

    return p0
.end method

.method public isScrollGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    return p0
.end method

.method public isTiltGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/UiSettings;->tiltGesturesEnabled:Z

    return p0
.end method

.method public isZoomGesturesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->restoreGestures(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->restoreCompass(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->restoreLogo(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->restoreAttribution(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->restoreDeselectMarkersOnTap(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->restoreFocalPoint(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->saveGestures(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->saveCompass(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->saveLogo(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->saveAttribution(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->saveDeselectMarkersOnTap(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->saveFocalPoint(Landroid/os/Bundle;)V

    return-void
.end method

.method public setAllGesturesEnabled(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->setDoubleTapGesturesEnabled(Z)V

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->setQuickZoomGesturesEnabled(Z)V

    return-void
.end method

.method public setAllVelocityAnimationsEnabled(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->setScaleVelocityAnimationEnabled(Z)V

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->setRotateVelocityAnimationEnabled(Z)V

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->setFlingVelocityAnimationEnabled(Z)V

    return-void
.end method

.method public setAttributionDialogManager(Lorg/maplibre/android/maps/AttributionDialogManager;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/UiSettings;->attributionDialogManager:Lorg/maplibre/android/maps/AttributionDialogManager;

    return-void
.end method

.method public setAttributionEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isAttributionInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    iget-object v1, v1, Lorg/maplibre/android/maps/MapView;->maplibreMapOptions:Lorg/maplibre/android/maps/MapLibreMapOptions;

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/maps/UiSettings;->initialiseAttribution(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setAttributionGravity(I)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/maplibre/android/maps/UiSettings;->setWidgetGravity(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setAttributionMargins(IIII)V
    .locals 7

    .line 6
    iget-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 7
    iget-object v2, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsMargins:[I

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/maplibre/android/maps/UiSettings;->setWidgetMargins(Landroid/view/View;[IIIII)V

    :cond_0
    return-void
.end method

.method public setAttributionTintColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/maplibre/android/R$color;->maplibre_blue:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p0, p1}, Lorg/maplibre/android/utils/ColorUtils;->setTintList(Landroid/widget/ImageView;I)V

    return-void

    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    invoke-static {p0, p1}, Lorg/maplibre/android/utils/ColorUtils;->setTintList(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public setCompassEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isCompassInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    iget-object v1, v0, Lorg/maplibre/android/maps/MapView;->maplibreMapOptions:Lorg/maplibre/android/maps/MapLibreMapOptions;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/maplibre/android/maps/UiSettings;->initialiseCompass(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/res/Resources;)V

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/widgets/CompassView;->setEnabled(Z)V

    iget-object p1, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    iget-wide v0, p0, Lorg/maplibre/android/maps/UiSettings;->clockwiseBearing:D

    invoke-virtual {p1, v0, v1}, Lorg/maplibre/android/maps/widgets/CompassView;->update(D)V

    :cond_1
    return-void
.end method

.method public setCompassFadeFacingNorth(Z)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/widgets/CompassView;->fadeCompassViewFacingNorth(Z)V

    :cond_0
    return-void
.end method

.method public setCompassGravity(I)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/maplibre/android/maps/UiSettings;->setWidgetGravity(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setCompassImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/widgets/CompassView;->setCompassImage(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCompassMargins(IIII)V
    .locals 7

    iget-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/maplibre/android/maps/UiSettings;->compassMargins:[I

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/maplibre/android/maps/UiSettings;->setWidgetMargins(Landroid/view/View;[IIIII)V

    :cond_0
    return-void
.end method

.method public setDeselectMarkersOnTap(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/UiSettings;->deselectMarkersOnTap:Z

    return-void
.end method

.method public setDisableRotateWhenScaling(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/UiSettings;->disableRotateWhenScaling:Z

    return-void
.end method

.method public setDoubleTapGesturesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/UiSettings;->doubleTapGesturesEnabled:Z

    return-void
.end method

.method public setFlingAnimationBaseTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/maplibre/android/maps/UiSettings;->flingAnimationBaseTime:J

    return-void
.end method

.method public setFlingThreshold(J)V
    .locals 0

    iput-wide p1, p0, Lorg/maplibre/android/maps/UiSettings;->flingThreshold:J

    return-void
.end method

.method public setFlingVelocityAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/UiSettings;->flingVelocityAnimationEnabled:Z

    return-void
.end method

.method public setFocalPoint(Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/UiSettings;->userProvidedFocalPoint:Landroid/graphics/PointF;

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->focalPointChangeListener:Lorg/maplibre/android/maps/FocalPointChangeListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/FocalPointChangeListener;->onFocalPointChanged(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setHorizontalScrollGesturesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/UiSettings;->horizontalScrollGesturesEnabled:Z

    return-void
.end method

.method public setIncreaseRotateThresholdWhenScaling(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lorg/maplibre/android/maps/UiSettings;->increaseRotateThresholdWhenScaling:Z

    return-void
.end method

.method public setIncreaseScaleThresholdWhenRotating(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/UiSettings;->increaseScaleThresholdWhenRotating:Z

    return-void
.end method

.method public setLogoEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isLogoInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    iget-object v1, v0, Lorg/maplibre/android/maps/MapView;->maplibreMapOptions:Lorg/maplibre/android/maps/MapLibreMapOptions;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/maplibre/android/maps/UiSettings;->initialiseLogo(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/res/Resources;)V

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setLogoGravity(I)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/maplibre/android/maps/UiSettings;->setWidgetGravity(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setLogoMargins(IIII)V
    .locals 7

    .line 4
    iget-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lorg/maplibre/android/maps/UiSettings;->logoMargins:[I

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/maplibre/android/maps/UiSettings;->setWidgetMargins(Landroid/view/View;[IIIII)V

    :cond_0
    return-void
.end method

.method public setQuickZoomGesturesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/UiSettings;->quickZoomGesturesEnabled:Z

    return-void
.end method

.method public setRotateGesturesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/UiSettings;->rotateGesturesEnabled:Z

    return-void
.end method

.method public setRotateVelocityAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/UiSettings;->rotateVelocityAnimationEnabled:Z

    return-void
.end method

.method public setScaleVelocityAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/UiSettings;->scaleVelocityAnimationEnabled:Z

    return-void
.end method

.method public setScrollGesturesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    return-void
.end method

.method public setTiltGesturesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/UiSettings;->tiltGesturesEnabled:Z

    return-void
.end method

.method public setZoomGesturesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    return-void
.end method

.method public setZoomRate(F)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/maps/UiSettings;->zoomRate:F

    return-void
.end method

.method public update(Lorg/maplibre/android/camera/CameraPosition;)V
    .locals 2

    iget-wide v0, p1, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/maplibre/android/maps/UiSettings;->clockwiseBearing:D

    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0, v1}, Lorg/maplibre/android/maps/widgets/CompassView;->update(D)V

    :cond_0
    return-void
.end method
