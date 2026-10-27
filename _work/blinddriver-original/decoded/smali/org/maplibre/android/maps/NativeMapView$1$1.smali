.class Lorg/maplibre/android/maps/NativeMapView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/maps/NativeMapView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/maplibre/android/maps/NativeMapView$1;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/NativeMapView$1;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/NativeMapView$1$1;->this$1:Lorg/maplibre/android/maps/NativeMapView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;D)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMapView$1$1;->lambda$onFpsChanged$0(Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;D)V

    return-void
.end method

.method private static synthetic lambda$onFpsChanged$0(Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;D)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;->onFpsChanged(D)V

    return-void
.end method


# virtual methods
.method public onFpsChanged(D)V
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/NativeMapView$1$1;->this$1:Lorg/maplibre/android/maps/NativeMapView$1;

    iget-object v0, p0, Lorg/maplibre/android/maps/NativeMapView$1;->val$handler:Landroid/os/Handler;

    iget-object p0, p0, Lorg/maplibre/android/maps/NativeMapView$1;->val$listener:Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;

    new-instance v1, Lorg/maplibre/android/maps/a;

    invoke-direct {v1, p0, p1, p2}, Lorg/maplibre/android/maps/a;-><init>(Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
