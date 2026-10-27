.class public final Lio/sentry/protocol/FeatureFlag$Deserializer;
.super Ljava/lang/Object;
.source "FeatureFlag.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/FeatureFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/FeatureFlag;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/FeatureFlag;
    .locals 6
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "flag":Ljava/lang/String;
    const/4 v1, 0x0

    .line 108
    .local v1, "result":Ljava/lang/Boolean;
    const/4 v2, 0x0

    .line 109
    .local v2, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v3, v4, :cond_2

    .line 110
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "nextName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "flag"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_1
    const-string v4, "result"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 119
    if-nez v2, :cond_1

    .line 120
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v2, v4

    goto :goto_3

    .line 116
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    .line 117
    goto :goto_4

    .line 113
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    .line 114
    goto :goto_4

    .line 122
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v2, v3}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 125
    .end local v3    # "nextName":Ljava/lang/String;
    :goto_4
    goto :goto_0

    .line 126
    :cond_2
    if-eqz v0, :cond_4

    .line 132
    if-eqz v1, :cond_3

    .line 138
    new-instance v3, Lio/sentry/protocol/FeatureFlag;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v3, v0, v4}, Lio/sentry/protocol/FeatureFlag;-><init>(Ljava/lang/String;Z)V

    .line 139
    .local v3, "app":Lio/sentry/protocol/FeatureFlag;
    invoke-virtual {v3, v2}, Lio/sentry/protocol/FeatureFlag;->setUnknown(Ljava/util/Map;)V

    .line 140
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 141
    return-object v3

    .line 133
    .end local v3    # "app":Lio/sentry/protocol/FeatureFlag;
    :cond_3
    const-string v3, "Missing required field \"result\""

    .line 134
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .local v4, "exception":Ljava/lang/Exception;
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v5, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    throw v4

    .line 127
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "exception":Ljava/lang/Exception;
    :cond_4
    const-string v3, "Missing required field \"flag\""

    .line 128
    .restart local v3    # "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 129
    .restart local v4    # "exception":Ljava/lang/Exception;
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v5, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    throw v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b237e3 -> :sswitch_1
        0x2fff6c -> :sswitch_0
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

    .line 100
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/FeatureFlag$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/FeatureFlag;

    move-result-object p1

    return-object p1
.end method
