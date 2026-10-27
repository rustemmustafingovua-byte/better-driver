.class public final Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;
.super Ljava/lang/Object;
.source "ProfileMeasurement.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/profilemeasurements/ProfileMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/profilemeasurements/ProfileMeasurement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/profilemeasurements/ProfileMeasurement;
    .locals 4
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 123
    new-instance v0, Lio/sentry/profilemeasurements/ProfileMeasurement;

    invoke-direct {v0}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>()V

    .line 124
    .local v0, "data":Lio/sentry/profilemeasurements/ProfileMeasurement;
    const/4 v1, 0x0

    .line 126
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_3

    .line 127
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "unit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_1
    const-string v3, "values"

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
    if-nez v1, :cond_1

    .line 144
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v3

    goto :goto_3

    .line 136
    :pswitch_0
    new-instance v3, Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;

    invoke-direct {v3}, Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;-><init>()V

    .line 137
    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v3

    .line 138
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Lio/sentry/profilemeasurements/ProfileMeasurementValue;>;"
    if-eqz v3, :cond_2

    .line 139
    invoke-static {v0, v3}, Lio/sentry/profilemeasurements/ProfileMeasurement;->access$102(Lio/sentry/profilemeasurements/ProfileMeasurement;Ljava/util/Collection;)Ljava/util/Collection;

    goto :goto_4

    .line 130
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Lio/sentry/profilemeasurements/ProfileMeasurementValue;>;"
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "unit":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 132
    invoke-static {v0, v3}, Lio/sentry/profilemeasurements/ProfileMeasurement;->access$002(Lio/sentry/profilemeasurements/ProfileMeasurement;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 146
    .end local v3    # "unit":Ljava/lang/String;
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 149
    .end local v2    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto :goto_0

    .line 150
    :cond_3
    invoke-virtual {v0, v1}, Lio/sentry/profilemeasurements/ProfileMeasurement;->setUnknown(Ljava/util/Map;)V

    .line 151
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 152
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x311a62de -> :sswitch_1
        0x36d984 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 117
    invoke-virtual {p0, p1, p2}, Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/profilemeasurements/ProfileMeasurement;

    move-result-object p1

    return-object p1
.end method
