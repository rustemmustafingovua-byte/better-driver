.class abstract Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RenderThread"
.end annotation


# instance fields
.field protected eventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected exited:Z

.field protected finishDrawingRunnable:Ljava/lang/Runnable;

.field protected hasSurface:Z

.field protected height:I

.field protected paused:Z

.field protected renderComplete:Z

.field protected renderMode:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

.field protected final renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

.field protected requestPaused:Z

.field protected requestRender:Z

.field protected shouldExit:Z

.field protected sizeChanged:Z

.field protected waitingForSurface:Z

.field protected wantRenderNotification:Z

.field protected width:I


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->waitingForSurface:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->eventQueue:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->sizeChanged:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->finishDrawingRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->width:I

    iput v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->height:I

    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->requestRender:Z

    sget-object v0, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;->WHEN_DIRTY:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    iput-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderMode:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->wantRenderNotification:Z

    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->lambda$requestRenderAndNotify$0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$requestRenderAndNotify$0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->readyToDraw()Z

    move-result p0

    return p0
.end method

.method public getRenderingRefreshMode()Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderMode:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract guardedRun()V
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->requestPaused:Z

    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->exited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

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

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->requestPaused:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->requestRender:Z

    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderComplete:Z

    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->exited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->paused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

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

.method public onWindowResize(II)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->width:I

    iput p2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->height:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->sizeChanged:Z

    iput-boolean p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->requestRender:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderComplete:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-ne p1, p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->exited:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->paused:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderComplete:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->ableToDraw()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

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

.method public readyToDraw()Z
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->paused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->hasSurface:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->width:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->height:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->requestRender:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderMode:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    sget-object v0, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;->CONTINUOUS:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public requestExitAndWait()V
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->shouldExit:Z

    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->exited:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    const-wide/16 v2, 0x64

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

.method public requestRender()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->requestRender:Z

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

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

.method public requestRenderAndNotify(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->wantRenderNotification:Z

    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->requestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderComplete:Z

    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->finishDrawingRunnable:Ljava/lang/Runnable;

    new-instance v2, Lorg/maplibre/android/maps/renderer/surfaceview/a;

    invoke-direct {v2, v1, p1}, Lorg/maplibre/android/maps/renderer/surfaceview/a;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->finishDrawingRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RenderThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;->threadExiting(Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-virtual {v1, p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;->threadExiting(Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;)V

    throw v0
.end method

.method public setRenderingRefreshMode(Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderMode:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

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

.method public surfaceCreated()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->hasSurface:Z

    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->exited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->waitingForSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

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

.method public surfaceDestroyed()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->hasSurface:Z

    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->exited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->waitingForSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

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

.method public waitForEmpty()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

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
