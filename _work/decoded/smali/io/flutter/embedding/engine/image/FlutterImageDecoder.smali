.class public Lio/flutter/embedding/engine/image/FlutterImageDecoder;
.super Ljava/lang/Object;
.source "FlutterImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeImage(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "headerListener"    # Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;

    .line 48
    invoke-static {p0, p1}, Lio/flutter/embedding/engine/image/Metadata;->create(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;)Lio/flutter/embedding/engine/image/Metadata;

    move-result-object v0

    .line 49
    .local v0, "metadata":Lio/flutter/embedding/engine/image/Metadata;
    const/4 v1, 0x0

    .line 50
    .local v1, "impl":Lio/flutter/embedding/engine/image/ImageDecoder;
    invoke-virtual {v0}, Lio/flutter/embedding/engine/image/Metadata;->isHeif()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x24

    if-ne v2, v3, :cond_0

    .line 52
    new-instance v2, Lio/flutter/embedding/engine/image/ImageDecoderHeifApi36Impl;

    invoke-direct {v2}, Lio/flutter/embedding/engine/image/ImageDecoderHeifApi36Impl;-><init>()V

    move-object v1, v2

    goto :goto_0

    .line 53
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_1

    .line 54
    new-instance v2, Lio/flutter/embedding/engine/image/ImageDecoderHeifPre36Impl;

    invoke-direct {v2}, Lio/flutter/embedding/engine/image/ImageDecoderHeifPre36Impl;-><init>()V

    move-object v1, v2

    .line 57
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 58
    new-instance v2, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;

    invoke-direct {v2, p1}, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;-><init>(Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;)V

    move-object v1, v2

    .line 60
    :cond_2
    invoke-interface {v1, p0, v0}, Lio/flutter/embedding/engine/image/ImageDecoder;->decodeImage(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/Metadata;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method
