.class Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/MapKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackballLongPressTimeOut"
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lorg/maplibre/android/maps/MapKeyListener;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapKeyListener;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;->this$0:Lorg/maplibre/android/maps/MapKeyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;->cancelled:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;->cancelled:Z

    return-void
.end method

.method public run()V
    .locals 4

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;->cancelled:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;->this$0:Lorg/maplibre/android/maps/MapKeyListener;

    invoke-static {v1}, Lorg/maplibre/android/maps/MapKeyListener;->b(Lorg/maplibre/android/maps/MapKeyListener;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/maps/UiSettings;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;->this$0:Lorg/maplibre/android/maps/MapKeyListener;

    invoke-static {v3}, Lorg/maplibre/android/maps/MapKeyListener;->b(Lorg/maplibre/android/maps/MapKeyListener;)Lorg/maplibre/android/maps/UiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lorg/maplibre/android/maps/UiSettings;->getHeight()F

    move-result v3

    div-float/2addr v3, v2

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;->this$0:Lorg/maplibre/android/maps/MapKeyListener;

    invoke-static {v1}, Lorg/maplibre/android/maps/MapKeyListener;->a(Lorg/maplibre/android/maps/MapKeyListener;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/maplibre/android/maps/MapGestureDetector;->zoomOutAnimated(Landroid/graphics/PointF;Z)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapKeyListener$TrackballLongPressTimeOut;->this$0:Lorg/maplibre/android/maps/MapKeyListener;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapKeyListener;->c(Lorg/maplibre/android/maps/MapKeyListener;)V

    :cond_0
    return-void
.end method
