.class Lorg/maplibre/android/location/LocationLayerController$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/location/LocationLayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/location/LocationLayerController;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LocationLayerController;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationLayerController$5;->this$0:Lorg/maplibre/android/location/LocationLayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewAnimationValue(Ljava/lang/Float;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController$5;->this$0:Lorg/maplibre/android/location/LocationLayerController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationLayerController;->b(Lorg/maplibre/android/location/LocationLayerController;)Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseFadeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController$5;->this$0:Lorg/maplibre/android/location/LocationLayerController;

    invoke-static {p0}, Lorg/maplibre/android/location/LocationLayerController;->a(Lorg/maplibre/android/location/LocationLayerController;)Lorg/maplibre/android/location/LocationLayerRenderer;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1, v0}, Lorg/maplibre/android/location/LocationLayerRenderer;->updatePulsingUi(FLjava/lang/Float;)V

    return-void
.end method

.method public bridge synthetic onNewAnimationValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationLayerController$5;->onNewAnimationValue(Ljava/lang/Float;)V

    return-void
.end method
