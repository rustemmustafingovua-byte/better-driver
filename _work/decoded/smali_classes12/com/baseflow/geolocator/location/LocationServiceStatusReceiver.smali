.class public Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationServiceStatusReceiver.java"


# instance fields
.field private final events:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private lastKnownServiceStatus:Lcom/baseflow/geolocator/location/ServiceStatus;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0
    .param p1, "events"    # Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 19
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 23
    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    nop

    .line 26
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 27
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 28
    .local v1, "isGpsEnabled":Z
    nop

    .line 29
    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 31
    .local v2, "isNetworkEnabled":Z
    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object v3, p0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;->lastKnownServiceStatus:Lcom/baseflow/geolocator/location/ServiceStatus;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;->lastKnownServiceStatus:Lcom/baseflow/geolocator/location/ServiceStatus;

    sget-object v4, Lcom/baseflow/geolocator/location/ServiceStatus;->enabled:Lcom/baseflow/geolocator/location/ServiceStatus;

    if-ne v3, v4, :cond_4

    .line 43
    :cond_1
    sget-object v3, Lcom/baseflow/geolocator/location/ServiceStatus;->disabled:Lcom/baseflow/geolocator/location/ServiceStatus;

    iput-object v3, p0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;->lastKnownServiceStatus:Lcom/baseflow/geolocator/location/ServiceStatus;

    .line 44
    iget-object v3, p0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    sget-object v4, Lcom/baseflow/geolocator/location/ServiceStatus;->disabled:Lcom/baseflow/geolocator/location/ServiceStatus;

    invoke-virtual {v4}, Lcom/baseflow/geolocator/location/ServiceStatus;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;->lastKnownServiceStatus:Lcom/baseflow/geolocator/location/ServiceStatus;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;->lastKnownServiceStatus:Lcom/baseflow/geolocator/location/ServiceStatus;

    sget-object v4, Lcom/baseflow/geolocator/location/ServiceStatus;->disabled:Lcom/baseflow/geolocator/location/ServiceStatus;

    if-ne v3, v4, :cond_4

    .line 38
    :cond_3
    sget-object v3, Lcom/baseflow/geolocator/location/ServiceStatus;->enabled:Lcom/baseflow/geolocator/location/ServiceStatus;

    iput-object v3, p0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;->lastKnownServiceStatus:Lcom/baseflow/geolocator/location/ServiceStatus;

    .line 39
    iget-object v3, p0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    sget-object v4, Lcom/baseflow/geolocator/location/ServiceStatus;->enabled:Lcom/baseflow/geolocator/location/ServiceStatus;

    invoke-virtual {v4}, Lcom/baseflow/geolocator/location/ServiceStatus;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 48
    .end local v0    # "locationManager":Landroid/location/LocationManager;
    .end local v1    # "isGpsEnabled":Z
    .end local v2    # "isNetworkEnabled":Z
    :cond_4
    :goto_1
    return-void
.end method
