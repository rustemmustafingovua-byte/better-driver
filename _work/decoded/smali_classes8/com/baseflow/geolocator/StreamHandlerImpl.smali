.class Lcom/baseflow/geolocator/StreamHandlerImpl;
.super Ljava/lang/Object;
.source "StreamHandlerImpl.java"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterGeolocator"


# instance fields
.field private activity:Landroid/app/Activity;

.field private channel:Lio/flutter/plugin/common/EventChannel;

.field private context:Landroid/content/Context;

.field private foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

.field private geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

.field private locationClient:Lcom/baseflow/geolocator/location/LocationClient;

.field private final permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;


# direct methods
.method public constructor <init>(Lcom/baseflow/geolocator/permission/PermissionManager;Lcom/baseflow/geolocator/location/GeolocationManager;)V
    .locals 0
    .param p1, "permissionManager"    # Lcom/baseflow/geolocator/permission/PermissionManager;
    .param p2, "geolocationManager"    # Lcom/baseflow/geolocator/location/GeolocationManager;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    .line 38
    iput-object p2, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    .line 39
    return-void
.end method

.method private disposeListeners(Z)V
    .locals 2
    .param p1, "cancelled"    # Z

    .line 152
    const-string v0, "Geolocator position updates stopped"

    const-string v1, "FlutterGeolocator"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    invoke-virtual {v0, p1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->canStopLocationService(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->stopLocationService()V

    .line 155
    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->disableBackgroundMode()V

    goto :goto_0

    .line 157
    :cond_0
    const-string v0, "There is still another flutter engine connected, not stopping location service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object v1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/location/GeolocationManager;->stopPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    .line 163
    :cond_1
    return-void
.end method

.method static synthetic lambda$onListen$0(Lio/flutter/plugin/common/EventChannel$EventSink;Landroid/location/Location;)V
    .locals 1
    .param p0, "events"    # Lio/flutter/plugin/common/EventChannel$EventSink;
    .param p1, "location"    # Landroid/location/Location;

    .line 140
    invoke-static {p1}, Lcom/baseflow/geolocator/location/LocationMapper;->toHashMap(Landroid/location/Location;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onListen$1(Lio/flutter/plugin/common/EventChannel$EventSink;Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .locals 3
    .param p0, "events"    # Lio/flutter/plugin/common/EventChannel$EventSink;
    .param p1, "errorCodes"    # Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 142
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arguments"    # Ljava/lang/Object;

    .line 148
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baseflow/geolocator/StreamHandlerImpl;->disposeListeners(Z)V

    .line 149
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 9
    .param p1, "arguments"    # Ljava/lang/Object;
    .param p2, "events"    # Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 93
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    iget-object v2, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baseflow/geolocator/permission/PermissionManager;->hasPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 95
    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 96
    invoke-virtual {v2}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-interface {p2, v1, v2, v0}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/baseflow/geolocator/errors/PermissionUndefinedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 106
    :cond_0
    nop

    .line 108
    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    const-string v1, "FlutterGeolocator"

    if-nez v0, :cond_1

    .line 109
    const-string v0, "Location background service has not started correctly"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 114
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 115
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 116
    .local v2, "forceLocationManager":Z
    if-eqz v0, :cond_2

    const-string v3, "forceLocationManager"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 117
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 119
    :cond_2
    invoke-static {v0}, Lcom/baseflow/geolocator/location/LocationOptions;->parseArguments(Ljava/util/Map;)Lcom/baseflow/geolocator/location/LocationOptions;

    move-result-object v3

    .line 120
    .local v3, "locationOptions":Lcom/baseflow/geolocator/location/LocationOptions;
    const/4 v4, 0x0

    .line 122
    .local v4, "foregroundNotificationOptions":Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;
    if-eqz v0, :cond_3

    .line 123
    nop

    .line 125
    const-string v5, "foregroundNotificationConfig"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 124
    invoke-static {v5}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->parseArguments(Ljava/util/Map;)Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;

    move-result-object v4

    .line 127
    :cond_3
    if-eqz v4, :cond_4

    .line 128
    const-string v5, "Geolocator position updates started using Android foreground service"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    invoke-virtual {v1, v2, v3, p2}, Lcom/baseflow/geolocator/GeolocatorLocationService;->startLocationService(ZLcom/baseflow/geolocator/location/LocationOptions;Lio/flutter/plugin/common/EventChannel$EventSink;)V

    .line 130
    iget-object v1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    invoke-virtual {v1, v4}, Lcom/baseflow/geolocator/GeolocatorLocationService;->enableBackgroundMode(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V

    goto :goto_0

    .line 132
    :cond_4
    const-string v5, "Geolocator position updates started"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object v5, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->context:Landroid/content/Context;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 135
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 134
    invoke-virtual {v1, v5, v6, v3}, Lcom/baseflow/geolocator/location/GeolocationManager;->createLocationClient(Landroid/content/Context;ZLcom/baseflow/geolocator/location/LocationOptions;)Lcom/baseflow/geolocator/location/LocationClient;

    move-result-object v1

    iput-object v1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    .line 137
    iget-object v1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object v5, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    iget-object v6, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->activity:Landroid/app/Activity;

    new-instance v7, Lcom/baseflow/geolocator/StreamHandlerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v7, p2}, Lcom/baseflow/geolocator/StreamHandlerImpl$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    new-instance v8, Lcom/baseflow/geolocator/StreamHandlerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v8, p2}, Lcom/baseflow/geolocator/StreamHandlerImpl$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/baseflow/geolocator/location/GeolocationManager;->startPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    .line 144
    :goto_0
    return-void

    .line 100
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "forceLocationManager":Z
    .end local v3    # "locationOptions":Lcom/baseflow/geolocator/location/LocationOptions;
    .end local v4    # "foregroundNotificationOptions":Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
    sget-object v2, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 102
    invoke-virtual {v2}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 103
    invoke-virtual {v3}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-interface {p2, v2, v3, v0}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 48
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/baseflow/geolocator/StreamHandlerImpl;->stopListening()V

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->activity:Landroid/app/Activity;

    .line 53
    return-void
.end method

.method public setForegroundLocationService(Lcom/baseflow/geolocator/GeolocatorLocationService;)V
    .locals 0
    .param p1, "foregroundLocationService"    # Lcom/baseflow/geolocator/GeolocatorLocationService;

    .line 43
    iput-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    .line 44
    return-void
.end method

.method startListening(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messenger"    # Lio/flutter/plugin/common/BinaryMessenger;

    .line 63
    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "FlutterGeolocator"

    const-string v1, "Setting a event call handler before the last was disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lcom/baseflow/geolocator/StreamHandlerImpl;->stopListening()V

    .line 68
    :cond_0
    new-instance v0, Lio/flutter/plugin/common/EventChannel;

    const-string v1, "flutter.baseflow.com/geolocator_updates_android"

    invoke-direct {v0, p2, v1}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    .line 69
    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 70
    iput-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->context:Landroid/content/Context;

    .line 71
    return-void
.end method

.method stopListening()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    if-nez v0, :cond_0

    .line 80
    const-string v0, "FlutterGeolocator"

    const-string v1, "Tried to stop listening when no MethodChannel had been initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baseflow/geolocator/StreamHandlerImpl;->disposeListeners(Z)V

    .line 85
    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 86
    iput-object v1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    .line 87
    return-void
.end method
