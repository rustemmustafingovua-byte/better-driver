.class public abstract Lorg/maplibre/android/annotations/BasePointCollection;
.super Lorg/maplibre/android/annotations/Annotation;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private alpha:F
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private points:Ljava/util/List;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/maplibre/android/annotations/Annotation;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/maplibre/android/annotations/BasePointCollection;->alpha:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/annotations/BasePointCollection;->points:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPoint(Lorg/maplibre/android/geometry/LatLng;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/annotations/BasePointCollection;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/BasePointCollection;->update()V

    return-void
.end method

.method public getAlpha()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/annotations/BasePointCollection;->alpha:F

    return p0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/maplibre/android/annotations/BasePointCollection;->points:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/annotations/BasePointCollection;->alpha:F

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/BasePointCollection;->update()V

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/maplibre/android/annotations/BasePointCollection;->points:Ljava/util/List;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/BasePointCollection;->update()V

    return-void
.end method

.method public abstract update()V
.end method
