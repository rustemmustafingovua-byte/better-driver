.class Lorg/maplibre/android/maps/IconManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private highestIconHeight:I

.field private highestIconWidth:I

.field private final iconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/maplibre/android/annotations/Icon;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nativeMap:Lorg/maplibre/android/maps/NativeMap;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/NativeMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/util/Map;

    iput-object p1, p0, Lorg/maplibre/android/maps/IconManager;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    return-void
.end method

.method private addIcon(Lorg/maplibre/android/annotations/Icon;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/maplibre/android/maps/IconManager;->addIcon(Lorg/maplibre/android/annotations/Icon;Z)V

    return-void
.end method

.method private addIcon(Lorg/maplibre/android/annotations/Icon;Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/IconManager;->loadIcon(Lorg/maplibre/android/annotations/Icon;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private loadDefaultIconForMarker(Lorg/maplibre/android/annotations/Marker;)Lorg/maplibre/android/annotations/Icon;
    .locals 3

    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/annotations/IconFactory;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/annotations/IconFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/annotations/IconFactory;->defaultMarker()Lorg/maplibre/android/annotations/Icon;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/annotations/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v2, v1}, Lorg/maplibre/android/maps/IconManager;->updateHighestIconSize(II)V

    invoke-virtual {p1, v0}, Lorg/maplibre/android/annotations/Marker;->setIcon(Lorg/maplibre/android/annotations/Icon;)V

    return-object v0
.end method

.method private loadIcon(Lorg/maplibre/android/annotations/Icon;)V
    .locals 7

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/maps/IconManager;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Icon;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Icon;->getScale()F

    move-result v5

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Icon;->toBytes()[B

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lorg/maplibre/android/maps/NativeMap;->addAnnotationIcon(Ljava/lang/String;IIF[B)V

    return-void
.end method

.method private remove(Lorg/maplibre/android/annotations/Icon;)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/IconManager;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Icon;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/maplibre/android/maps/NativeMap;->removeAnnotationIcon(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTopOffsetPixels(Lorg/maplibre/android/annotations/Marker;Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/annotations/Icon;)V
    .locals 4

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Annotation;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Annotation;->getId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/maplibre/android/maps/MapLibreMap;->getAnnotation(J)Lorg/maplibre/android/annotations/Annotation;

    move-result-object p2

    check-cast p2, Lorg/maplibre/android/annotations/Marker;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/maplibre/android/annotations/Marker;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/maplibre/android/annotations/Marker;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object p2

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Marker;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v0

    if-eq p2, v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    invoke-virtual {p0, p3}, Lorg/maplibre/android/maps/IconManager;->getTopOffsetPixelsForIcon(Lorg/maplibre/android/annotations/Icon;)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/maplibre/android/annotations/Marker;->setTopOffsetPixels(I)V

    return-void
.end method

.method private updateHighestIconSize(II)V
    .locals 1

    .line 3
    iget v0, p0, Lorg/maplibre/android/maps/IconManager;->highestIconWidth:I

    if-le p1, v0, :cond_0

    .line 4
    iput p1, p0, Lorg/maplibre/android/maps/IconManager;->highestIconWidth:I

    .line 5
    :cond_0
    iget p1, p0, Lorg/maplibre/android/maps/IconManager;->highestIconHeight:I

    if-le p2, p1, :cond_1

    .line 6
    iput p2, p0, Lorg/maplibre/android/maps/IconManager;->highestIconHeight:I

    :cond_1
    return-void
.end method

.method private updateHighestIconSize(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/maplibre/android/maps/IconManager;->updateHighestIconSize(II)V

    return-void
.end method

.method private updateHighestIconSize(Lorg/maplibre/android/annotations/Icon;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/IconManager;->updateHighestIconSize(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private updateIconRefCounter(Lorg/maplibre/android/annotations/Icon;I)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ensureIconLoaded(Lorg/maplibre/android/annotations/Marker;Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 1

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Marker;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/IconManager;->loadDefaultIconForMarker(Lorg/maplibre/android/annotations/Marker;)Lorg/maplibre/android/annotations/Icon;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/IconManager;->addIcon(Lorg/maplibre/android/annotations/Icon;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/maplibre/android/maps/IconManager;->setTopOffsetPixels(Lorg/maplibre/android/annotations/Marker;Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/annotations/Icon;)V

    return-void
.end method

.method public getHighestIconHeight()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/maps/IconManager;->highestIconHeight:I

    return p0
.end method

.method public getHighestIconWidth()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/maps/IconManager;->highestIconWidth:I

    return p0
.end method

.method public getTopOffsetPixelsForIcon(Lorg/maplibre/android/annotations/Icon;)I
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/IconManager;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Icon;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/NativeMap;->getTopOffsetPixelsForAnnotationSymbol(Ljava/lang/String;)D

    move-result-wide v0

    iget-object p0, p0, Lorg/maplibre/android/maps/IconManager;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getPixelRatio()F

    move-result p0

    float-to-double p0, p0

    mul-double/2addr v0, p0

    double-to-int p0, v0

    return p0
.end method

.method public iconCleanup(Lorg/maplibre/android/annotations/Icon;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/IconManager;->remove(Lorg/maplibre/android/annotations/Icon;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/maplibre/android/maps/IconManager;->updateIconRefCounter(Lorg/maplibre/android/annotations/Icon;I)V

    :cond_1
    return-void
.end method

.method public loadIconForMarker(Lorg/maplibre/android/annotations/Marker;)Lorg/maplibre/android/annotations/Icon;
    .locals 1

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Marker;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/IconManager;->loadDefaultIconForMarker(Lorg/maplibre/android/annotations/Marker;)Lorg/maplibre/android/annotations/Icon;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/IconManager;->updateHighestIconSize(Lorg/maplibre/android/annotations/Icon;)V

    :goto_0
    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/IconManager;->addIcon(Lorg/maplibre/android/annotations/Icon;)V

    return-object v0
.end method

.method public reloadIcons()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/annotations/Icon;

    invoke-direct {p0, v1}, Lorg/maplibre/android/maps/IconManager;->loadIcon(Lorg/maplibre/android/annotations/Icon;)V

    goto :goto_0

    :cond_0
    return-void
.end method
