.class public Lorg/maplibre/android/gestures/StandardGestureDetector;
.super Lorg/maplibre/android/gestures/BaseGesture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/gestures/StandardGestureDetector$SimpleStandardOnGestureListener;,
        Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/maplibre/android/gestures/BaseGesture<",
        "Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;

.field final innerListener:Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/gestures/BaseGesture;-><init>(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V

    new-instance p2, Lorg/maplibre/android/gestures/StandardGestureDetector$1;

    invoke-direct {p2, p0}, Lorg/maplibre/android/gestures/StandardGestureDetector$1;-><init>(Lorg/maplibre/android/gestures/StandardGestureDetector;)V

    iput-object p2, p0, Lorg/maplibre/android/gestures/StandardGestureDetector;->innerListener:Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/maplibre/android/gestures/StandardGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public analyzeEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/StandardGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public isLongpressEnabled()Z
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/StandardGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/GestureDetector;->isLongpressEnabled()Z

    move-result p0

    return p0
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/gestures/StandardGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method
