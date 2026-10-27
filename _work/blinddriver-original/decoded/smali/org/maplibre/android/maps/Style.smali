.class public Lorg/maplibre/android/maps/Style;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/maps/Style$Builder;,
        Lorg/maplibre/android/maps/Style$BitmapImageConversionTask;,
        Lorg/maplibre/android/maps/Style$OnStyleLoaded;
    }
.end annotation


# static fields
.field static final EMPTY_JSON:Ljava/lang/String; = "{\"version\": 8,\"sources\": {},\"layers\": []}"

.field protected static final TAG:Ljava/lang/String; = "Style"


# instance fields
.field private final builder:Lorg/maplibre/android/maps/Style$Builder;

.field private fullyLoaded:Z

.field private final images:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final layers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/maplibre/android/style/layers/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private final nativeMap:Lorg/maplibre/android/maps/NativeMap;

.field private final sources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/maplibre/android/style/sources/Source;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/maps/NativeMap;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/Style;->sources:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/Style;->images:Ljava/util/HashMap;

    .line 6
    iput-object p1, p0, Lorg/maplibre/android/maps/Style;->builder:Lorg/maplibre/android/maps/Style$Builder;

    .line 7
    iput-object p2, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/maps/NativeMap;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/maps/Style;-><init>(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/maps/NativeMap;)V

    return-void
.end method

.method public static getPredefinedStyle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/maplibre/android/MapLibre;->getPredefinedStyle(Ljava/lang/String;)Lorg/maplibre/android/util/DefaultStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/maplibre/android/util/DefaultStyle;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not find layer "

    invoke-static {v1, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPredefinedStyles()[Lorg/maplibre/android/util/DefaultStyle;
    .locals 1

    invoke-static {}, Lorg/maplibre/android/MapLibre;->getPredefinedStyles()[Lorg/maplibre/android/util/DefaultStyle;

    move-result-object v0

    return-object v0
.end method

.method public static toImage(Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;)Lorg/maplibre/android/maps/Image;
    .locals 15

    iget-object v0, p0, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x43200000    # 160.0f

    div-float v7, v2, v4

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->getStretchX()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->getStretchY()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->getStretchX()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    new-array v12, v2, [F

    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->getStretchX()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->getStretchX()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/maplibre/android/maps/ImageStretches;

    invoke-virtual {v5}, Lorg/maplibre/android/maps/ImageStretches;->getFirst()F

    move-result v5

    aput v5, v12, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->getStretchX()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/maplibre/android/maps/ImageStretches;

    invoke-virtual {v5}, Lorg/maplibre/android/maps/ImageStretches;->getSecond()F

    move-result v5

    aput v5, v12, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->getStretchY()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    new-array v13, v2, [F

    :goto_1
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->getStretchY()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    mul-int/lit8 v2, v3, 0x2

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->getStretchY()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/maplibre/android/maps/ImageStretches;

    invoke-virtual {v4}, Lorg/maplibre/android/maps/ImageStretches;->getFirst()F

    move-result v4

    aput v4, v13, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->getStretchY()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/maplibre/android/maps/ImageStretches;

    invoke-virtual {v4}, Lorg/maplibre/android/maps/ImageStretches;->getSecond()F

    move-result v4

    aput v4, v13, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance v5, Lorg/maplibre/android/maps/Image;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v8, p0, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->id:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iget-boolean v11, p0, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->sdf:Z

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->getContent()Lorg/maplibre/android/maps/ImageContent;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p0, 0x0

    :goto_2
    move-object v14, p0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->getContent()Lorg/maplibre/android/maps/ImageContent;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/ImageContent;->getContentArray()[F

    move-result-object p0

    goto :goto_2

    :goto_3
    invoke-direct/range {v5 .. v14}, Lorg/maplibre/android/maps/Image;-><init>([BFLjava/lang/String;IIZ[F[F[F)V

    return-object v5

    :cond_4
    new-instance v5, Lorg/maplibre/android/maps/Image;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v8, p0, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->id:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iget-boolean v11, p0, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->sdf:Z

    invoke-direct/range {v5 .. v11}, Lorg/maplibre/android/maps/Image;-><init>([BFLjava/lang/String;IIZ)V

    return-object v5
.end method

.method private validateState(Ljava/lang/String;)V
    .locals 2

    iget-boolean p0, p0, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calling "

    const-string v1, " when a newer style is loading/has loaded."

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public addImage(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Lorg/maplibre/android/maps/ImageContent;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V

    return-void
.end method

.method public addImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 1

    .line 9
    const-string v0, "addImage"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    new-instance v0, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;

    invoke-direct {v0, p1, p2, p3}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    invoke-static {v0}, Lorg/maplibre/android/maps/Style;->toImage(Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;)Lorg/maplibre/android/maps/Image;

    move-result-object p1

    filled-new-array {p1}, [Lorg/maplibre/android/maps/Image;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->addImages([Lorg/maplibre/android/maps/Image;)V

    return-void
.end method

.method public addImage(Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Z",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Lorg/maplibre/android/maps/ImageContent;",
            ")V"
        }
    .end annotation

    .line 11
    const-string v0, "addImage"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    new-instance v0, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V

    .line 13
    invoke-static {v0}, Lorg/maplibre/android/maps/Style;->toImage(Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;)Lorg/maplibre/android/maps/Image;

    move-result-object p1

    filled-new-array {p1}, [Lorg/maplibre/android/maps/Image;

    move-result-object p1

    .line 14
    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->addImages([Lorg/maplibre/android/maps/Image;)V

    return-void
.end method

.method public addImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 3
    invoke-static {p2}, Lorg/maplibre/android/utils/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Provided drawable couldn\'t be converted to a Bitmap."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Lorg/maplibre/android/maps/ImageContent;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-static {p2}, Lorg/maplibre/android/utils/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 7
    invoke-virtual/range {v0 .. v6}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Provided drawable couldn\'t be converted to a Bitmap."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addImageAsync(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/maplibre/android/maps/Style;->addImageAsync(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public addImageAsync(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Lorg/maplibre/android/maps/ImageContent;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lorg/maplibre/android/maps/Style;->addImageAsync(Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V

    return-void
.end method

.method public addImageAsync(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 1

    .line 9
    const-string v0, "addImage"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 10
    new-instance v0, Lorg/maplibre/android/maps/Style$BitmapImageConversionTask;

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/Style$BitmapImageConversionTask;-><init>(Lorg/maplibre/android/maps/NativeMap;)V

    new-instance p0, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    filled-new-array {p0}, [Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public addImageAsync(Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Z",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Lorg/maplibre/android/maps/ImageContent;",
            ")V"
        }
    .end annotation

    .line 11
    const-string v0, "addImage"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 12
    new-instance v0, Lorg/maplibre/android/maps/Style$BitmapImageConversionTask;

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/Style$BitmapImageConversionTask;-><init>(Lorg/maplibre/android/maps/NativeMap;)V

    new-instance v1, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V

    filled-new-array {v1}, [Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;

    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public addImageAsync(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 3
    invoke-static {p2}, Lorg/maplibre/android/utils/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lorg/maplibre/android/maps/Style;->addImageAsync(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Provided drawable couldn\'t be converted to a Bitmap."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addImageAsync(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Lorg/maplibre/android/maps/ImageContent;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-static {p2}, Lorg/maplibre/android/utils/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 7
    invoke-virtual/range {v0 .. v6}, Lorg/maplibre/android/maps/Style;->addImageAsync(Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Provided drawable couldn\'t be converted to a Bitmap."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addImages(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/maps/Style;->addImages(Ljava/util/HashMap;Z)V

    return-void
.end method

.method public addImages(Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Lorg/maplibre/android/maps/ImageContent;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lorg/maplibre/android/maps/Style;->addImages(Ljava/util/HashMap;ZLjava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V

    return-void
.end method

.method public addImages(Ljava/util/HashMap;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    .line 3
    const-string v0, "addImage"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lorg/maplibre/android/maps/Image;

    .line 5
    invoke-static {p1, p2}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->convertToImageArray(Ljava/util/HashMap;Z)[Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;

    move-result-object p1

    array-length p2, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v3, p1, v1

    .line 6
    invoke-static {v3}, Lorg/maplibre/android/maps/Style;->toImage(Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;)Lorg/maplibre/android/maps/Image;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, v0}, Lorg/maplibre/android/maps/NativeMap;->addImages([Lorg/maplibre/android/maps/Image;)V

    return-void
.end method

.method public addImages(Ljava/util/HashMap;ZLjava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;Z",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Lorg/maplibre/android/maps/ImageContent;",
            ")V"
        }
    .end annotation

    .line 8
    const-string v0, "addImage"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lorg/maplibre/android/maps/Image;

    .line 10
    invoke-static {p1, p2, p3, p4, p5}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->convertToImageArray(Ljava/util/HashMap;ZLjava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)[Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object p5, p1, p3

    .line 11
    invoke-static {p5}, Lorg/maplibre/android/maps/Style;->toImage(Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;)Lorg/maplibre/android/maps/Image;

    move-result-object p5

    aput-object p5, v0, p4

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, v0}, Lorg/maplibre/android/maps/NativeMap;->addImages([Lorg/maplibre/android/maps/Image;)V

    return-void
.end method

.method public addImagesAsync(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/maps/Style;->addImagesAsync(Ljava/util/HashMap;Z)V

    return-void
.end method

.method public addImagesAsync(Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Lorg/maplibre/android/maps/ImageContent;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lorg/maplibre/android/maps/Style;->addImagesAsync(Ljava/util/HashMap;ZLjava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V

    return-void
.end method

.method public addImagesAsync(Ljava/util/HashMap;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    .line 3
    const-string v0, "addImages"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lorg/maplibre/android/maps/Style$BitmapImageConversionTask;

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/Style$BitmapImageConversionTask;-><init>(Lorg/maplibre/android/maps/NativeMap;)V

    invoke-static {p1, p2}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->convertToImageArray(Ljava/util/HashMap;Z)[Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public addImagesAsync(Ljava/util/HashMap;ZLjava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;Z",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/ImageStretches;",
            ">;",
            "Lorg/maplibre/android/maps/ImageContent;",
            ")V"
        }
    .end annotation

    .line 5
    const-string v0, "addImages"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lorg/maplibre/android/maps/Style$BitmapImageConversionTask;

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/Style$BitmapImageConversionTask;-><init>(Lorg/maplibre/android/maps/NativeMap;)V

    .line 7
    invoke-static {p1, p2, p3, p4, p5}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->convertToImageArray(Ljava/util/HashMap;ZLjava/util/List;Ljava/util/List;Lorg/maplibre/android/maps/ImageContent;)[Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public addLayer(Lorg/maplibre/android/style/layers/Layer;)V
    .locals 1

    const-string v0, "addLayer"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/NativeMap;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addLayerAbove(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V
    .locals 1

    const-string v0, "addLayerAbove"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {v0, p1, p2}, Lorg/maplibre/android/maps/NativeMap;->addLayerAbove(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addLayerAt(Lorg/maplibre/android/style/layers/Layer;I)V
    .locals 1

    const-string v0, "addLayerAbove"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {v0, p1, p2}, Lorg/maplibre/android/maps/NativeMap;->addLayerAt(Lorg/maplibre/android/style/layers/Layer;I)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V
    .locals 1

    const-string v0, "addLayerBelow"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {v0, p1, p2}, Lorg/maplibre/android/maps/NativeMap;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSource(Lorg/maplibre/android/style/sources/Source;)V
    .locals 1

    const-string v0, "addSource"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/NativeMap;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->sources:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/maplibre/android/style/sources/Source;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/style/layers/Layer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/maplibre/android/style/layers/Layer;->setDetached()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->sources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/style/sources/Source;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/maplibre/android/style/sources/Source;->setDetached()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->images:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/maplibre/android/maps/NativeMap;->removeImage(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->sources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->images:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "getImage"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    const-string v0, "getJson"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getStyleJson()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;
    .locals 1

    const-string v0, "getLayer"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/style/layers/Layer;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getLayerAs(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/maplibre/android/style/layers/Layer;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "getLayerAs"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object p0

    return-object p0
.end method

.method public getLayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/android/style/layers/Layer;",
            ">;"
        }
    .end annotation

    const-string v0, "getLayers"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getLayers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLight()Lorg/maplibre/android/style/light/Light;
    .locals 1

    const-string v0, "getLight"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getLight()Lorg/maplibre/android/style/light/Light;

    move-result-object p0

    return-object p0
.end method

.method public getSource(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;
    .locals 1

    const-string v0, "getSource"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->sources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/style/sources/Source;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->getSource(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/maplibre/android/style/sources/Source;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "getSourceAs"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->sources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->sources:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/style/sources/Source;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->getSource(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object p0

    return-object p0
.end method

.method public getSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/android/style/sources/Source;",
            ">;"
        }
    .end annotation

    const-string v0, "getSources"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getSources()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 1

    const-string v0, "getTransition"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getTransitionOptions()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    const-string v0, "getUri"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getStyleUri()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "getUrl"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getStyleUri()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFullyLoaded()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    return p0
.end method

.method public onDidFinishLoadingStyle()V
    .locals 4

    iget-boolean v0, p0, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->builder:Lorg/maplibre/android/maps/Style$Builder;

    invoke-static {v0}, Lorg/maplibre/android/maps/Style$Builder;->c(Lorg/maplibre/android/maps/Style$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Style"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/style/sources/Source;

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V
    :try_end_0
    .catch Lorg/maplibre/android/style/sources/CannotAddSourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to add source"

    invoke-static {v2, v3, v1}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->builder:Lorg/maplibre/android/maps/Style$Builder;

    invoke-static {v0}, Lorg/maplibre/android/maps/Style$Builder;->b(Lorg/maplibre/android/maps/Style$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;

    instance-of v3, v1, Lorg/maplibre/android/maps/Style$Builder$LayerAtWrapper;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;->layer:Lorg/maplibre/android/style/layers/Layer;

    check-cast v1, Lorg/maplibre/android/maps/Style$Builder$LayerAtWrapper;

    iget v1, v1, Lorg/maplibre/android/maps/Style$Builder$LayerAtWrapper;->index:I

    invoke-virtual {p0, v3, v1}, Lorg/maplibre/android/maps/Style;->addLayerAt(Lorg/maplibre/android/style/layers/Layer;I)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    instance-of v3, v1, Lorg/maplibre/android/maps/Style$Builder$LayerAboveWrapper;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;->layer:Lorg/maplibre/android/style/layers/Layer;

    check-cast v1, Lorg/maplibre/android/maps/Style$Builder$LayerAboveWrapper;

    iget-object v1, v1, Lorg/maplibre/android/maps/Style$Builder$LayerAboveWrapper;->aboveLayer:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lorg/maplibre/android/maps/Style;->addLayerAbove(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    instance-of v3, v1, Lorg/maplibre/android/maps/Style$Builder$LayerBelowWrapper;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;->layer:Lorg/maplibre/android/style/layers/Layer;

    check-cast v1, Lorg/maplibre/android/maps/Style$Builder$LayerBelowWrapper;

    iget-object v1, v1, Lorg/maplibre/android/maps/Style$Builder$LayerBelowWrapper;->belowLayer:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lorg/maplibre/android/maps/Style;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;->layer:Lorg/maplibre/android/style/layers/Layer;

    const-string v3, "org.maplibre.annotations.points"

    invoke-virtual {p0, v1, v3}, Lorg/maplibre/android/maps/Style;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/maplibre/android/style/layers/CannotAddLayerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :goto_2
    const-string v1, "Failed to add layer"

    invoke-static {v2, v1, v0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->builder:Lorg/maplibre/android/maps/Style$Builder;

    invoke-static {v0}, Lorg/maplibre/android/maps/Style$Builder;->a(Lorg/maplibre/android/maps/Style$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;

    iget-object v2, v1, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->id:Ljava/lang/String;

    iget-object v3, v1, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->bitmap:Landroid/graphics/Bitmap;

    iget-boolean v1, v1, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->sdf:Z

    invoke-virtual {p0, v2, v3, v1}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->builder:Lorg/maplibre/android/maps/Style$Builder;

    invoke-static {v0}, Lorg/maplibre/android/maps/Style$Builder;->d(Lorg/maplibre/android/maps/Style$Builder;)Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->builder:Lorg/maplibre/android/maps/Style$Builder;

    invoke-static {v0}, Lorg/maplibre/android/maps/Style$Builder;->d(Lorg/maplibre/android/maps/Style$Builder;)Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/Style;->setTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V

    :cond_6
    return-void
.end method

.method public removeImage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "removeImage"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->removeImage(Ljava/lang/String;)V

    return-void
.end method

.method public removeLayer(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "removeLayer"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->removeLayer(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeLayer(Lorg/maplibre/android/style/layers/Layer;)Z
    .locals 2

    .line 4
    const-string v0, "removeLayer"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->removeLayer(Lorg/maplibre/android/style/layers/Layer;)Z

    move-result p0

    return p0
.end method

.method public removeLayerAt(I)Z
    .locals 1

    const-string v0, "removeLayerAt"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->removeLayerAt(I)Z

    move-result p0

    return p0
.end method

.method public removeSource(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "removeSource"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/NativeMap;->removeSource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->sources:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v0
.end method

.method public removeSource(Lorg/maplibre/android/style/sources/Source;)Z
    .locals 1

    .line 4
    const-string v0, "removeSource"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/NativeMap;->removeSource(Lorg/maplibre/android/style/sources/Source;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->sources:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/maplibre/android/style/sources/Source;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v0
.end method

.method public setTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 1

    const-string v0, "setTransition"

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->setTransitionOptions(Lorg/maplibre/android/style/layers/TransitionOptions;)V

    return-void
.end method
