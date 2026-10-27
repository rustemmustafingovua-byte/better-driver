.class public final synthetic Lod/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;


# instance fields
.field public final synthetic a:Lorg/maplibre/android/maps/MapLibreMap;

.field public final synthetic b:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lorg/maplibre/android/maps/MapLibreMap;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/q0;->a:Lorg/maplibre/android/maps/MapLibreMap;

    iput-object p2, p0, Lod/q0;->b:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final onCameraMove()V
    .locals 6

    iget-object v0, p0, Lod/q0;->a:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v0

    iget-wide v0, v0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    iget-object p0, p0, Lod/q0;->b:Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
