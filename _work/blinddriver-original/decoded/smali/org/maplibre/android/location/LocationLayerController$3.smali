.class Lorg/maplibre/android/location/LocationLayerController$3;
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

    iput-object p1, p0, Lorg/maplibre/android/location/LocationLayerController$3;->this$0:Lorg/maplibre/android/location/LocationLayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewAnimationValue(Ljava/lang/Float;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController$3;->this$0:Lorg/maplibre/android/location/LocationLayerController;

    invoke-static {p0}, Lorg/maplibre/android/location/LocationLayerController;->a(Lorg/maplibre/android/location/LocationLayerController;)Lorg/maplibre/android/location/LocationLayerRenderer;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/maplibre/android/location/LocationLayerRenderer;->setCompassBearing(Ljava/lang/Float;)V

    return-void
.end method

.method public bridge synthetic onNewAnimationValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationLayerController$3;->onNewAnimationValue(Ljava/lang/Float;)V

    return-void
.end method
