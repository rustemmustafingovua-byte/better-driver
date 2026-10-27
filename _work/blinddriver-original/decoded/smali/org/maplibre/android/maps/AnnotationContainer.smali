.class Lorg/maplibre/android/maps/AnnotationContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/Annotations;


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

    iput-object p1, p0, Lorg/maplibre/android/maps/AnnotationContainer;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    iput-object p2, p0, Lorg/maplibre/android/maps/AnnotationContainer;->annotations:Lk/q;

    return-void
.end method

.method private removeNativeAnnotations([J)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationContainer;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->removeAnnotations([J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public obtainAll()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Annotation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/maplibre/android/maps/AnnotationContainer;->annotations:Lk/q;

    invoke-virtual {v2}, Lk/q;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/maplibre/android/maps/AnnotationContainer;->annotations:Lk/q;

    invoke-virtual {v2, v1}, Lk/q;->h(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lk/q;->f(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/maplibre/android/annotations/Annotation;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public obtainBy(J)Lorg/maplibre/android/annotations/Annotation;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationContainer;->annotations:Lk/q;

    invoke-virtual {p0, p1, p2}, Lk/q;->f(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/annotations/Annotation;

    return-object p0
.end method

.method public removeAll()V
    .locals 5

    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationContainer;->annotations:Lk/q;

    invoke-virtual {v0}, Lk/q;->size()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/maplibre/android/maps/AnnotationContainer;->annotations:Lk/q;

    invoke-virtual {v3, v2}, Lk/q;->h(I)J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lorg/maplibre/android/maps/AnnotationContainer;->removeNativeAnnotations([J)V

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationContainer;->annotations:Lk/q;

    invoke-virtual {p0}, Lk/q;->a()V

    return-void
.end method

.method public removeBy(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationContainer;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lorg/maplibre/android/maps/NativeMap;->removeAnnotation(J)V

    .line 3
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationContainer;->annotations:Lk/q;

    invoke-virtual {p0, p1, p2}, Lk/q;->j(J)V

    return-void
.end method

.method public removeBy(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/maplibre/android/annotations/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 7
    new-array v1, v0, [J

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 8
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/maplibre/android/annotations/Annotation;

    invoke-virtual {v4}, Lorg/maplibre/android/annotations/Annotation;->getId()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, v1}, Lorg/maplibre/android/maps/AnnotationContainer;->removeNativeAnnotations([J)V

    :goto_1
    if-ge v2, v0, :cond_1

    .line 10
    aget-wide v3, v1, v2

    .line 11
    iget-object p1, p0, Lorg/maplibre/android/maps/AnnotationContainer;->annotations:Lk/q;

    invoke-virtual {p1, v3, v4}, Lk/q;->j(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public removeBy(Lorg/maplibre/android/annotations/Annotation;)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Annotation;->getId()J

    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/maplibre/android/maps/AnnotationContainer;->removeBy(J)V

    return-void
.end method
