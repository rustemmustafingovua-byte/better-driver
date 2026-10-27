.class public final Lio/sentry/ProfileContext$Deserializer;
.super Ljava/lang/Object;
.source "ProfileContext.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/ProfileContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/ProfileContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/ProfileContext;
    .locals 4
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 96
    new-instance v0, Lio/sentry/ProfileContext;

    invoke-direct {v0}, Lio/sentry/ProfileContext;-><init>()V

    .line 97
    .local v0, "data":Lio/sentry/ProfileContext;
    const/4 v1, 0x0

    .line 98
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_3

    .line 99
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v3, "profiler_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_1

    .line 108
    if-nez v1, :cond_1

    .line 109
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v3

    goto :goto_3

    .line 102
    :pswitch_1
    new-instance v3, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v3}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/SentryId;

    .line 103
    .local v3, "profilerId":Lio/sentry/protocol/SentryId;
    if-eqz v3, :cond_2

    .line 104
    invoke-static {v0, v3}, Lio/sentry/ProfileContext;->access$002(Lio/sentry/ProfileContext;Lio/sentry/protocol/SentryId;)Lio/sentry/protocol/SentryId;

    goto :goto_4

    .line 111
    .end local v3    # "profilerId":Lio/sentry/protocol/SentryId;
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 114
    .end local v2    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {v0, v1}, Lio/sentry/ProfileContext;->setUnknown(Ljava/util/Map;)V

    .line 116
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 117
    return-object v0

    :pswitch_data_0
    .packed-switch 0xaa4d131
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

    .line 91
    invoke-virtual {p0, p1, p2}, Lio/sentry/ProfileContext$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/ProfileContext;

    move-result-object p1

    return-object p1
.end method
