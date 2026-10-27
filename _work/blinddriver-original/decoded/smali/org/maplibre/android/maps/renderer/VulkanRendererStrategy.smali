.class final Lorg/maplibre/android/maps/renderer/VulkanRendererStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachTextureRenderThread(Landroid/view/TextureView;Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;)V
    .locals 1

    new-instance v0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;

    invoke-direct {v0, p0, p1}, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;-><init>(Landroid/view/TextureView;Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;)V

    invoke-virtual {p1, v0}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->setRenderThread(Lorg/maplibre/android/maps/renderer/textureview/TextureViewRenderThread;)V

    return-void
.end method

.method public static createSurfaceViewRenderer(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;
    .locals 1

    new-instance v0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    new-instance p2, Lorg/maplibre/android/maps/renderer/VulkanRendererStrategy$1;

    invoke-direct {p2, p0, v0, p1, p3}, Lorg/maplibre/android/maps/renderer/VulkanRendererStrategy$1;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object p2
.end method
