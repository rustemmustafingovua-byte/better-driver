.class public final Lio/sentry/protocol/SentryPackage$Deserializer;
.super Ljava/lang/Object;
.source "SentryPackage.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SentryPackage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryPackage;
    .locals 6
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 109
    .local v1, "version":Ljava/lang/String;
    const/4 v2, 0x0

    .line 111
    .local v2, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 112
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v3, v4, :cond_2

    .line 113
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "nextName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_1
    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 122
    if-nez v2, :cond_1

    .line 123
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v2, v4

    goto :goto_3

    .line 119
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 120
    goto :goto_4

    .line 116
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 117
    goto :goto_4

    .line 125
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v2, v3}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 128
    .end local v3    # "nextName":Ljava/lang/String;
    :goto_4
    goto :goto_0

    .line 129
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 131
    if-eqz v0, :cond_4

    .line 137
    if-eqz v1, :cond_3

    .line 144
    new-instance v3, Lio/sentry/protocol/SentryPackage;

    invoke-direct {v3, v0, v1}, Lio/sentry/protocol/SentryPackage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v3, "sentryPackage":Lio/sentry/protocol/SentryPackage;
    invoke-virtual {v3, v2}, Lio/sentry/protocol/SentryPackage;->setUnknown(Ljava/util/Map;)V

    .line 146
    return-object v3

    .line 138
    .end local v3    # "sentryPackage":Lio/sentry/protocol/SentryPackage;
    :cond_3
    const-string v3, "Missing required field \"version\""

    .line 139
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 140
    .local v4, "exception":Ljava/lang/Exception;
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v5, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    throw v4

    .line 132
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "exception":Ljava/lang/Exception;
    :cond_4
    const-string v3, "Missing required field \"name\""

    .line 133
    .restart local v3    # "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v4    # "exception":Ljava/lang/Exception;
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v5, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    throw v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x337a8b -> :sswitch_1
        0x14f51cd8 -> :sswitch_0
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

    .line 102
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SentryPackage$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryPackage;

    move-result-object p1

    return-object p1
.end method
