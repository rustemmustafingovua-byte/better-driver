.class public abstract Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;,
        Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;,
        Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$OnSurfaceViewDetachedListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "MapLibreSurfaceView"


# instance fields
.field protected detached:Z

.field protected detachedListener:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$OnSurfaceViewDetachedListener;

.field protected renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

.field protected final renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

.field protected renderer:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-direct {p1}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    .line 3
    invoke-direct {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    invoke-direct {p1}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThreadManager:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThreadManager;

    .line 6
    invoke-direct {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public checkRenderThreadState()V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setRenderer has already been called for this instance."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract createRenderThread()V
.end method

.method public finalize()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getRenderingRefreshMode()Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->getRenderingRefreshMode()Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->detached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderer:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;->WHEN_DIRTY:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->getRenderingRefreshMode()Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->createRenderThread()V

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->setRenderingRefreshMode(Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;)V

    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->detached:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->detachedListener:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$OnSurfaceViewDetachedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$OnSurfaceViewDetachedListener;->onSurfaceViewDetached()V

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->requestExitAndWait()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->detached:Z

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->onResume()V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->requestRender()V

    return-void
.end method

.method public setDetachedListener(Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$OnSurfaceViewDetachedListener;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->detachedListener:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$OnSurfaceViewDetachedListener;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->detachedListener:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$OnSurfaceViewDetachedListener;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Detached from window listener has been already set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRenderer(Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->checkRenderThreadState()V

    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderer:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->createRenderThread()V

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setRenderingRefreshMode(Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->setRenderingRefreshMode(Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    invoke-virtual {p0, p3, p4}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->onWindowResize(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->surfaceCreated()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->surfaceDestroyed()V

    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->requestRenderAndNotify(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public waitForEmpty()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->waitForEmpty()V

    return-void
.end method
