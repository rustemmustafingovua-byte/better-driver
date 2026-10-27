.class Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/AnnotationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkerHitResolver"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapHeight:I

.field private bitmapWidth:I

.field private closestMarkerId:J

.field private highestSurfaceIntersection:Landroid/graphics/RectF;

.field private hitRectMarker:Landroid/graphics/RectF;

.field private hitRectView:Landroid/graphics/Rect;

.field private markerLocation:Landroid/graphics/PointF;

.field private final minimalTouchSize:I

.field private final projection:Lorg/maplibre/android/maps/Projection;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->hitRectView:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->hitRectMarker:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->highestSurfaceIntersection:Landroid/graphics/RectF;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->closestMarkerId:J

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getProjection()Lorg/maplibre/android/maps/Projection;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->projection:Lorg/maplibre/android/maps/Projection;

    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->minimalTouchSize:I

    return-void
.end method

.method private hitTestMarker(Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;Lorg/maplibre/android/annotations/Marker;Landroid/graphics/RectF;)V
    .locals 2

    invoke-virtual {p1}, Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;->getTapPointX()F

    move-result v0

    invoke-virtual {p1}, Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;->getTapPointY()F

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;->b(Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-direct {p0, p3}, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->isRectangleHighestSurfaceIntersection(Landroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->highestSurfaceIntersection:Landroid/graphics/RectF;

    invoke-virtual {p2}, Lorg/maplibre/android/annotations/Annotation;->getId()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->closestMarkerId:J

    :cond_0
    return-void
.end method

.method private isRectangleHighestSurfaceIntersection(Landroid/graphics/RectF;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr p1, v0

    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->highestSurfaceIntersection:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->highestSurfaceIntersection:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    mul-float/2addr p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private resolveForMarker(Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;Lorg/maplibre/android/annotations/Marker;)V
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->projection:Lorg/maplibre/android/maps/Projection;

    invoke-virtual {p2}, Lorg/maplibre/android/annotations/Marker;->getPosition()Lorg/maplibre/android/geometry/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/Projection;->toScreenLocation(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->markerLocation:Landroid/graphics/PointF;

    invoke-virtual {p2}, Lorg/maplibre/android/annotations/Marker;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/annotations/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->bitmapHeight:I

    iget v1, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->minimalTouchSize:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->bitmapHeight:I

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->bitmapWidth:I

    iget v1, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->minimalTouchSize:I

    if-ge v0, v1, :cond_1

    iput v1, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->bitmapWidth:I

    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->hitRectMarker:Landroid/graphics/RectF;

    iget v1, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->bitmapWidth:I

    int-to-float v1, v1

    iget v2, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->bitmapHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->hitRectMarker:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->markerLocation:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->bitmapWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->bitmapHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->hitRectMarker:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->hitTestMarker(Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;Lorg/maplibre/android/annotations/Marker;Landroid/graphics/RectF;)V

    return-void
.end method

.method private resolveForMarkers(Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;)V
    .locals 2

    invoke-static {p1}, Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;->a(Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/annotations/Marker;

    invoke-direct {p0, p1, v1}, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->resolveForMarker(Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;Lorg/maplibre/android/annotations/Marker;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;)J
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->resolveForMarkers(Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;)V

    iget-wide p0, p0, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->closestMarkerId:J

    return-wide p0
.end method
