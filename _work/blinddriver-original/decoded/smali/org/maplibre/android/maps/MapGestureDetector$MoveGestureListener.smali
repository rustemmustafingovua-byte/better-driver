.class final Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;
.super Lorg/maplibre/android/gestures/MoveGestureDetector$SimpleOnMoveGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/MapGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MoveGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/maps/MapGestureDetector;


# direct methods
.method private constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-direct {p0}, Lorg/maplibre/android/gestures/MoveGestureDetector$SimpleOnMoveGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;)V

    return-void
.end method


# virtual methods
.method public onMove(Lorg/maplibre/android/gestures/MoveGestureDetector;FF)Z
    .locals 9

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v2, p2, v0

    if-nez v2, :cond_1

    cmpl-float v2, p3, v0

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, p0, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v2}, Lorg/maplibre/android/maps/MapGestureDetector;->b(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/CameraChangeDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    iget-object v2, p0, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v2}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/maplibre/android/maps/UiSettings;->isHorizontalScrollGesturesEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    move p2, v0

    :cond_2
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object v2

    neg-float p2, p2

    float-to-double v3, p2

    neg-float p2, p3

    float-to-double v5, p2

    const-wide/16 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/maplibre/android/maps/Transform;->moveBy(DDJ)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->notifyOnMoveListeners(Lorg/maplibre/android/gestures/MoveGestureDetector;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Could not call onMove with parameters "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MapGestureDetector"

    invoke-static {p1, p0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v1
.end method

.method public onMoveBegin(Lorg/maplibre/android/gestures/MoveGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->m(Lorg/maplibre/android/maps/MapGestureDetector;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->notifyOnMoveBeginListeners(Lorg/maplibre/android/gestures/MoveGestureDetector;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onMoveEnd(Lorg/maplibre/android/gestures/MoveGestureDetector;FF)V
    .locals 0

    iget-object p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p2}, Lorg/maplibre/android/maps/MapGestureDetector;->o(Lorg/maplibre/android/maps/MapGestureDetector;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->notifyOnMoveEndListeners(Lorg/maplibre/android/gestures/MoveGestureDetector;)V

    return-void
.end method
