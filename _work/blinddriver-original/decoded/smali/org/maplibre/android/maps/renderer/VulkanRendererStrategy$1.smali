.class Lorg/maplibre/android/maps/renderer/VulkanRendererStrategy$1;
.super Lorg/maplibre/android/maps/renderer/surfaceview/VulkanSurfaceViewMapRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/maps/renderer/VulkanRendererStrategy;->createSurfaceViewRenderer(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$initCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p4, p0, Lorg/maplibre/android/maps/renderer/VulkanRendererStrategy$1;->val$initCallback:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/maps/renderer/surfaceview/VulkanSurfaceViewMapRenderer;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSurfaceCreated(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/VulkanRendererStrategy$1;->val$initCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-super {p0, p1}, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->onSurfaceCreated(Landroid/view/Surface;)V

    return-void
.end method
