.class public final Lio/sentry/protocol/SentryTransaction;
.super Lio/sentry/SentryBaseEvent;
.source "SentryTransaction.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SentryTransaction$JsonKeys;,
        Lio/sentry/protocol/SentryTransaction$Deserializer;
    }
.end annotation


# instance fields
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

.field private final spans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentrySpan;",
            ">;"
        }
    .end annotation
.end field

.field private startTimestamp:Ljava/lang/Double;

.field private timestamp:Ljava/lang/Double;

.field private transaction:Ljava/lang/String;

.field private transactionInfo:Lio/sentry/protocol/TransactionInfo;

.field private final type:Ljava/lang/String;

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
.method public constructor <init>(Lio/sentry/SentryTracer;)V
    .locals 12
    .param p1, "sentryTracer"    # Lio/sentry/SentryTracer;

    .line 59
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/SentryBaseEvent;-><init>(Lio/sentry/protocol/SentryId;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->spans:Ljava/util/List;

    .line 48
    const-string v0, "transaction"

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->type:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->measurements:Ljava/util/Map;

    .line 60
    const-string v0, "sentryTracer is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->nanosToSeconds(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->startTimestamp:Ljava/lang/Double;

    .line 64
    nop

    .line 67
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryDate;->laterDateNanosTimestampByDiff(Lio/sentry/SentryDate;)J

    move-result-wide v0

    .line 65
    invoke-static {v0, v1}, Lio/sentry/DateUtils;->nanosToSeconds(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->timestamp:Ljava/lang/Double;

    .line 69
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->transaction:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Span;

    .line 71
    .local v1, "span":Lio/sentry/Span;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lio/sentry/Span;->isSampled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lio/sentry/protocol/SentryTransaction;->spans:Ljava/util/List;

    new-instance v3, Lio/sentry/protocol/SentrySpan;

    invoke-direct {v3, v1}, Lio/sentry/protocol/SentrySpan;-><init>(Lio/sentry/Span;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v1    # "span":Lio/sentry/Span;
    :cond_0
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    .line 77
    .local v0, "contexts":Lio/sentry/protocol/Contexts;
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->putAll(Lio/sentry/protocol/Contexts;)V

    .line 79
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v1

    .line 80
    .local v1, "tracerContext":Lio/sentry/SpanContext;
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getData()Ljava/util/Map;

    move-result-object v2

    .line 82
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Lio/sentry/SpanContext;

    .line 84
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v4

    .line 85
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v5

    .line 86
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getParentSpanId()Lio/sentry/SpanId;

    move-result-object v6

    .line 87
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getOperation()Ljava/lang/String;

    move-result-object v7

    .line 88
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getDescription()Ljava/lang/String;

    move-result-object v8

    .line 89
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v9

    .line 90
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v10

    .line 91
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getOrigin()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v3 .. v11}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;Lio/sentry/SpanStatus;Ljava/lang/String;)V

    .line 93
    .local v3, "tracerContextToSend":Lio/sentry/SpanContext;
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getTags()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 94
    .local v5, "tag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lio/sentry/protocol/SentryTransaction;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v5    # "tag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 97
    :cond_2
    if-eqz v2, :cond_3

    .line 98
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 99
    .local v5, "tag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lio/sentry/SpanContext;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    .end local v5    # "tag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getFeatureFlagBuffer()Lio/sentry/featureflags/IFeatureFlagBuffer;

    move-result-object v4

    .line 104
    .local v4, "featureFlagBuffer":Lio/sentry/featureflags/IFeatureFlagBuffer;
    invoke-interface {v4}, Lio/sentry/featureflags/IFeatureFlagBuffer;->getFeatureFlags()Lio/sentry/protocol/FeatureFlags;

    move-result-object v5

    .line 105
    .local v5, "featureFlags":Lio/sentry/protocol/FeatureFlags;
    if-eqz v5, :cond_4

    .line 106
    invoke-virtual {v5}, Lio/sentry/protocol/FeatureFlags;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/sentry/protocol/FeatureFlag;

    .line 107
    .local v7, "featureFlag":Lio/sentry/protocol/FeatureFlag;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "flag.evaluation."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 108
    invoke-virtual {v7}, Lio/sentry/protocol/FeatureFlag;->getFlag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lio/sentry/protocol/FeatureFlag;->getResult()Ljava/lang/Boolean;

    move-result-object v9

    .line 107
    invoke-virtual {v3, v8, v9}, Lio/sentry/SpanContext;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .end local v7    # "featureFlag":Lio/sentry/protocol/FeatureFlag;
    goto :goto_3

    .line 112
    :cond_4
    invoke-virtual {v0, v3}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    .line 114
    new-instance v6, Lio/sentry/protocol/TransactionInfo;

    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/protocol/TransactionNameSource;->apiName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lio/sentry/protocol/TransactionInfo;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lio/sentry/protocol/SentryTransaction;->transactionInfo:Lio/sentry/protocol/TransactionInfo;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/Map;Lio/sentry/protocol/TransactionInfo;)V
    .locals 4
    .param p1, "transaction"    # Ljava/lang/String;
    .param p2, "startTimestamp"    # Ljava/lang/Double;
    .param p3, "timestamp"    # Ljava/lang/Double;
    .param p6, "transactionInfo"    # Lio/sentry/protocol/TransactionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentrySpan;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/MeasurementValue;",
            ">;",
            "Lio/sentry/protocol/TransactionInfo;",
            ")V"
        }
    .end annotation

    .line 124
    .local p4, "spans":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentrySpan;>;"
    .local p5, "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    invoke-direct {p0}, Lio/sentry/SentryBaseEvent;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->spans:Ljava/util/List;

    .line 48
    const-string v0, "transaction"

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->type:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->measurements:Ljava/util/Map;

    .line 125
    iput-object p1, p0, Lio/sentry/protocol/SentryTransaction;->transaction:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lio/sentry/protocol/SentryTransaction;->startTimestamp:Ljava/lang/Double;

    .line 127
    iput-object p3, p0, Lio/sentry/protocol/SentryTransaction;->timestamp:Ljava/lang/Double;

    .line 128
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->spans:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->measurements:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 130
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/SentrySpan;

    .line 131
    .local v1, "span":Lio/sentry/protocol/SentrySpan;
    iget-object v2, p0, Lio/sentry/protocol/SentryTransaction;->measurements:Ljava/util/Map;

    invoke-virtual {v1}, Lio/sentry/protocol/SentrySpan;->getMeasurements()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 132
    .end local v1    # "span":Lio/sentry/protocol/SentrySpan;
    goto :goto_0

    .line 133
    :cond_0
    iput-object p6, p0, Lio/sentry/protocol/SentryTransaction;->transactionInfo:Lio/sentry/protocol/TransactionInfo;

    .line 134
    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/SentryTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/SentryTransaction;->transaction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/SentryTransaction;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryTransaction;
    .param p1, "x1"    # Ljava/lang/Double;

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/SentryTransaction;->startTimestamp:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/SentryTransaction;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryTransaction;
    .param p1, "x1"    # Ljava/lang/Double;

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/SentryTransaction;->timestamp:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$300(Lio/sentry/protocol/SentryTransaction;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/sentry/protocol/SentryTransaction;

    .line 32
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->spans:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lio/sentry/protocol/SentryTransaction;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lio/sentry/protocol/SentryTransaction;

    .line 32
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->measurements:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$502(Lio/sentry/protocol/SentryTransaction;Lio/sentry/protocol/TransactionInfo;)Lio/sentry/protocol/TransactionInfo;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryTransaction;
    .param p1, "x1"    # Lio/sentry/protocol/TransactionInfo;

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/SentryTransaction;->transactionInfo:Lio/sentry/protocol/TransactionInfo;

    return-object p1
.end method


# virtual methods
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

    .line 184
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->measurements:Ljava/util/Map;

    return-object v0
.end method

.method public getSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 2

    .line 175
    invoke-virtual {p0}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v0

    .line 176
    .local v0, "trace":Lio/sentry/SpanContext;
    if-nez v0, :cond_0

    .line 177
    const/4 v1, 0x0

    return-object v1

    .line 180
    :cond_0
    invoke-virtual {v0}, Lio/sentry/SpanContext;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v1

    return-object v1
.end method

.method public getSpans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentrySpan;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->spans:Ljava/util/List;

    return-object v0
.end method

.method public getStartTimestamp()Ljava/lang/Double;
    .locals 1

    .line 149
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->startTimestamp:Ljava/lang/Double;

    return-object v0
.end method

.method public getStatus()Lio/sentry/SpanStatus;
    .locals 2

    .line 161
    invoke-virtual {p0}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v0

    .line 162
    .local v0, "trace":Lio/sentry/SpanContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getTimestamp()Ljava/lang/Double;
    .locals 1

    .line 153
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->timestamp:Ljava/lang/Double;

    return-object v0
.end method

.method public getTransaction()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->transaction:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 157
    const-string v0, "transaction"

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

    .line 232
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->timestamp:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSampled()Z
    .locals 2

    .line 166
    invoke-virtual {p0}, Lio/sentry/protocol/SentryTransaction;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v0

    .line 167
    .local v0, "samplingDecsion":Lio/sentry/TracesSamplingDecision;
    if-nez v0, :cond_0

    .line 168
    const/4 v1, 0x0

    return v1

    .line 171
    :cond_0
    invoke-virtual {v0}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
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

    .line 202
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 203
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->transaction:Ljava/lang/String;

    const-string v1, "transaction"

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/SentryTransaction;->transaction:Ljava/lang/String;

    invoke-interface {v0, v2}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 206
    :cond_0
    const-string v0, "start_timestamp"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/SentryTransaction;->startTimestamp:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lio/sentry/DateUtils;->doubleToBigDecimal(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 207
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->timestamp:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 208
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/SentryTransaction;->timestamp:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lio/sentry/DateUtils;->doubleToBigDecimal(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 210
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->spans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    const-string v0, "spans"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/SentryTransaction;->spans:Ljava/util/List;

    invoke-interface {v0, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 213
    :cond_2
    const-string v0, "type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 214
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->measurements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 215
    const-string v0, "measurements"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryTransaction;->measurements:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 217
    :cond_3
    const-string v0, "transaction_info"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryTransaction;->transactionInfo:Lio/sentry/protocol/TransactionInfo;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 218
    new-instance v0, Lio/sentry/SentryBaseEvent$Serializer;

    invoke-direct {v0}, Lio/sentry/SentryBaseEvent$Serializer;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/SentryBaseEvent$Serializer;->serialize(Lio/sentry/SentryBaseEvent;Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 219
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 220
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/SentryTransaction;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 222
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 223
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 224
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 226
    :cond_4
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 227
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

    .line 237
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/SentryTransaction;->unknown:Ljava/util/Map;

    .line 238
    return-void
.end method
