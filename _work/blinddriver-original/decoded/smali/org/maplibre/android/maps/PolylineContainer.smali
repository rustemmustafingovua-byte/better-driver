.class Lorg/maplibre/android/maps/PolylineContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/Polylines;


# instance fields
.field private final annotations:Lk/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/q;"
        }
    .end annotation
.end field

.field private final nativeMap:Lorg/maplibre/android/maps/NativeMap;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/NativeMap;Lk/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/maps/NativeMap;",
            "Lk/q;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/maps/PolylineContainer;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    iput-object p2, p0, Lorg/maplibre/android/maps/PolylineContainer;->annotations:Lk/q;

    return-void
.end method


# virtual methods
.method public addBy(Ljava/util/List;Lorg/maplibre/android/maps/MapLibreMap;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/PolylineOptions;",
            ">;",
            "Lorg/maplibre/android/maps/MapLibreMap;",
            ")",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Polyline;",
            ">;"
        }
    .end annotation

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    iget-object v2, p0, Lorg/maplibre/android/maps/PolylineContainer;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    if-eqz v2, :cond_2

    if-lez v0, :cond_2

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/annotations/PolylineOptions;

    .line 10
    invoke-virtual {v0}, Lorg/maplibre/android/annotations/PolylineOptions;->getPolyline()Lorg/maplibre/android/annotations/Polyline;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/maplibre/android/annotations/BasePointCollection;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lorg/maplibre/android/maps/PolylineContainer;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p1, v1}, Lorg/maplibre/android/maps/NativeMap;->addPolylines(Ljava/util/List;)[J

    move-result-object p1

    const/4 v0, 0x0

    .line 14
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/maplibre/android/annotations/Polyline;

    .line 16
    invoke-virtual {v2, p2}, Lorg/maplibre/android/annotations/Annotation;->setMapLibreMap(Lorg/maplibre/android/maps/MapLibreMap;)V

    .line 17
    aget-wide v3, p1, v0

    invoke-virtual {v2, v3, v4}, Lorg/maplibre/android/annotations/Annotation;->setId(J)V

    .line 18
    iget-object v3, p0, Lorg/maplibre/android/maps/PolylineContainer;->annotations:Lk/q;

    aget-wide v4, p1, v0

    invoke-virtual {v3, v4, v5, v2}, Lk/q;->i(JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public addBy(Lorg/maplibre/android/annotations/PolylineOptions;Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/annotations/Polyline;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/maplibre/android/annotations/PolylineOptions;->getPolyline()Lorg/maplibre/android/annotations/Polyline;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/maplibre/android/maps/PolylineContainer;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/NativeMap;->addPolyline(Lorg/maplibre/android/annotations/Polyline;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1, p2}, Lorg/maplibre/android/annotations/Annotation;->setMapLibreMap(Lorg/maplibre/android/maps/MapLibreMap;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Lorg/maplibre/android/annotations/Annotation;->setId(J)V

    .line 5
    iget-object p0, p0, Lorg/maplibre/android/maps/PolylineContainer;->annotations:Lk/q;

    invoke-virtual {p0, v0, v1, p1}, Lk/q;->i(JLjava/lang/Object;)V

    return-object p1
.end method

.method public obtainAll()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Polyline;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/maplibre/android/maps/PolylineContainer;->annotations:Lk/q;

    invoke-virtual {v2}, Lk/q;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/maplibre/android/maps/PolylineContainer;->annotations:Lk/q;

    invoke-virtual {v2, v1}, Lk/q;->h(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lk/q;->f(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/maplibre/android/annotations/Annotation;

    instance-of v3, v2, Lorg/maplibre/android/annotations/Polyline;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/maplibre/android/annotations/Polyline;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public update(Lorg/maplibre/android/annotations/Polyline;)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/PolylineContainer;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/NativeMap;->updatePolyline(Lorg/maplibre/android/annotations/Polyline;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/PolylineContainer;->annotations:Lk/q;

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Annotation;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lk/q;->g(J)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lk/q;->l(ILorg/maplibre/android/annotations/Annotation;)V

    return-void
.end method
