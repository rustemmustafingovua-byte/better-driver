.class final Lorg/maplibre/android/maps/MapGestureDetector$TapGestureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector$OnMultiFingerTapGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/MapGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TapGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/maps/MapGestureDetector;


# direct methods
.method private constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$TapGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector$TapGestureListener;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;)V

    return-void
.end method


# virtual methods
.method public onMultiFingerTap(Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;I)Z
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$TapGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->i(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$TapGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p2}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object p2

    invoke-virtual {p2}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    iget-object p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$TapGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p2}, Lorg/maplibre/android/maps/MapGestureDetector;->b(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/CameraChangeDispatcher;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    iget-object p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$TapGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p2}, Lorg/maplibre/android/maps/MapGestureDetector;->c(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/graphics/PointF;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$TapGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapGestureDetector;->c(Lorg/maplibre/android/maps/MapGestureDetector;)Landroid/graphics/PointF;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/maplibre/android/gestures/MultiFingerGesture;->getFocalPoint()Landroid/graphics/PointF;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$TapGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {p0, p1, v1}, Lorg/maplibre/android/maps/MapGestureDetector;->zoomOutAnimated(Landroid/graphics/PointF;Z)V

    return v0

    :cond_2
    :goto_1
    return v1
.end method
