.class public abstract Lorg/maplibre/android/maps/renderer/MapRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/renderer/MapRendererScheduler;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-MapRenderer"


# instance fields
.field private expectedRenderTime:D

.field private nativePtr:J

.field private onFpsChangedListener:Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;

.field private timeElapsed:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/maplibre/android/LibraryLoader;->load()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/maplibre/android/maps/renderer/MapRenderer;->nativePtr:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/maplibre/android/maps/renderer/MapRenderer;->expectedRenderTime:D

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, p0, p1, p2}, Lorg/maplibre/android/maps/renderer/MapRenderer;->nativeInitialize(Lorg/maplibre/android/maps/renderer/MapRenderer;FLjava/lang/String;)V

    return-void
.end method

.method public static create(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/Context;Ljava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/MapRenderer;
    .locals 2

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getLocalIdeographFontFamily()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getTextureMode()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/TextureView;

    invoke-direct {v1, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getTranslucentTextureSurface()Z

    move-result p0

    invoke-static {p1, v1, v0, p0, p2}, Lorg/maplibre/android/maps/renderer/MapRendererFactory;->newTextureViewMapRenderer(Landroid/content/Context;Landroid/view/TextureView;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getRenderSurfaceOnTop()Z

    move-result p0

    invoke-static {p1, v0, p0, p2}, Lorg/maplibre/android/maps/renderer/MapRendererFactory;->newSurfaceViewMapRenderer(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    move-result-object p0

    return-object p0
.end method

.method private native nativeInitialize(Lorg/maplibre/android/maps/renderer/MapRenderer;FLjava/lang/String;)V
.end method

.method private native nativeOnSurfaceChanged(II)V
.end method

.method private native nativeOnSurfaceCreated(Landroid/view/Surface;)V
.end method

.method private native nativeOnSurfaceDestroyed()V
.end method

.method private native nativeRender()V
.end method

.method private native nativeSetSwapBehaviorFlush(Z)V
.end method

.method private updateFps()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/maplibre/android/maps/renderer/MapRenderer;->timeElapsed:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    sub-long v2, v0, v2

    long-to-double v2, v2

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v2

    iget-object v2, p0, Lorg/maplibre/android/maps/renderer/MapRenderer;->onFpsChangedListener:Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;

    invoke-interface {v2, v4, v5}, Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;->onFpsChanged(D)V

    :cond_0
    iput-wide v0, p0, Lorg/maplibre/android/maps/renderer/MapRenderer;->timeElapsed:J

    return-void
.end method


# virtual methods
.method public native finalize()V
.end method

.method public abstract getRenderingRefreshMode()Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public native nativeReset()V
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDrawFrame()V
    .locals 6

    const-string v0, "Mbgl-MapRenderer"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :try_start_0
    invoke-direct {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->nativeRender()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    long-to-double v1, v3

    iget-wide v3, p0, Lorg/maplibre/android/maps/renderer/MapRenderer;->expectedRenderTime:D

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    sub-double/2addr v3, v1

    const-wide v1, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v1

    double-to-long v1, v3

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/MapRenderer;->onFpsChangedListener:Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->updateFps()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/maps/renderer/MapRenderer;->nativeOnSurfaceChanged(II)V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/renderer/MapRenderer;->nativeOnSurfaceCreated(Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->nativeOnSurfaceDestroyed()V

    return-void
.end method

.method public queueEvent(Lorg/maplibre/android/maps/renderer/MapRendererRunnable;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/renderer/MapRendererScheduler;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMaximumFps(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    int-to-double v2, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/maplibre/android/maps/renderer/MapRenderer;->expectedRenderTime:D

    return-void
.end method

.method public setOnFpsChangedListener(Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/MapRenderer;->onFpsChangedListener:Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;

    return-void
.end method

.method public abstract setRenderingRefreshMode(Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;)V
.end method

.method public setSwapBehaviorFlush(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/renderer/MapRenderer;->nativeSetSwapBehaviorFlush(Z)V

    return-void
.end method
