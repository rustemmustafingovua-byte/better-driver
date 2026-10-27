.class Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;
.super Ljava/lang/Object;
.source "ImageDecoderDefaultImpl.java"

# interfaces
.implements Lio/flutter/embedding/engine/image/ImageDecoder;


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterImageDecoderImplDefault"


# instance fields
.field private final listener:Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;)V
    .locals 0
    .param p1, "listener"    # Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;->listener:Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;

    .line 31
    return-void
.end method


# virtual methods
.method public decodeImage(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/Metadata;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "metadata"    # Lio/flutter/embedding/engine/image/Metadata;

    .line 41
    nop

    .line 42
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 44
    .local v0, "source":Landroid/graphics/ImageDecoder$Source;
    :try_start_0
    new-instance v1, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl$$ExternalSyntheticLambda0;-><init>(Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;)V

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "FlutterImageDecoderImplDefault"

    const-string v3, "Failed to decode image"

    invoke-static {v2, v3, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    const/4 v2, 0x0

    return-object v2
.end method

.method synthetic lambda$decodeImage$0$io-flutter-embedding-engine-image-ImageDecoderDefaultImpl(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 4
    .param p1, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p2, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p3, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 48
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 55
    iget-object v0, p0, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;->listener:Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    .line 57
    .local v0, "size":Landroid/util/Size;
    iget-object v1, p0, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;->listener:Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;->onImageHeader(II)V

    .line 59
    .end local v0    # "size":Landroid/util/Size;
    :cond_0
    return-void
.end method
