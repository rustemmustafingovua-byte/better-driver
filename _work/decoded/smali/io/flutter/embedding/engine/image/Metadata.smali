.class Lio/flutter/embedding/engine/image/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# instance fields
.field height:I

.field mimeType:Ljava/lang/String;

.field orientation:I

.field originalHeight:I

.field originalWidth:I

.field rotation:I

.field width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;)Lio/flutter/embedding/engine/image/Metadata;
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "headerListener"    # Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;

    .line 34
    new-instance v0, Lio/flutter/embedding/engine/image/Metadata;

    invoke-direct {v0}, Lio/flutter/embedding/engine/image/Metadata;-><init>()V

    .line 35
    .local v0, "metadata":Lio/flutter/embedding/engine/image/Metadata;
    invoke-static {p0}, Lio/flutter/embedding/engine/image/ImageUtils;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 37
    .local v1, "bytes":[B
    invoke-static {v1, v0}, Lio/flutter/embedding/engine/image/BitmapMetadataReader;->read([BLio/flutter/embedding/engine/image/Metadata;)V

    .line 39
    invoke-virtual {v0}, Lio/flutter/embedding/engine/image/Metadata;->isHeif()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-static {v1, v0}, Lio/flutter/embedding/engine/image/MediaMetadataReader;->read([BLio/flutter/embedding/engine/image/Metadata;)V

    .line 43
    iget v2, v0, Lio/flutter/embedding/engine/image/Metadata;->width:I

    iget v3, v0, Lio/flutter/embedding/engine/image/Metadata;->height:I

    invoke-interface {p1, v2, v3}, Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;->onImageHeader(II)V

    .line 45
    invoke-static {v1, v0}, Lio/flutter/embedding/engine/image/ExifMetadataReader;->read([BLio/flutter/embedding/engine/image/Metadata;)V

    .line 47
    :cond_0
    return-object v0
.end method


# virtual methods
.method isHeif()Z
    .locals 2

    .line 56
    const-string v0, "image/heif"

    iget-object v1, p0, Lio/flutter/embedding/engine/image/Metadata;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
