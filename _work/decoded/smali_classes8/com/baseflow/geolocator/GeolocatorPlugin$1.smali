.class Lcom/baseflow/geolocator/GeolocatorPlugin$1;
.super Ljava/lang/Object;
.source "GeolocatorPlugin.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baseflow/geolocator/GeolocatorPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baseflow/geolocator/GeolocatorPlugin;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/GeolocatorPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/baseflow/geolocator/GeolocatorPlugin;

    .line 35
    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin$1;->this$0:Lcom/baseflow/geolocator/GeolocatorPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 39
    const-string v0, "FlutterGeolocator"

    const-string v1, "Geolocator foreground service connected"

    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    instance-of v0, p2, Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin$1;->this$0:Lcom/baseflow/geolocator/GeolocatorPlugin;

    move-object v1, p2

    check-cast v1, Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;->getLocationService()Lcom/baseflow/geolocator/GeolocatorLocationService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseflow/geolocator/GeolocatorPlugin;->access$000(Lcom/baseflow/geolocator/GeolocatorPlugin;Lcom/baseflow/geolocator/GeolocatorLocationService;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 47
    const-string v0, "FlutterGeolocator"

    const-string v1, "Geolocator foreground service disconnected"

    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin$1;->this$0:Lcom/baseflow/geolocator/GeolocatorPlugin;

    invoke-static {v0}, Lcom/baseflow/geolocator/GeolocatorPlugin;->access$100(Lcom/baseflow/geolocator/GeolocatorPlugin;)Lcom/baseflow/geolocator/GeolocatorLocationService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin$1;->this$0:Lcom/baseflow/geolocator/GeolocatorPlugin;

    invoke-static {v0}, Lcom/baseflow/geolocator/GeolocatorPlugin;->access$100(Lcom/baseflow/geolocator/GeolocatorPlugin;)Lcom/baseflow/geolocator/GeolocatorLocationService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->setActivity(Landroid/app/Activity;)V

    .line 50
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin$1;->this$0:Lcom/baseflow/geolocator/GeolocatorPlugin;

    invoke-static {v0, v1}, Lcom/baseflow/geolocator/GeolocatorPlugin;->access$102(Lcom/baseflow/geolocator/GeolocatorPlugin;Lcom/baseflow/geolocator/GeolocatorLocationService;)Lcom/baseflow/geolocator/GeolocatorLocationService;

    .line 52
    :cond_0
    return-void
.end method
