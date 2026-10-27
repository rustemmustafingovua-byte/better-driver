.class Lorg/maplibre/android/maps/MapGestureDetector$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/maps/MapGestureDetector;->createScaleAnimator(DDLandroid/graphics/PointF;J)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/maps/MapGestureDetector;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$3;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$3;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$3;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->o(Lorg/maplibre/android/maps/MapGestureDetector;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$3;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object p1

    invoke-virtual {p1}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$3;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->b(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/CameraChangeDispatcher;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    return-void
.end method
