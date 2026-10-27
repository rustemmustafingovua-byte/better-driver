.class final Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;
.super Lorg/maplibre/android/gestures/ShoveGestureDetector$SimpleOnShoveGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/MapGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShoveGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/maps/MapGestureDetector;


# direct methods
.method private constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-direct {p0}, Lorg/maplibre/android/gestures/ShoveGestureDetector$SimpleOnShoveGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;)V

    return-void
.end method


# virtual methods
.method public onShove(Lorg/maplibre/android/gestures/ShoveGestureDetector;FF)Z
    .locals 9

    iget-object p3, p0, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p3}, Lorg/maplibre/android/maps/MapGestureDetector;->b(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/CameraChangeDispatcher;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    iget-object p3, p0, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p3}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object p3

    invoke-virtual {p3}, Lorg/maplibre/android/maps/Transform;->getTilt()D

    move-result-wide v1

    const p3, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, p3

    float-to-double p2, p2

    sub-double v3, v1, p2

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    invoke-static/range {v3 .. v8}, Lorg/maplibre/android/utils/MathUtils;->clamp(DDD)D

    move-result-wide p2

    iget-object v1, p0, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v1}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/maplibre/android/maps/Transform;->setTilt(Ljava/lang/Double;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->notifyOnShoveListeners(Lorg/maplibre/android/gestures/ShoveGestureDetector;)V

    return v0
.end method

.method public onShoveBegin(Lorg/maplibre/android/gestures/ShoveGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->isTiltGesturesEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->m(Lorg/maplibre/android/maps/MapGestureDetector;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->e(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getMoveGestureDetector()Lorg/maplibre/android/gestures/MoveGestureDetector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/maplibre/android/gestures/ProgressiveGesture;->setEnabled(Z)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->notifyOnShoveBeginListeners(Lorg/maplibre/android/gestures/ShoveGestureDetector;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onShoveEnd(Lorg/maplibre/android/gestures/ShoveGestureDetector;FF)V
    .locals 0

    iget-object p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p2}, Lorg/maplibre/android/maps/MapGestureDetector;->o(Lorg/maplibre/android/maps/MapGestureDetector;)V

    iget-object p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p2}, Lorg/maplibre/android/maps/MapGestureDetector;->e(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object p2

    invoke-virtual {p2}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getMoveGestureDetector()Lorg/maplibre/android/gestures/MoveGestureDetector;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lorg/maplibre/android/gestures/ProgressiveGesture;->setEnabled(Z)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->notifyOnShoveEndListeners(Lorg/maplibre/android/gestures/ShoveGestureDetector;)V

    return-void
.end method
