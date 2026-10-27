.class public final Lio/sentry/util/TracingUtils;
.super Ljava/lang/Object;
.source "TracingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/TracingUtils$TracingHeaders;,
        Lio/sentry/util/TracingUtils$PropagationContextHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureBaggage(Lio/sentry/Baggage;Lio/sentry/TracesSamplingDecision;)Lio/sentry/Baggage;
    .locals 4
    .param p0, "incomingBaggage"    # Lio/sentry/Baggage;
    .param p1, "decision"    # Lio/sentry/TracesSamplingDecision;

    .line 240
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object v1

    .line 241
    .local v1, "decisionSampled":Ljava/lang/Boolean;
    :goto_0
    if-nez p1, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lio/sentry/TracesSamplingDecision;->getSampleRate()Ljava/lang/Double;

    move-result-object v2

    .line 242
    .local v2, "decisionSampleRate":Ljava/lang/Double;
    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lio/sentry/TracesSamplingDecision;->getSampleRand()Ljava/lang/Double;

    move-result-object v0

    .line 244
    .local v0, "decisionSampleRand":Ljava/lang/Double;
    :goto_2
    invoke-static {p0, v1, v2, v0}, Lio/sentry/util/TracingUtils;->ensureBaggage(Lio/sentry/Baggage;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;)Lio/sentry/Baggage;

    move-result-object v3

    return-object v3
.end method

.method public static ensureBaggage(Lio/sentry/Baggage;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;)Lio/sentry/Baggage;
    .locals 4
    .param p0, "incomingBaggage"    # Lio/sentry/Baggage;
    .param p1, "decisionSampled"    # Ljava/lang/Boolean;
    .param p2, "decisionSampleRate"    # Ljava/lang/Double;
    .param p3, "decisionSampleRand"    # Ljava/lang/Double;

    .line 267
    if-nez p0, :cond_0

    new-instance v0, Lio/sentry/Baggage;

    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/Baggage;-><init>(Lio/sentry/ILogger;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 269
    .local v0, "baggage":Lio/sentry/Baggage;
    :goto_0
    invoke-virtual {v0}, Lio/sentry/Baggage;->getSampleRand()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_2

    .line 270
    invoke-virtual {v0}, Lio/sentry/Baggage;->getSampleRate()Ljava/lang/Double;

    move-result-object v1

    .line 272
    .local v1, "baggageSampleRate":Ljava/lang/Double;
    if-nez v1, :cond_1

    move-object v2, p2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 273
    .local v2, "sampleRateMaybe":Ljava/lang/Double;
    :goto_1
    nop

    .line 274
    invoke-static {p3, v2, p1}, Lio/sentry/util/SampleRateUtils;->backfilledSampleRand(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;)Ljava/lang/Double;

    move-result-object v3

    .line 276
    .local v3, "sampleRand":Ljava/lang/Double;
    invoke-virtual {v0, v3}, Lio/sentry/Baggage;->setSampleRand(Ljava/lang/Double;)V

    .line 278
    .end local v1    # "baggageSampleRate":Ljava/lang/Double;
    .end local v2    # "sampleRateMaybe":Ljava/lang/Double;
    .end local v3    # "sampleRand":Ljava/lang/Double;
    :cond_2
    invoke-virtual {v0}, Lio/sentry/Baggage;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 279
    invoke-virtual {v0}, Lio/sentry/Baggage;->isShouldFreeze()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    invoke-virtual {v0}, Lio/sentry/Baggage;->freeze()V

    .line 284
    :cond_3
    return-object v0
.end method

.method public static isIgnored(Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .param p1, "transactionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 172
    .local p0, "ignoredTransactions":Ljava/util/List;, "Ljava/util/List<Lio/sentry/FilterString;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 173
    return v0

    .line 175
    :cond_0
    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    .line 179
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/FilterString;

    .line 180
    .local v2, "ignoredTransaction":Lio/sentry/FilterString;
    invoke-virtual {v2}, Lio/sentry/FilterString;->getFilterString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    return v3

    .line 183
    .end local v2    # "ignoredTransaction":Lio/sentry/FilterString;
    :cond_2
    goto :goto_0

    .line 185
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/FilterString;

    .line 188
    .restart local v2    # "ignoredTransaction":Lio/sentry/FilterString;
    :try_start_0
    invoke-virtual {v2, p1}, Lio/sentry/FilterString;->matches(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    .line 189
    return v3

    .line 193
    :cond_4
    goto :goto_2

    .line 191
    :catchall_0
    move-exception v4

    .line 194
    .end local v2    # "ignoredTransaction":Lio/sentry/FilterString;
    :goto_2
    goto :goto_1

    .line 196
    :cond_5
    return v0

    .line 176
    :cond_6
    :goto_3
    return v0
.end method

.method static synthetic lambda$maybeUpdateBaggage$5(Lio/sentry/IScope;Lio/sentry/SentryOptions;Lio/sentry/PropagationContext;)V
    .locals 2
    .param p0, "scope"    # Lio/sentry/IScope;
    .param p1, "sentryOptions"    # Lio/sentry/SentryOptions;
    .param p2, "propagationContext"    # Lio/sentry/PropagationContext;

    .line 115
    invoke-virtual {p2}, Lio/sentry/PropagationContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object v0

    .line 116
    .local v0, "baggage":Lio/sentry/Baggage;
    invoke-virtual {v0}, Lio/sentry/Baggage;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0, p0, p1}, Lio/sentry/Baggage;->setValuesFromScope(Lio/sentry/IScope;Lio/sentry/SentryOptions;)V

    .line 118
    invoke-virtual {v0}, Lio/sentry/Baggage;->freeze()V

    .line 120
    :cond_0
    return-void
.end method

.method static synthetic lambda$setTrace$2(Lio/sentry/IScope;Lio/sentry/PropagationContext;Lio/sentry/PropagationContext;)V
    .locals 0
    .param p0, "scope"    # Lio/sentry/IScope;
    .param p1, "propagationContext"    # Lio/sentry/PropagationContext;
    .param p2, "oldPropagationContext"    # Lio/sentry/PropagationContext;

    .line 39
    invoke-interface {p0, p1}, Lio/sentry/IScope;->setPropagationContext(Lio/sentry/PropagationContext;)V

    .line 40
    return-void
.end method

.method static synthetic lambda$setTrace$3(Lio/sentry/PropagationContext;Lio/sentry/IScope;)V
    .locals 1
    .param p0, "propagationContext"    # Lio/sentry/PropagationContext;
    .param p1, "scope"    # Lio/sentry/IScope;

    .line 37
    new-instance v0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda1;-><init>(Lio/sentry/IScope;Lio/sentry/PropagationContext;)V

    invoke-interface {p1, v0}, Lio/sentry/IScope;->withPropagationContext(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;

    .line 41
    return-void
.end method

.method static synthetic lambda$startNewTrace$0(Lio/sentry/IScope;Lio/sentry/PropagationContext;)V
    .locals 1
    .param p0, "scope"    # Lio/sentry/IScope;
    .param p1, "propagationContext"    # Lio/sentry/PropagationContext;

    .line 28
    new-instance v0, Lio/sentry/PropagationContext;

    invoke-direct {v0}, Lio/sentry/PropagationContext;-><init>()V

    invoke-interface {p0, v0}, Lio/sentry/IScope;->setPropagationContext(Lio/sentry/PropagationContext;)V

    .line 29
    return-void
.end method

.method static synthetic lambda$startNewTrace$1(Lio/sentry/IScope;)V
    .locals 1
    .param p0, "scope"    # Lio/sentry/IScope;

    .line 26
    new-instance v0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda2;-><init>(Lio/sentry/IScope;)V

    invoke-interface {p0, v0}, Lio/sentry/IScope;->withPropagationContext(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;

    .line 30
    return-void
.end method

.method static synthetic lambda$trace$4(Lio/sentry/util/TracingUtils$PropagationContextHolder;Lio/sentry/SentryOptions;Lio/sentry/IScope;)V
    .locals 1
    .param p0, "returnValue"    # Lio/sentry/util/TracingUtils$PropagationContextHolder;
    .param p1, "sentryOptions"    # Lio/sentry/SentryOptions;
    .param p2, "scope"    # Lio/sentry/IScope;

    .line 80
    invoke-static {p2, p1}, Lio/sentry/util/TracingUtils;->maybeUpdateBaggage(Lio/sentry/IScope;Lio/sentry/SentryOptions;)Lio/sentry/PropagationContext;

    move-result-object v0

    invoke-static {p0, v0}, Lio/sentry/util/TracingUtils$PropagationContextHolder;->access$102(Lio/sentry/util/TracingUtils$PropagationContextHolder;Lio/sentry/PropagationContext;)Lio/sentry/PropagationContext;

    .line 81
    return-void
.end method

.method public static maybeUpdateBaggage(Lio/sentry/IScope;Lio/sentry/SentryOptions;)Lio/sentry/PropagationContext;
    .locals 1
    .param p0, "scope"    # Lio/sentry/IScope;
    .param p1, "sentryOptions"    # Lio/sentry/SentryOptions;

    .line 113
    new-instance v0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda3;-><init>(Lio/sentry/IScope;Lio/sentry/SentryOptions;)V

    invoke-interface {p0, v0}, Lio/sentry/IScope;->withPropagationContext(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;

    move-result-object v0

    return-object v0
.end method

.method public static setTrace(Lio/sentry/IScopes;Lio/sentry/PropagationContext;)V
    .locals 1
    .param p0, "scopes"    # Lio/sentry/IScopes;
    .param p1, "propagationContext"    # Lio/sentry/PropagationContext;

    .line 35
    new-instance v0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda0;-><init>(Lio/sentry/PropagationContext;)V

    invoke-interface {p0, v0}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 42
    return-void
.end method

.method private static shouldAttachTracingHeaders(Ljava/lang/String;Lio/sentry/SentryOptions;)Z
    .locals 1
    .param p0, "requestUrl"    # Ljava/lang/String;
    .param p1, "sentryOptions"    # Lio/sentry/SentryOptions;

    .line 125
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTracePropagationTargets()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lio/sentry/util/PropagationTargetsUtils;->contain(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldContinueTrace(Lio/sentry/SentryOptions;Lio/sentry/Baggage;)Z
    .locals 6
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "baggage"    # Lio/sentry/Baggage;

    .line 202
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEffectiveOrgId()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "sdkOrgId":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/sentry/Baggage;->getOrgId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 205
    .local v2, "rawBaggageOrgId":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 206
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 207
    :cond_1
    nop

    :goto_1
    nop

    .line 210
    .local v1, "baggageOrgId":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 211
    return v3

    .line 215
    :cond_2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isStrictTraceContinuation()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 216
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 217
    return v5

    .line 219
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v5

    :cond_4
    return v3

    .line 222
    :cond_5
    return v5
.end method

.method public static startNewTrace(Lio/sentry/IScopes;)V
    .locals 1
    .param p0, "scopes"    # Lio/sentry/IScopes;

    .line 24
    new-instance v0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, v0}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 31
    return-void
.end method

.method public static trace(Lio/sentry/IScopes;Ljava/util/List;Lio/sentry/ISpan;)Lio/sentry/util/TracingUtils$TracingHeaders;
    .locals 11
    .param p0, "scopes"    # Lio/sentry/IScopes;
    .param p2, "span"    # Lio/sentry/ISpan;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/IScopes;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/sentry/ISpan;",
            ")",
            "Lio/sentry/util/TracingUtils$TracingHeaders;"
        }
    .end annotation

    .line 61
    .local p1, "thirdPartyBaggageHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 63
    .local v0, "sentryOptions":Lio/sentry/SentryOptions;
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lio/sentry/ISpan;->isNoOp()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    invoke-interface {p2}, Lio/sentry/ISpan;->toSentryTrace()Lio/sentry/SentryTraceHeader;

    move-result-object v1

    .line 65
    .local v1, "sentryTraceHeader":Lio/sentry/SentryTraceHeader;
    invoke-interface {p2, p1}, Lio/sentry/ISpan;->toBaggageHeader(Ljava/util/List;)Lio/sentry/BaggageHeader;

    move-result-object v2

    .line 66
    .local v2, "baggageHeader":Lio/sentry/BaggageHeader;
    const/4 v3, 0x0

    .line 68
    .local v3, "w3cTraceparentHeader":Lio/sentry/W3CTraceparentHeader;
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isPropagateTraceparent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    invoke-interface {p2}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v4

    .line 70
    .local v4, "spanContext":Lio/sentry/SpanContext;
    new-instance v5, Lio/sentry/W3CTraceparentHeader;

    .line 72
    invoke-virtual {v4}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    invoke-virtual {v4}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v7

    invoke-virtual {v1}, Lio/sentry/SentryTraceHeader;->isSampled()Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lio/sentry/W3CTraceparentHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/Boolean;)V

    move-object v3, v5

    .line 75
    .end local v4    # "spanContext":Lio/sentry/SpanContext;
    :cond_0
    new-instance v4, Lio/sentry/util/TracingUtils$TracingHeaders;

    invoke-direct {v4, v1, v2, v3}, Lio/sentry/util/TracingUtils$TracingHeaders;-><init>(Lio/sentry/SentryTraceHeader;Lio/sentry/BaggageHeader;Lio/sentry/W3CTraceparentHeader;)V

    return-object v4

    .line 77
    .end local v1    # "sentryTraceHeader":Lio/sentry/SentryTraceHeader;
    .end local v2    # "baggageHeader":Lio/sentry/BaggageHeader;
    .end local v3    # "w3cTraceparentHeader":Lio/sentry/W3CTraceparentHeader;
    :cond_1
    new-instance v1, Lio/sentry/util/TracingUtils$PropagationContextHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/sentry/util/TracingUtils$PropagationContextHolder;-><init>(Lio/sentry/util/TracingUtils$1;)V

    .line 78
    .local v1, "returnValue":Lio/sentry/util/TracingUtils$PropagationContextHolder;
    new-instance v3, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1, v0}, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda4;-><init>(Lio/sentry/util/TracingUtils$PropagationContextHolder;Lio/sentry/SentryOptions;)V

    invoke-interface {p0, v3}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 83
    invoke-static {v1}, Lio/sentry/util/TracingUtils$PropagationContextHolder;->access$100(Lio/sentry/util/TracingUtils$PropagationContextHolder;)Lio/sentry/PropagationContext;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 84
    invoke-static {v1}, Lio/sentry/util/TracingUtils$PropagationContextHolder;->access$100(Lio/sentry/util/TracingUtils$PropagationContextHolder;)Lio/sentry/PropagationContext;

    move-result-object v2

    .line 85
    .local v2, "propagationContext":Lio/sentry/PropagationContext;
    invoke-virtual {v2}, Lio/sentry/PropagationContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object v3

    .line 86
    .local v3, "baggage":Lio/sentry/Baggage;
    nop

    .line 87
    invoke-static {v3, p1}, Lio/sentry/BaggageHeader;->fromBaggageAndOutgoingHeader(Lio/sentry/Baggage;Ljava/util/List;)Lio/sentry/BaggageHeader;

    move-result-object v4

    .line 89
    .local v4, "baggageHeader":Lio/sentry/BaggageHeader;
    new-instance v5, Lio/sentry/SentryTraceHeader;

    .line 91
    invoke-virtual {v2}, Lio/sentry/PropagationContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    .line 92
    invoke-virtual {v2}, Lio/sentry/PropagationContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v7

    .line 93
    invoke-virtual {v2}, Lio/sentry/PropagationContext;->isSampled()Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lio/sentry/SentryTraceHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/Boolean;)V

    .line 95
    .local v5, "sentryTraceHeader":Lio/sentry/SentryTraceHeader;
    const/4 v6, 0x0

    .line 96
    .local v6, "w3cTraceparentHeader":Lio/sentry/W3CTraceparentHeader;
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isPropagateTraceparent()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 97
    new-instance v7, Lio/sentry/W3CTraceparentHeader;

    .line 99
    invoke-virtual {v2}, Lio/sentry/PropagationContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v8

    .line 100
    invoke-virtual {v2}, Lio/sentry/PropagationContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v9

    .line 101
    invoke-virtual {v2}, Lio/sentry/PropagationContext;->isSampled()Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lio/sentry/W3CTraceparentHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/Boolean;)V

    move-object v6, v7

    .line 104
    :cond_2
    new-instance v7, Lio/sentry/util/TracingUtils$TracingHeaders;

    invoke-direct {v7, v5, v4, v6}, Lio/sentry/util/TracingUtils$TracingHeaders;-><init>(Lio/sentry/SentryTraceHeader;Lio/sentry/BaggageHeader;Lio/sentry/W3CTraceparentHeader;)V

    return-object v7

    .line 107
    .end local v2    # "propagationContext":Lio/sentry/PropagationContext;
    .end local v3    # "baggage":Lio/sentry/Baggage;
    .end local v4    # "baggageHeader":Lio/sentry/BaggageHeader;
    .end local v5    # "sentryTraceHeader":Lio/sentry/SentryTraceHeader;
    .end local v6    # "w3cTraceparentHeader":Lio/sentry/W3CTraceparentHeader;
    :cond_3
    return-object v2
.end method

.method public static traceIfAllowed(Lio/sentry/IScopes;Ljava/lang/String;Ljava/util/List;Lio/sentry/ISpan;)Lio/sentry/util/TracingUtils$TracingHeaders;
    .locals 2
    .param p0, "scopes"    # Lio/sentry/IScopes;
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p3, "span"    # Lio/sentry/ISpan;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/IScopes;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/sentry/ISpan;",
            ")",
            "Lio/sentry/util/TracingUtils$TracingHeaders;"
        }
    .end annotation

    .line 49
    .local p2, "thirdPartyBaggageHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 50
    .local v0, "sentryOptions":Lio/sentry/SentryOptions;
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTraceSampling()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lio/sentry/util/TracingUtils;->shouldAttachTracingHeaders(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {p0, p2, p3}, Lio/sentry/util/TracingUtils;->trace(Lio/sentry/IScopes;Ljava/util/List;Lio/sentry/ISpan;)Lio/sentry/util/TracingUtils$TracingHeaders;

    move-result-object v1

    return-object v1

    .line 54
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
