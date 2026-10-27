.class public final synthetic Lorg/maplibre/android/maps/renderer/surfaceview/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:Ljava/lang/Runnable;

.field public final synthetic m:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/a;->l:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/a;->m:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/a;->l:Ljava/lang/Runnable;

    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/a;->m:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$RenderThread;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
