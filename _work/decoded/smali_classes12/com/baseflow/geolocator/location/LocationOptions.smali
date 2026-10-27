.class public Lcom/baseflow/geolocator/location/LocationOptions;
.super Ljava/lang/Object;
.source "LocationOptions.java"


# static fields
.field public static final USE_MSL_ALTITUDE_EXTRA:Ljava/lang/String; = "geolocator_use_mslAltitude"


# instance fields
.field private final accuracy:Lcom/baseflow/geolocator/location/LocationAccuracy;

.field private final distanceFilter:J

.field private final timeInterval:J

.field private final useMSLAltitude:Z


# direct methods
.method private constructor <init>(Lcom/baseflow/geolocator/location/LocationAccuracy;JJZ)V
    .locals 0
    .param p1, "accuracy"    # Lcom/baseflow/geolocator/location/LocationAccuracy;
    .param p2, "distanceFilter"    # J
    .param p4, "timeInterval"    # J
    .param p6, "useMSLAltitude"    # Z

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/baseflow/geolocator/location/LocationOptions;->accuracy:Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 16
    iput-wide p2, p0, Lcom/baseflow/geolocator/location/LocationOptions;->distanceFilter:J

    .line 17
    iput-wide p4, p0, Lcom/baseflow/geolocator/location/LocationOptions;->timeInterval:J

    .line 18
    iput-boolean p6, p0, Lcom/baseflow/geolocator/location/LocationOptions;->useMSLAltitude:Z

    .line 19
    return-void
.end method

.method public static parseArguments(Ljava/util/Map;)Lcom/baseflow/geolocator/location/LocationOptions;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baseflow/geolocator/location/LocationOptions;"
        }
    .end annotation

    .line 22
    .local p0, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 23
    new-instance v0, Lcom/baseflow/geolocator/location/LocationOptions;

    sget-object v1, Lcom/baseflow/geolocator/location/LocationAccuracy;->best:Lcom/baseflow/geolocator/location/LocationAccuracy;

    const-wide/16 v4, 0x1388

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/baseflow/geolocator/location/LocationOptions;-><init>(Lcom/baseflow/geolocator/location/LocationAccuracy;JJZ)V

    return-object v0

    .line 26
    :cond_0
    const-string v0, "accuracy"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 27
    .local v0, "accuracy":Ljava/lang/Integer;
    const-string v1, "distanceFilter"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 28
    .local v1, "distanceFilter":Ljava/lang/Integer;
    const-string v2, "timeInterval"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 29
    .local v2, "timeInterval":Ljava/lang/Integer;
    const-string v3, "useMSLAltitude"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 31
    .local v3, "useMSLAltitude":Ljava/lang/Boolean;
    sget-object v4, Lcom/baseflow/geolocator/location/LocationAccuracy;->best:Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 33
    .local v4, "locationAccuracy":Lcom/baseflow/geolocator/location/LocationAccuracy;
    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 48
    :pswitch_1
    sget-object v4, Lcom/baseflow/geolocator/location/LocationAccuracy;->bestForNavigation:Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 49
    move-object v6, v4

    goto :goto_1

    .line 45
    :pswitch_2
    sget-object v4, Lcom/baseflow/geolocator/location/LocationAccuracy;->high:Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 46
    move-object v6, v4

    goto :goto_1

    .line 42
    :pswitch_3
    sget-object v4, Lcom/baseflow/geolocator/location/LocationAccuracy;->medium:Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 43
    move-object v6, v4

    goto :goto_1

    .line 39
    :pswitch_4
    sget-object v4, Lcom/baseflow/geolocator/location/LocationAccuracy;->low:Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 40
    move-object v6, v4

    goto :goto_1

    .line 36
    :pswitch_5
    sget-object v4, Lcom/baseflow/geolocator/location/LocationAccuracy;->lowest:Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 37
    move-object v6, v4

    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    move-object v6, v4

    .end local v4    # "locationAccuracy":Lcom/baseflow/geolocator/location/LocationAccuracy;
    .local v6, "locationAccuracy":Lcom/baseflow/geolocator/location/LocationAccuracy;
    :goto_1
    new-instance v5, Lcom/baseflow/geolocator/location/LocationOptions;

    .line 58
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v7, v4

    goto :goto_2

    :cond_2
    const-wide/16 v7, 0x0

    .line 59
    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v9, v4

    goto :goto_3

    :cond_3
    const-wide/16 v9, 0x1388

    :goto_3
    if-eqz v3, :cond_4

    .line 60
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/baseflow/geolocator/location/LocationOptions;-><init>(Lcom/baseflow/geolocator/location/LocationAccuracy;JJZ)V

    .line 56
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAccuracy()Lcom/baseflow/geolocator/location/LocationAccuracy;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationOptions;->accuracy:Lcom/baseflow/geolocator/location/LocationAccuracy;

    return-object v0
.end method

.method public getDistanceFilter()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/baseflow/geolocator/location/LocationOptions;->distanceFilter:J

    return-wide v0
.end method

.method public getTimeInterval()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/baseflow/geolocator/location/LocationOptions;->timeInterval:J

    return-wide v0
.end method

.method public isUseMSLAltitude()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/baseflow/geolocator/location/LocationOptions;->useMSLAltitude:Z

    return v0
.end method
