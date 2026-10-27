.class final Lorg/maplibre/android/maps/MapKeyListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;
    }
.end annotation


# instance fields
.field private currentTrackballLongPressTimeOut:Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;

.field private final mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

.field private final transform:Lorg/maplibre/android/maps/Transform;

.field private final uiSettings:Lorg/maplibre/android/maps/UiSettings;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/maps/UiSettings;Lorg/maplibre/android/maps/MapGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener;->transform:Lorg/maplibre/android/maps/Transform;

    iput-object p2, p0, Lorg/maplibre/android/maps/MapKeyListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    iput-object p3, p0, Lorg/maplibre/android/maps/MapKeyListener;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/maps/MapKeyListener;)Lorg/maplibre/android/maps/MapGestureDetector;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapKeyListener;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/maplibre/android/maps/MapKeyListener;)Lorg/maplibre/android/maps/UiSettings;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapKeyListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/maplibre/android/maps/MapKeyListener;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/maplibre/android/maps/MapKeyListener;->currentTrackballLongPressTimeOut:Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    :goto_0
    move-wide v3, v0

    goto :goto_1

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :goto_1
    const/16 v0, 0x42

    const/4 v1, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    iget-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    iget-object v5, p0, Lorg/maplibre/android/maps/MapKeyListener;->transform:Lorg/maplibre/android/maps/Transform;

    neg-double v6, v3

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/maplibre/android/maps/Transform;->moveBy(DDJ)V

    return v1

    :pswitch_1
    iget-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    iget-object v2, p0, Lorg/maplibre/android/maps/MapKeyListener;->transform:Lorg/maplibre/android/maps/Transform;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/maplibre/android/maps/Transform;->moveBy(DDJ)V

    return v1

    :pswitch_2
    iget-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    iget-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    iget-object v5, p0, Lorg/maplibre/android/maps/MapKeyListener;->transform:Lorg/maplibre/android/maps/Transform;

    neg-double v8, v3

    const-wide/16 v10, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/maplibre/android/maps/Transform;->moveBy(DDJ)V

    return v1

    :pswitch_3
    iget-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    iget-object v2, p0, Lorg/maplibre/android/maps/MapKeyListener;->transform:Lorg/maplibre/android/maps/Transform;

    move-wide v5, v3

    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/maplibre/android/maps/Transform;->moveBy(DDJ)V

    return v1

    :cond_5
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 p2, 0x17

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    const/16 p2, 0x42

    if-eq p1, p2, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lorg/maplibre/android/maps/MapKeyListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {p2}, Lorg/maplibre/android/maps/UiSettings;->getWidth()F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iget-object v1, p0, Lorg/maplibre/android/maps/MapKeyListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {v1}, Lorg/maplibre/android/maps/UiSettings;->getHeight()F

    move-result v1

    div-float/2addr v1, v0

    invoke-direct {p1, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapKeyListener;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/MapGestureDetector;->zoomOutAnimated(Landroid/graphics/PointF;Z)V

    return p2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x17

    if-eq p1, p2, :cond_1

    const/16 p2, 0x42

    if-eq p1, p2, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lorg/maplibre/android/maps/MapKeyListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {p2}, Lorg/maplibre/android/maps/UiSettings;->getWidth()F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iget-object v1, p0, Lorg/maplibre/android/maps/MapKeyListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {v1}, Lorg/maplibre/android/maps/UiSettings;->getHeight()F

    move-result v1

    div-float/2addr v1, v0

    invoke-direct {p1, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapKeyListener;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/MapGestureDetector;->zoomInAnimated(Landroid/graphics/PointF;Z)V

    return p2
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    return v3

    :cond_0
    iget-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener;->currentTrackballLongPressTimeOut:Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;->cancel()V

    iput-object v1, p0, Lorg/maplibre/android/maps/MapKeyListener;->currentTrackballLongPressTimeOut:Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lorg/maplibre/android/maps/MapKeyListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    iget-object v0, p0, Lorg/maplibre/android/maps/MapKeyListener;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    iget-object v3, p0, Lorg/maplibre/android/maps/MapKeyListener;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v4, -0x3fdc000000000000L    # -10.0

    mul-double/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-double p0, p0

    mul-double v6, p0, v4

    const-wide/16 v8, 0x0

    move-wide v4, v0

    invoke-virtual/range {v3 .. v9}, Lorg/maplibre/android/maps/Transform;->moveBy(DDJ)V

    return v2

    :cond_4
    iget-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    return v3

    :cond_5
    iget-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener;->currentTrackballLongPressTimeOut:Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;

    if-eqz p1, :cond_6

    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lorg/maplibre/android/maps/MapKeyListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->getWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v3, p0, Lorg/maplibre/android/maps/MapKeyListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {v3}, Lorg/maplibre/android/maps/UiSettings;->getHeight()F

    move-result v3

    div-float/2addr v3, v1

    invoke-direct {p1, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapKeyListener;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {p0, p1, v2}, Lorg/maplibre/android/maps/MapGestureDetector;->zoomInAnimated(Landroid/graphics/PointF;Z)V

    :cond_6
    return v2

    :cond_7
    iget-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener;->currentTrackballLongPressTimeOut:Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;->cancel()V

    iput-object v1, p0, Lorg/maplibre/android/maps/MapKeyListener;->currentTrackballLongPressTimeOut:Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;

    :cond_8
    new-instance p1, Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;

    invoke-direct {p1, p0}, Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;-><init>(Lorg/maplibre/android/maps/MapKeyListener;)V

    iput-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener;->currentTrackballLongPressTimeOut:Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapKeyListener;->currentTrackballLongPressTimeOut:Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2
.end method
