.class Lcom/baseflow/geolocator/location/NmeaClient$1;
.super Landroid/location/GnssStatus$Callback;
.source "NmeaClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baseflow/geolocator/location/NmeaClient;-><init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baseflow/geolocator/location/NmeaClient;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/location/NmeaClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/baseflow/geolocator/location/NmeaClient;

    .line 55
    iput-object p1, p0, Lcom/baseflow/geolocator/location/NmeaClient$1;->this$0:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 5
    .param p1, "status"    # Landroid/location/GnssStatus;

    .line 58
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient$1;->this$0:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/baseflow/geolocator/location/NmeaClient;->access$002(Lcom/baseflow/geolocator/location/NmeaClient;D)D

    .line 59
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient$1;->this$0:Lcom/baseflow/geolocator/location/NmeaClient;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/baseflow/geolocator/location/NmeaClient;->access$102(Lcom/baseflow/geolocator/location/NmeaClient;D)D

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-double v1, v0

    iget-object v3, p0, Lcom/baseflow/geolocator/location/NmeaClient$1;->this$0:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-static {v3}, Lcom/baseflow/geolocator/location/NmeaClient;->access$000(Lcom/baseflow/geolocator/location/NmeaClient;)D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 61
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient$1;->this$0:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-static {v1}, Lcom/baseflow/geolocator/location/NmeaClient;->access$104(Lcom/baseflow/geolocator/location/NmeaClient;)D

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
