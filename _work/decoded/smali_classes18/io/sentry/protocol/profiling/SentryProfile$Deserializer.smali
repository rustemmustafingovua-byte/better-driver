.class public final Lio/sentry/protocol/profiling/SentryProfile$Deserializer;
.super Ljava/lang/Object;
.source "SentryProfile.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/profiling/SentryProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/profiling/SentryProfile;",
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
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/profiling/SentryProfile;
    .locals 5
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
    new-instance v0, Lio/sentry/protocol/profiling/SentryProfile;

    invoke-direct {v0}, Lio/sentry/protocol/profiling/SentryProfile;-><init>()V

    .line 107
    .local v0, "data":Lio/sentry/protocol/profiling/SentryProfile;
    const/4 v1, 0x0

    .line 109
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_3

    .line 110
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "thread_metadata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_1
    const-string v3, "samples"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_2
    const-string v3, "stacks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_3
    const-string v3, "frames"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 141
    if-nez v1, :cond_1

    .line 142
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v3

    goto :goto_3

    .line 134
    :pswitch_0
    new-instance v3, Lio/sentry/protocol/profiling/SentryProfile$NestedIntegerListDeserializer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lio/sentry/protocol/profiling/SentryProfile$NestedIntegerListDeserializer;-><init>(Lio/sentry/protocol/profiling/SentryProfile$1;)V

    .line 135
    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 136
    .local v3, "jfrStacks":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    if-eqz v3, :cond_2

    .line 137
    invoke-static {v0, v3}, Lio/sentry/protocol/profiling/SentryProfile;->access$402(Lio/sentry/protocol/profiling/SentryProfile;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 127
    .end local v3    # "jfrStacks":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    :pswitch_1
    new-instance v3, Lio/sentry/protocol/profiling/SentryThreadMetadata$Deserializer;

    invoke-direct {v3}, Lio/sentry/protocol/profiling/SentryThreadMetadata$Deserializer;-><init>()V

    .line 128
    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextMapOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/Map;

    move-result-object v3

    .line 129
    .local v3, "threadMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/profiling/SentryThreadMetadata;>;"
    if-eqz v3, :cond_2

    .line 130
    invoke-static {v0, v3}, Lio/sentry/protocol/profiling/SentryProfile;->access$202(Lio/sentry/protocol/profiling/SentryProfile;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_4

    .line 120
    .end local v3    # "threadMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/profiling/SentryThreadMetadata;>;"
    :pswitch_2
    new-instance v3, Lio/sentry/protocol/profiling/SentrySample$Deserializer;

    invoke-direct {v3}, Lio/sentry/protocol/profiling/SentrySample$Deserializer;-><init>()V

    .line 121
    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v3

    .line 122
    .local v3, "sentrySamples":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/profiling/SentrySample;>;"
    if-eqz v3, :cond_2

    .line 123
    invoke-static {v0, v3}, Lio/sentry/protocol/profiling/SentryProfile;->access$102(Lio/sentry/protocol/profiling/SentryProfile;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 113
    .end local v3    # "sentrySamples":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/profiling/SentrySample;>;"
    :pswitch_3
    new-instance v3, Lio/sentry/protocol/SentryStackFrame$Deserializer;

    invoke-direct {v3}, Lio/sentry/protocol/SentryStackFrame$Deserializer;-><init>()V

    .line 114
    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v3

    .line 115
    .local v3, "jfrFrame":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    if-eqz v3, :cond_2

    .line 116
    invoke-static {v0, v3}, Lio/sentry/protocol/profiling/SentryProfile;->access$002(Lio/sentry/protocol/profiling/SentryProfile;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 144
    .end local v3    # "jfrFrame":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 147
    .end local v2    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto/16 :goto_0

    .line 148
    :cond_3
    invoke-virtual {v0, v1}, Lio/sentry/protocol/profiling/SentryProfile;->setUnknown(Ljava/util/Map;)V

    .line 149
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 150
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b7d7b5a -> :sswitch_3
        -0x35327115 -> :sswitch_2
        0x6f274009 -> :sswitch_1
        0x7adfc9c4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
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

    .line 100
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/profiling/SentryProfile$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/profiling/SentryProfile;

    move-result-object p1

    return-object p1
.end method
