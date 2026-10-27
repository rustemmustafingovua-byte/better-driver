.class public final Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/camera/CameraUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/camera/CameraUpdateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraBoundsUpdate"
.end annotation


# instance fields
.field private final bearing:Ljava/lang/Double;

.field private final bounds:Lorg/maplibre/android/geometry/LatLngBounds;

.field private final padding:[I

.field private final tilt:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/geometry/LatLngBounds;Ljava/lang/Double;Ljava/lang/Double;IIII)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    filled-new-array {p4, p5, p6, p7}, [I

    move-result-object p4

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;-><init>(Lorg/maplibre/android/geometry/LatLngBounds;Ljava/lang/Double;Ljava/lang/Double;[I)V

    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/geometry/LatLngBounds;Ljava/lang/Double;Ljava/lang/Double;[I)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "padding"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    iput-object p2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->bearing:Ljava/lang/Double;

    iput-object p3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->tilt:Ljava/lang/Double;

    iput-object p4, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->padding:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-class v1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;

    iget-object v1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    iget-object v2, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->padding:[I

    iget-object p1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->padding:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public final getBounds()Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    return-object p0
.end method

.method public getCameraPosition(Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/camera/CameraPosition;
    .locals 7

    const-string v0, "maplibreMap"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->bearing:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->tilt:Ljava/lang/Double;

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->padding:[I

    invoke-virtual {p1, v0, p0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraForLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;[I)Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    iget-object v2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->padding:[I

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->tilt:Ljava/lang/Double;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraForLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;[IDD)Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getPadding()[I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->padding:[I

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLngBounds;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->padding:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->padding:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toString(...)"

    invoke-static {p0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CameraBoundsUpdate{bounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", padding="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-static {v1, p0, v0}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
