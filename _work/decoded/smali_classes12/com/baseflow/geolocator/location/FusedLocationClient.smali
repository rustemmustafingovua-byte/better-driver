.class Lcom/baseflow/geolocator/location/FusedLocationClient;
.super Ljava/lang/Object;
.source "FusedLocationClient.java"

# interfaces
.implements Lcom/baseflow/geolocator/location/LocationClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterGeolocator"


# instance fields
.field private final activityRequestCode:I

.field private final context:Landroid/content/Context;

.field private errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

.field private final fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private final locationCallback:Lcom/google/android/gms/location/LocationCallback;

.field private final locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

.field private final nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

.field private positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationOptions"    # Lcom/baseflow/geolocator/location/LocationOptions;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->context:Landroid/content/Context;

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 51
    iput-object p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    .line 52
    new-instance v0, Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-direct {v0, p1, p2}, Lcom/baseflow/geolocator/location/NmeaClient;-><init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    .line 53
    invoke-direct {p0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->generateActivityRequestCode()I

    move-result v0

    iput v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->activityRequestCode:I

    .line 55
    new-instance v0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient$1;-><init>(Lcom/baseflow/geolocator/location/FusedLocationClient;Lcom/baseflow/geolocator/location/LocationOptions;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/location/PositionChangedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/baseflow/geolocator/location/FusedLocationClient;

    .line 35
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/google/android/gms/location/LocationCallback;
    .locals 1
    .param p0, "x0"    # Lcom/baseflow/geolocator/location/FusedLocationClient;

    .line 35
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 1
    .param p0, "x0"    # Lcom/baseflow/geolocator/location/FusedLocationClient;

    .line 35
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/errors/ErrorCallback;
    .locals 1
    .param p0, "x0"    # Lcom/baseflow/geolocator/location/FusedLocationClient;

    .line 35
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/location/NmeaClient;
    .locals 1
    .param p0, "x0"    # Lcom/baseflow/geolocator/location/FusedLocationClient;

    .line 35
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    return-object v0
.end method

.method private static buildLocationRequest(Lcom/baseflow/geolocator/location/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;
    .locals 3
    .param p0, "options"    # Lcom/baseflow/geolocator/location/LocationOptions;

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 99
    invoke-static {p0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->buildLocationRequestDeprecated(Lcom/baseflow/geolocator/location/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Lcom/google/android/gms/location/LocationRequest$Builder;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(J)V

    .line 104
    .local v0, "builder":Lcom/google/android/gms/location/LocationRequest$Builder;
    if-eqz p0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getAccuracy()Lcom/baseflow/geolocator/location/LocationAccuracy;

    move-result-object v1

    invoke-static {v1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->toPriority(Lcom/baseflow/geolocator/location/LocationAccuracy;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest$Builder;->setPriority(I)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 106
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getTimeInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;->setIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 107
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getTimeInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 108
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getDistanceFilter()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateDistanceMeters(F)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 111
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    return-object v1
.end method

.method private static buildLocationRequestDeprecated(Lcom/baseflow/geolocator/location/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;
    .locals 5
    .param p0, "options"    # Lcom/baseflow/geolocator/location/LocationOptions;

    .line 116
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 118
    .local v0, "locationRequest":Lcom/google/android/gms/location/LocationRequest;
    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getAccuracy()Lcom/baseflow/geolocator/location/LocationAccuracy;

    move-result-object v1

    invoke-static {v1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->toPriority(Lcom/baseflow/geolocator/location/LocationAccuracy;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 120
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getTimeInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 121
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getTimeInterval()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 122
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getDistanceFilter()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    .line 125
    :cond_0
    return-object v0
.end method

.method private static buildLocationSettingsRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest;
    .locals 2
    .param p0, "locationRequest"    # Lcom/google/android/gms/location/LocationRequest;

    .line 130
    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 131
    .local v0, "builder":Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 133
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized generateActivityRequestCode()I
    .locals 2

    monitor-enter p0

    .line 150
    :try_start_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 151
    .local v0, "random":Ljava/security/SecureRandom;
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 149
    .end local v0    # "random":Ljava/security/SecureRandom;
    .end local p0    # "this":Lcom/baseflow/geolocator/location/FusedLocationClient;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic lambda$getLastKnownPosition$1(Lcom/baseflow/geolocator/errors/ErrorCallback;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "errorCallback"    # Lcom/baseflow/geolocator/errors/ErrorCallback;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 195
    const-string v0, "Geolocator"

    const-string v1, "Error trying to get last the last known GPS location"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz p0, :cond_0

    .line 197
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->errorWhileAcquiringPosition:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p0, v0}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 199
    :cond_0
    return-void
.end method

.method static synthetic lambda$isLocationServiceEnabled$0(Lcom/baseflow/geolocator/location/LocationServiceListener;Lcom/google/android/gms/tasks/Task;)V
    .locals 6
    .param p0, "listener"    # Lcom/baseflow/geolocator/location/LocationServiceListener;
    .param p1, "response"    # Lcom/google/android/gms/tasks/Task;

    .line 168
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p0, v0}, Lcom/baseflow/geolocator/location/LocationServiceListener;->onLocationServiceError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationSettingsResponse;

    .line 173
    .local v0, "lsr":Lcom/google/android/gms/location/LocationSettingsResponse;
    if-eqz v0, :cond_5

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsResponse;->getLocationSettingsStates()Lcom/google/android/gms/location/LocationSettingsStates;

    move-result-object v1

    .line 175
    .local v1, "settingsStates":Lcom/google/android/gms/location/LocationSettingsStates;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationSettingsStates;->isGpsUsable()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 176
    .local v4, "isGpsUsable":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationSettingsStates;->isNetworkLocationUsable()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v3

    .line 178
    .local v5, "isNetworkUsable":Z
    :goto_1
    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    invoke-interface {p0, v2}, Lcom/baseflow/geolocator/location/LocationServiceListener;->onLocationServiceResult(Z)V

    .line 179
    .end local v1    # "settingsStates":Lcom/google/android/gms/location/LocationSettingsStates;
    .end local v4    # "isGpsUsable":Z
    .end local v5    # "isNetworkUsable":Z
    goto :goto_3

    .line 180
    :cond_5
    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p0, v1}, Lcom/baseflow/geolocator/location/LocationServiceListener;->onLocationServiceError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 182
    :goto_3
    return-void
.end method

.method private requestPositionUpdates(Lcom/baseflow/geolocator/location/LocationOptions;)V
    .locals 4
    .param p1, "locationOptions"    # Lcom/baseflow/geolocator/location/LocationOptions;

    .line 156
    invoke-static {p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->buildLocationRequest(Lcom/baseflow/geolocator/location/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 157
    .local v0, "locationRequest":Lcom/google/android/gms/location/LocationRequest;
    iget-object v1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/location/NmeaClient;->start()V

    .line 158
    iget-object v1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 159
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 158
    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    .line 160
    return-void
.end method

.method private static toPriority(Lcom/baseflow/geolocator/location/LocationAccuracy;)I
    .locals 2
    .param p0, "locationAccuracy"    # Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 137
    sget-object v0, Lcom/baseflow/geolocator/location/FusedLocationClient$2;->$SwitchMap$com$baseflow$geolocator$location$LocationAccuracy:[I

    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationAccuracy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 145
    const/16 v0, 0x64

    return v0

    .line 143
    :pswitch_0
    const/16 v0, 0x66

    return v0

    .line 141
    :pswitch_1
    const/16 v0, 0x68

    return v0

    .line 139
    :pswitch_2
    const/16 v0, 0x69

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLastKnownPosition(Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .locals 2
    .param p1, "positionChangedCallback"    # Lcom/baseflow/geolocator/location/PositionChangedCallback;
    .param p2, "errorCallback"    # Lcom/baseflow/geolocator/errors/ErrorCallback;

    .line 190
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 191
    invoke-interface {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 192
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda3;-><init>(Lcom/baseflow/geolocator/location/PositionChangedCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda4;-><init>(Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    .line 193
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 200
    return-void
.end method

.method public isLocationServiceEnabled(Lcom/baseflow/geolocator/location/LocationServiceListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/baseflow/geolocator/location/LocationServiceListener;

    .line 164
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getSettingsClient(Landroid/content/Context;)Lcom/google/android/gms/location/SettingsClient;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 165
    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda0;-><init>(Lcom/baseflow/geolocator/location/LocationServiceListener;)V

    .line 166
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 183
    return-void
.end method

.method synthetic lambda$startPositionUpdates$2$com-baseflow-geolocator-location-FusedLocationClient(Lcom/google/android/gms/location/LocationSettingsResponse;)V
    .locals 1
    .param p1, "locationSettingsResponse"    # Lcom/google/android/gms/location/LocationSettingsResponse;

    .line 240
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-direct {p0, v0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->requestPositionUpdates(Lcom/baseflow/geolocator/location/LocationOptions;)V

    return-void
.end method

.method synthetic lambda$startPositionUpdates$3$com-baseflow-geolocator-location-FusedLocationClient(Landroid/app/Activity;Lcom/baseflow/geolocator/errors/ErrorCallback;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "errorCallback"    # Lcom/baseflow/geolocator/errors/ErrorCallback;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 243
    instance-of v0, p3, Lcom/google/android/gms/common/api/ResolvableApiException;

    if-eqz v0, :cond_2

    .line 246
    if-nez p1, :cond_0

    .line 247
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p2, v0}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 248
    return-void

    .line 251
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/common/api/ResolvableApiException;

    .line 252
    .local v0, "rae":Lcom/google/android/gms/common/api/ResolvableApiException;
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ResolvableApiException;->getStatusCode()I

    move-result v1

    .line 253
    .local v1, "statusCode":I
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 257
    :try_start_0
    iget v2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->activityRequestCode:I

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/ResolvableApiException;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "sie":Landroid/content/IntentSender$SendIntentException;
    sget-object v3, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p2, v3}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 260
    .end local v2    # "sie":Landroid/content/IntentSender$SendIntentException;
    :goto_0
    goto :goto_1

    .line 262
    :cond_1
    sget-object v2, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p2, v2}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 264
    .end local v0    # "rae":Lcom/google/android/gms/common/api/ResolvableApiException;
    .end local v1    # "statusCode":I
    :goto_1
    goto :goto_2

    .line 265
    :cond_2
    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    .line 266
    .local v0, "ae":Lcom/google/android/gms/common/api/ApiException;
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v1

    .line 267
    .restart local v1    # "statusCode":I
    const/16 v2, 0x2136

    if-ne v1, v2, :cond_3

    .line 268
    iget-object v2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-direct {p0, v2}, Lcom/baseflow/geolocator/location/FusedLocationClient;->requestPositionUpdates(Lcom/baseflow/geolocator/location/LocationOptions;)V

    goto :goto_2

    .line 272
    :cond_3
    sget-object v2, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p2, v2}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 275
    .end local v0    # "ae":Lcom/google/android/gms/common/api/ApiException;
    .end local v1    # "statusCode":I
    :goto_2
    return-void
.end method

.method public onActivityResult(II)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I

    .line 203
    iget v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->activityRequestCode:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 204
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    if-nez v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-direct {p0, v0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->requestPositionUpdates(Lcom/baseflow/geolocator/location/LocationOptions;)V

    .line 213
    const/4 v0, 0x1

    return v0

    .line 208
    :cond_1
    :goto_0
    return v1

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    sget-object v2, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {v0, v2}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 221
    :cond_3
    return v1
.end method

.method public startPositionUpdates(Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "positionChangedCallback"    # Lcom/baseflow/geolocator/location/PositionChangedCallback;
    .param p3, "errorCallback"    # Lcom/baseflow/geolocator/errors/ErrorCallback;

    .line 230
    iput-object p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    .line 231
    iput-object p3, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    .line 233
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-static {v0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->buildLocationRequest(Lcom/baseflow/geolocator/location/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 234
    .local v0, "locationRequest":Lcom/google/android/gms/location/LocationRequest;
    invoke-static {v0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->buildLocationSettingsRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v1

    .line 236
    .local v1, "settingsRequest":Lcom/google/android/gms/location/LocationSettingsRequest;
    iget-object v2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/location/LocationServices;->getSettingsClient(Landroid/content/Context;)Lcom/google/android/gms/location/SettingsClient;

    move-result-object v2

    .line 237
    .local v2, "settingsClient":Lcom/google/android/gms/location/SettingsClient;
    nop

    .line 238
    invoke-interface {v2, v1}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda1;-><init>(Lcom/baseflow/geolocator/location/FusedLocationClient;)V

    .line 239
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1, p3}, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda2;-><init>(Lcom/baseflow/geolocator/location/FusedLocationClient;Landroid/app/Activity;Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    .line 241
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 276
    return-void
.end method

.method public stopPositionUpdates()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/NmeaClient;->stop()V

    .line 280
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    .line 281
    return-void
.end method
