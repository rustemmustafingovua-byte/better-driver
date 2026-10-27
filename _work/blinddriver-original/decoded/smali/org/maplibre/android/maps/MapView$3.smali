.class Lorg/maplibre/android/maps/MapView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/maps/MapView;->createCompassClickListener(Lorg/maplibre/android/maps/CameraChangeDispatcher;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/maps/MapView;

.field final synthetic val$cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/maps/CameraChangeDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$3;->this$0:Lorg/maplibre/android/maps/MapView;

    iput-object p2, p0, Lorg/maplibre/android/maps/MapView$3;->val$cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$3;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$3;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->b(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/widgets/CompassView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$3;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->d(Lorg/maplibre/android/maps/MapView;)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$3;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v0

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$3;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->d(Lorg/maplibre/android/maps/MapView;)Landroid/graphics/PointF;

    move-result-object p1

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$3;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->d(Lorg/maplibre/android/maps/MapView;)Landroid/graphics/PointF;

    move-result-object p1

    iget v4, p1, Landroid/graphics/PointF;->y:F

    const-wide/16 v5, 0x96

    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/maplibre/android/maps/MapLibreMap;->setFocalBearing(DFFJ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$3;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v0

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$3;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getWidth()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, p1, v1

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$3;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getHeight()F

    move-result p1

    div-float v4, p1, v1

    const-wide/16 v5, 0x96

    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/maplibre/android/maps/MapLibreMap;->setFocalBearing(DFFJ)V

    :goto_0
    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$3;->val$cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$3;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->b(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/widgets/CompassView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/maplibre/android/maps/widgets/CompassView;->isAnimating(Z)V

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$3;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->b(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/widgets/CompassView;

    move-result-object p1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$3;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->b(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/widgets/CompassView;

    move-result-object p0

    const-wide/16 v0, 0x28a

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
