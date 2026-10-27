.class public Lorg/maplibre/android/maps/renderer/surfaceview/VulkanSurfaceViewMapRenderer;
.super Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->surfaceView:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;

    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->setRenderer(Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;)V

    return-void
.end method
