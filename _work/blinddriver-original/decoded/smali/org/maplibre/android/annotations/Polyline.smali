.class public final Lorg/maplibre/android/annotations/Polyline;
.super Lorg/maplibre/android/annotations/BasePointCollection;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private color:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private width:F
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/maplibre/android/annotations/BasePointCollection;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lorg/maplibre/android/annotations/Polyline;->color:I

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/maplibre/android/annotations/Polyline;->width:F

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/annotations/Polyline;->color:I

    return p0
.end method

.method public getWidth()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/annotations/Polyline;->width:F

    return p0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/annotations/Polyline;->color:I

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Polyline;->update()V

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/annotations/Polyline;->width:F

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Polyline;->update()V

    return-void
.end method

.method public update()V
    .locals 1

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Annotation;->getMapLibreMap()Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/MapLibreMap;->updatePolyline(Lorg/maplibre/android/annotations/Polyline;)V

    :cond_0
    return-void
.end method
