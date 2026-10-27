.class public Lcom/baseflow/geolocator/location/NmeaClient;
.super Ljava/lang/Object;
.source "NmeaClient.java"


# static fields
.field public static final GNSS_SATELLITES_USED_IN_FIX_EXTRA:Ljava/lang/String; = "geolocator_mslSatellitesUsedInFix"

.field public static final GNSS_SATELLITE_COUNT_EXTRA:Ljava/lang/String; = "geolocator_mslSatelliteCount"

.field public static final NMEA_ALTITUDE_EXTRA:Ljava/lang/String; = "geolocator_mslAltitude"


# instance fields
.field private final context:Landroid/content/Context;

.field private gnssCallback:Landroid/location/GnssStatus$Callback;

.field private gnss_satellite_count:D

.field private gnss_satellites_used_in_fix:D

.field private lastNmeaMessage:Ljava/lang/String;

.field private lastNmeaMessageTime:Ljava/util/Calendar;

.field private listenerAdded:Z

.field private final locationManager:Landroid/location/LocationManager;

.field private final locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

.field private nmeaMessageListener:Landroid/location/OnNmeaMessageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationOptions"    # Lcom/baseflow/geolocator/location/LocationOptions;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->listenerAdded:Z

    .line 42
    iput-object p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    .line 44
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationManager:Landroid/location/LocationManager;

    .line 46
    nop

    .line 47
    new-instance v0, Lcom/baseflow/geolocator/location/NmeaClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/baseflow/geolocator/location/NmeaClient$$ExternalSyntheticLambda0;-><init>(Lcom/baseflow/geolocator/location/NmeaClient;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->nmeaMessageListener:Landroid/location/OnNmeaMessageListener;

    .line 55
    new-instance v0, Lcom/baseflow/geolocator/location/NmeaClient$1;

    invoke-direct {v0, p0}, Lcom/baseflow/geolocator/location/NmeaClient$1;-><init>(Lcom/baseflow/geolocator/location/NmeaClient;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnssCallback:Landroid/location/GnssStatus$Callback;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/baseflow/geolocator/location/NmeaClient;)D
    .locals 2
    .param p0, "x0"    # Lcom/baseflow/geolocator/location/NmeaClient;

    .line 20
    iget-wide v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnss_satellite_count:D

    return-wide v0
.end method

.method static synthetic access$002(Lcom/baseflow/geolocator/location/NmeaClient;D)D
    .locals 0
    .param p0, "x0"    # Lcom/baseflow/geolocator/location/NmeaClient;
    .param p1, "x1"    # D

    .line 20
    iput-wide p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnss_satellite_count:D

    return-wide p1
.end method

.method static synthetic access$102(Lcom/baseflow/geolocator/location/NmeaClient;D)D
    .locals 0
    .param p0, "x0"    # Lcom/baseflow/geolocator/location/NmeaClient;
    .param p1, "x1"    # D

    .line 20
    iput-wide p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnss_satellites_used_in_fix:D

    return-wide p1
.end method

.method static synthetic access$104(Lcom/baseflow/geolocator/location/NmeaClient;)D
    .locals 4
    .param p0, "x0"    # Lcom/baseflow/geolocator/location/NmeaClient;

    .line 20
    iget-wide v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnss_satellites_used_in_fix:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnss_satellites_used_in_fix:D

    return-wide v0
.end method


# virtual methods
.method public enrichExtrasWithNmea(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .line 100
    if-nez p1, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 105
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "geolocator_mslSatelliteCount"

    iget-wide v2, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnss_satellite_count:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 108
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "geolocator_mslSatellitesUsedInFix"

    iget-wide v2, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnss_satellites_used_in_fix:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 110
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessage:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->listenerAdded:Z

    if-eqz v0, :cond_4

    .line 112
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 113
    .local v0, "expiryDate":Ljava/util/Calendar;
    const/16 v1, 0xd

    const/4 v2, -0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 114
    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessageTime:Ljava/util/Calendar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessageTime:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    return-void

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/location/LocationOptions;->isUseMSLAltitude()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessage:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "tokens":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 125
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^\\$..GGA.*$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    array-length v3, v1

    const/16 v4, 0x9

    if-le v3, v4, :cond_4

    .line 126
    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 127
    aget-object v3, v1, v4

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 128
    .local v3, "mslAltitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_3

    .line 129
    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v5}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 131
    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "geolocator_mslAltitude"

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 136
    .end local v0    # "expiryDate":Ljava/util/Calendar;
    .end local v1    # "tokens":[Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "mslAltitude":D
    :cond_4
    return-void
.end method

.method synthetic lambda$new$0$com-baseflow-geolocator-location-NmeaClient(Ljava/lang/String;J)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^\\$..GGA.*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iput-object p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessage:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessageTime:Ljava/util/Calendar;

    .line 53
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 72
    iget-boolean v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->listenerAdded:Z

    if-eqz v0, :cond_0

    .line 73
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->nmeaMessageListener:Landroid/location/OnNmeaMessageListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z

    .line 81
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnssCallback:Landroid/location/GnssStatus$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->listenerAdded:Z

    .line 86
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->nmeaMessageListener:Landroid/location/OnNmeaMessageListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/OnNmeaMessageListener;)V

    .line 92
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnssCallback:Landroid/location/GnssStatus$Callback;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->listenerAdded:Z

    .line 96
    :cond_0
    return-void
.end method
