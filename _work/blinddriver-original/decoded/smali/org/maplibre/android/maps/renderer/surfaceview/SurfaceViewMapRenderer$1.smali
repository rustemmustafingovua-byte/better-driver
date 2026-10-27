.class Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$OnSurfaceViewDetachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer$1;->this$0:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceViewDetached()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer$1;->this$0:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    invoke-static {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->access$000(Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;)V

    return-void
.end method
