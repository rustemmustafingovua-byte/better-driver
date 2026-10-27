.class public final Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;
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
    name = "CameraPositionUpdate"
.end annotation


# instance fields
.field private final bearing:D

.field private final centerAltitude:D

.field private final fov:D

.field private final padding:[D

.field private final roll:D

.field private final target:Lorg/maplibre/android/geometry/LatLng;

.field private final tilt:D

.field private final zoom:D


# direct methods
.method public constructor <init>(DLorg/maplibre/android/geometry/LatLng;DDDDD[D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->bearing:D

    iput-object p3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->target:Lorg/maplibre/android/geometry/LatLng;

    iput-wide p4, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->centerAltitude:D

    iput-wide p6, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->tilt:D

    iput-wide p8, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->roll:D

    iput-wide p10, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->fov:D

    iput-wide p12, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->zoom:D

    iput-object p14, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->padding:[D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const-class v1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    iget-wide v1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->bearing:D

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->bearing:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    iget-wide v1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->tilt:D

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->tilt:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    iget-wide v1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->roll:D

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->roll:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v0

    :cond_4
    iget-wide v1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->fov:D

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->fov:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v0

    :cond_5
    iget-wide v1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->zoom:D

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->zoom:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v0

    :cond_6
    iget-wide v1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->centerAltitude:D

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->centerAltitude:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_7

    return v0

    :cond_7
    iget-object v1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->target:Lorg/maplibre/android/geometry/LatLng;

    if-eqz v1, :cond_8

    iget-object v2, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->target:Lorg/maplibre/android/geometry/LatLng;

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_8
    iget-object v1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->target:Lorg/maplibre/android/geometry/LatLng;

    if-eqz v1, :cond_9

    :goto_0
    return v0

    :cond_9
    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->padding:[D

    iget-object p1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->padding:[D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0

    :cond_a
    :goto_1
    return v0
.end method

.method public final getBearing()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->bearing:D

    return-wide v0
.end method

.method public getCameraPosition(Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/camera/CameraPosition;
    .locals 1

    const-string v0, "maplibreMap"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->target:Lorg/maplibre/android/geometry/LatLng;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p1

    const-string v0, "getCameraPosition(...)"

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/maplibre/android/camera/CameraPosition$Builder;

    invoke-direct {v0, p0}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>(Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;)V

    iget-object p0, p1, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {v0, p0}, Lorg/maplibre/android/camera/CameraPosition$Builder;->target(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/camera/CameraPosition$Builder;->build()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lorg/maplibre/android/camera/CameraPosition$Builder;

    invoke-direct {p1, p0}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>(Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;)V

    invoke-virtual {p1}, Lorg/maplibre/android/camera/CameraPosition$Builder;->build()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getCenterAltitude()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->centerAltitude:D

    return-wide v0
.end method

.method public final getFov()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->fov:D

    return-wide v0
.end method

.method public final getPadding()[D
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->padding:[D

    return-object p0
.end method

.method public final getRoll()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->roll:D

    return-wide v0
.end method

.method public final getTarget()Lorg/maplibre/android/geometry/LatLng;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->target:Lorg/maplibre/android/geometry/LatLng;

    return-object p0
.end method

.method public final getTilt()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->tilt:D

    return-wide v0
.end method

.method public final getZoom()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->zoom:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->bearing:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->target:Lorg/maplibre/android/geometry/LatLng;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->centerAltitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->tilt:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->roll:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->fov:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->zoom:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->padding:[D

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->bearing:D

    iget-object v2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->target:Lorg/maplibre/android/geometry/LatLng;

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->centerAltitude:D

    iget-wide v5, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->tilt:D

    iget-wide v7, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->roll:D

    iget-wide v9, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->fov:D

    iget-wide v11, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->zoom:D

    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->padding:[D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "CameraPositionUpdate{bearing="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", target="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", centerAltitude="

    const-string v1, ", tilt="

    invoke-static {v13, v0, v3, v4, v1}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", roll="

    const-string v1, ", fov="

    invoke-static {v13, v0, v7, v8, v1}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", zoom="

    const-string v1, ", padding="

    invoke-static {v13, v0, v11, v12, v1}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    const-string v0, "}"

    invoke-static {v13, p0, v0}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
