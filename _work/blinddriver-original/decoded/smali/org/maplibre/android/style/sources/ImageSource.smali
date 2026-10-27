.class public final Lorg/maplibre/android/style/sources/ImageSource;
.super Lorg/maplibre/android/style/sources/Source;
.source "SourceFile"


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/style/sources/Source;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngQuad;I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/style/sources/ImageSource;->initialize(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngQuad;)V

    .line 13
    invoke-virtual {p0, p3}, Lorg/maplibre/android/style/sources/ImageSource;->setImage(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngQuad;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    .line 9
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/style/sources/ImageSource;->initialize(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngQuad;)V

    .line 10
    invoke-virtual {p0, p3}, Lorg/maplibre/android/style/sources/ImageSource;->setImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngQuad;Ljava/net/URI;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/style/sources/ImageSource;->initialize(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngQuad;)V

    .line 7
    invoke-virtual {p0, p3}, Lorg/maplibre/android/style/sources/ImageSource;->setUri(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngQuad;Ljava/net/URL;)V
    .locals 1
    .annotation runtime Lt8/c;
    .end annotation

    const-string v0, "url"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/style/sources/ImageSource;->initialize(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngQuad;)V

    .line 4
    invoke-virtual {p0, p3}, Lorg/maplibre/android/style/sources/ImageSource;->setUrl(Ljava/net/URL;)V

    return-void
.end method


# virtual methods
.method public final native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final getUri()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/ImageSource;->nativeGetUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0
    .annotation runtime Lt8/c;
    .end annotation

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/ImageSource;->nativeGetUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final native initialize(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngQuad;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final native nativeGetUrl()Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final native nativeSetCoordinates(Lorg/maplibre/android/geometry/LatLngQuad;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final native nativeSetImage(Landroid/graphics/Bitmap;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final native nativeSetUrl(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final setCoordinates(Lorg/maplibre/android/geometry/LatLngQuad;)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/ImageSource;->nativeSetCoordinates(Lorg/maplibre/android/geometry/LatLngQuad;)V

    return-void
.end method

.method public final setImage(I)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    .line 4
    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v0, p1}, Lorg/maplibre/android/utils/BitmapUtils;->getDrawableFromRes(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 6
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/ImageSource;->nativeSetImage(Landroid/graphics/Bitmap;)V

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to decode image. The resource provided must be a Bitmap."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setImage(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    .line 2
    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/ImageSource;->nativeSetImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    .line 4
    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/ImageSource;->nativeSetUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final setUri(Ljava/net/URI;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    .line 2
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/ImageSource;->nativeSetUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lt8/c;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    .line 3
    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/ImageSource;->nativeSetUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final setUrl(Ljava/net/URL;)V
    .locals 1
    .annotation runtime Lt8/c;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/ImageSource;->setUrl(Ljava/lang/String;)V

    return-void
.end method
