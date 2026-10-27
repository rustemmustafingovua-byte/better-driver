.class Lorg/maplibre/android/maps/MapView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/maps/MapView;->onSurfaceCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/maps/MapView;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$4;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$4;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapView;->c(Lorg/maplibre/android/maps/MapView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$4;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$4;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapView;->h(Lorg/maplibre/android/maps/MapView;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$4;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->onStart()V

    :cond_0
    return-void
.end method
