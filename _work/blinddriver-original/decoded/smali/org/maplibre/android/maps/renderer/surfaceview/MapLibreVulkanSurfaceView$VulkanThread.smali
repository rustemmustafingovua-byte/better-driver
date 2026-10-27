.class Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;
.super Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VulkanThread"
.end annotation


# instance fields
.field private graphicsSurfaceCreated:Z

.field private final mSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    iget-object v0, v0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;-><init>(Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;)V

    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->mSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->graphicsSurfaceCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->readyToDraw()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public guardedRun()V
    .locals 14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->wantRenderNotification:Z

    const/4 v1, 0x0

    move v2, v0

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move-object v3, v1

    move-object v9, v3

    :cond_0
    :goto_0
    iget-object v10, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    monitor-enter v10

    :goto_1
    :try_start_0
    iget-boolean v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->shouldExit:Z

    if-eqz v11, :cond_1

    monitor-exit v10

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    iget-object v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    const/4 v12, 0x1

    if-nez v11, :cond_2

    iget-object v9, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Runnable;

    goto/16 :goto_2

    :cond_2
    iget-boolean v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->paused:Z

    iget-boolean v13, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->requestPaused:Z

    if-eq v11, v13, :cond_3

    iput-boolean v13, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->paused:Z

    iget-object v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    :cond_3
    iget-boolean v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->hasSurface:Z

    if-nez v11, :cond_5

    iget-boolean v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->waitingForSurface:Z

    if-nez v11, :cond_5

    iget-object v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->mSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    if-eqz v11, :cond_4

    iget-boolean v13, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->graphicsSurfaceCreated:Z

    if-eqz v13, :cond_4

    iget-object v11, v11, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderer:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    invoke-virtual {v11}, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->onSurfaceDestroyed()V

    :cond_4
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->graphicsSurfaceCreated:Z

    iput-boolean v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->waitingForSurface:Z

    iget-object v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    :cond_5
    iget-boolean v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->hasSurface:Z

    if-eqz v11, :cond_7

    iget-boolean v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->waitingForSurface:Z

    if-eqz v11, :cond_7

    iget-object v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->mSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    if-eqz v11, :cond_6

    iput-boolean v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->graphicsSurfaceCreated:Z

    move v5, v12

    :cond_6
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->waitingForSurface:Z

    iget-object v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    :cond_7
    if-eqz v2, :cond_8

    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->wantRenderNotification:Z

    iput-boolean v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderComplete:Z

    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    move v2, v0

    :cond_8
    iget-object v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->finishDrawingRunnable:Ljava/lang/Runnable;

    if-eqz v11, :cond_9

    iput-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->finishDrawingRunnable:Ljava/lang/Runnable;

    move-object v3, v11

    :cond_9
    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->readyToDraw()Z

    move-result v11

    if-eqz v11, :cond_10

    iget-boolean v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->graphicsSurfaceCreated:Z

    if-eqz v11, :cond_10

    iget-boolean v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->sizeChanged:Z

    if-eqz v11, :cond_a

    iget v7, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->width:I

    iget v8, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->height:I

    iput-boolean v12, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->wantRenderNotification:Z

    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->sizeChanged:Z

    move v4, v12

    :cond_a
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->requestRender:Z

    iget-object v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    iget-boolean v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->wantRenderNotification:Z

    if-eqz v11, :cond_b

    move v6, v12

    :cond_b
    :goto_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_c

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    move-object v9, v1

    goto/16 :goto_0

    :cond_c
    if-eqz v5, :cond_d

    iget-object v10, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->mSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    if-eqz v10, :cond_d

    iget-object v5, v10, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderer:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    invoke-virtual {v10}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->onSurfaceCreated(Landroid/view/Surface;)V

    move v5, v0

    :cond_d
    if-eqz v4, :cond_e

    iget-object v10, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->mSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    if-eqz v10, :cond_e

    iget-object v4, v10, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderer:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    invoke-virtual {v4, v7, v8}, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->onSurfaceChanged(II)V

    move v4, v0

    :cond_e
    iget-object v10, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->mSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    if-eqz v10, :cond_f

    iget-object v10, v10, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderer:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    invoke-virtual {v10}, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->onDrawFrame()V

    if-eqz v3, :cond_f

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    move-object v3, v1

    :cond_f
    if-eqz v6, :cond_0

    move v6, v0

    move v2, v12

    goto/16 :goto_0

    :cond_10
    if-eqz v3, :cond_11

    :try_start_1
    const-string v11, "MapLibreSurfaceView"

    const-string v12, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    move-object v3, v1

    :cond_11
    iget-object v11, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->wait()V

    goto/16 :goto_1

    :goto_3
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
