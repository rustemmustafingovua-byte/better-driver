.class final Lorg/maplibre/android/maps/renderer/RendererStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachTextureRenderThread(Landroid/view/TextureView;Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/maplibre/android/maps/renderer/VulkanRendererStrategy;->attachTextureRenderThread(Landroid/view/TextureView;Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;)V

    return-void
.end method

.method public static createSurfaceViewRenderer(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/maplibre/android/maps/renderer/VulkanRendererStrategy;->createSurfaceViewRenderer(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    move-result-object p0

    return-object p0
.end method
