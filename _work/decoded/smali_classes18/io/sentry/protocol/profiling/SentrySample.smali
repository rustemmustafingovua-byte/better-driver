.class public final Lio/sentry/protocol/profiling/SentrySample;
.super Ljava/lang/Object;
.source "SentrySample.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/profiling/SentrySample$JsonKeys;,
        Lio/sentry/protocol/profiling/SentrySample$Deserializer;
    }
.end annotation


# instance fields
.field private stackId:I

.field private threadId:Ljava/lang/String;

.field private timestamp:D

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/profiling/SentrySample;)V
    .locals 2
    .param p1, "sample"    # Lio/sentry/protocol/profiling/SentrySample;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iget-wide v0, p1, Lio/sentry/protocol/profiling/SentrySample;->timestamp:D

    iput-wide v0, p0, Lio/sentry/protocol/profiling/SentrySample;->timestamp:D

    .line 35
    iget v0, p1, Lio/sentry/protocol/profiling/SentrySample;->stackId:I

    iput v0, p0, Lio/sentry/protocol/profiling/SentrySample;->stackId:I

    .line 36
    iget-object v0, p1, Lio/sentry/protocol/profiling/SentrySample;->threadId:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/profiling/SentrySample;->threadId:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lio/sentry/protocol/profiling/SentrySample;->unknown:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/profiling/SentrySample;->unknown:Ljava/util/Map;

    .line 38
    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/profiling/SentrySample;D)D
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/profiling/SentrySample;
    .param p1, "x1"    # D

    .line 21
    iput-wide p1, p0, Lio/sentry/protocol/profiling/SentrySample;->timestamp:D

    return-wide p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/profiling/SentrySample;I)I
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/profiling/SentrySample;
    .param p1, "x1"    # I

    .line 21
    iput p1, p0, Lio/sentry/protocol/profiling/SentrySample;->stackId:I

    return p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/profiling/SentrySample;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/profiling/SentrySample;
    .param p1, "x1"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lio/sentry/protocol/profiling/SentrySample;->threadId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getStackId()I
    .locals 1

    .line 49
    iget v0, p0, Lio/sentry/protocol/profiling/SentrySample;->stackId:I

    return v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/sentry/protocol/profiling/SentrySample;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()D
    .locals 2

    .line 41
    iget-wide v0, p0, Lio/sentry/protocol/profiling/SentrySample;->timestamp:D

    return-wide v0
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

    .line 94
    iget-object v0, p0, Lio/sentry/protocol/profiling/SentrySample;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 4
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 74
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/protocol/profiling/SentrySample;->timestamp:D

    invoke-static {v1, v2}, Lio/sentry/DateUtils;->doubleToBigDecimal(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 75
    const-string v0, "stack_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/protocol/profiling/SentrySample;->stackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 77
    iget-object v0, p0, Lio/sentry/protocol/profiling/SentrySample;->threadId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "thread_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/profiling/SentrySample;->threadId:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 81
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/profiling/SentrySample;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lio/sentry/protocol/profiling/SentrySample;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/profiling/SentrySample;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 84
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 85
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 88
    :cond_1
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 89
    return-void
.end method

.method public setStackId(I)V
    .locals 0
    .param p1, "stackId"    # I

    .line 53
    iput p1, p0, Lio/sentry/protocol/profiling/SentrySample;->stackId:I

    .line 54
    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "threadId"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lio/sentry/protocol/profiling/SentrySample;->threadId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setTimestamp(D)V
    .locals 0
    .param p1, "timestamp"    # D

    .line 45
    iput-wide p1, p0, Lio/sentry/protocol/profiling/SentrySample;->timestamp:D

    .line 46
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

    .line 99
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/profiling/SentrySample;->unknown:Ljava/util/Map;

    .line 100
    return-void
.end method
