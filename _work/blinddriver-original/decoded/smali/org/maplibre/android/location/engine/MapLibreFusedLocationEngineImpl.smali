.class public Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl;
.super Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl$MapLibreLocationEngineCallbackTransport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MapLibreLocationEngine"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getBestLastLocation()Landroid/location/Location;
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->getLastLocationFor(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2, v1}, Lorg/maplibre/android/location/engine/Utils;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private shouldStartNetworkProvider(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->currentProvider:Ljava/lang/String;

    const-string p1, "gps"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createListener(Lorg/maplibre/android/location/engine/LocationEngineCallback;)Landroid/location/LocationListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;)",
            "Landroid/location/LocationListener;"
        }
    .end annotation

    .line 2
    new-instance p0, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl$MapLibreLocationEngineCallbackTransport;

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl$MapLibreLocationEngineCallbackTransport;-><init>(Lorg/maplibre/android/location/engine/LocationEngineCallback;)V

    return-object p0
.end method

.method public bridge synthetic createListener(Lorg/maplibre/android/location/engine/LocationEngineCallback;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl;->createListener(Lorg/maplibre/android/location/engine/LocationEngineCallback;)Landroid/location/LocationListener;

    move-result-object p0

    return-object p0
.end method

.method public getLastLocation(Lorg/maplibre/android/location/engine/LocationEngineCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl;->getBestLastLocation()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/maplibre/android/location/engine/LocationEngineResult;->create(Landroid/location/Location;)Lorg/maplibre/android/location/engine/LocationEngineResult;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/maplibre/android/location/engine/LocationEngineCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Last location unavailable"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lorg/maplibre/android/location/engine/LocationEngineCallback;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Landroid/app/PendingIntent;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 8
    invoke-super {p0, p1, p2}, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Landroid/app/PendingIntent;)V

    .line 9
    invoke-virtual {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest;->getPriority()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl;->shouldStartNetworkProvider(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    :try_start_0
    iget-object v1, p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->locationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest;->getInterval()J

    move-result-wide v3

    .line 11
    invoke-virtual {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest;->getDisplacement()F

    move-result v5

    move-object v6, p2

    .line 12
    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3}, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3
    invoke-virtual {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest;->getPriority()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl;->shouldStartNetworkProvider(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->locationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    .line 5
    invoke-virtual {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest;->getInterval()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest;->getDisplacement()F

    move-result v5

    move-object v6, p2

    move-object v7, p3

    .line 6
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public bridge synthetic requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Ljava/lang/Object;Landroid/os/Looper;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    check-cast p2, Landroid/location/LocationListener;

    invoke-virtual {p0, p1, p2, p3}, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl;->requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method
