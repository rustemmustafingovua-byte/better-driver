.class Lcom/baseflow/geolocator/MethodCallHandlerImpl;
.super Ljava/lang/Object;
.source "MethodCallHandlerImpl.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "MethodCallHandlerImpl"


# instance fields
.field private activity:Landroid/app/Activity;

.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private context:Landroid/content/Context;

.field private final geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

.field private final locationAccuracyManager:Lcom/baseflow/geolocator/location/LocationAccuracyManager;

.field final pendingCurrentPositionLocationClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/baseflow/geolocator/location/LocationClient;",
            ">;"
        }
    .end annotation
.end field

.field private final permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/permission/PermissionManager;Lcom/baseflow/geolocator/location/GeolocationManager;Lcom/baseflow/geolocator/location/LocationAccuracyManager;)V
    .locals 1
    .param p1, "permissionManager"    # Lcom/baseflow/geolocator/permission/PermissionManager;
    .param p2, "geolocationManager"    # Lcom/baseflow/geolocator/location/GeolocationManager;
    .param p3, "locationAccuracyManager"    # Lcom/baseflow/geolocator/location/LocationAccuracyManager;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    .line 54
    iput-object p2, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    .line 55
    iput-object p3, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->locationAccuracyManager:Lcom/baseflow/geolocator/location/LocationAccuracyManager;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->pendingCurrentPositionLocationClients:Ljava/util/Map;

    .line 57
    return-void
.end method

.method private getLocationAccuracy(Lio/flutter/plugin/common/MethodChannel$Result;Landroid/content/Context;)V
    .locals 2
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;
    .param p2, "context"    # Landroid/content/Context;

    .line 165
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->locationAccuracyManager:Lcom/baseflow/geolocator/location/LocationAccuracyManager;

    new-instance v1, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 166
    invoke-virtual {v0, p2, v1}, Lcom/baseflow/geolocator/location/LocationAccuracyManager;->getLocationAccuracy(Landroid/content/Context;Lcom/baseflow/geolocator/errors/ErrorCallback;)Lcom/baseflow/geolocator/location/LocationAccuracyStatus;

    move-result-object v0

    .line 170
    .local v0, "status":Lcom/baseflow/geolocator/location/LocationAccuracyStatus;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/LocationAccuracyStatus;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 173
    :cond_0
    return-void
.end method

.method static synthetic lambda$getLocationAccuracy$2(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .locals 3
    .param p0, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;
    .param p1, "errorCode"    # Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 169
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onGetLastKnownPosition$3(Lio/flutter/plugin/common/MethodChannel$Result;Landroid/location/Location;)V
    .locals 1
    .param p0, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;
    .param p1, "location"    # Landroid/location/Location;

    .line 197
    invoke-static {p1}, Lcom/baseflow/geolocator/location/LocationMapper;->toHashMap(Landroid/location/Location;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onGetLastKnownPosition$4(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .locals 3
    .param p0, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;
    .param p1, "errorCode"    # Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 199
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onRequestPermission$0(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/baseflow/geolocator/permission/LocationPermission;)V
    .locals 1
    .param p0, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;
    .param p1, "permission"    # Lcom/baseflow/geolocator/permission/LocationPermission;

    .line 155
    invoke-virtual {p1}, Lcom/baseflow/geolocator/permission/LocationPermission;->toInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onRequestPermission$1(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .locals 3
    .param p0, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;
    .param p1, "errorCode"    # Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 157
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private onCancelGetCurrentPosition(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 271
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 272
    .local v0, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "requestId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 274
    .local v1, "requestId":Ljava/lang/String;
    iget-object v2, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->pendingCurrentPositionLocationClients:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baseflow/geolocator/location/LocationClient;

    .line 275
    .local v2, "locationClient":Lcom/baseflow/geolocator/location/LocationClient;
    if-eqz v2, :cond_0

    .line 276
    invoke-interface {v2}, Lcom/baseflow/geolocator/location/LocationClient;->stopPositionUpdates()V

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->pendingCurrentPositionLocationClients:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method private onCheckPermission(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    iget-object v1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/permission/PermissionManager;->checkPermissionStatus(Landroid/content/Context;)Lcom/baseflow/geolocator/permission/LocationPermission;

    move-result-object v0

    .line 139
    .local v0, "permission":Lcom/baseflow/geolocator/permission/LocationPermission;
    invoke-virtual {v0}, Lcom/baseflow/geolocator/permission/LocationPermission;->toInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/baseflow/geolocator/errors/PermissionUndefinedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0    # "permission":Lcom/baseflow/geolocator/permission/LocationPermission;
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 142
    .local v1, "errorCode":Lcom/baseflow/geolocator/errors/ErrorCodes;
    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    .end local v0    # "e":Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
    .end local v1    # "errorCode":Lcom/baseflow/geolocator/errors/ErrorCodes;
    :goto_0
    return-void
.end method

.method private onGetCurrentPosition(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 11
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 211
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    iget-object v2, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/baseflow/geolocator/permission/PermissionManager;->hasPermission(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Lcom/baseflow/geolocator/errors/PermissionUndefinedException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 212
    :try_start_1
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 213
    invoke-virtual {v0}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 214
    invoke-virtual {v2}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-interface {p2, v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/baseflow/geolocator/errors/PermissionUndefinedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    return-void

    .line 218
    :catch_0
    move-exception v0

    move-object v9, p2

    goto :goto_0

    .line 224
    :cond_0
    nop

    .line 227
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 228
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 229
    .local v1, "forceLocationManager":Z
    const-string v2, "forceLocationManager"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 230
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 232
    :cond_1
    invoke-static {v0}, Lcom/baseflow/geolocator/location/LocationOptions;->parseArguments(Ljava/util/Map;)Lcom/baseflow/geolocator/location/LocationOptions;

    move-result-object v2

    .line 233
    .local v2, "locationOptions":Lcom/baseflow/geolocator/location/LocationOptions;
    const-string v3, "requestId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    .line 235
    .local v8, "requestId":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v6, v3, [Z

    const/4 v3, 0x0

    aput-boolean v3, v6, v3

    .line 237
    .local v6, "replySubmitted":[Z
    iget-object v3, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object v4, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    .line 238
    invoke-virtual {v3, v4, v1, v2}, Lcom/baseflow/geolocator/location/GeolocationManager;->createLocationClient(Landroid/content/Context;ZLcom/baseflow/geolocator/location/LocationOptions;)Lcom/baseflow/geolocator/location/LocationClient;

    move-result-object v7

    .line 239
    .local v7, "locationClient":Lcom/baseflow/geolocator/location/LocationClient;
    iget-object v3, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->pendingCurrentPositionLocationClients:Ljava/util/Map;

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v3, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object v10, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda0;

    move-object v5, p0

    move-object v9, p2

    .end local p2    # "result":Lio/flutter/plugin/common/MethodChannel$Result;
    .local v9, "result":Lio/flutter/plugin/common/MethodChannel$Result;
    invoke-direct/range {v4 .. v9}, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/baseflow/geolocator/MethodCallHandlerImpl;[ZLcom/baseflow/geolocator/location/LocationClient;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    move-object p2, v4

    new-instance v4, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda1;

    invoke-direct/range {v4 .. v9}, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/baseflow/geolocator/MethodCallHandlerImpl;[ZLcom/baseflow/geolocator/location/LocationClient;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v3, v7, v10, p2, v4}, Lcom/baseflow/geolocator/location/GeolocationManager;->startPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    .line 264
    return-void

    .line 218
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "forceLocationManager":Z
    .end local v2    # "locationOptions":Lcom/baseflow/geolocator/location/LocationOptions;
    .end local v6    # "replySubmitted":[Z
    .end local v7    # "locationClient":Lcom/baseflow/geolocator/location/LocationClient;
    .end local v8    # "requestId":Ljava/lang/String;
    .end local v9    # "result":Lio/flutter/plugin/common/MethodChannel$Result;
    .restart local p2    # "result":Lio/flutter/plugin/common/MethodChannel$Result;
    :catch_1
    move-exception v0

    move-object v9, p2

    .line 219
    .end local p2    # "result":Lio/flutter/plugin/common/MethodChannel$Result;
    .local v0, "e":Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
    .restart local v9    # "result":Lio/flutter/plugin/common/MethodChannel$Result;
    :goto_0
    sget-object p2, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 220
    invoke-virtual {p2}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 221
    invoke-virtual {v2}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-interface {v9, p2, v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method private onGetLastKnownPosition(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 6
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 177
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    iget-object v2, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baseflow/geolocator/permission/PermissionManager;->hasPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 179
    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 180
    invoke-virtual {v2}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-interface {p2, v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/baseflow/geolocator/errors/PermissionUndefinedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return-void

    .line 190
    :cond_0
    nop

    .line 192
    const-string v0, "forceLocationManager"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 194
    .local v0, "forceLocationManager":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object v2, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v4, p2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda5;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    new-instance v5, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v5, p2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda6;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 194
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/baseflow/geolocator/location/GeolocationManager;->getLastKnownPosition(Landroid/content/Context;ZLcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    .line 200
    return-void

    .line 184
    .end local v0    # "forceLocationManager":Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
    sget-object v2, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 186
    invoke-virtual {v2}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 187
    invoke-virtual {v3}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-interface {p2, v2, v3, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method private onIsLocationServiceEnabled(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 147
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object v1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    new-instance v2, Lcom/baseflow/geolocator/location/FlutterLocationServiceListener;

    invoke-direct {v2, p1}, Lcom/baseflow/geolocator/location/FlutterLocationServiceListener;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v0, v1, v2}, Lcom/baseflow/geolocator/location/GeolocationManager;->isLocationServiceEnabled(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationServiceListener;)V

    .line 149
    return-void
.end method

.method private onRequestPermission(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    iget-object v1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda3;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    new-instance v3, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1}, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda4;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/baseflow/geolocator/permission/PermissionManager;->requestPermission(Landroid/app/Activity;Lcom/baseflow/geolocator/permission/PermissionResultCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    :try_end_0
    .catch Lcom/baseflow/geolocator/errors/PermissionUndefinedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 160
    .local v1, "errorCode":Lcom/baseflow/geolocator/errors/ErrorCodes;
    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    .end local v0    # "e":Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
    .end local v1    # "errorCode":Lcom/baseflow/geolocator/errors/ErrorCodes;
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onGetCurrentPosition$5$com-baseflow-geolocator-MethodCallHandlerImpl([ZLcom/baseflow/geolocator/location/LocationClient;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Landroid/location/Location;)V
    .locals 2
    .param p1, "replySubmitted"    # [Z
    .param p2, "locationClient"    # Lcom/baseflow/geolocator/location/LocationClient;
    .param p3, "requestId"    # Ljava/lang/String;
    .param p4, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;
    .param p5, "location"    # Landroid/location/Location;

    .line 245
    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    .line 246
    return-void

    .line 249
    :cond_0
    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    .line 250
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    invoke-virtual {v0, p2}, Lcom/baseflow/geolocator/location/GeolocationManager;->stopPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;)V

    .line 251
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->pendingCurrentPositionLocationClients:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-static {p5}, Lcom/baseflow/geolocator/location/LocationMapper;->toHashMap(Landroid/location/Location;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p4, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 253
    return-void
.end method

.method synthetic lambda$onGetCurrentPosition$6$com-baseflow-geolocator-MethodCallHandlerImpl([ZLcom/baseflow/geolocator/location/LocationClient;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .locals 3
    .param p1, "replySubmitted"    # [Z
    .param p2, "locationClient"    # Lcom/baseflow/geolocator/location/LocationClient;
    .param p3, "requestId"    # Ljava/lang/String;
    .param p4, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;
    .param p5, "errorCode"    # Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 255
    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    .line 256
    return-void

    .line 259
    :cond_0
    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    .line 260
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    invoke-virtual {v0, p2}, Lcom/baseflow/geolocator/location/GeolocationManager;->stopPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;)V

    .line 261
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->pendingCurrentPositionLocationClients:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-virtual {p5}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p4, v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 63
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "cancelGetCurrentPosition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v1, "getLocationAccuracy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "requestPermission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "checkPermission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v1, "isLocationServiceEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "openAppSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "openLocationSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_7
    const-string v1, "getLastKnownPosition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_8
    const-string v1, "getCurrentPosition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 94
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_2

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baseflow/geolocator/utils/Utils;->openLocationSettings(Landroid/content/Context;)Z

    move-result v0

    .line 91
    .local v0, "hasOpenedLocationSettings":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 92
    goto :goto_2

    .line 86
    .end local v0    # "hasOpenedLocationSettings":Z
    :pswitch_1
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baseflow/geolocator/utils/Utils;->openAppSettings(Landroid/content/Context;)Z

    move-result v0

    .line 87
    .local v0, "hasOpenedAppSettings":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 88
    goto :goto_2

    .line 83
    .end local v0    # "hasOpenedAppSettings":Z
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->onCancelGetCurrentPosition(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 84
    goto :goto_2

    .line 80
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->onGetCurrentPosition(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 81
    goto :goto_2

    .line 77
    :pswitch_4
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    invoke-direct {p0, p2, v0}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->getLocationAccuracy(Lio/flutter/plugin/common/MethodChannel$Result;Landroid/content/Context;)V

    .line 78
    goto :goto_2

    .line 74
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->onGetLastKnownPosition(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 75
    goto :goto_2

    .line 71
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->onRequestPermission(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 72
    goto :goto_2

    .line 68
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->onIsLocationServiceEnabled(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 69
    goto :goto_2

    .line 65
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->onCheckPermission(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 66
    nop

    .line 97
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x68b9fc74 -> :sswitch_8
        -0x44f2ea20 -> :sswitch_7
        -0x30f92e9e -> :sswitch_6
        0x14b278ba -> :sswitch_5
        0x1538bfab -> :sswitch_4
        0x28e6dcf7 -> :sswitch_3
        0x2c7fedbe -> :sswitch_2
        0x34469f44 -> :sswitch_1
        0x69c703a6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 133
    iput-object p1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    .line 134
    return-void
.end method

.method startListening(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messenger"    # Lio/flutter/plugin/common/BinaryMessenger;

    .line 107
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "MethodCallHandlerImpl"

    const-string v1, "Setting a method call handler before the last was disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->stopListening()V

    .line 112
    :cond_0
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "flutter.baseflow.com/geolocator_android"

    invoke-direct {v0, p2, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 113
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 114
    iput-object p1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    .line 115
    return-void
.end method

.method stopListening()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-nez v0, :cond_0

    .line 124
    const-string v0, "MethodCallHandlerImpl"

    const-string v1, "Tried to stop listening when no MethodChannel had been initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 129
    iput-object v1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 130
    return-void
.end method
