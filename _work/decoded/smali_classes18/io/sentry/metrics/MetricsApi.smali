.class public final Lio/sentry/metrics/MetricsApi;
.super Ljava/lang/Object;
.source "MetricsApi.java"

# interfaces
.implements Lio/sentry/metrics/IMetricsApi;


# instance fields
.field private final scopes:Lio/sentry/Scopes;


# direct methods
.method public constructor <init>(Lio/sentry/Scopes;)V
    .locals 0
    .param p1, "scopes"    # Lio/sentry/Scopes;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/sentry/metrics/MetricsApi;->scopes:Lio/sentry/Scopes;

    .line 32
    return-void
.end method

.method private captureMetrics(Lio/sentry/metrics/SentryMetricsParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 12
    .param p1, "params"    # Lio/sentry/metrics/SentryMetricsParameters;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Double;
    .param p5, "unit"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lio/sentry/metrics/MetricsApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 113
    .local v1, "options":Lio/sentry/SentryOptions;
    :try_start_0
    iget-object v0, p0, Lio/sentry/metrics/MetricsApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v0}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    nop

    .line 115
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Instance is disabled and this \'metrics\' call is a no-op."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 116
    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    return-void

    .line 120
    :cond_0
    if-nez p2, :cond_1

    .line 121
    return-void

    .line 124
    :cond_1
    if-nez p3, :cond_2

    .line 125
    return-void

    .line 128
    :cond_2
    if-nez p4, :cond_3

    .line 129
    return-void

    .line 132
    :cond_3
    invoke-virtual {p1}, Lio/sentry/metrics/SentryMetricsParameters;->getTimestamp()Lio/sentry/SentryDate;

    move-result-object v0

    .line 134
    .local v0, "timestamp":Lio/sentry/SentryDate;
    if-nez v0, :cond_4

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, v0

    :goto_0
    move-object v5, v2

    .line 136
    .local v5, "timestampToUse":Lio/sentry/SentryDate;
    iget-object v2, p0, Lio/sentry/metrics/MetricsApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v2}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v2

    .line 137
    .local v2, "combinedScope":Lio/sentry/IScope;
    invoke-interface {v2}, Lio/sentry/IScope;->getPropagationContext()Lio/sentry/PropagationContext;

    move-result-object v3

    move-object v9, v3

    .line 138
    .local v9, "propagationContext":Lio/sentry/PropagationContext;
    invoke-interface {v2}, Lio/sentry/IScope;->getSpan()Lio/sentry/ISpan;

    move-result-object v3

    move-object v10, v3

    .line 139
    .local v10, "span":Lio/sentry/ISpan;
    if-nez v10, :cond_5

    .line 140
    invoke-static {v2, v1}, Lio/sentry/util/TracingUtils;->maybeUpdateBaggage(Lio/sentry/IScope;Lio/sentry/SentryOptions;)Lio/sentry/PropagationContext;

    .line 143
    :cond_5
    if-nez v10, :cond_6

    invoke-virtual {v9}, Lio/sentry/PropagationContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    goto :goto_1

    :cond_6
    invoke-interface {v10}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 145
    .local v4, "traceId":Lio/sentry/protocol/SentryId;
    if-nez v10, :cond_7

    invoke-virtual {v9}, Lio/sentry/PropagationContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v3

    goto :goto_2

    :cond_7
    invoke-interface {v10}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v3

    :goto_2
    move-object v11, v3

    .line 146
    .local v11, "spanId":Lio/sentry/SpanId;
    new-instance v3, Lio/sentry/SentryMetricsEvent;

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lio/sentry/SentryMetricsEvent;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SentryDate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    .line 148
    .local v3, "metricsEvent":Lio/sentry/SentryMetricsEvent;
    invoke-virtual {v3, v11}, Lio/sentry/SentryMetricsEvent;->setSpanId(Lio/sentry/SpanId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    move-object/from16 v6, p5

    :try_start_1
    invoke-virtual {v3, v6}, Lio/sentry/SentryMetricsEvent;->setUnit(Ljava/lang/String;)V

    .line 150
    invoke-direct/range {p0 .. p1}, Lio/sentry/metrics/MetricsApi;->createAttributes(Lio/sentry/metrics/SentryMetricsParameters;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v3, v7}, Lio/sentry/SentryMetricsEvent;->setAttributes(Ljava/util/Map;)V

    .line 152
    iget-object v7, p0, Lio/sentry/metrics/MetricsApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v7}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v7

    invoke-virtual {p1}, Lio/sentry/metrics/SentryMetricsParameters;->getHint()Lio/sentry/Hint;

    move-result-object v8

    invoke-interface {v7, v3, v2, v8}, Lio/sentry/ISentryClient;->captureMetric(Lio/sentry/SentryMetricsEvent;Lio/sentry/IScope;Lio/sentry/Hint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .end local v0    # "timestamp":Lio/sentry/SentryDate;
    .end local v2    # "combinedScope":Lio/sentry/IScope;
    .end local v3    # "metricsEvent":Lio/sentry/SentryMetricsEvent;
    .end local v4    # "traceId":Lio/sentry/protocol/SentryId;
    .end local v5    # "timestampToUse":Lio/sentry/SentryDate;
    .end local v9    # "propagationContext":Lio/sentry/PropagationContext;
    .end local v10    # "span":Lio/sentry/ISpan;
    .end local v11    # "spanId":Lio/sentry/SpanId;
    goto :goto_4

    .line 153
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v6, p5

    .line 154
    .local v0, "e":Ljava/lang/Throwable;
    :goto_3
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error while capturing metrics event"

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4
    return-void
.end method

.method private createAttributes(Lio/sentry/metrics/SentryMetricsParameters;)Ljava/util/Map;
    .locals 12
    .param p1, "params"    # Lio/sentry/metrics/SentryMetricsParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/metrics/SentryMetricsParameters;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/SentryLogEventAttributeValue;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v0, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;>;"
    iget-object v1, p0, Lio/sentry/metrics/MetricsApi;->scopes:Lio/sentry/Scopes;

    .line 163
    invoke-virtual {v1}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/IScope;->getAttributes()Ljava/util/Map;

    move-result-object v1

    .line 164
    .local v1, "scopeAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryAttribute;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/SentryAttribute;

    .line 165
    .local v3, "scopeAttribute":Lio/sentry/SentryAttribute;
    nop

    .line 166
    invoke-virtual {v3}, Lio/sentry/SentryAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lio/sentry/SentryLogEventAttributeValue;->fromAttribute(Lio/sentry/SentryAttribute;)Lio/sentry/SentryLogEventAttributeValue;

    move-result-object v5

    .line 165
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v3    # "scopeAttribute":Lio/sentry/SentryAttribute;
    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p1}, Lio/sentry/metrics/SentryMetricsParameters;->getOrigin()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "origin":Ljava/lang/String;
    const-string v3, "manual"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    new-instance v3, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v4, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v3, v4, v2}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    const-string v4, "sentry.origin"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_1
    invoke-virtual {p1}, Lio/sentry/metrics/SentryMetricsParameters;->getAttributes()Lio/sentry/SentryAttributes;

    move-result-object v3

    .line 177
    .local v3, "incomingAttributes":Lio/sentry/SentryAttributes;
    if-eqz v3, :cond_2

    .line 178
    invoke-virtual {v3}, Lio/sentry/SentryAttributes;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/SentryAttribute;

    .line 179
    .local v5, "attribute":Lio/sentry/SentryAttribute;
    invoke-virtual {v5}, Lio/sentry/SentryAttribute;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lio/sentry/SentryLogEventAttributeValue;->fromAttribute(Lio/sentry/SentryAttribute;)Lio/sentry/SentryLogEventAttributeValue;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .end local v5    # "attribute":Lio/sentry/SentryAttribute;
    goto :goto_1

    .line 183
    :cond_2
    iget-object v4, p0, Lio/sentry/metrics/MetricsApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v4}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v4

    .line 184
    .local v4, "sdkVersion":Lio/sentry/protocol/SdkVersion;
    if-eqz v4, :cond_3

    .line 185
    new-instance v5, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v6, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    .line 187
    invoke-virtual {v4}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    .line 185
    const-string v6, "sentry.sdk.name"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v5, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v6, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    .line 190
    invoke-virtual {v4}, Lio/sentry/protocol/SdkVersion;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    .line 188
    const-string v6, "sentry.sdk.version"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_3
    iget-object v5, p0, Lio/sentry/metrics/MetricsApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v5}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "environment":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 195
    new-instance v6, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v7, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v6, v7, v5}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    const-string v7, "sentry.environment"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_4
    iget-object v6, p0, Lio/sentry/metrics/MetricsApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v6}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v6

    invoke-interface {v6}, Lio/sentry/IScope;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    .line 201
    .local v6, "scopeReplayId":Lio/sentry/protocol/SentryId;
    sget-object v7, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v7, v6}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "sentry.replay_id"

    if-nez v7, :cond_5

    .line 202
    new-instance v7, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v9, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    .line 204
    invoke-virtual {v6}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    .line 202
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 206
    :cond_5
    iget-object v7, p0, Lio/sentry/metrics/MetricsApi;->scopes:Lio/sentry/Scopes;

    .line 207
    invoke-virtual {v7}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v7

    invoke-interface {v7}, Lio/sentry/ReplayController;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v7

    .line 208
    .local v7, "controllerReplayId":Lio/sentry/protocol/SentryId;
    sget-object v9, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v9, v7}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 209
    new-instance v9, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v10, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    .line 212
    invoke-virtual {v7}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    .line 209
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v8, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v9, Lio/sentry/SentryAttributeType;->BOOLEAN:Lio/sentry/SentryAttributeType;

    .line 215
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    .line 213
    const-string v9, "sentry._internal.replay_is_buffering"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .end local v7    # "controllerReplayId":Lio/sentry/protocol/SentryId;
    :cond_6
    :goto_2
    iget-object v7, p0, Lio/sentry/metrics/MetricsApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v7}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, "release":Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 221
    new-instance v8, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v9, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v8, v9, v7}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    const-string v9, "sentry.release"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_7
    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 226
    invoke-direct {p0, v0}, Lio/sentry/metrics/MetricsApi;->setServerName(Ljava/util/Map;)V

    .line 229
    :cond_8
    invoke-direct {p0, v0}, Lio/sentry/metrics/MetricsApi;->setUser(Ljava/util/Map;)V

    .line 231
    return-object v0
.end method

.method private setServerName(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/SentryLogEventAttributeValue;",
            ">;)V"
        }
    .end annotation

    .line 235
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;>;"
    iget-object v0, p0, Lio/sentry/metrics/MetricsApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 236
    .local v0, "options":Lio/sentry/SentryOptions;
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getServerName()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "optionsServerName":Ljava/lang/String;
    const-string v2, "server.address"

    if-eqz v1, :cond_0

    .line 238
    new-instance v3, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v4, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v3, v4, v1}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isAttachServerName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getHostnameCache()Lio/sentry/HostnameCache;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/HostnameCache;->getHostname()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "hostname":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 244
    new-instance v4, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v5, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v4, v5, v3}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .end local v3    # "hostname":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private setUser(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/SentryLogEventAttributeValue;",
            ">;)V"
        }
    .end annotation

    .line 252
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;>;"
    iget-object v0, p0, Lio/sentry/metrics/MetricsApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    .line 253
    .local v0, "user":Lio/sentry/protocol/User;
    const-string v1, "user.id"

    if-nez v0, :cond_1

    .line 256
    iget-object v2, p0, Lio/sentry/metrics/MetricsApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v2}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getDistinctId()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 258
    new-instance v3, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v4, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v3, v4, v2}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getId()Ljava/lang/String;

    move-result-object v2

    .line 262
    .restart local v2    # "id":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 263
    new-instance v3, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v4, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v3, v4, v2}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_2
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "username":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 267
    new-instance v3, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v4, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v3, v4, v1}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    const-string v4, "user.name"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_3
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getEmail()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "email":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 272
    new-instance v4, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v5, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v4, v5, v3}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    const-string v5, "user.email"

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .end local v1    # "username":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "email":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public count(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lio/sentry/metrics/SentryMetricsParameters;->create(Lio/sentry/SentryDate;Lio/sentry/SentryAttributes;)Lio/sentry/metrics/SentryMetricsParameters;

    move-result-object v2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    const-string v4, "counter"

    move-object v1, p0

    move-object v3, p1

    .end local p1    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lio/sentry/metrics/MetricsApi;->captureMetrics(Lio/sentry/metrics/SentryMetricsParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public count(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .line 41
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lio/sentry/metrics/SentryMetricsParameters;->create(Lio/sentry/SentryDate;Lio/sentry/SentryAttributes;)Lio/sentry/metrics/SentryMetricsParameters;

    move-result-object v2

    const-string v4, "counter"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Double;
    .local v3, "name":Ljava/lang/String;
    .local v5, "value":Ljava/lang/Double;
    invoke-direct/range {v1 .. v6}, Lio/sentry/metrics/MetricsApi;->captureMetrics(Lio/sentry/metrics/SentryMetricsParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public count(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .param p3, "unit"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lio/sentry/metrics/SentryMetricsParameters;->create(Lio/sentry/SentryDate;Lio/sentry/SentryAttributes;)Lio/sentry/metrics/SentryMetricsParameters;

    move-result-object v2

    const-string v4, "counter"

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Double;
    .end local p3    # "unit":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .local v5, "value":Ljava/lang/Double;
    .local v6, "unit":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lio/sentry/metrics/MetricsApi;->captureMetrics(Lio/sentry/metrics/SentryMetricsParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public count(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/metrics/SentryMetricsParameters;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .param p3, "unit"    # Ljava/lang/String;
    .param p4, "params"    # Lio/sentry/metrics/SentryMetricsParameters;

    .line 61
    const-string v3, "counter"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v1, p4

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Double;
    .end local p3    # "unit":Ljava/lang/String;
    .end local p4    # "params":Lio/sentry/metrics/SentryMetricsParameters;
    .local v1, "params":Lio/sentry/metrics/SentryMetricsParameters;
    .local v2, "name":Ljava/lang/String;
    .local v4, "value":Ljava/lang/Double;
    .local v5, "unit":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lio/sentry/metrics/MetricsApi;->captureMetrics(Lio/sentry/metrics/SentryMetricsParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public count(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "unit"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lio/sentry/metrics/SentryMetricsParameters;->create(Lio/sentry/SentryDate;Lio/sentry/SentryAttributes;)Lio/sentry/metrics/SentryMetricsParameters;

    move-result-object v2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v4, "counter"

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "unit":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .local v6, "unit":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lio/sentry/metrics/MetricsApi;->captureMetrics(Lio/sentry/metrics/SentryMetricsParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public distribution(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .line 66
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lio/sentry/metrics/SentryMetricsParameters;->create(Lio/sentry/SentryDate;Lio/sentry/SentryAttributes;)Lio/sentry/metrics/SentryMetricsParameters;

    move-result-object v2

    const-string v4, "distribution"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Double;
    .local v3, "name":Ljava/lang/String;
    .local v5, "value":Ljava/lang/Double;
    invoke-direct/range {v1 .. v6}, Lio/sentry/metrics/MetricsApi;->captureMetrics(Lio/sentry/metrics/SentryMetricsParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public distribution(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .param p3, "unit"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lio/sentry/metrics/SentryMetricsParameters;->create(Lio/sentry/SentryDate;Lio/sentry/SentryAttributes;)Lio/sentry/metrics/SentryMetricsParameters;

    move-result-object v2

    const-string v4, "distribution"

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Double;
    .end local p3    # "unit":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .local v5, "value":Ljava/lang/Double;
    .local v6, "unit":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lio/sentry/metrics/MetricsApi;->captureMetrics(Lio/sentry/metrics/SentryMetricsParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public distribution(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/metrics/SentryMetricsParameters;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .param p3, "unit"    # Ljava/lang/String;
    .param p4, "params"    # Lio/sentry/metrics/SentryMetricsParameters;

    .line 81
    const-string v3, "distribution"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v1, p4

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Double;
    .end local p3    # "unit":Ljava/lang/String;
    .end local p4    # "params":Lio/sentry/metrics/SentryMetricsParameters;
    .local v1, "params":Lio/sentry/metrics/SentryMetricsParameters;
    .local v2, "name":Ljava/lang/String;
    .local v4, "value":Ljava/lang/Double;
    .local v5, "unit":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lio/sentry/metrics/MetricsApi;->captureMetrics(Lio/sentry/metrics/SentryMetricsParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public gauge(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .line 86
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lio/sentry/metrics/SentryMetricsParameters;->create(Lio/sentry/SentryDate;Lio/sentry/SentryAttributes;)Lio/sentry/metrics/SentryMetricsParameters;

    move-result-object v2

    const-string v4, "gauge"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Double;
    .local v3, "name":Ljava/lang/String;
    .local v5, "value":Ljava/lang/Double;
    invoke-direct/range {v1 .. v6}, Lio/sentry/metrics/MetricsApi;->captureMetrics(Lio/sentry/metrics/SentryMetricsParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public gauge(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .param p3, "unit"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lio/sentry/metrics/SentryMetricsParameters;->create(Lio/sentry/SentryDate;Lio/sentry/SentryAttributes;)Lio/sentry/metrics/SentryMetricsParameters;

    move-result-object v2

    const-string v4, "gauge"

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Double;
    .end local p3    # "unit":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .local v5, "value":Ljava/lang/Double;
    .local v6, "unit":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lio/sentry/metrics/MetricsApi;->captureMetrics(Lio/sentry/metrics/SentryMetricsParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public gauge(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/metrics/SentryMetricsParameters;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .param p3, "unit"    # Ljava/lang/String;
    .param p4, "params"    # Lio/sentry/metrics/SentryMetricsParameters;

    .line 101
    const-string v3, "gauge"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v1, p4

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Double;
    .end local p3    # "unit":Ljava/lang/String;
    .end local p4    # "params":Lio/sentry/metrics/SentryMetricsParameters;
    .local v1, "params":Lio/sentry/metrics/SentryMetricsParameters;
    .local v2, "name":Ljava/lang/String;
    .local v4, "value":Ljava/lang/Double;
    .local v5, "unit":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lio/sentry/metrics/MetricsApi;->captureMetrics(Lio/sentry/metrics/SentryMetricsParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 102
    return-void
.end method
