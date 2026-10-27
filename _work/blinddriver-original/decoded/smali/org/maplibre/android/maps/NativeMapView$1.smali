.class Lorg/maplibre/android/maps/NativeMapView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/maps/NativeMapView;->setOnFpsChangedListener(Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/maps/NativeMapView;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/NativeMapView;Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/maplibre/android/maps/NativeMapView$1;->this$0:Lorg/maplibre/android/maps/NativeMapView;

    iput-object p2, p0, Lorg/maplibre/android/maps/NativeMapView$1;->val$listener:Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;

    iput-object p3, p0, Lorg/maplibre/android/maps/NativeMapView$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/NativeMapView$1;->val$listener:Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/NativeMapView$1;->this$0:Lorg/maplibre/android/maps/NativeMapView;

    invoke-static {v0}, Lorg/maplibre/android/maps/NativeMapView;->a(Lorg/maplibre/android/maps/NativeMapView;)Lorg/maplibre/android/maps/renderer/MapRenderer;

    move-result-object v0

    new-instance v1, Lorg/maplibre/android/maps/NativeMapView$1$1;

    invoke-direct {v1, p0}, Lorg/maplibre/android/maps/NativeMapView$1$1;-><init>(Lorg/maplibre/android/maps/NativeMapView$1;)V

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/renderer/MapRenderer;->setOnFpsChangedListener(Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;)V

    return-void

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/NativeMapView$1;->this$0:Lorg/maplibre/android/maps/NativeMapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/NativeMapView;->a(Lorg/maplibre/android/maps/NativeMapView;)Lorg/maplibre/android/maps/renderer/MapRenderer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->setOnFpsChangedListener(Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;)V

    return-void
.end method
