.class public Lio/flutter/embedding/engine/image/BitmapMetadataReader;
.super Ljava/lang/Object;
.source "BitmapMetadataReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapMetadataReader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read([BLio/flutter/embedding/engine/image/Metadata;)V
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "metadata"    # Lio/flutter/embedding/engine/image/Metadata;

    .line 26
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 27
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 28
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 29
    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v1, p1, Lio/flutter/embedding/engine/image/Metadata;->mimeType:Ljava/lang/String;

    .line 31
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p1, Lio/flutter/embedding/engine/image/Metadata;->originalHeight:I

    .line 32
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p1, Lio/flutter/embedding/engine/image/Metadata;->originalWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BitmapMetadataReader"

    const-string v2, "Failed to decode image for mime type"

    invoke-static {v1, v2, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
