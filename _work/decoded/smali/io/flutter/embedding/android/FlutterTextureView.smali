.class public Lio/flutter/embedding/android/FlutterTextureView;
.super Landroid/view/TextureView;
.source "FlutterTextureView.java"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/RenderSurface;


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterTextureView"


# instance fields
.field private flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field private isContentSizingEnabled:Z

.field private isPaused:Z

.field private isSurfaceAvailableForRendering:Z

.field private renderSurface:Landroid/view/Surface;

.field private final surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/android/FlutterTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isSurfaceAvailableForRendering:Z

    .line 38
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isPaused:Z

    .line 42
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isContentSizingEnabled:Z

    .line 52
    new-instance v0, Lio/flutter/embedding/android/FlutterTextureView$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterTextureView$1;-><init>(Lio/flutter/embedding/android/FlutterTextureView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 114
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->init()V

    .line 115
    return-void
.end method

.method static synthetic access$002(Lio/flutter/embedding/android/FlutterTextureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterTextureView;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->isSurfaceAvailableForRendering:Z

    return p1
.end method

.method static synthetic access$100(Lio/flutter/embedding/android/FlutterTextureView;)Z
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterTextureView;

    .line 34
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->shouldNotify()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lio/flutter/embedding/android/FlutterTextureView;)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterTextureView;

    .line 34
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->connectSurfaceToRenderer()V

    return-void
.end method

.method static synthetic access$300(Lio/flutter/embedding/android/FlutterTextureView;II)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterTextureView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 34
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/android/FlutterTextureView;->changeSurfaceSize(II)V

    return-void
.end method

.method static synthetic access$400(Lio/flutter/embedding/android/FlutterTextureView;)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterTextureView;

    .line 34
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->disconnectSurfaceFromRenderer()V

    return-void
.end method

.method static synthetic access$500(Lio/flutter/embedding/android/FlutterTextureView;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterTextureView;

    .line 34
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$502(Lio/flutter/embedding/android/FlutterTextureView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/android/FlutterTextureView;
    .param p1, "x1"    # Landroid/view/Surface;

    .line 34
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    return-object p1
.end method

.method private changeSurfaceSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 256
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying FlutterRenderer that Android surface size has changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterTextureView"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->surfaceChanged(II)V

    .line 268
    return-void

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "changeSurfaceSize() should only be called when flutterRenderer is non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private connectSurfaceToRenderer()V
    .locals 3

    .line 238
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    .line 250
    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    .line 251
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterTextureView;->isPaused:Z

    invoke-virtual {v0, v1, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->startRenderingToSurface(Landroid/view/Surface;Z)V

    .line 252
    return-void

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connectSurfaceToRenderer() should only be called when flutterRenderer and getSurfaceTexture() are non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private disconnectSurfaceFromRenderer()V
    .locals 2

    .line 272
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->stopRenderingToSurface()V

    .line 279
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    .line 283
    :cond_0
    return-void

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "disconnectSurfaceFromRenderer() should only be called when flutterRenderer is non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init()V
    .locals 1

    .line 120
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 122
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterTextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/embedding/android/ContentSizingFlag;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isContentSizingEnabled:Z

    .line 123
    return-void
.end method

.method static synthetic lambda$onMeasure$0(Lio/flutter/embedding/android/FlutterTextureView;II)V
    .locals 0
    .param p0, "rec$"    # Lio/flutter/embedding/android/FlutterTextureView;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I

    .line 128
    invoke-virtual {p0, p1, p2}, Lio/flutter/embedding/android/FlutterTextureView;->setMeasuredDimension(II)V

    return-void
.end method

.method private shouldNotify()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public attachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 2
    .param p1, "flutterRenderer"    # Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 159
    const-string v0, "Attaching to FlutterRenderer."

    const-string v1, "FlutterTextureView"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "Already connected to a FlutterRenderer. Detaching from old one and attaching to new one."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->stopRenderingToSurface()V

    .line 168
    :cond_0
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 170
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterTextureView;->resume()V

    .line 171
    return-void
.end method

.method public detachFromRenderer()V
    .locals 2

    .line 181
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    const-string v1, "FlutterTextureView"

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterTextureView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "Disconnecting FlutterRenderer from Android surface."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->disconnectSurfaceFromRenderer()V

    .line 191
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    goto :goto_0

    .line 193
    :cond_1
    const-string v0, "detachFromRenderer() invoked when no FlutterRenderer was attached."

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void
.end method

.method public getAttachedRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 1

    .line 137
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    return-object v0
.end method

.method isSurfaceAvailableForRendering()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isSurfaceAvailableForRendering:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 127
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isContentSizingEnabled:Z

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Lio/flutter/embedding/android/FlutterTextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterTextureView$$ExternalSyntheticLambda0;-><init>(Lio/flutter/embedding/android/FlutterTextureView;)V

    invoke-static {p1, p2, v0}, Lio/flutter/embedding/android/FlutterMeasureSpec;->onMeasure(IILio/flutter/embedding/android/FlutterMeasureSpec$MeasureCallback;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 132
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 202
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-nez v0, :cond_0

    .line 203
    const-string v0, "FlutterTextureView"

    const-string v1, "pause() invoked when no FlutterRenderer was attached."

    invoke-static {v0, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isPaused:Z

    .line 207
    return-void
.end method

.method public resume()V
    .locals 2

    .line 210
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    const-string v1, "FlutterTextureView"

    if-nez v0, :cond_0

    .line 211
    const-string v0, "resume() invoked when no FlutterRenderer was attached."

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterTextureView;->isSurfaceAvailableForRendering()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    const-string v0, "Surface is available for rendering. Connecting FlutterRenderer to Android surface."

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->connectSurfaceToRenderer()V

    .line 223
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isPaused:Z

    .line 224
    return-void
.end method

.method public setRenderSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "renderSurface"    # Landroid/view/Surface;

    .line 233
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    .line 234
    return-void
.end method
