.class Lorg/maplibre/android/location/LocationCameraController$LocationGesturesManager;
.super Lorg/maplibre/android/gestures/AndroidGesturesManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/location/LocationCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationGesturesManager"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/location/LocationCameraController;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LocationCameraController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController$LocationGesturesManager;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-direct {p0, p2}, Lorg/maplibre/android/gestures/AndroidGesturesManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$LocationGesturesManager;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->i(Lorg/maplibre/android/location/LocationCameraController;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
