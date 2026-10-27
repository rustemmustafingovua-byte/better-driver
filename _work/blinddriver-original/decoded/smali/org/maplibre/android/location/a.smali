.class public final synthetic Lorg/maplibre/android/location/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/maplibre/android/location/LocationCameraController;


# direct methods
.method public synthetic constructor <init>(Lorg/maplibre/android/location/LocationCameraController;I)V
    .locals 0

    iput p2, p0, Lorg/maplibre/android/location/a;->a:I

    iput-object p1, p0, Lorg/maplibre/android/location/a;->b:Lorg/maplibre/android/location/LocationCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNewAnimationValue(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/maplibre/android/location/a;->a:I

    iget-object p0, p0, Lorg/maplibre/android/location/a;->b:Lorg/maplibre/android/location/LocationCameraController;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Float;

    invoke-static {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->c(Lorg/maplibre/android/location/LocationCameraController;Ljava/lang/Float;)V

    return-void

    :pswitch_0
    check-cast p1, [D

    invoke-static {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->a(Lorg/maplibre/android/location/LocationCameraController;[D)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    invoke-static {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->b(Lorg/maplibre/android/location/LocationCameraController;Ljava/lang/Float;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
