.class public final Lio/sentry/protocol/FeatureFlags$Deserializer;
.super Ljava/lang/Object;
.source "FeatureFlags.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/FeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/FeatureFlags;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/FeatureFlags;
    .locals 4
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/FeatureFlag;>;"
    const/4 v1, 0x0

    .line 104
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_2

    .line 105
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v3, "values"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_1

    .line 111
    if-nez v1, :cond_1

    .line 112
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v3

    goto :goto_3

    .line 108
    :pswitch_1
    new-instance v3, Lio/sentry/protocol/FeatureFlag$Deserializer;

    invoke-direct {v3}, Lio/sentry/protocol/FeatureFlag$Deserializer;-><init>()V

    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v0

    .line 109
    goto :goto_4

    .line 114
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 117
    .end local v2    # "nextName":Ljava/lang/String;
    :goto_4
    goto :goto_0

    .line 118
    :cond_2
    if-nez v0, :cond_3

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 121
    :cond_3
    new-instance v2, Lio/sentry/protocol/FeatureFlags;

    invoke-direct {v2, v0}, Lio/sentry/protocol/FeatureFlags;-><init>(Ljava/util/List;)V

    .line 122
    .local v2, "flags":Lio/sentry/protocol/FeatureFlags;
    invoke-virtual {v2, v1}, Lio/sentry/protocol/FeatureFlags;->setUnknown(Ljava/util/Map;)V

    .line 123
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 124
    return-object v2

    :pswitch_data_0
    .packed-switch -0x311a62de
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 96
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/FeatureFlags$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/FeatureFlags;

    move-result-object p1

    return-object p1
.end method
