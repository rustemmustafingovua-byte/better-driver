.class public Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;
.super Ljava/lang/Object;
.source "ImageReaderPlatformViewRenderTarget.java"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformViewRenderTarget;


# static fields
.field private static final MAX_IMAGES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ImageReaderPlatformViewRenderTarget"


# instance fields
.field private bufferHeight:I

.field private bufferWidth:I

.field private final onImageAvailableHandler:Landroid/os/Handler;

.field private final onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private reader:Landroid/media/ImageReader;

.field private textureEntry:Lio/flutter/view/TextureRegistry$ImageTextureEntry;


# direct methods
.method public constructor <init>(Lio/flutter/view/TextureRegistry$ImageTextureEntry;)V
    .locals 2
    .param p1, "textureEntry"    # Lio/flutter/view/TextureRegistry$ImageTextureEntry;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferWidth:I

    .line 24
    iput v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferHeight:I

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->onImageAvailableHandler:Landroid/os/Handler;

    .line 39
    new-instance v0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget$1;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget$1;-><init>(Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 103
    iput-object p1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->textureEntry:Lio/flutter/view/TextureRegistry$ImageTextureEntry;

    .line 104
    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ImageReaderPlatformViewRenderTarget requires API version 29+"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;)Lio/flutter/view/TextureRegistry$ImageTextureEntry;
    .locals 1
    .param p0, "x0"    # Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;

    .line 20
    iget-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->textureEntry:Lio/flutter/view/TextureRegistry$ImageTextureEntry;

    return-object v0
.end method

.method private closeReader()V
    .locals 2

    .line 29
    iget-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->reader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->textureEntry:Lio/flutter/view/TextureRegistry$ImageTextureEntry;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/flutter/view/TextureRegistry$ImageTextureEntry;->pushImage(Landroid/media/Image;)V

    .line 33
    iget-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->reader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 34
    iput-object v1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->reader:Landroid/media/ImageReader;

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method protected createImageReader()Landroid/media/ImageReader;
    .locals 2

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->createImageReader33()Landroid/media/ImageReader;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 92
    invoke-virtual {p0}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->createImageReader29()Landroid/media/ImageReader;

    move-result-object v0

    return-object v0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ImageReaderPlatformViewRenderTarget requires API version 29+"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createImageReader29()Landroid/media/ImageReader;
    .locals 6

    .line 77
    iget v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferWidth:I

    iget v1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferHeight:I

    .line 78
    const/16 v2, 0x22

    const/4 v3, 0x4

    const-wide/16 v4, 0x100

    invoke-static/range {v0 .. v5}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v0

    .line 84
    .local v0, "reader":Landroid/media/ImageReader;
    iget-object v1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v2, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->onImageAvailableHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 85
    return-object v0
.end method

.method protected createImageReader33()Landroid/media/ImageReader;
    .locals 4

    .line 58
    new-instance v0, Landroid/media/ImageReader$Builder;

    iget v1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferWidth:I

    iget v2, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferHeight:I

    invoke-direct {v0, v1, v2}, Landroid/media/ImageReader$Builder;-><init>(II)V

    .line 60
    .local v0, "builder":Landroid/media/ImageReader$Builder;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/ImageReader$Builder;->setMaxImages(I)Landroid/media/ImageReader$Builder;

    .line 67
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/media/ImageReader$Builder;->setImageFormat(I)Landroid/media/ImageReader$Builder;

    .line 69
    const-wide/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader$Builder;->setUsage(J)Landroid/media/ImageReader$Builder;

    .line 70
    invoke-virtual {v0}, Landroid/media/ImageReader$Builder;->build()Landroid/media/ImageReader;

    move-result-object v1

    .line 71
    .local v1, "reader":Landroid/media/ImageReader;
    iget-object v2, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v3, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->onImageAvailableHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 72
    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .line 122
    iget v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferHeight:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 126
    iget-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->textureEntry:Lio/flutter/view/TextureRegistry$ImageTextureEntry;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$ImageTextureEntry;->id()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 140
    iget-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->reader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 118
    iget v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferWidth:I

    return v0
.end method

.method public isReleased()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->textureEntry:Lio/flutter/view/TextureRegistry$ImageTextureEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 1

    .line 130
    invoke-direct {p0}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->closeReader()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->textureEntry:Lio/flutter/view/TextureRegistry$ImageTextureEntry;

    .line 133
    return-void
.end method

.method public resize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 107
    iget-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->reader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    iget v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferHeight:I

    if-ne v0, p2, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->closeReader()V

    .line 112
    iput p1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferWidth:I

    .line 113
    iput p2, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferHeight:I

    .line 114
    invoke-virtual {p0}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->createImageReader()Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->reader:Landroid/media/ImageReader;

    .line 115
    return-void
.end method
