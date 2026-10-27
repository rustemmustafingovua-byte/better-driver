.class public final Lio/sentry/protocol/SentrySpan;
.super Ljava/lang/Object;
.source "SentrySpan.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SentrySpan$JsonKeys;,
        Lio/sentry/protocol/SentrySpan$Deserializer;
    }
.end annotation


# instance fields
.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final description:Ljava/lang/String;

.field private final measurements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/MeasurementValue;",
            ">;"
        }
    .end annotation
.end field

.field private final op:Ljava/lang/String;

.field private final origin:Ljava/lang/String;

.field private final parentSpanId:Lio/sentry/SpanId;

.field private final spanId:Lio/sentry/SpanId;

.field private final startTimestamp:Ljava/lang/Double;

.field private final status:Lio/sentry/SpanStatus;

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final timestamp:Ljava/lang/Double;

.field private final traceId:Lio/sentry/protocol/SentryId;

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
.method public constructor <init>(Lio/sentry/Span;)V
    .locals 1
    .param p1, "span"    # Lio/sentry/Span;

    .line 50
    invoke-virtual {p1}, Lio/sentry/Span;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/protocol/SentrySpan;-><init>(Lio/sentry/Span;Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lio/sentry/Span;Ljava/util/Map;)V
    .locals 9
    .param p1, "span"    # Lio/sentry/Span;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/Span;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "span is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p1}, Lio/sentry/Span;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->description:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lio/sentry/Span;->getOperation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->op:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lio/sentry/Span;->getSpanId()Lio/sentry/SpanId;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->spanId:Lio/sentry/SpanId;

    .line 59
    invoke-virtual {p1}, Lio/sentry/Span;->getParentSpanId()Lio/sentry/SpanId;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->parentSpanId:Lio/sentry/SpanId;

    .line 60
    invoke-virtual {p1}, Lio/sentry/Span;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->traceId:Lio/sentry/protocol/SentryId;

    .line 61
    invoke-virtual {p1}, Lio/sentry/Span;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->status:Lio/sentry/SpanStatus;

    .line 62
    invoke-virtual {p1}, Lio/sentry/Span;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getOrigin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->origin:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lio/sentry/Span;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 64
    .local v0, "tagsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :goto_0
    iput-object v1, p0, Lio/sentry/protocol/SentrySpan;->tags:Ljava/util/Map;

    .line 65
    nop

    .line 66
    invoke-virtual {p1}, Lio/sentry/Span;->getMeasurements()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 67
    .local v1, "measurementsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :goto_1
    iput-object v2, p0, Lio/sentry/protocol/SentrySpan;->measurements:Ljava/util/Map;

    .line 69
    nop

    .line 70
    invoke-virtual {p1}, Lio/sentry/Span;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v2

    if-nez v2, :cond_2

    .line 71
    const/4 v2, 0x0

    goto :goto_2

    .line 72
    :cond_2
    nop

    .line 73
    invoke-virtual {p1}, Lio/sentry/Span;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v2

    invoke-virtual {p1}, Lio/sentry/Span;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/sentry/SentryDate;->laterDateNanosTimestampByDiff(Lio/sentry/SentryDate;)J

    move-result-wide v2

    .line 72
    invoke-static {v2, v3}, Lio/sentry/DateUtils;->nanosToSeconds(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lio/sentry/protocol/SentrySpan;->timestamp:Ljava/lang/Double;

    .line 75
    invoke-virtual {p1}, Lio/sentry/Span;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/sentry/DateUtils;->nanosToSeconds(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/protocol/SentrySpan;->startTimestamp:Ljava/lang/Double;

    .line 76
    iput-object p2, p0, Lio/sentry/protocol/SentrySpan;->data:Ljava/util/Map;

    .line 77
    nop

    .line 78
    invoke-virtual {p1}, Lio/sentry/Span;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SpanContext;->getFeatureFlagBuffer()Lio/sentry/featureflags/IFeatureFlagBuffer;

    move-result-object v2

    .line 79
    .local v2, "featureFlagBuffer":Lio/sentry/featureflags/IFeatureFlagBuffer;
    invoke-interface {v2}, Lio/sentry/featureflags/IFeatureFlagBuffer;->getFeatureFlags()Lio/sentry/protocol/FeatureFlags;

    move-result-object v3

    .line 80
    .local v3, "featureFlags":Lio/sentry/protocol/FeatureFlags;
    if-eqz v3, :cond_4

    .line 81
    iget-object v4, p0, Lio/sentry/protocol/SentrySpan;->data:Ljava/util/Map;

    if-nez v4, :cond_3

    .line 82
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lio/sentry/protocol/SentrySpan;->data:Ljava/util/Map;

    .line 84
    :cond_3
    invoke-virtual {v3}, Lio/sentry/protocol/FeatureFlags;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/protocol/FeatureFlag;

    .line 85
    .local v5, "featureFlag":Lio/sentry/protocol/FeatureFlag;
    iget-object v6, p0, Lio/sentry/protocol/SentrySpan;->data:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "flag.evaluation."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lio/sentry/protocol/FeatureFlag;->getFlag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lio/sentry/protocol/FeatureFlag;->getResult()Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v5    # "featureFlag":Lio/sentry/protocol/FeatureFlag;
    goto :goto_3

    .line 88
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanStatus;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "startTimestamp"    # Ljava/lang/Double;
    .param p2, "timestamp"    # Ljava/lang/Double;
    .param p3, "traceId"    # Lio/sentry/protocol/SentryId;
    .param p4, "spanId"    # Lio/sentry/SpanId;
    .param p5, "parentSpanId"    # Lio/sentry/SpanId;
    .param p6, "op"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;
    .param p8, "status"    # Lio/sentry/SpanStatus;
    .param p9, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/SpanId;",
            "Lio/sentry/SpanId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/sentry/SpanStatus;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/MeasurementValue;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p10, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p11, "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    .local p12, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lio/sentry/protocol/SentrySpan;->startTimestamp:Ljava/lang/Double;

    .line 105
    iput-object p2, p0, Lio/sentry/protocol/SentrySpan;->timestamp:Ljava/lang/Double;

    .line 106
    iput-object p3, p0, Lio/sentry/protocol/SentrySpan;->traceId:Lio/sentry/protocol/SentryId;

    .line 107
    iput-object p4, p0, Lio/sentry/protocol/SentrySpan;->spanId:Lio/sentry/SpanId;

    .line 108
    iput-object p5, p0, Lio/sentry/protocol/SentrySpan;->parentSpanId:Lio/sentry/SpanId;

    .line 109
    iput-object p6, p0, Lio/sentry/protocol/SentrySpan;->op:Ljava/lang/String;

    .line 110
    iput-object p7, p0, Lio/sentry/protocol/SentrySpan;->description:Ljava/lang/String;

    .line 111
    iput-object p8, p0, Lio/sentry/protocol/SentrySpan;->status:Lio/sentry/SpanStatus;

    .line 112
    iput-object p9, p0, Lio/sentry/protocol/SentrySpan;->origin:Ljava/lang/String;

    .line 113
    iput-object p10, p0, Lio/sentry/protocol/SentrySpan;->tags:Ljava/util/Map;

    .line 114
    iput-object p11, p0, Lio/sentry/protocol/SentrySpan;->measurements:Ljava/util/Map;

    .line 115
    iput-object p12, p0, Lio/sentry/protocol/SentrySpan;->data:Ljava/util/Map;

    .line 116
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/Map;
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

    .line 159
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasurements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/MeasurementValue;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->measurements:Ljava/util/Map;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getParentSpanId()Lio/sentry/SpanId;
    .locals 1

    .line 139
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->parentSpanId:Lio/sentry/SpanId;

    return-object v0
.end method

.method public getSpanId()Lio/sentry/SpanId;
    .locals 1

    .line 135
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->spanId:Lio/sentry/SpanId;

    return-object v0
.end method

.method public getStartTimestamp()Ljava/lang/Double;
    .locals 1

    .line 123
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->startTimestamp:Ljava/lang/Double;

    return-object v0
.end method

.method public getStatus()Lio/sentry/SpanStatus;
    .locals 1

    .line 151
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->status:Lio/sentry/SpanStatus;

    return-object v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Double;
    .locals 1

    .line 127
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->timestamp:Ljava/lang/Double;

    return-object v0
.end method

.method public getTraceId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 131
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->traceId:Lio/sentry/protocol/SentryId;

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

    .line 236
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->timestamp:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 194
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 195
    const-string v0, "start_timestamp"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->startTimestamp:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lio/sentry/DateUtils;->doubleToBigDecimal(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 196
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->timestamp:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->timestamp:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lio/sentry/DateUtils;->doubleToBigDecimal(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 199
    :cond_0
    const-string v0, "trace_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->traceId:Lio/sentry/protocol/SentryId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 200
    const-string v0, "span_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->spanId:Lio/sentry/SpanId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 201
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->parentSpanId:Lio/sentry/SpanId;

    if-eqz v0, :cond_1

    .line 202
    const-string v0, "parent_span_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->parentSpanId:Lio/sentry/SpanId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 204
    :cond_1
    const-string v0, "op"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->op:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 205
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->description:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 206
    const-string v0, "description"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->description:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 208
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->status:Lio/sentry/SpanStatus;

    if-eqz v0, :cond_3

    .line 209
    const-string v0, "status"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->status:Lio/sentry/SpanStatus;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 211
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->origin:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 212
    const-string v0, "origin"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->origin:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 214
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 215
    const-string v0, "tags"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->tags:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 217
    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->data:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 218
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->data:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 220
    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->measurements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 221
    const-string v0, "measurements"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->measurements:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 223
    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 224
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->unknown:Ljava/util/Map;

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

    .line 225
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/SentrySpan;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 226
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 227
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 228
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 230
    :cond_8
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 231
    return-void
.end method

.method public setData(Ljava/util/Map;)V
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

    .line 163
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/SentrySpan;->data:Ljava/util/Map;

    .line 164
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

    .line 241
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/SentrySpan;->unknown:Ljava/util/Map;

    .line 242
    return-void
.end method
