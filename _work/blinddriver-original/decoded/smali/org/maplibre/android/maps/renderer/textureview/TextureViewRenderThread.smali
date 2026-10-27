.class abstract Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "Mbgl-TextureViewRenderThread"


# instance fields
.field protected destroySurface:Z

.field protected final eventQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected exited:Z

.field protected hasNativeSurface:Z

.field protected height:I

.field protected final lock:Ljava/lang/Object;

.field protected final mapRenderer:Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;

.field protected paused:Z

.field protected requestRender:Z

.field protected shouldExit:Z

.field protected sizeChanged:Z

.field protected surfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected width:I


# direct methods
.method public constructor <init>(Landroid/view/TextureView;Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->eventQueue:Ljava/util/LinkedList;

    invoke-virtual {p2}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->isTranslucentSurface()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object p2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->mapRenderer:Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->shouldExit:Z

    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->exited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->paused:Z

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->paused:Z

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iput p2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->width:I

    iput p3, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->height:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->requestRender:Z

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    iget-object p1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->destroySurface:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->requestRender:Z

    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->hasNativeSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->exited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit p1

    return v0

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput p2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->width:I

    iput p3, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->height:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->sizeChanged:Z

    iput-boolean p2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->requestRender:Z

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->eventQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "runnable must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestRender()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->requestRender:Z

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public waitForEmpty()V
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->eventQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
