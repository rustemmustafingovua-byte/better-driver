.class public Lcom/baseflow/geolocator/location/GeolocationManager;
.super Ljava/lang/Object;
.source "GeolocationManager.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# static fields
.field private static geolocationManagerInstance:Lcom/baseflow/geolocator/location/GeolocationManager;


# instance fields
.field private final locationClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baseflow/geolocator/location/LocationClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/baseflow/geolocator/location/GeolocationManager;->geolocationManagerInstance:Lcom/baseflow/geolocator/location/GeolocationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baseflow/geolocator/location/GeolocationManager;->locationClients:Ljava/util/List;

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baseflow/geolocator/location/GeolocationManager;
    .locals 2

    const-class v0, Lcom/baseflow/geolocator/location/GeolocationManager;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/baseflow/geolocator/location/GeolocationManager;->geolocationManagerInstance:Lcom/baseflow/geolocator/location/GeolocationManager;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/baseflow/geolocator/location/GeolocationManager;

    invoke-direct {v1}, Lcom/baseflow/geolocator/location/GeolocationManager;-><init>()V

    sput-object v1, Lcom/baseflow/geolocator/location/GeolocationManager;->geolocationManagerInstance:Lcom/baseflow/geolocator/location/GeolocationManager;

    .line 34
    :cond_0
    sget-object v1, Lcom/baseflow/geolocator/location/GeolocationManager;->geolocationManagerInstance:Lcom/baseflow/geolocator/location/GeolocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 29
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isGooglePlayServicesAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    .line 88
    .local v1, "googleApiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v2, "resultCode":I
    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 94
    .end local v1    # "googleApiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    .end local v2    # "resultCode":I
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    return v0
.end method


# virtual methods
.method public createLocationClient(Landroid/content/Context;ZLcom/baseflow/geolocator/location/LocationOptions;)Lcom/baseflow/geolocator/location/LocationClient;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forceAndroidLocationManager"    # Z
    .param p3, "locationOptions"    # Lcom/baseflow/geolocator/location/LocationOptions;

    .line 76
    if-eqz p2, :cond_0

    .line 77
    new-instance v0, Lcom/baseflow/geolocator/location/LocationManagerClient;

    invoke-direct {v0, p1, p3}, Lcom/baseflow/geolocator/location/LocationManagerClient;-><init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V

    return-object v0

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/location/GeolocationManager;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-direct {v0, p1, p3}, Lcom/baseflow/geolocator/location/FusedLocationClient;-><init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Lcom/baseflow/geolocator/location/LocationManagerClient;

    invoke-direct {v0, p1, p3}, Lcom/baseflow/geolocator/location/LocationManagerClient;-><init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V

    .line 80
    :goto_0
    return-object v0
.end method

.method public getLastKnownPosition(Landroid/content/Context;ZLcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forceLocationManager"    # Z
    .param p3, "positionChangedCallback"    # Lcom/baseflow/geolocator/location/PositionChangedCallback;
    .param p4, "errorCallback"    # Lcom/baseflow/geolocator/errors/ErrorCallback;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baseflow/geolocator/location/GeolocationManager;->createLocationClient(Landroid/content/Context;ZLcom/baseflow/geolocator/location/LocationOptions;)Lcom/baseflow/geolocator/location/LocationClient;

    move-result-object v0

    .line 44
    .local v0, "locationClient":Lcom/baseflow/geolocator/location/LocationClient;
    invoke-interface {v0, p3, p4}, Lcom/baseflow/geolocator/location/LocationClient;->getLastKnownPosition(Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    .line 45
    return-void
.end method

.method public isLocationServiceEnabled(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationServiceListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/baseflow/geolocator/location/LocationServiceListener;

    .line 49
    if-nez p1, :cond_0

    .line 50
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p2, v0}, Lcom/baseflow/geolocator/location/LocationServiceListener;->onLocationServiceError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 53
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baseflow/geolocator/location/GeolocationManager;->createLocationClient(Landroid/content/Context;ZLcom/baseflow/geolocator/location/LocationOptions;)Lcom/baseflow/geolocator/location/LocationClient;

    move-result-object v0

    .line 54
    .local v0, "locationClient":Lcom/baseflow/geolocator/location/LocationClient;
    invoke-interface {v0, p2}, Lcom/baseflow/geolocator/location/LocationClient;->isLocationServiceEnabled(Lcom/baseflow/geolocator/location/LocationServiceListener;)V

    .line 55
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/baseflow/geolocator/location/GeolocationManager;->locationClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baseflow/geolocator/location/LocationClient;

    .line 102
    .local v1, "client":Lcom/baseflow/geolocator/location/LocationClient;
    invoke-interface {v1, p1, p2}, Lcom/baseflow/geolocator/location/LocationClient;->onActivityResult(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const/4 v0, 0x1

    return v0

    .line 105
    .end local v1    # "client":Lcom/baseflow/geolocator/location/LocationClient;
    :cond_0
    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public startPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .locals 1
    .param p1, "locationClient"    # Lcom/baseflow/geolocator/location/LocationClient;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "positionChangedCallback"    # Lcom/baseflow/geolocator/location/PositionChangedCallback;
    .param p4, "errorCallback"    # Lcom/baseflow/geolocator/errors/ErrorCallback;

    .line 63
    iget-object v0, p0, Lcom/baseflow/geolocator/location/GeolocationManager;->locationClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {p1, p2, p3, p4}, Lcom/baseflow/geolocator/location/LocationClient;->startPositionUpdates(Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    .line 65
    return-void
.end method

.method public stopPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;)V
    .locals 1
    .param p1, "locationClient"    # Lcom/baseflow/geolocator/location/LocationClient;

    .line 68
    iget-object v0, p0, Lcom/baseflow/geolocator/location/GeolocationManager;->locationClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {p1}, Lcom/baseflow/geolocator/location/LocationClient;->stopPositionUpdates()V

    .line 70
    return-void
.end method
