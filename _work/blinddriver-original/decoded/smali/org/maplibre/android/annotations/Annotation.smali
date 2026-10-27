.class public abstract Lorg/maplibre/android/annotations/Annotation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/maplibre/android/annotations/Annotation;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private id:J

.field protected mapView:Lorg/maplibre/android/maps/MapView;

.field protected maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/maplibre/android/annotations/Annotation;->id:J

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/maplibre/android/annotations/Annotation;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/annotations/Annotation;->compareTo(Lorg/maplibre/android/annotations/Annotation;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/maplibre/android/annotations/Annotation;)I
    .locals 4

    .line 2
    iget-wide v0, p0, Lorg/maplibre/android/annotations/Annotation;->id:J

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Annotation;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    iget-wide v0, p0, Lorg/maplibre/android/annotations/Annotation;->id:J

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Annotation;->getId()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    instance-of v2, p1, Lorg/maplibre/android/annotations/Annotation;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/maplibre/android/annotations/Annotation;

    iget-wide v2, p0, Lorg/maplibre/android/annotations/Annotation;->id:J

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Annotation;->getId()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/annotations/Annotation;->id:J

    return-wide v0
.end method

.method public getMapLibreMap()Lorg/maplibre/android/maps/MapLibreMap;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/Annotation;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    return-object p0
.end method

.method public getMapView()Lorg/maplibre/android/maps/MapView;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/Annotation;->mapView:Lorg/maplibre/android/maps/MapView;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Annotation;->getId()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Annotation;->getId()J

    move-result-wide v2

    const/16 p0, 0x20

    ushr-long/2addr v2, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/annotations/Annotation;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/MapLibreMap;->removeAnnotation(Lorg/maplibre/android/annotations/Annotation;)V

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lorg/maplibre/android/annotations/Annotation;->id:J

    return-void
.end method

.method public setMapLibreMap(Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/annotations/Annotation;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    return-void
.end method

.method public setMapView(Lorg/maplibre/android/maps/MapView;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/annotations/Annotation;->mapView:Lorg/maplibre/android/maps/MapView;

    return-void
.end method
