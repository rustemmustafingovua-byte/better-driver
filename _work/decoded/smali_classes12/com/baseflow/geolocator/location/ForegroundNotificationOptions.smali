.class public Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;
.super Ljava/lang/Object;
.source "ForegroundNotificationOptions.java"


# instance fields
.field private final color:Ljava/lang/Integer;

.field private final enableWakeLock:Z

.field private final enableWifiLock:Z

.field private final notificationChannelName:Ljava/lang/String;

.field private final notificationIcon:Lcom/baseflow/geolocator/location/AndroidIconResource;

.field private final notificationText:Ljava/lang/String;

.field private final notificationTitle:Ljava/lang/String;

.field private final setOngoing:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baseflow/geolocator/location/AndroidIconResource;ZZZLjava/lang/Integer;)V
    .locals 0
    .param p1, "notificationTitle"    # Ljava/lang/String;
    .param p2, "notificationText"    # Ljava/lang/String;
    .param p3, "notificationChannelName"    # Ljava/lang/String;
    .param p4, "notificationIcon"    # Lcom/baseflow/geolocator/location/AndroidIconResource;
    .param p5, "enableWifiLock"    # Z
    .param p6, "enableWakeLock"    # Z
    .param p7, "setOngoing"    # Z
    .param p8, "color"    # Ljava/lang/Integer;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationTitle:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationText:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationChannelName:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationIcon:Lcom/baseflow/geolocator/location/AndroidIconResource;

    .line 69
    iput-boolean p5, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->enableWifiLock:Z

    .line 70
    iput-boolean p6, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->enableWakeLock:Z

    .line 71
    iput-boolean p7, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->setOngoing:Z

    .line 72
    iput-object p8, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->color:Ljava/lang/Integer;

    .line 73
    return-void
.end method

.method public static parseArguments(Ljava/util/Map;)Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;"
        }
    .end annotation

    .line 27
    .local p0, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "notificationIcon"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/baseflow/geolocator/location/AndroidIconResource;->parseArguments(Ljava/util/Map;)Lcom/baseflow/geolocator/location/AndroidIconResource;

    move-result-object v5

    .line 32
    .local v5, "notificationIcon":Lcom/baseflow/geolocator/location/AndroidIconResource;
    const-string v0, "notificationTitle"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 33
    .local v2, "notificationTitle":Ljava/lang/String;
    const-string v0, "notificationChannelName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 34
    .local v4, "notificationChannelName":Ljava/lang/String;
    const-string v0, "notificationText"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 35
    .local v3, "notificationText":Ljava/lang/String;
    const-string v0, "enableWifiLock"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 36
    .local v0, "enableWifiLock":Ljava/lang/Boolean;
    const-string v1, "enableWakeLock"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/Boolean;

    .line 37
    .local v10, "enableWakeLock":Ljava/lang/Boolean;
    const-string v1, "setOngoing"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/Boolean;

    .line 39
    .local v11, "setOngoing":Ljava/lang/Boolean;
    const/4 v1, 0x0

    .line 40
    .local v1, "color":Ljava/lang/Integer;
    const-string v6, "color"

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 41
    .local v12, "colorObject":Ljava/lang/Object;
    if-eqz v12, :cond_1

    .line 42
    move-object v6, v12

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    .line 41
    :cond_1
    move-object v9, v1

    .line 45
    .end local v1    # "color":Ljava/lang/Integer;
    .local v9, "color":Ljava/lang/Integer;
    :goto_0
    new-instance v1, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 51
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 52
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-direct/range {v1 .. v9}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baseflow/geolocator/location/AndroidIconResource;ZZZLjava/lang/Integer;)V

    .line 45
    return-object v1
.end method


# virtual methods
.method public getColor()Ljava/lang/Integer;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->color:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNotificationChannelName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationIcon()Lcom/baseflow/geolocator/location/AndroidIconResource;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationIcon:Lcom/baseflow/geolocator/location/AndroidIconResource;

    return-object v0
.end method

.method public getNotificationText()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationText:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableWakeLock()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->enableWakeLock:Z

    return v0
.end method

.method public isEnableWifiLock()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->enableWifiLock:Z

    return v0
.end method

.method public isSetOngoing()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->setOngoing:Z

    return v0
.end method
