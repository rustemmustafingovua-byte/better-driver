.class final Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl$MapLibreLocationEngineCallbackTransport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapLibreLocationEngineCallbackTransport"
.end annotation


# instance fields
.field private final callback:Lorg/maplibre/android/location/engine/LocationEngineCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;"
        }
    .end annotation
.end field

.field private currentBestLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/engine/LocationEngineCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl$MapLibreLocationEngineCallbackTransport;->callback:Lorg/maplibre/android/location/engine/LocationEngineCallback;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl$MapLibreLocationEngineCallbackTransport;->currentBestLocation:Landroid/location/Location;

    invoke-static {p1, v0}, Lorg/maplibre/android/location/engine/Utils;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl$MapLibreLocationEngineCallbackTransport;->currentBestLocation:Landroid/location/Location;

    :cond_0
    iget-object p1, p0, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl$MapLibreLocationEngineCallbackTransport;->callback:Lorg/maplibre/android/location/engine/LocationEngineCallback;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl$MapLibreLocationEngineCallbackTransport;->currentBestLocation:Landroid/location/Location;

    invoke-static {p0}, Lorg/maplibre/android/location/engine/LocationEngineResult;->create(Landroid/location/Location;)Lorg/maplibre/android/location/engine/LocationEngineResult;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/maplibre/android/location/engine/LocationEngineCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    sget-object p1, Lrc/b;->a:Lrc/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lrc/a;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    sget-object p1, Lrc/b;->a:Lrc/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lrc/a;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    sget-object p1, Lrc/b;->a:Lrc/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lrc/a;->a([Ljava/lang/Object;)V

    return-void
.end method
