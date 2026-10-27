.class Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHitResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/AnnotationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShapeAnnotationHitResolver"
.end annotation


# instance fields
.field private shapeAnnotations:Lorg/maplibre/android/maps/ShapeAnnotations;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/ShapeAnnotations;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHitResolver;->shapeAnnotations:Lorg/maplibre/android/maps/ShapeAnnotations;

    return-void
.end method


# virtual methods
.method public execute(Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHit;)Lorg/maplibre/android/annotations/Annotation;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHitResolver;->shapeAnnotations:Lorg/maplibre/android/maps/ShapeAnnotations;

    invoke-static {p1}, Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHit;->a(Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHit;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/ShapeAnnotations;->obtainAllIn(Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/annotations/Annotation;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
