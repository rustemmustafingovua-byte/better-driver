.class public final Lio/sentry/protocol/profiling/SentrySample$Deserializer;
.super Ljava/lang/Object;
.source "SentrySample.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/profiling/SentrySample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/profiling/SentrySample;",
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
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/profiling/SentrySample;
    .locals 5
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 108
    new-instance v0, Lio/sentry/protocol/profiling/SentrySample;

    invoke-direct {v0}, Lio/sentry/protocol/profiling/SentrySample;-><init>()V

    .line 109
    .local v0, "data":Lio/sentry/protocol/profiling/SentrySample;
    const/4 v1, 0x0

    .line 111
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_2

    .line 112
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "stack_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_1
    const-string v3, "timestamp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_2
    const-string v3, "thread_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 124
    if-nez v1, :cond_1

    .line 125
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    goto :goto_3

    .line 121
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/profiling/SentrySample;->access$202(Lio/sentry/protocol/profiling/SentrySample;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    goto :goto_4

    .line 118
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextInt()I

    move-result v3

    invoke-static {v0, v3}, Lio/sentry/protocol/profiling/SentrySample;->access$102(Lio/sentry/protocol/profiling/SentrySample;I)I

    .line 119
    goto :goto_4

    .line 115
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDouble()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lio/sentry/protocol/profiling/SentrySample;->access$002(Lio/sentry/protocol/profiling/SentrySample;D)D

    .line 116
    goto :goto_4

    .line 127
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 130
    .end local v2    # "nextName":Ljava/lang/String;
    :goto_4
    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {v0, v1}, Lio/sentry/protocol/profiling/SentrySample;->setUnknown(Ljava/util/Map;)V

    .line 132
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 133
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d1dd090 -> :sswitch_2
        0x3492916 -> :sswitch_1
        0x4da54232 -> :sswitch_0
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
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/profiling/SentrySample$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/profiling/SentrySample;

    move-result-object p1

    return-object p1
.end method
