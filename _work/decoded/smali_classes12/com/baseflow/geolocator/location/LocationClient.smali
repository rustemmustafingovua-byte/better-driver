.class public interface abstract Lcom/baseflow/geolocator/location/LocationClient;
.super Ljava/lang/Object;
.source "LocationClient.java"


# virtual methods
.method public checkLocationService(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 26
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 27
    .local v1, "gps_enabled":Z
    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 28
    .local v2, "network_enabled":Z
    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3
.end method

.method public abstract getLastKnownPosition(Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
.end method

.method public abstract isLocationServiceEnabled(Lcom/baseflow/geolocator/location/LocationServiceListener;)V
.end method

.method public abstract onActivityResult(II)Z
.end method

.method public abstract startPositionUpdates(Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
.end method

.method public abstract stopPositionUpdates()V
.end method
