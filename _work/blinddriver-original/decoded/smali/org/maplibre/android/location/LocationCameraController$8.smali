.class Lorg/maplibre/android/location/LocationCameraController$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/location/LocationCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/location/LocationCameraController;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LocationCameraController;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController$8;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling()V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController$8;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationCameraController;->setCameraMode(I)V

    return-void
.end method
