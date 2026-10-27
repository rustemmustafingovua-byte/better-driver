.class public Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;
.super Ljava/lang/Object;
.source "SurfaceTexturePlatformViewRenderTarget.java"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformViewRenderTarget;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTexturePlatformViewRenderTarget"


# instance fields
.field private bufferHeight:I

.field private bufferWidth:I

.field private shouldRecreateSurfaceForLowMemory:Z

.field private surface:Landroid/view/Surface;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final surfaceTextureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

.field private final trimMemoryListener:Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;


# direct methods
.method public constructor <init>(Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;)V
    .locals 1
    .param p1, "surfaceTextureEntry"    # Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->bufferWidth:I

    .line 25
    iput v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->bufferHeight:I

    .line 27
    iput-boolean v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->shouldRecreateSurfaceForLowMemory:Z

    .line 28
    new-instance v0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget$1;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget$1;-><init>(Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->trimMemoryListener:Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;

    .line 64
    iput-object p1, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTextureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 65
    invoke-interface {p1}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 66
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->trimMemoryListener:Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;

    invoke-interface {p1, v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->setOnTrimMemoryListener(Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;)V

    .line 67
    return-void
.end method

.method static synthetic access$002(Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;
    .param p1, "x1"    # Z

    .line 17
    iput-boolean p1, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->shouldRecreateSurfaceForLowMemory:Z

    return p1
.end method

.method private recreateSurfaceIfNeeded()V
    .locals 1

    .line 46
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->shouldRecreateSurfaceForLowMemory:Z

    if-nez v0, :cond_0

    .line 48
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    .line 54
    :cond_1
    invoke-virtual {p0}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->createSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->shouldRecreateSurfaceForLowMemory:Z

    .line 56
    return-void
.end method


# virtual methods
.method protected createSurface()Landroid/view/Surface;
    .locals 2

    .line 59
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 82
    iget v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->bufferHeight:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 86
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTextureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->id()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 104
    invoke-direct {p0}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->recreateSurfaceIfNeeded()V

    .line 105
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    return-object v0

    .line 106
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 78
    iget v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->bufferWidth:I

    return v0
.end method

.method public isReleased()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 2

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 96
    iget-object v1, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 98
    iput-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    .line 100
    :cond_0
    return-void
.end method

.method public resize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 70
    iput p1, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->bufferWidth:I

    .line 71
    iput p2, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->bufferHeight:I

    .line 72
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->bufferWidth:I

    iget v2, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->bufferHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 75
    :cond_0
    return-void
.end method
