.class Lorg/maplibre/android/gestures/StandardScaleGestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/gestures/StandardScaleGestureDetector;-><init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/gestures/StandardScaleGestureDetector;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector$1;->this$0:Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector$1;->this$0:Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->a(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)V

    iget-object p0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector$1;->this$0:Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {p0, v0}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->b(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;Landroid/graphics/PointF;)V

    :cond_0
    return v1
.end method
