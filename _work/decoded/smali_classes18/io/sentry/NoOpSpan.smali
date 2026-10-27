.class public final Lio/sentry/NoOpSpan;
.super Ljava/lang/Object;
.source "NoOpSpan.java"

# interfaces
.implements Lio/sentry/ISpan;


# static fields
.field private static final instance:Lio/sentry/NoOpSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lio/sentry/NoOpSpan;

    invoke-direct {v0}, Lio/sentry/NoOpSpan;-><init>()V

    sput-object v0, Lio/sentry/NoOpSpan;->instance:Lio/sentry/NoOpSpan;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpSpan;
    .locals 1

    .line 18
    sget-object v0, Lio/sentry/NoOpSpan;->instance:Lio/sentry/NoOpSpan;

    return-object v0
.end method


# virtual methods
.method public addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Boolean;

    .line 202
    return-void
.end method

.method public finish()V
    .locals 0

    .line 85
    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;)V
    .locals 0
    .param p1, "status"    # Lio/sentry/SpanStatus;

    .line 88
    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V
    .locals 0
    .param p1, "status"    # Lio/sentry/SpanStatus;
    .param p2, "timestamp"    # Lio/sentry/SentryDate;

    .line 91
    return-void
.end method

.method public getContexts()Lio/sentry/protocol/Contexts;
    .locals 1

    .line 183
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    return-object v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFinishDate()Lio/sentry/SentryDate;
    .locals 1

    .line 170
    new-instance v0, Lio/sentry/SentryNanotimeDate;

    invoke-direct {v0}, Lio/sentry/SentryNanotimeDate;-><init>()V

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, ""

    return-object v0
.end method

.method public getSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 1

    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpanContext()Lio/sentry/SpanContext;
    .locals 6

    .line 127
    new-instance v0, Lio/sentry/SpanContext;

    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    sget-object v2, Lio/sentry/SpanId;->EMPTY_ID:Lio/sentry/SpanId;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "op"

    invoke-direct/range {v0 .. v5}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;)V

    return-object v0
.end method

.method public getStartDate()Lio/sentry/SentryDate;
    .locals 1

    .line 165
    new-instance v0, Lio/sentry/SentryNanotimeDate;

    invoke-direct {v0}, Lio/sentry/SentryNanotimeDate;-><init>()V

    return-object v0
.end method

.method public getStatus()Lio/sentry/SpanStatus;
    .locals 1

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public isNoOp()Z
    .locals 1

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public isSampled()Ljava/lang/Boolean;
    .locals 1

    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeCurrent()Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 198
    invoke-static {}, Lio/sentry/NoOpScopesLifecycleToken;->getInstance()Lio/sentry/NoOpScopesLifecycleToken;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/Object;

    .line 179
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .line 152
    return-void
.end method

.method public setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;
    .param p3, "unit"    # Lio/sentry/MeasurementUnit;

    .line 156
    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0
    .param p1, "operation"    # Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setStatus(Lio/sentry/SpanStatus;)V
    .locals 0
    .param p1, "status"    # Lio/sentry/SpanStatus;

    .line 110
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 118
    return-void
.end method

.method public startChild(Lio/sentry/SpanContext;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "spanContext"    # Lio/sentry/SpanContext;
    .param p2, "spanOptions"    # Lio/sentry/SpanOptions;

    .line 35
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0
.end method

.method public startChild(Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;

    .line 23
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .line 60
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "timestamp"    # Lio/sentry/SentryDate;

    .line 66
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

    .line 44
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

    .line 54
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object v0

    return-object v0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "spanOptions"    # Lio/sentry/SpanOptions;

    .line 29
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

    .line 81
    .local p1, "thirdPartyBaggageHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public toSentryTrace()Lio/sentry/SentryTraceHeader;
    .locals 4

    .line 71
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

    .line 76
    new-instance v0, Lio/sentry/TraceContext;

    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lio/sentry/TraceContext;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;)V

    return-object v0
.end method

.method public updateEndDate(Lio/sentry/SentryDate;)Z
    .locals 1
    .param p1, "date"    # Lio/sentry/SentryDate;

    .line 160
    const/4 v0, 0x0

    return v0
.end method
