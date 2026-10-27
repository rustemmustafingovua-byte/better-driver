.class Lorg/maplibre/android/maps/ShapeAnnotationContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/ShapeAnnotations;


# instance fields
.field private final annotations:Lk/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/q;"
        }
    .end annotation
.end field

.field private final nativeMapView:Lorg/maplibre/android/maps/NativeMap;


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

    iput-object p1, p0, Lorg/maplibre/android/maps/ShapeAnnotationContainer;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    iput-object p2, p0, Lorg/maplibre/android/maps/ShapeAnnotationContainer;->annotations:Lk/q;

    return-void
.end method

.method private getAnnotationsFromIds([J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Annotation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, p1, v2

    iget-object v5, p0, Lorg/maplibre/android/maps/ShapeAnnotationContainer;->annotations:Lk/q;

    invoke-virtual {v5, v3, v4}, Lk/q;->f(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/maplibre/android/annotations/Annotation;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public obtainAllIn(Landroid/graphics/RectF;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Annotation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/maps/ShapeAnnotationContainer;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/NativeMap;->getDensityDependantRectangle(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lorg/maplibre/android/maps/ShapeAnnotationContainer;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/NativeMap;->queryShapeAnnotations(Landroid/graphics/RectF;)[J

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/ShapeAnnotationContainer;->getAnnotationsFromIds([J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
