.class public Lorg/maplibre/android/annotations/Icon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/annotations/Icon;->mId:Ljava/lang/String;

    iput-object p2, p0, Lorg/maplibre/android/annotations/Icon;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/maplibre/android/annotations/Icon;

    iget-object v2, p0, Lorg/maplibre/android/annotations/Icon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lorg/maplibre/android/annotations/Icon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/maplibre/android/annotations/Icon;->mId:Ljava/lang/String;

    iget-object p1, p1, Lorg/maplibre/android/annotations/Icon;->mId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/annotations/Icon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/annotations/Icon;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/annotations/Icon;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/annotations/Icon;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/Icon;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getScale()F
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/annotations/Icon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result p0

    int-to-float p0, p0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    const/high16 v1, 0x43200000    # 160.0f

    if-nez v0, :cond_0

    move p0, v1

    :cond_0
    div-float/2addr p0, v1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Required to set a Icon before calling getScale"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/annotations/Icon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lorg/maplibre/android/annotations/Icon;->mId:Ljava/lang/String;

    if-eqz p0, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_1
    return v0
.end method

.method public toBytes()[B
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/annotations/Icon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    iget-object v1, p0, Lorg/maplibre/android/annotations/Icon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object p0, p0, Lorg/maplibre/android/annotations/Icon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Required to set a Icon before calling toBytes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
