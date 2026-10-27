.class public final Lio/sentry/TraceContext;
.super Ljava/lang/Object;
.source "TraceContext.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/TraceContext$JsonKeys;,
        Lio/sentry/TraceContext$Deserializer;
    }
.end annotation


# instance fields
.field private final environment:Ljava/lang/String;

.field private final publicKey:Ljava/lang/String;

.field private final release:Ljava/lang/String;

.field private final replayId:Lio/sentry/protocol/SentryId;

.field private final sampleRand:Ljava/lang/String;

.field private final sampleRate:Ljava/lang/String;

.field private final sampled:Ljava/lang/String;

.field private final traceId:Lio/sentry/protocol/SentryId;

.field private final transaction:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;)V
    .locals 10
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;
    .param p2, "publicKey"    # Ljava/lang/String;

    .line 29
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "traceId":Lio/sentry/protocol/SentryId;
    .end local p2    # "publicKey":Ljava/lang/String;
    .local v1, "traceId":Lio/sentry/protocol/SentryId;
    .local v2, "publicKey":Ljava/lang/String;
    invoke-direct/range {v0 .. v9}, Lio/sentry/TraceContext;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SentryId;)V

    .line 30
    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SentryId;)V
    .locals 11
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;
    .param p2, "publicKey"    # Ljava/lang/String;
    .param p3, "release"    # Ljava/lang/String;
    .param p4, "environment"    # Ljava/lang/String;
    .param p5, "userId"    # Ljava/lang/String;
    .param p6, "transaction"    # Ljava/lang/String;
    .param p7, "sampleRate"    # Ljava/lang/String;
    .param p8, "sampled"    # Ljava/lang/String;
    .param p9, "replayId"    # Lio/sentry/protocol/SentryId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lio/sentry/TraceContext;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SentryId;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SentryId;Ljava/lang/String;)V
    .locals 0
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;
    .param p2, "publicKey"    # Ljava/lang/String;
    .param p3, "release"    # Ljava/lang/String;
    .param p4, "environment"    # Ljava/lang/String;
    .param p5, "userId"    # Ljava/lang/String;
    .param p6, "transaction"    # Ljava/lang/String;
    .param p7, "sampleRate"    # Ljava/lang/String;
    .param p8, "sampled"    # Ljava/lang/String;
    .param p9, "replayId"    # Lio/sentry/protocol/SentryId;
    .param p10, "sampleRand"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lio/sentry/TraceContext;->traceId:Lio/sentry/protocol/SentryId;

    .line 72
    iput-object p2, p0, Lio/sentry/TraceContext;->publicKey:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lio/sentry/TraceContext;->release:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lio/sentry/TraceContext;->environment:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lio/sentry/TraceContext;->userId:Ljava/lang/String;

    .line 76
    iput-object p6, p0, Lio/sentry/TraceContext;->transaction:Ljava/lang/String;

    .line 77
    iput-object p7, p0, Lio/sentry/TraceContext;->sampleRate:Ljava/lang/String;

    .line 78
    iput-object p8, p0, Lio/sentry/TraceContext;->sampled:Ljava/lang/String;

    .line 79
    iput-object p9, p0, Lio/sentry/TraceContext;->replayId:Lio/sentry/protocol/SentryId;

    .line 80
    iput-object p10, p0, Lio/sentry/TraceContext;->sampleRand:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lio/sentry/TraceContext;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/sentry/TraceContext;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lio/sentry/TraceContext;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getReplayId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 120
    iget-object v0, p0, Lio/sentry/TraceContext;->replayId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getSampleRand()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lio/sentry/TraceContext;->sampleRand:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lio/sentry/TraceContext;->sampleRate:Ljava/lang/String;

    return-object v0
.end method

.method public getSampled()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lio/sentry/TraceContext;->sampled:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 84
    iget-object v0, p0, Lio/sentry/TraceContext;->traceId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getTransaction()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lio/sentry/TraceContext;->transaction:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lio/sentry/TraceContext;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lio/sentry/TraceContext;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 153
    const-string v0, "trace_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->traceId:Lio/sentry/protocol/SentryId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 154
    const-string v0, "public_key"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->publicKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 155
    iget-object v0, p0, Lio/sentry/TraceContext;->release:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "release"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->release:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 158
    :cond_0
    iget-object v0, p0, Lio/sentry/TraceContext;->environment:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 159
    const-string v0, "environment"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->environment:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 161
    :cond_1
    iget-object v0, p0, Lio/sentry/TraceContext;->userId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 162
    const-string v0, "user_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->userId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 164
    :cond_2
    iget-object v0, p0, Lio/sentry/TraceContext;->transaction:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 165
    const-string v0, "transaction"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->transaction:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 167
    :cond_3
    iget-object v0, p0, Lio/sentry/TraceContext;->sampleRate:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 168
    const-string v0, "sample_rate"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->sampleRate:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 170
    :cond_4
    iget-object v0, p0, Lio/sentry/TraceContext;->sampleRand:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 171
    const-string v0, "sample_rand"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->sampleRand:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 173
    :cond_5
    iget-object v0, p0, Lio/sentry/TraceContext;->sampled:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 174
    const-string v0, "sampled"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->sampled:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 176
    :cond_6
    iget-object v0, p0, Lio/sentry/TraceContext;->replayId:Lio/sentry/protocol/SentryId;

    if-eqz v0, :cond_7

    .line 177
    const-string v0, "replay_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->replayId:Lio/sentry/protocol/SentryId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 179
    :cond_7
    iget-object v0, p0, Lio/sentry/TraceContext;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 180
    iget-object v0, p0, Lio/sentry/TraceContext;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/TraceContext;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 182
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 183
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 184
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 186
    :cond_8
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 187
    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/TraceContext;->unknown:Ljava/util/Map;

    .line 134
    return-void
.end method
