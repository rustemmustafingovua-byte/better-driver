.class Lio/flutter/embedding/engine/image/ImageDecoderHeifApi36Impl;
.super Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;
.source "ImageDecoderHeifApi36Impl.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;-><init>(Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;)V

    .line 26
    return-void
.end method


# virtual methods
.method public decodeImage(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/Metadata;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "metadata"    # Lio/flutter/embedding/engine/image/Metadata;

    .line 39
    invoke-super {p0, p1, p2}, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;->decodeImage(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/Metadata;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    .local v0, "defaultBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 41
    return-object v0

    .line 43
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/flutter/embedding/engine/image/ImageDecoderHeifApi36Impl;->decodeImageFallback(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/Metadata;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method decodeImageFallback(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/Metadata;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "metadata"    # Lio/flutter/embedding/engine/image/Metadata;

    .line 47
    invoke-static {p1}, Lio/flutter/embedding/engine/image/ImageUtils;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 48
    .local v0, "bytes":[B
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 49
    .local v1, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 50
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 51
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    iget v2, p2, Lio/flutter/embedding/engine/image/Metadata;->rotation:I

    if-eqz v2, :cond_0

    .line 52
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 53
    .local v9, "matrix":Landroid/graphics/Matrix;
    iget v2, p2, Lio/flutter/embedding/engine/image/Metadata;->rotation:I

    int-to-float v2, v2

    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 54
    nop

    .line 55
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 56
    .local v2, "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    iget v3, p2, Lio/flutter/embedding/engine/image/Metadata;->orientation:I

    invoke-static {v2, v3}, Lio/flutter/embedding/engine/image/ImageUtils;->applyFlipIfNeeded(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 59
    .end local v2    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    iget v2, p2, Lio/flutter/embedding/engine/image/Metadata;->orientation:I

    invoke-static {v4, v2}, Lio/flutter/embedding/engine/image/ImageUtils;->applyFlipIfNeeded(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method
