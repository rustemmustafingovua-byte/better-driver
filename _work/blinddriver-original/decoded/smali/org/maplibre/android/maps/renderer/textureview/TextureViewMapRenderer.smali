.class public Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;
.super Lorg/maplibre/android/maps/renderer/MapRenderer;
.source "SourceFile"


# instance fields
.field private renderThread:Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;

.field private textureView:Landroid/view/TextureView;

.field private translucentSurface:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/TextureView;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/maplibre/android/maps/renderer/MapRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->textureView:Landroid/view/TextureView;

    iput-boolean p4, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->translucentSurface:Z

    return-void
.end method


# virtual methods
.method public getRenderingRefreshMode()Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "getRenderingRefreshMode is not supported for TextureViewMapRenderer. Use SurfaceViewMapRenderer to set the rendering refresh mode."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method public isTranslucentSurface()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->translucentSurface:Z

    return p0
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->renderThread:Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->onDestroy()V

    return-void
.end method

.method public onDrawFrame()V
    .locals 0

    invoke-super {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onDrawFrame()V

    return-void
.end method

.method public onStart()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->renderThread:Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->renderThread:Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->onPause()V

    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onSurfaceChanged(II)V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/Surface;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onSurfaceCreated(Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 0

    invoke-super {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onSurfaceDestroyed()V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->renderThread:Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->renderThread:Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->requestRender()V

    return-void
.end method

.method public setRenderThread(Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;)V
    .locals 1

    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->renderThread:Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;

    const-string v0, "TextureViewRenderer"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->renderThread:Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setRenderingRefreshMode(Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "setRenderingRefreshMode is not supported for TextureViewMapRenderer. Use SurfaceViewMapRenderer to set the rendering refresh mode."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public waitForEmpty()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->renderThread:Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;->waitForEmpty()V

    return-void
.end method
