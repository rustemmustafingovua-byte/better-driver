.class public final Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;
.super Ljava/lang/Object;
.source "ProfileMeasurementValue.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/profilemeasurements/ProfileMeasurementValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/profilemeasurements/ProfileMeasurementValue;
    .locals 7
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 112
    new-instance v0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    invoke-direct {v0}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>()V

    .line 113
    .local v0, "data":Lio/sentry/profilemeasurements/ProfileMeasurementValue;
    const/4 v1, 0x0

    .line 115
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_4

    .line 116
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_1
    const-string v3, "timestamp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_2
    const-string v3, "elapsed_since_start_ns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 143
    if-nez v1, :cond_2

    .line 144
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v3

    goto :goto_5

    .line 133
    :pswitch_0
    :try_start_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .local v3, "timestamp":Ljava/lang/Double;
    goto :goto_4

    .line 134
    .end local v3    # "timestamp":Ljava/lang/Double;
    :catch_0
    move-exception v3

    .line 135
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-interface {p1, p2}, Lio/sentry/ObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v4

    .line 136
    .local v4, "date":Ljava/util/Date;
    if-eqz v4, :cond_1

    invoke-static {v4}, Lio/sentry/DateUtils;->dateToSeconds(Ljava/util/Date;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    :goto_3
    move-object v3, v5

    .line 138
    .end local v4    # "date":Ljava/util/Date;
    .local v3, "timestamp":Ljava/lang/Double;
    :goto_4
    if-eqz v3, :cond_3

    .line 139
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->access$202(Lio/sentry/profilemeasurements/ProfileMeasurementValue;D)D

    goto :goto_6

    .line 125
    .end local v3    # "timestamp":Ljava/lang/Double;
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "startNs":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 127
    invoke-static {v0, v3}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->access$102(Lio/sentry/profilemeasurements/ProfileMeasurementValue;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6

    .line 119
    .end local v3    # "startNs":Ljava/lang/String;
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3

    .line 120
    .local v3, "value":Ljava/lang/Double;
    if-eqz v3, :cond_3

    .line 121
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->access$002(Lio/sentry/profilemeasurements/ProfileMeasurementValue;D)D

    goto :goto_6

    .line 146
    .end local v3    # "value":Ljava/lang/Double;
    :cond_2
    :goto_5
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 149
    .end local v2    # "nextName":Ljava/lang/String;
    :cond_3
    :goto_6
    goto :goto_0

    .line 150
    :cond_4
    invoke-virtual {v0, v1}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->setUnknown(Ljava/util/Map;)V

    .line 151
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 152
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x65e390b6 -> :sswitch_2
        0x3492916 -> :sswitch_1
        0x6ac9171 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    invoke-virtual {p0, p1, p2}, Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    move-result-object p1

    return-object p1
.end method
