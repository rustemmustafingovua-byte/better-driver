.class public final Lio/sentry/TransactionContext;
.super Lio/sentry/SpanContext;
.source "TransactionContext.java"


# static fields
.field private static final DEFAULT_NAME_SOURCE:Lio/sentry/protocol/TransactionNameSource;

.field private static final DEFAULT_OPERATION:Ljava/lang/String; = "default"

.field public static final DEFAULT_TRANSACTION_NAME:Ljava/lang/String; = "<unlabeled transaction>"


# instance fields
.field private isForNextAppStart:Z

.field private name:Ljava/lang/String;

.field private parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

.field private transactionNameSource:Lio/sentry/protocol/TransactionNameSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    sput-object v0, Lio/sentry/TransactionContext;->DEFAULT_NAME_SOURCE:Lio/sentry/protocol/TransactionNameSource;

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;Lio/sentry/Baggage;)V
    .locals 6
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;
    .param p2, "spanId"    # Lio/sentry/SpanId;
    .param p3, "parentSpanId"    # Lio/sentry/SpanId;
    .param p4, "parentSamplingDecision"    # Lio/sentry/TracesSamplingDecision;
    .param p5, "baggage"    # Lio/sentry/Baggage;

    .line 94
    const-string v3, "default"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .end local p1    # "traceId":Lio/sentry/protocol/SentryId;
    .end local p2    # "spanId":Lio/sentry/SpanId;
    .end local p3    # "parentSpanId":Lio/sentry/SpanId;
    .local v1, "traceId":Lio/sentry/protocol/SentryId;
    .local v2, "spanId":Lio/sentry/SpanId;
    .local v4, "parentSpanId":Lio/sentry/SpanId;
    invoke-direct/range {v0 .. v5}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;)V

    .line 19
    const/4 p1, 0x0

    iput-boolean p1, v0, Lio/sentry/TransactionContext;->isForNextAppStart:Z

    .line 95
    const-string p1, "<unlabeled transaction>"

    iput-object p1, v0, Lio/sentry/TransactionContext;->name:Ljava/lang/String;

    .line 96
    iput-object p4, v0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    .line 97
    sget-object p1, Lio/sentry/TransactionContext;->DEFAULT_NAME_SOURCE:Lio/sentry/protocol/TransactionNameSource;

    iput-object p1, v0, Lio/sentry/TransactionContext;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    .line 98
    invoke-static {p5, p4}, Lio/sentry/util/TracingUtils;->ensureBaggage(Lio/sentry/Baggage;Lio/sentry/TracesSamplingDecision;)Lio/sentry/Baggage;

    move-result-object p1

    iput-object p1, v0, Lio/sentry/TransactionContext;->baggage:Lio/sentry/Baggage;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transactionNameSource"    # Lio/sentry/protocol/TransactionNameSource;
    .param p3, "operation"    # Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transactionNameSource"    # Lio/sentry/protocol/TransactionNameSource;
    .param p3, "operation"    # Ljava/lang/String;
    .param p4, "samplingDecision"    # Lio/sentry/TracesSamplingDecision;

    .line 80
    invoke-direct {p0, p3}, Lio/sentry/SpanContext;-><init>(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/TransactionContext;->isForNextAppStart:Z

    .line 81
    const-string v0, "name is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/TransactionContext;->name:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lio/sentry/TransactionContext;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    .line 83
    invoke-virtual {p0, p4}, Lio/sentry/TransactionContext;->setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    .line 84
    const/4 v0, 0x0

    invoke-static {v0, p4}, Lio/sentry/util/TracingUtils;->ensureBaggage(Lio/sentry/Baggage;Lio/sentry/TracesSamplingDecision;)Lio/sentry/Baggage;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/TransactionContext;->baggage:Lio/sentry/Baggage;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "samplingDecision"    # Lio/sentry/TracesSamplingDecision;

    .line 64
    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    invoke-direct {p0, p1, v0, p2, p3}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    .line 65
    return-void
.end method

.method public static fromPropagationContext(Lio/sentry/PropagationContext;)Lio/sentry/TransactionContext;
    .locals 8
    .param p0, "propagationContext"    # Lio/sentry/PropagationContext;

    .line 24
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->isSampled()Ljava/lang/Boolean;

    move-result-object v0

    .line 25
    .local v0, "parentSampled":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object v6

    .line 26
    .local v6, "baggage":Lio/sentry/Baggage;
    invoke-virtual {v6}, Lio/sentry/Baggage;->getSampleRate()Ljava/lang/Double;

    move-result-object v7

    .line 28
    .local v7, "sampleRate":Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 29
    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Lio/sentry/TracesSamplingDecision;

    .line 31
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->getSampleRand()Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v0, v7, v2}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v5, v1

    :goto_0
    nop

    .line 33
    .local v5, "samplingDecision":Lio/sentry/TracesSamplingDecision;
    new-instance v1, Lio/sentry/TransactionContext;

    .line 34
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    .line 35
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v3

    .line 36
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->getParentSpanId()Lio/sentry/SpanId;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Lio/sentry/TransactionContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;Lio/sentry/Baggage;)V

    .line 33
    return-object v1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lio/sentry/TransactionContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentSampled()Ljava/lang/Boolean;
    .locals 1

    .line 106
    iget-object v0, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    invoke-virtual {v0}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getParentSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 1

    .line 114
    iget-object v0, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    return-object v0
.end method

.method public getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;
    .locals 1

    .line 138
    iget-object v0, p0, Lio/sentry/TransactionContext;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    return-object v0
.end method

.method public isForNextAppStart()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lio/sentry/TransactionContext;->isForNextAppStart:Z

    return v0
.end method

.method public setForNextAppStart(Z)V
    .locals 0
    .param p1, "forNextAppStart"    # Z

    .line 151
    iput-boolean p1, p0, Lio/sentry/TransactionContext;->isForNextAppStart:Z

    .line 152
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 142
    const-string v0, "name is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/TransactionContext;->name:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setParentSampled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "parentSampled"    # Ljava/lang/Boolean;

    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v0, p1}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    iput-object v0, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    .line 123
    :goto_0
    return-void
.end method

.method public setParentSampled(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "parentSampled"    # Ljava/lang/Boolean;
    .param p2, "parentProfileSampled"    # Ljava/lang/Boolean;

    .line 127
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 128
    iput-object v0, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    goto :goto_0

    .line 129
    :cond_0
    if-nez p2, :cond_1

    .line 130
    new-instance v0, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v0, p1}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    iput-object v0, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    goto :goto_0

    .line 132
    :cond_1
    new-instance v1, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v1, p1, v0, p2, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    iput-object v1, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    .line 135
    :goto_0
    return-void
.end method

.method public setTransactionNameSource(Lio/sentry/protocol/TransactionNameSource;)V
    .locals 0
    .param p1, "transactionNameSource"    # Lio/sentry/protocol/TransactionNameSource;

    .line 146
    iput-object p1, p0, Lio/sentry/TransactionContext;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    .line 147
    return-void
.end method
