.class public final Lorg/maplibre/android/maps/renderer/MapRendererFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newSurfaceViewMapRenderer(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/maplibre/android/maps/renderer/RendererStrategy;->createSurfaceViewRenderer(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    move-result-object p0

    return-object p0
.end method

.method public static newTextureViewMapRenderer(Landroid/content/Context;Landroid/view/TextureView;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;
    .locals 6

    new-instance v0, Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;-><init>(Landroid/content/Context;Landroid/view/TextureView;Ljava/lang/String;ZLjava/lang/Runnable;)V

    invoke-static {v2, v0}, Lorg/maplibre/android/maps/renderer/RendererStrategy;->attachTextureRenderThread(Landroid/view/TextureView;Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;)V

    return-object v0
.end method
