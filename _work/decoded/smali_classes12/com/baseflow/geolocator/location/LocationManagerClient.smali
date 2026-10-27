.class Lcom/baseflow/geolocator/location/LocationManagerClient;
.super Ljava/lang/Object;
.source "LocationManagerClient.java"

# interfaces
.implements Lcom/baseflow/geolocator/location/LocationClient;
.implements Landroidx/core/location/LocationListenerCompat;


# static fields
.field private static final TWO_MINUTES:J = 0x1d4c0L


# instance fields
.field public context:Landroid/content/Context;

.field private currentBestLocation:Landroid/location/Location;

.field private currentLocationProvider:Ljava/lang/String;

.field private errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

.field private isListening:Z

.field private final locationManager:Landroid/location/LocationManager;

.field private final locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

.field private final nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

.field private positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationOptions"    # Lcom/baseflow/geolocator/location/LocationOptions;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->isListening:Z

    .line 40
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationManager:Landroid/location/LocationManager;

    .line 41
    iput-object p2, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    .line 42
    iput-object p1, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->context:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-direct {v0, p1, p2}, Lcom/baseflow/geolocator/location/NmeaClient;-><init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    .line 44
    return-void
.end method

.method private static accuracyToQuality(Lcom/baseflow/geolocator/location/LocationAccuracy;)I
    .locals 2
    .param p0, "accuracy"    # Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 100
    sget-object v0, Lcom/baseflow/geolocator/location/LocationManagerClient$1;->$SwitchMap$com$baseflow$geolocator$location$LocationAccuracy:[I

    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationAccuracy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 110
    const/16 v0, 0x66

    return v0

    .line 107
    :pswitch_0
    const/16 v0, 0x64

    return v0

    .line 103
    :pswitch_1
    const/16 v0, 0x68

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static determineProvider(Landroid/location/LocationManager;Lcom/baseflow/geolocator/location/LocationAccuracy;)Ljava/lang/String;
    .locals 4
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "accuracy"    # Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "enabledProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/baseflow/geolocator/location/LocationAccuracy;->lowest:Lcom/baseflow/geolocator/location/LocationAccuracy;

    if-ne p1, v1, :cond_0

    .line 85
    const-string v1, "passive"

    return-object v1

    .line 86
    :cond_0
    const-string v1, "fused"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_1

    .line 87
    return-object v1

    .line 88
    :cond_1
    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    return-object v1

    .line 90
    :cond_2
    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    return-object v1

    .line 92
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 93
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 95
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method static isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 14
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "bestLocation"    # Landroid/location/Location;

    .line 47
    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 50
    .local v1, "timeDelta":J
    const-wide/32 v3, 0x1d4c0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v4

    .line 51
    .local v3, "isSignificantlyNewer":Z
    :goto_0
    const-wide/32 v5, -0x1d4c0

    cmp-long v5, v1, v5

    if-gez v5, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v4

    .line 52
    .local v5, "isSignificantlyOlder":Z
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-lez v6, :cond_3

    move v6, v0

    goto :goto_2

    :cond_3
    move v6, v4

    .line 54
    .local v6, "isNewer":Z
    :goto_2
    if-eqz v3, :cond_4

    return v0

    .line 56
    :cond_4
    if-eqz v5, :cond_5

    return v4

    .line 58
    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    .line 59
    .local v7, "accuracyDelta":F
    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-lez v9, :cond_6

    move v9, v0

    goto :goto_3

    :cond_6
    move v9, v4

    .line 60
    .local v9, "isLessAccurate":Z
    :goto_3
    cmpg-float v8, v7, v8

    if-gez v8, :cond_7

    move v8, v0

    goto :goto_4

    :cond_7
    move v8, v4

    .line 61
    .local v8, "isMoreAccurate":Z
    :goto_4
    const/high16 v10, 0x43480000    # 200.0f

    cmpl-float v10, v7, v10

    if-lez v10, :cond_8

    move v10, v0

    goto :goto_5

    :cond_8
    move v10, v4

    .line 63
    .local v10, "isSignificantlyLessAccurate":Z
    :goto_5
    const/4 v11, 0x0

    .line 64
    .local v11, "isFromSameProvider":Z
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 65
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 68
    :cond_9
    if-eqz v8, :cond_a

    return v0

    .line 70
    :cond_a
    if-eqz v6, :cond_b

    if-nez v9, :cond_b

    return v0

    .line 73
    :cond_b
    if-eqz v6, :cond_c

    if-nez v10, :cond_c

    if-eqz v11, :cond_c

    return v0

    .line 75
    :cond_c
    return v4
.end method


# virtual methods
.method public getLastKnownPosition(Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .locals 5
    .param p1, "positionChangedCallback"    # Lcom/baseflow/geolocator/location/PositionChangedCallback;
    .param p2, "errorCallback"    # Lcom/baseflow/geolocator/errors/ErrorCallback;

    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, "bestLocation":Landroid/location/Location;
    iget-object v1, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .local v2, "provider":Ljava/lang/String;
    iget-object v3, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 133
    .local v3, "location":Landroid/location/Location;
    if-eqz v3, :cond_0

    invoke-static {v3, v0}, Lcom/baseflow/geolocator/location/LocationManagerClient;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    move-object v0, v3

    .line 136
    .end local v2    # "provider":Ljava/lang/String;
    .end local v3    # "location":Landroid/location/Location;
    :cond_0
    goto :goto_0

    .line 138
    :cond_1
    invoke-interface {p1, v0}, Lcom/baseflow/geolocator/location/PositionChangedCallback;->onPositionChanged(Landroid/location/Location;)V

    .line 139
    return-void
.end method

.method public isLocationServiceEnabled(Lcom/baseflow/geolocator/location/LocationServiceListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/baseflow/geolocator/location/LocationServiceListener;

    .line 116
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/baseflow/geolocator/location/LocationServiceListener;->onLocationServiceResult(Z)V

    .line 118
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/baseflow/geolocator/location/LocationManagerClient;->checkLocationService(Landroid/content/Context;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/baseflow/geolocator/location/LocationServiceListener;->onLocationServiceResult(Z)V

    .line 122
    return-void
.end method

.method public onActivityResult(II)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->currentBestLocation:Landroid/location/Location;

    invoke-static {p1, v0}, Lcom/baseflow/geolocator/location/LocationManagerClient;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iput-object p1, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->currentBestLocation:Landroid/location/Location;

    .line 212
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-virtual {v0, p1}, Lcom/baseflow/geolocator/location/NmeaClient;->enrichExtrasWithNmea(Landroid/location/Location;)V

    .line 214
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    iget-object v1, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->currentBestLocation:Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/baseflow/geolocator/location/PositionChangedCallback;->onPositionChanged(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .end local p0    # "this":Lcom/baseflow/geolocator/location/LocationManagerClient;
    :cond_0
    monitor-exit p0

    return-void

    .line 208
    .end local p1    # "location":Landroid/location/Location;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->currentLocationProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    iget-boolean v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->isListening:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {v0, v1}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 251
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->currentLocationProvider:Ljava/lang/String;

    .line 253
    :cond_2
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 237
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 229
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 230
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/location/LocationManagerClient;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_0
    if-nez p2, :cond_1

    .line 232
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/location/LocationManagerClient;->onProviderDisabled(Ljava/lang/String;)V

    .line 234
    :cond_1
    :goto_0
    return-void
.end method

.method public startPositionUpdates(Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "positionChangedCallback"    # Lcom/baseflow/geolocator/location/PositionChangedCallback;
    .param p3, "errorCallback"    # Lcom/baseflow/geolocator/errors/ErrorCallback;

    .line 153
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/baseflow/geolocator/location/LocationManagerClient;->checkLocationService(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p3, v0}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 155
    return-void

    .line 158
    :cond_0
    iput-object p2, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    .line 159
    iput-object p3, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    .line 161
    sget-object v0, Lcom/baseflow/geolocator/location/LocationAccuracy;->best:Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 162
    .local v0, "accuracy":Lcom/baseflow/geolocator/location/LocationAccuracy;
    const-wide/16 v1, 0x0

    .line 163
    .local v1, "timeInterval":J
    const/4 v3, 0x0

    .line 164
    .local v3, "distanceFilter":F
    const/16 v4, 0x66

    .line 166
    .local v4, "quality":I
    iget-object v5, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    if-eqz v5, :cond_2

    .line 167
    iget-object v5, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-virtual {v5}, Lcom/baseflow/geolocator/location/LocationOptions;->getDistanceFilter()J

    move-result-wide v5

    long-to-float v3, v5

    .line 168
    iget-object v5, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-virtual {v5}, Lcom/baseflow/geolocator/location/LocationOptions;->getAccuracy()Lcom/baseflow/geolocator/location/LocationAccuracy;

    move-result-object v0

    .line 169
    sget-object v5, Lcom/baseflow/geolocator/location/LocationAccuracy;->lowest:Lcom/baseflow/geolocator/location/LocationAccuracy;

    if-ne v0, v5, :cond_1

    .line 170
    const-wide v5, 0x7fffffffffffffffL

    goto :goto_0

    .line 171
    :cond_1
    iget-object v5, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-virtual {v5}, Lcom/baseflow/geolocator/location/LocationOptions;->getTimeInterval()J

    move-result-wide v5

    :goto_0
    move-wide v1, v5

    .line 172
    invoke-static {v0}, Lcom/baseflow/geolocator/location/LocationManagerClient;->accuracyToQuality(Lcom/baseflow/geolocator/location/LocationAccuracy;)I

    move-result v4

    .line 175
    :cond_2
    iget-object v5, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationManager:Landroid/location/LocationManager;

    invoke-static {v5, v0}, Lcom/baseflow/geolocator/location/LocationManagerClient;->determineProvider(Landroid/location/LocationManager;Lcom/baseflow/geolocator/location/LocationAccuracy;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->currentLocationProvider:Ljava/lang/String;

    .line 177
    iget-object v5, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->currentLocationProvider:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 178
    sget-object v5, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p3, v5}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 179
    return-void

    .line 182
    :cond_3
    new-instance v5, Landroidx/core/location/LocationRequestCompat$Builder;

    invoke-direct {v5, v1, v2}, Landroidx/core/location/LocationRequestCompat$Builder;-><init>(J)V

    .line 183
    invoke-virtual {v5, v3}, Landroidx/core/location/LocationRequestCompat$Builder;->setMinUpdateDistanceMeters(F)Landroidx/core/location/LocationRequestCompat$Builder;

    move-result-object v5

    .line 184
    invoke-virtual {v5, v1, v2}, Landroidx/core/location/LocationRequestCompat$Builder;->setMinUpdateIntervalMillis(J)Landroidx/core/location/LocationRequestCompat$Builder;

    move-result-object v5

    .line 185
    invoke-virtual {v5, v4}, Landroidx/core/location/LocationRequestCompat$Builder;->setQuality(I)Landroidx/core/location/LocationRequestCompat$Builder;

    move-result-object v5

    .line 186
    invoke-virtual {v5}, Landroidx/core/location/LocationRequestCompat$Builder;->build()Landroidx/core/location/LocationRequestCompat;

    move-result-object v5

    .line 188
    .local v5, "locationRequest":Landroidx/core/location/LocationRequestCompat;
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->isListening:Z

    .line 189
    iget-object v6, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-virtual {v6}, Lcom/baseflow/geolocator/location/NmeaClient;->start()V

    .line 191
    iget-object v6, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationManager:Landroid/location/LocationManager;

    iget-object v7, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->currentLocationProvider:Ljava/lang/String;

    .line 196
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    .line 191
    invoke-static {v6, v7, v5, p0, v8}, Landroidx/core/location/LocationManagerCompat;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationListenerCompat;Landroid/os/Looper;)V

    .line 197
    return-void
.end method

.method public stopPositionUpdates()V
    .locals 1

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->isListening:Z

    .line 203
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/NmeaClient;->stop()V

    .line 204
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 205
    return-void
.end method
