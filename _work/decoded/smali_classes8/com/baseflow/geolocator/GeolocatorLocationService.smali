.class public Lcom/baseflow/geolocator/GeolocatorLocationService;
.super Landroid/app/Service;
.source "GeolocatorLocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "geolocator_channel_01"

.field private static final ONGOING_NOTIFICATION_ID:I = 0x12697

.field private static final TAG:Ljava/lang/String; = "FlutterGeolocator"


# instance fields
.field private final WAKELOCK_TAG:Ljava/lang/String;

.field private final WIFILOCK_TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

.field private final binder:Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;

.field private connectedEngines:I

.field private geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

.field private isForeground:Z

.field private listenerCount:I

.field private locationClient:Lcom/baseflow/geolocator/location/LocationClient;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    const-string v0, "GeolocatorLocationService:Wakelock"

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->WAKELOCK_TAG:Ljava/lang/String;

    .line 34
    const-string v0, "GeolocatorLocationService:WifiLock"

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->WIFILOCK_TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;

    invoke-direct {v0, p0, p0}, Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;-><init>(Lcom/baseflow/geolocator/GeolocatorLocationService;Lcom/baseflow/geolocator/GeolocatorLocationService;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->binder:Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->isForeground:Z

    .line 38
    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    .line 39
    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->activity:Landroid/app/Activity;

    .line 41
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    .line 44
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 45
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 47
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    return-void
.end method

.method private getWifiLockType()I
    .locals 2

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 220
    const/4 v0, 0x3

    return v0

    .line 222
    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$startLocationService$0(Lio/flutter/plugin/common/EventChannel$EventSink;Landroid/location/Location;)V
    .locals 1
    .param p0, "events"    # Lio/flutter/plugin/common/EventChannel$EventSink;
    .param p1, "location"    # Landroid/location/Location;

    .line 121
    invoke-static {p1}, Lcom/baseflow/geolocator/location/LocationMapper;->toHashMap(Landroid/location/Location;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$startLocationService$1(Lio/flutter/plugin/common/EventChannel$EventSink;Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .locals 3
    .param p0, "events"    # Lio/flutter/plugin/common/EventChannel$EventSink;
    .param p1, "errorCodes"    # Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 123
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private obtainWakeLocks(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V
    .locals 4
    .param p1, "options"    # Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;

    .line 196
    invoke-direct {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->releaseWakeLocks()V

    .line 197
    invoke-virtual {p1}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->isEnableWakeLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 198
    nop

    .line 199
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 200
    .local v0, "powerManager":Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 201
    const/4 v2, 0x1

    const-string v3, "GeolocatorLocationService:Wakelock"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 202
    iget-object v2, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 203
    iget-object v2, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 206
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    invoke-virtual {p1}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->isEnableWifiLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    nop

    .line 208
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 209
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_1

    .line 210
    invoke-direct {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->getWifiLockType()I

    move-result v2

    const-string v3, "GeolocatorLocationService:WifiLock"

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    iput-object v2, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 211
    iget-object v2, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 212
    iget-object v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 215
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    return-void
.end method

.method private releaseWakeLocks()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 186
    iput-object v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 190
    iput-object v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 192
    :cond_1
    return-void
.end method


# virtual methods
.method public canStopLocationService(Z)Z
    .locals 3
    .param p1, "cancellationRequested"    # Z

    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 88
    iget v2, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 90
    :cond_1
    iget v2, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public changeNotificationOptions(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V
    .locals 2
    .param p1, "options"    # Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;

    .line 169
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    iget-boolean v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->isForeground:Z

    invoke-virtual {v0, p1, v1}, Lcom/baseflow/geolocator/location/BackgroundNotification;->updateOptions(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;Z)V

    .line 171
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->obtainWakeLocks(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V

    .line 173
    :cond_0
    return-void
.end method

.method public disableBackgroundMode()V
    .locals 2

    .line 155
    iget-boolean v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->isForeground:Z

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "FlutterGeolocator"

    const-string v1, "Stop service in foreground."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    nop

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->stopForeground(I)V

    .line 162
    invoke-direct {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->releaseWakeLocks()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->isForeground:Z

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    .line 166
    :cond_0
    return-void
.end method

.method public enableBackgroundMode(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V
    .locals 5
    .param p1, "options"    # Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;

    .line 136
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    const-string v1, "FlutterGeolocator"

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "Service already in foreground mode."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->changeNotificationOptions(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V

    goto :goto_0

    .line 140
    :cond_0
    const-string v0, "Start service in foreground mode."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Lcom/baseflow/geolocator/location/BackgroundNotification;

    .line 144
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "geolocator_channel_01"

    const v3, 0x12697

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4, p1}, Lcom/baseflow/geolocator/location/BackgroundNotification;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    .line 145
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    invoke-virtual {p1}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->getNotificationChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/location/BackgroundNotification;->updateChannel(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/BackgroundNotification;->build()Landroid/app/Notification;

    move-result-object v0

    .line 147
    .local v0, "notification":Landroid/app/Notification;
    invoke-virtual {p0, v3, v0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->startForeground(ILandroid/app/Notification;)V

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->isForeground:Z

    .line 150
    .end local v0    # "notification":Landroid/app/Notification;
    :goto_0
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->obtainWakeLocks(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V

    .line 151
    return-void
.end method

.method public flutterEngineConnected()V
    .locals 2

    .line 95
    iget v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flutter engine connected. Connected engine count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterGeolocator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public flutterEngineDisconnected()V
    .locals 2

    .line 101
    iget v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flutter engine disconnected. Connected engine count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterGeolocator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 63
    const-string v0, "FlutterGeolocator"

    const-string v1, "Binding to location service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->binder:Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 52
    const-string v0, "FlutterGeolocator"

    const-string v1, "Creating service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 75
    const-string v0, "Destroying location service."

    const-string v1, "FlutterGeolocator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->stopLocationService()V

    .line 78
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->disableBackgroundMode()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    .line 80
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    .line 82
    const-string v0, "Destroyed location service."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 84
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 69
    const-string v0, "FlutterGeolocator"

    const-string v1, "Unbinding from location service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 176
    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->activity:Landroid/app/Activity;

    .line 177
    return-void
.end method

.method public setGeolocationManager(Lcom/baseflow/geolocator/location/GeolocationManager;)V
    .locals 0
    .param p1, "geolocationManager"    # Lcom/baseflow/geolocator/location/GeolocationManager;

    .line 180
    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    .line 181
    return-void
.end method

.method public startLocationService(ZLcom/baseflow/geolocator/location/LocationOptions;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 5
    .param p1, "forceLocationManager"    # Z
    .param p2, "locationOptions"    # Lcom/baseflow/geolocator/location/LocationOptions;
    .param p3, "events"    # Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 110
    iget v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    .line 111
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    .line 114
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 115
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 113
    invoke-virtual {v0, v1, v2, p2}, Lcom/baseflow/geolocator/location/GeolocationManager;->createLocationClient(Landroid/content/Context;ZLcom/baseflow/geolocator/location/LocationOptions;)Lcom/baseflow/geolocator/location/LocationClient;

    move-result-object v0

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    .line 118
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    iget-object v2, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/baseflow/geolocator/GeolocatorLocationService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3}, Lcom/baseflow/geolocator/GeolocatorLocationService$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    new-instance v4, Lcom/baseflow/geolocator/GeolocatorLocationService$$ExternalSyntheticLambda1;

    invoke-direct {v4, p3}, Lcom/baseflow/geolocator/GeolocatorLocationService$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baseflow/geolocator/location/GeolocationManager;->startPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    .line 125
    :cond_0
    return-void
.end method

.method public stopLocationService()V
    .locals 2

    .line 128
    iget v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    .line 129
    const-string v0, "FlutterGeolocator"

    const-string v1, "Stopping location service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/location/GeolocationManager;->stopPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;)V

    .line 133
    :cond_0
    return-void
.end method
