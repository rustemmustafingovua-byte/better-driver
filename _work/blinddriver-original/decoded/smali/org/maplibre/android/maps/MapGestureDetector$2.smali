.class Lorg/maplibre/android/maps/MapGestureDetector$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$animationFocalPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;Landroid/graphics/PointF;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$2;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    iput-object p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$2;->val$animationFocalPoint:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$2;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->h(Lorg/maplibre/android/maps/MapGestureDetector;)Lorg/maplibre/android/maps/Transform;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$2;->val$animationFocalPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2, p0}, Lorg/maplibre/android/maps/Transform;->setZoom(DLandroid/graphics/PointF;)V

    return-void
.end method
