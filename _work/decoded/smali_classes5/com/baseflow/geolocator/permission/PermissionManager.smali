.class public Lcom/baseflow/geolocator/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# static fields
.field private static final PERMISSION_REQUEST_CODE:I = 0x6d

.field private static permissionManagerInstance:Lcom/baseflow/geolocator/permission/PermissionManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

.field private resultCallback:Lcom/baseflow/geolocator/permission/PermissionResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/baseflow/geolocator/permission/PermissionManager;->permissionManagerInstance:Lcom/baseflow/geolocator/permission/PermissionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baseflow/geolocator/permission/PermissionManager;
    .locals 2

    const-class v0, Lcom/baseflow/geolocator/permission/PermissionManager;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/baseflow/geolocator/permission/PermissionManager;->permissionManagerInstance:Lcom/baseflow/geolocator/permission/PermissionManager;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/baseflow/geolocator/permission/PermissionManager;

    invoke-direct {v1}, Lcom/baseflow/geolocator/permission/PermissionManager;-><init>()V

    sput-object v1, Lcom/baseflow/geolocator/permission/PermissionManager;->permissionManagerInstance:Lcom/baseflow/geolocator/permission/PermissionManager;

    .line 41
    :cond_0
    sget-object v1, Lcom/baseflow/geolocator/permission/PermissionManager;->permissionManagerInstance:Lcom/baseflow/geolocator/permission/PermissionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 36
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getLocationPermissionsFromManifest(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
        }
    .end annotation

    .line 211
    nop

    .line 212
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/baseflow/geolocator/permission/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 213
    .local v1, "fineLocationPermissionExists":Z
    nop

    .line 214
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v2}, Lcom/baseflow/geolocator/permission/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 217
    .local v3, "coarseLocationPermissionExists":Z
    if-nez v1, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    new-instance v0, Lcom/baseflow/geolocator/errors/PermissionUndefinedException;

    invoke-direct {v0}, Lcom/baseflow/geolocator/errors/PermissionUndefinedException;-><init>()V

    throw v0

    .line 221
    :cond_1
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v4, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 224
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_2
    if-eqz v3, :cond_3

    .line 228
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_3
    return-object v4
.end method

.method private hasBackgroundAccess([Ljava/lang/String;[I)Z
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .line 199
    nop

    .line 200
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p1, v0}, Lcom/baseflow/geolocator/permission/PermissionManager;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 201
    .local v0, "backgroundPermissionIndex":I
    if-ltz v0, :cond_0

    aget v1, p2, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 206
    .local p0, "arr":[Ljava/lang/Object;, "[TT;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public checkPermissionStatus(Landroid/content/Context;)Lcom/baseflow/geolocator/permission/LocationPermission;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
        }
    .end annotation

    .line 46
    invoke-static {p1}, Lcom/baseflow/geolocator/permission/PermissionManager;->getLocationPermissionsFromManifest(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 49
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 53
    const/4 v1, -0x1

    .line 55
    .local v1, "permissionStatus":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 56
    .local v3, "permission":Ljava/lang/String;
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 59
    goto :goto_1

    .line 61
    .end local v3    # "permission":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 63
    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 64
    sget-object v2, Lcom/baseflow/geolocator/permission/LocationPermission;->denied:Lcom/baseflow/geolocator/permission/LocationPermission;

    return-object v2

    .line 67
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_3

    .line 68
    sget-object v2, Lcom/baseflow/geolocator/permission/LocationPermission;->always:Lcom/baseflow/geolocator/permission/LocationPermission;

    return-object v2

    .line 71
    :cond_3
    nop

    .line 72
    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p1, v2}, Lcom/baseflow/geolocator/permission/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 74
    .local v3, "wantsBackgroundLocation":Z
    if-nez v3, :cond_4

    .line 75
    sget-object v2, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    return-object v2

    .line 78
    :cond_4
    nop

    .line 79
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 80
    .local v2, "permissionStatusBackground":I
    if-nez v2, :cond_5

    .line 81
    sget-object v4, Lcom/baseflow/geolocator/permission/LocationPermission;->always:Lcom/baseflow/geolocator/permission/LocationPermission;

    return-object v4

    .line 84
    :cond_5
    sget-object v4, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    return-object v4
.end method

.method public hasPermission(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/permission/PermissionManager;->checkPermissionStatus(Landroid/content/Context;)Lcom/baseflow/geolocator/permission/LocationPermission;

    move-result-object v0

    .line 237
    .local v0, "locationPermission":Lcom/baseflow/geolocator/permission/LocationPermission;
    sget-object v1, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/baseflow/geolocator/permission/LocationPermission;->always:Lcom/baseflow/geolocator/permission/LocationPermission;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 124
    const/16 v0, 0x6d

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 125
    return v1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->activity:Landroid/app/Activity;

    const-string v2, "Geolocator"

    if-nez v0, :cond_2

    .line 129
    const-string v0, "Trying to process permission result without an valid Activity instance"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    sget-object v2, Lcom/baseflow/geolocator/errors/ErrorCodes;->activityMissing:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {v0, v2}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 133
    :cond_1
    return v1

    .line 139
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/baseflow/geolocator/permission/PermissionManager;->getLocationPermissionsFromManifest(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lcom/baseflow/geolocator/errors/PermissionUndefinedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .local v0, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 148
    array-length v3, p3

    if-nez v3, :cond_3

    .line 149
    const-string v3, "The grantResults array is empty. This can happen when the user cancels the permission request"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v1

    .line 155
    :cond_3
    sget-object v3, Lcom/baseflow/geolocator/permission/LocationPermission;->denied:Lcom/baseflow/geolocator/permission/LocationPermission;

    .line 156
    .local v3, "locationPermission":Lcom/baseflow/geolocator/permission/LocationPermission;
    const/4 v4, -0x1

    .line 157
    .local v4, "grantedResult":I
    const/4 v5, 0x0

    .line 158
    .local v5, "shouldShowRationale":Z
    const/4 v6, 0x0

    .line 160
    .local v6, "permissionsPartOfPermissionsResult":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 161
    .local v8, "permission":Ljava/lang/String;
    invoke-static {p2, v8}, Lcom/baseflow/geolocator/permission/PermissionManager;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    .line 162
    .local v9, "requestedPermissionIndex":I
    if-ltz v9, :cond_4

    .line 163
    const/4 v6, 0x1

    .line 165
    :cond_4
    aget v10, p3, v9

    if-nez v10, :cond_5

    .line 166
    const/4 v4, 0x0

    .line 168
    :cond_5
    iget-object v10, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->activity:Landroid/app/Activity;

    invoke-static {v10, v8}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 169
    const/4 v5, 0x1

    .line 171
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "requestedPermissionIndex":I
    :cond_6
    goto :goto_0

    .line 173
    :cond_7
    if-nez v6, :cond_8

    .line 174
    const-string v7, "Location permissions not part of permissions send to onRequestPermissionsResult method."

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v1

    .line 180
    :cond_8
    if-nez v4, :cond_b

    .line 181
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_a

    invoke-direct {p0, p2, p3}, Lcom/baseflow/geolocator/permission/PermissionManager;->hasBackgroundAccess([Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    .line 183
    :cond_9
    sget-object v1, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    goto :goto_2

    .line 182
    :cond_a
    :goto_1
    sget-object v1, Lcom/baseflow/geolocator/permission/LocationPermission;->always:Lcom/baseflow/geolocator/permission/LocationPermission;

    .line 183
    :goto_2
    move-object v3, v1

    goto :goto_3

    .line 185
    :cond_b
    if-nez v5, :cond_c

    .line 186
    sget-object v3, Lcom/baseflow/geolocator/permission/LocationPermission;->deniedForever:Lcom/baseflow/geolocator/permission/LocationPermission;

    .line 190
    :cond_c
    :goto_3
    iget-object v1, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->resultCallback:Lcom/baseflow/geolocator/permission/PermissionResultCallback;

    if-eqz v1, :cond_d

    .line 191
    iget-object v1, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->resultCallback:Lcom/baseflow/geolocator/permission/PermissionResultCallback;

    invoke-interface {v1, v3}, Lcom/baseflow/geolocator/permission/PermissionResultCallback;->onResult(Lcom/baseflow/geolocator/permission/LocationPermission;)V

    .line 194
    :cond_d
    const/4 v1, 0x1

    return v1

    .line 140
    .end local v0    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "locationPermission":Lcom/baseflow/geolocator/permission/LocationPermission;
    .end local v4    # "grantedResult":I
    .end local v5    # "shouldShowRationale":Z
    .end local v6    # "permissionsPartOfPermissionsResult":Z
    :catch_0
    move-exception v0

    .line 141
    .local v0, "ex":Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
    iget-object v2, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    if-eqz v2, :cond_e

    .line 142
    iget-object v2, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    sget-object v3, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {v2, v3}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 145
    :cond_e
    return v1
.end method

.method public requestPermission(Landroid/app/Activity;Lcom/baseflow/geolocator/permission/PermissionResultCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resultCallback"    # Lcom/baseflow/geolocator/permission/PermissionResultCallback;
    .param p3, "errorCallback"    # Lcom/baseflow/geolocator/errors/ErrorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
        }
    .end annotation

    .line 91
    if-nez p1, :cond_0

    .line 92
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->activityMissing:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p3, v0}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 93
    return-void

    .line 97
    :cond_0
    nop

    .line 102
    invoke-static {p1}, Lcom/baseflow/geolocator/permission/PermissionManager;->getLocationPermissionsFromManifest(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "permissionsToRequest":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 105
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p1, v1}, Lcom/baseflow/geolocator/permission/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/permission/PermissionManager;->checkPermissionStatus(Landroid/content/Context;)Lcom/baseflow/geolocator/permission/LocationPermission;

    move-result-object v2

    .line 108
    .local v2, "permissionStatus":Lcom/baseflow/geolocator/permission/LocationPermission;
    sget-object v3, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    if-ne v2, v3, :cond_1

    .line 109
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v2    # "permissionStatus":Lcom/baseflow/geolocator/permission/LocationPermission;
    :cond_1
    iput-object p3, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    .line 114
    iput-object p2, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->resultCallback:Lcom/baseflow/geolocator/permission/PermissionResultCallback;

    .line 115
    iput-object p1, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->activity:Landroid/app/Activity;

    .line 117
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 117
    const/16 v2, 0x6d

    invoke-static {p1, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 119
    return-void
.end method
