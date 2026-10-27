.class public final Lio/sentry/NoOpTransaction;
.super Ljava/lang/Object;
.source "NoOpTransaction.java"

# interfaces
.implements Lio/sentry/ITransaction;


# static fields
.field private static final instance:Lio/sentry/NoOpTransaction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lio/sentry/NoOpTransaction;

    invoke-direct {v0}, Lio/sentry/NoOpTransaction;-><init>()V

    sput-object v0, Lio/sentry/NoOpTransaction;->instance:Lio/sentry/NoOpTransaction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpTransaction;
    .locals 1

    .line 20
    sget-object v0, Lio/sentry/NoOpTransaction;->instance:Lio/sentry/NoOpTransaction;

    return-object v0
.end method


# virtual methods
.method public addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Boolean;

    .line 257
    return-void
.end method

.method public finish()V
    .locals 0

    .line 148
    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;)V
    .locals 0
    .param p1, "status"    # Lio/sentry/SpanStatus;

    .line 151
    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V
    .locals 0
    .param p1, "status"    # Lio/sentry/SpanStatus;
    .param p2, "timestamp"    # Lio/sentry/SentryDate;

    .line 154
    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;ZLio/sentry/Hint;)V
    .locals 0
    .param p1, "status"    # Lio/sentry/SpanStatus;
    .param p2, "timestamp"    # Lio/sentry/SentryDate;
    .param p3, "dropIfNoChildren"    # Z
    .param p4, "hint"    # Lio/sentry/Hint;

    .line 125
    return-void
.end method

.method public forceFinish(Lio/sentry/SpanStatus;ZLio/sentry/Hint;)V
    .locals 0
    .param p1, "status"    # Lio/sentry/SpanStatus;
    .param p2, "dropIfNoChildren"    # Z
    .param p3, "hint"    # Lio/sentry/Hint;

    .line 118
    return-void
.end method

.method public getContexts()Lio/sentry/protocol/Contexts;
    .locals 1

    .line 233
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    return-object v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEventId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 105
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getFinishDate()Lio/sentry/SentryDate;
    .locals 1

    .line 248
    new-instance v0, Lio/sentry/SentryNanotimeDate;

    invoke-direct {v0}, Lio/sentry/SentryNanotimeDate;-><init>()V

    return-object v0
.end method

.method public getLatestActiveSpan()Lio/sentry/ISpan;
    .locals 1

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, ""

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 161
    const-string v0, ""

    return-object v0
.end method

.method public getSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 1

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpanContext()Lio/sentry/SpanContext;
    .locals 6

    .line 185
    new-instance v0, Lio/sentry/SpanContext;

    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    sget-object v2, Lio/sentry/SpanId;->EMPTY_ID:Lio/sentry/SpanId;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "op"

    invoke-direct/range {v0 .. v5}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;)V

    return-object v0
.end method

.method public getSpans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Span;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStartDate()Lio/sentry/SentryDate;
    .locals 1

    .line 243
    new-instance v0, Lio/sentry/SentryNanotimeDate;

    invoke-direct {v0}, Lio/sentry/SentryNanotimeDate;-><init>()V

    return-object v0
.end method

.method public getStatus()Lio/sentry/SpanStatus;
    .locals 1

    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;
    .locals 1

    .line 37
    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public isNoOp()Z
    .locals 1

    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public isProfileSampled()Ljava/lang/Boolean;
    .locals 1

    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSampled()Ljava/lang/Boolean;
    .locals 1

    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeCurrent()Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 110
    invoke-static {}, Lio/sentry/NoOpScopesLifecycleToken;->getInstance()Lio/sentry/NoOpScopesLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public scheduleFinish()V
    .locals 0

    .line 114
    return-void
.end method

.method public setContext(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/Object;

    .line 228
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .line 220
    return-void
.end method

.method public setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;
    .param p3, "unit"    # Lio/sentry/MeasurementUnit;

    .line 224
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setName(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transactionNameSource"    # Lio/sentry/protocol/TransactionNameSource;

    .line 28
    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0
    .param p1, "operation"    # Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setStatus(Lio/sentry/SpanStatus;)V
    .locals 0
    .param p1, "status"    # Lio/sentry/SpanStatus;

    .line 168
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 176
    return-void
.end method

.method public startChild(Lio/sentry/SpanContext;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "spanContext"    # Lio/sentry/SpanContext;
    .param p2, "spanOptions"    # Lio/sentry/SpanOptions;

    .line 54
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0
.end method

.method public startChild(Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;

    .line 42
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .line 79
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "timestamp"    # Lio/sentry/SentryDate;

    .line 95
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "timestamp"    # Lio/sentry/SentryDate;
    .param p4, "instrumenter"    # Lio/sentry/Instrumenter;

    .line 63
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "timestamp"    # Lio/sentry/SentryDate;
    .param p4, "instrumenter"    # Lio/sentry/Instrumenter;
    .param p5, "spanOptions"    # Lio/sentry/SpanOptions;

    .line 73
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "spanOptions"    # Lio/sentry/SpanOptions;

    .line 48
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0
.end method

.method public toBaggageHeader(Ljava/util/List;)Lio/sentry/BaggageHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/BaggageHeader;"
        }
    .end annotation

    .line 144
    .local p1, "thirdPartyBaggageHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public toSentryTrace()Lio/sentry/SentryTraceHeader;
    .locals 4

    .line 134
    new-instance v0, Lio/sentry/SentryTraceHeader;

    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    sget-object v2, Lio/sentry/SpanId;->EMPTY_ID:Lio/sentry/SpanId;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryTraceHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public traceContext()Lio/sentry/TraceContext;
    .locals 3

    .line 139
    new-instance v0, Lio/sentry/TraceContext;

    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lio/sentry/TraceContext;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;)V

    return-object v0
.end method

.method public updateEndDate(Lio/sentry/SentryDate;)Z
    .locals 1
    .param p1, "date"    # Lio/sentry/SentryDate;

    .line 238
    const/4 v0, 0x0

    return v0
.end method
