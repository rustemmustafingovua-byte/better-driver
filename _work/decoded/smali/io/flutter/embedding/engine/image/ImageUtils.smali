.class Lio/flutter/embedding/engine/image/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageUtils"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyFlipIfNeeded(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "decoded"    # Landroid/graphics/Bitmap;
    .param p1, "exifOrientation"    # I

    .line 70
    if-eqz p0, :cond_2

    invoke-static {p1}, Lio/flutter/embedding/engine/image/ImageUtils;->isFlipCase(I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v1, p0

    goto :goto_1

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 75
    .local v4, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 76
    .local v5, "h":I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 78
    .local v6, "m":Landroid/graphics/Matrix;
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x40000000    # 2.0f

    packed-switch p1, :pswitch_data_0

    .line 92
    :pswitch_0
    move-object v1, p0

    .end local p0    # "decoded":Landroid/graphics/Bitmap;
    .local v1, "decoded":Landroid/graphics/Bitmap;
    return-object v1

    .line 89
    .end local v1    # "decoded":Landroid/graphics/Bitmap;
    .restart local p0    # "decoded":Landroid/graphics/Bitmap;
    :pswitch_1
    int-to-float v3, v4

    div-float/2addr v3, v2

    int-to-float v7, v5

    div-float/2addr v7, v2

    invoke-virtual {v6, v1, v0, v3, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 90
    goto :goto_0

    .line 86
    :pswitch_2
    int-to-float v3, v4

    div-float/2addr v3, v2

    int-to-float v7, v5

    div-float/2addr v7, v2

    invoke-virtual {v6, v0, v1, v3, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 87
    goto :goto_0

    .line 83
    :pswitch_3
    int-to-float v3, v4

    div-float/2addr v3, v2

    int-to-float v7, v5

    div-float/2addr v7, v2

    invoke-virtual {v6, v0, v1, v3, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 84
    goto :goto_0

    .line 80
    :pswitch_4
    int-to-float v3, v4

    div-float/2addr v3, v2

    int-to-float v7, v5

    div-float/2addr v7, v2

    invoke-virtual {v6, v1, v0, v3, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 81
    nop

    .line 95
    :goto_0
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    move-object v1, p0

    .end local p0    # "decoded":Landroid/graphics/Bitmap;
    .restart local v1    # "decoded":Landroid/graphics/Bitmap;
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 96
    .local p0, "flipped":Landroid/graphics/Bitmap;
    if-eq p0, v1, :cond_1

    .line 97
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    :cond_1
    return-object p0

    .line 70
    .end local v1    # "decoded":Landroid/graphics/Bitmap;
    .end local v4    # "w":I
    .end local v5    # "h":I
    .end local v6    # "m":Landroid/graphics/Matrix;
    .local p0, "decoded":Landroid/graphics/Bitmap;
    :cond_2
    move-object v1, p0

    .line 71
    .end local p0    # "decoded":Landroid/graphics/Bitmap;
    .restart local v1    # "decoded":Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getBytes(Ljava/nio/ByteBuffer;)[B
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 29
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 31
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 32
    return-object v0
.end method

.method static isFlipCase(I)Z
    .locals 3
    .param p0, "orientation"    # I

    .line 42
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown EXIF orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageUtils"

    invoke-static {v2, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return v0

    .line 47
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 52
    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
