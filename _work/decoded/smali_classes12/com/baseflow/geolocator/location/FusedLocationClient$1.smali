.class Lcom/baseflow/geolocator/location/FusedLocationClient$1;
.super Lcom/google/android/gms/location/LocationCallback;
.source "FusedLocationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baseflow/geolocator/location/FusedLocationClient;-><init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/location/FusedLocationClient;Lcom/baseflow/geolocator/location/LocationOptions;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/baseflow/geolocator/location/FusedLocationClient;

    .line 56
    iput-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    iput-object p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->val$locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    iput-object p3, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2
    .param p1, "locationAvailability"    # Lcom/google/android/gms/location/LocationAvailability;

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    iget-object v1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->checkLocationService(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {v0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->access$300(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/errors/ErrorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {v0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->access$300(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/errors/ErrorCallback;

    move-result-object v0

    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {v0, v1}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local p0    # "this":Lcom/baseflow/geolocator/location/FusedLocationClient$1;
    :cond_0
    monitor-exit p0

    return-void

    .line 87
    .end local p1    # "locationAvailability":Lcom/google/android/gms/location/LocationAvailability;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 4
    .param p1, "locationResult"    # Lcom/google/android/gms/location/LocationResult;

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {v0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->access$000(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/location/PositionChangedCallback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 60
    const-string v0, "FlutterGeolocator"

    const-string v1, "LocationCallback was called with empty locationResult or no positionChangedCallback was registered."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {v0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->access$200(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    iget-object v1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {v1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->access$100(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/google/android/gms/location/LocationCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    .line 64
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {v0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->access$300(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/errors/ErrorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {v0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->access$300(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/errors/ErrorCallback;

    move-result-object v0

    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->errorWhileAcquiringPosition:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {v0, v1}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local p0    # "this":Lcom/baseflow/geolocator/location/FusedLocationClient$1;
    :cond_0
    monitor-exit p0

    return-void

    .line 70
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .local v0, "location":Landroid/location/Location;
    if-nez v0, :cond_2

    .line 72
    monitor-exit p0

    return-void

    .line 74
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_3

    .line 75
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->val$locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    if-eqz v1, :cond_4

    .line 78
    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "geolocator_use_mslAltitude"

    iget-object v3, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->val$locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-virtual {v3}, Lcom/baseflow/geolocator/location/LocationOptions;->isUseMSLAltitude()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    :cond_4
    iget-object v1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {v1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->access$400(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/location/NmeaClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baseflow/geolocator/location/NmeaClient;->enrichExtrasWithNmea(Landroid/location/Location;)V

    .line 82
    iget-object v1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {v1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->access$000(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/location/PositionChangedCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baseflow/geolocator/location/PositionChangedCallback;->onPositionChanged(Landroid/location/Location;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 58
    .end local v0    # "location":Landroid/location/Location;
    .end local p1    # "locationResult":Lcom/google/android/gms/location/LocationResult;
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
