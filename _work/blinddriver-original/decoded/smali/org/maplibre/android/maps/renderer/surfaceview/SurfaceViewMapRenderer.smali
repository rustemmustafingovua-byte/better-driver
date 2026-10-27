.class public Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;
.super Lorg/maplibre/android/maps/renderer/MapRenderer;
.source "SourceFile"


# instance fields
.field protected final surfaceView:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/maplibre/android/maps/renderer/MapRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->surfaceView:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;

    new-instance p1, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer$1;

    invoke-direct {p1, p0}, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer$1;-><init>(Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;)V

    invoke-virtual {p2, p1}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->setDetachedListener(Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$OnSurfaceViewDetachedListener;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->nativeReset()V

    return-void
.end method


# virtual methods
.method public getRenderingRefreshMode()Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->surfaceView:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->getRenderingRefreshMode()Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->surfaceView:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onDestroy()V

    return-void
.end method

.method public onDrawFrame()V
    .locals 0

    invoke-super {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onDrawFrame()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->surfaceView:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->surfaceView:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->onPause()V

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

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->surfaceView:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->surfaceView:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->requestRender()V

    return-void
.end method

.method public setRenderingRefreshMode(Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->surfaceView:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->setRenderingRefreshMode(Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;)V

    return-void
.end method

.method public waitForEmpty()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->surfaceView:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->waitForEmpty()V

    return-void
.end method
