.class public Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;
.super Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;
.source "SourceFile"


# instance fields
.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/TextureView;Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;-><init>(Landroid/view/TextureView;Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->mapRenderer:Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->onSurfaceDestroyed()V

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->hasNativeSurface:Z

    return-void
.end method

.method public bridge synthetic onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public bridge synthetic onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public bridge synthetic onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public run()V
    .locals 8

    :goto_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    :try_start_1
    iget-boolean v2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->shouldExit:Z

    if-eqz v2, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->cleanup()V

    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->exited:Z

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v2

    goto/16 :goto_6

    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->eventQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->eventQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move v6, v4

    move v7, v6

    :goto_2
    move v4, v3

    goto :goto_5

    :cond_1
    iget-boolean v2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->destroySurface:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->mapRenderer:Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;

    invoke-virtual {v2}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->onSurfaceDestroyed()V

    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iput-object v5, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    :cond_2
    iput-boolean v4, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->hasNativeSurface:Z

    iput-boolean v4, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->destroySurface:Z

    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    move v6, v4

    move v7, v6

    move-object v2, v5

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->paused:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->requestRender:Z

    if-eqz v2, :cond_a

    iget v3, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->width:I

    iget v2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->height:I

    iget-object v6, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    if-nez v6, :cond_4

    new-instance v6, Landroid/view/Surface;

    iget-object v7, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v6, v7}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v6, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->hasNativeSurface:Z

    move v6, v0

    goto :goto_3

    :cond_4
    move v6, v4

    :goto_3
    iget-boolean v7, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->sizeChanged:Z

    if-eqz v7, :cond_5

    iput-boolean v4, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->sizeChanged:Z

    move v7, v0

    goto :goto_4

    :cond_5
    move v7, v4

    :goto_4
    iput-boolean v4, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->requestRender:Z

    move v4, v2

    move-object v2, v5

    :goto_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_6

    :try_start_4
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    goto :goto_7

    :cond_6
    if-eqz v6, :cond_7

    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->mapRenderer:Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;

    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->onSurfaceCreated(Landroid/view/Surface;)V

    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->mapRenderer:Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;

    invoke-virtual {v1, v3, v4}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->onSurfaceChanged(II)V

    goto/16 :goto_0

    :cond_7
    if-eqz v7, :cond_8

    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->mapRenderer:Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;

    invoke-virtual {v1, v3, v4}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->onSurfaceChanged(II)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->surface:Landroid/view/Surface;

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->mapRenderer:Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;

    invoke-virtual {v1}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->onDrawFrame()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_0

    :cond_a
    :try_start_5
    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto/16 :goto_1

    :goto_6
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_7
    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->cleanup()V

    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->exited:Z

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    :catchall_3
    move-exception p0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0

    :catch_0
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;->cleanup()V

    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->exited:Z

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_4
    move-exception p0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p0
.end method
