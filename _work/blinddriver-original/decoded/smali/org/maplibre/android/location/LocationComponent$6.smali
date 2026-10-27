.class Lorg/maplibre/android/location/LocationComponent$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/location/LocationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/location/LocationComponent;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LocationComponent;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent$6;->this$0:Lorg/maplibre/android/location/LocationComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvalidateCameraMove()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent$6;->this$0:Lorg/maplibre/android/location/LocationComponent;

    invoke-static {p0}, Lorg/maplibre/android/location/LocationComponent;->f(Lorg/maplibre/android/location/LocationComponent;)Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;

    move-result-object p0

    invoke-interface {p0}, Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;->onCameraMove()V

    return-void
.end method
