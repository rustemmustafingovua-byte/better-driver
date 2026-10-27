.class public Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;
.super Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;
    }
.end annotation


# instance fields
.field protected final viewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;->viewWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;->viewWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public createRenderThread()V
    .locals 2

    new-instance v0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;->viewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;

    return-void
.end method
