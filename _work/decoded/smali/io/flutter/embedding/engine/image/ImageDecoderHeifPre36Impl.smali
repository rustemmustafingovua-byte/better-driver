.class Lio/flutter/embedding/engine/image/ImageDecoderHeifPre36Impl;
.super Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;
.source "ImageDecoderHeifPre36Impl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterImageDecoderImplHeifPre36"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;-><init>(Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;)V

    .line 25
    return-void
.end method


# virtual methods
.method public decodeImage(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/Metadata;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "metadata"    # Lio/flutter/embedding/engine/image/Metadata;

    .line 36
    invoke-super {p0, p1, p2}, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;->decodeImage(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/Metadata;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p2, Lio/flutter/embedding/engine/image/Metadata;->orientation:I

    invoke-static {v0, v1}, Lio/flutter/embedding/engine/image/ImageUtils;->applyFlipIfNeeded(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
