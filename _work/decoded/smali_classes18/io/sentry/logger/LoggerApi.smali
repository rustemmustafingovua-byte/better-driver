.class public final Lio/sentry/logger/LoggerApi;
.super Ljava/lang/Object;
.source "LoggerApi.java"

# interfaces
.implements Lio/sentry/logger/ILoggerApi;


# instance fields
.field private final scopes:Lio/sentry/Scopes;


# direct methods
.method public constructor <init>(Lio/sentry/Scopes;)V
    .locals 0
    .param p1, "scopes"    # Lio/sentry/Scopes;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/sentry/logger/LoggerApi;->scopes:Lio/sentry/Scopes;

    .line 33
    return-void
.end method

.method private varargs captureLog(Lio/sentry/SentryLogLevel;Lio/sentry/logger/SentryLogParameters;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "level"    # Lio/sentry/SentryLogLevel;
    .param p2, "params"    # Lio/sentry/logger/SentryLogParameters;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lio/sentry/logger/LoggerApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 99
    .local v0, "options":Lio/sentry/SentryOptions;
    :try_start_0
    iget-object v1, p0, Lio/sentry/logger/LoggerApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v1}, Lio/sentry/Scopes;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    nop

    .line 101
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Instance is disabled and this \'logger\' call is a no-op."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 102
    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    return-void

    .line 106
    :cond_0
    if-nez p3, :cond_1

    .line 107
    return-void

    .line 110
    :cond_1
    invoke-virtual {p2}, Lio/sentry/logger/SentryLogParameters;->getTimestamp()Lio/sentry/SentryDate;

    move-result-object v1

    .line 112
    .local v1, "timestamp":Lio/sentry/SentryDate;
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 113
    .local v2, "timestampToUse":Lio/sentry/SentryDate;
    :goto_0
    invoke-direct {p0, p3, p4}, Lio/sentry/logger/LoggerApi;->maybeFormatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "messageToUse":Ljava/lang/String;
    iget-object v4, p0, Lio/sentry/logger/LoggerApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v4}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v4

    .line 116
    .local v4, "combinedScope":Lio/sentry/IScope;
    invoke-interface {v4}, Lio/sentry/IScope;->getPropagationContext()Lio/sentry/PropagationContext;

    move-result-object v5

    .line 117
    .local v5, "propagationContext":Lio/sentry/PropagationContext;
    invoke-interface {v4}, Lio/sentry/IScope;->getSpan()Lio/sentry/ISpan;

    move-result-object v6

    .line 118
    .local v6, "span":Lio/sentry/ISpan;
    if-nez v6, :cond_3

    .line 119
    invoke-static {v4, v0}, Lio/sentry/util/TracingUtils;->maybeUpdateBaggage(Lio/sentry/IScope;Lio/sentry/SentryOptions;)Lio/sentry/PropagationContext;

    .line 122
    :cond_3
    if-nez v6, :cond_4

    invoke-virtual {v5}, Lio/sentry/PropagationContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v7

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v7

    .line 124
    .local v7, "traceId":Lio/sentry/protocol/SentryId;
    :goto_1
    if-nez v6, :cond_5

    invoke-virtual {v5}, Lio/sentry/PropagationContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v8

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v8

    invoke-virtual {v8}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v8

    .line 125
    .local v8, "spanId":Lio/sentry/SpanId;
    :goto_2
    new-instance v9, Lio/sentry/SentryLogEvent;

    invoke-direct {v9, v7, v2, v3, p1}, Lio/sentry/SentryLogEvent;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SentryDate;Ljava/lang/String;Lio/sentry/SentryLogLevel;)V

    .line 127
    .local v9, "logEvent":Lio/sentry/SentryLogEvent;
    invoke-virtual {v9, v8}, Lio/sentry/SentryLogEvent;->setSpanId(Lio/sentry/SpanId;)V

    .line 128
    invoke-direct {p0, p2, p3, p4}, Lio/sentry/logger/LoggerApi;->createAttributes(Lio/sentry/logger/SentryLogParameters;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/sentry/SentryLogEvent;->setAttributes(Ljava/util/Map;)V

    .line 129
    invoke-virtual {p1}, Lio/sentry/SentryLogLevel;->getSeverityNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/sentry/SentryLogEvent;->setSeverityNumber(Ljava/lang/Integer;)V

    .line 131
    iget-object v10, p0, Lio/sentry/logger/LoggerApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v10}, Lio/sentry/Scopes;->getClient()Lio/sentry/ISentryClient;

    move-result-object v10

    invoke-interface {v10, v9, v4}, Lio/sentry/ISentryClient;->captureLog(Lio/sentry/SentryLogEvent;Lio/sentry/IScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v1    # "timestamp":Lio/sentry/SentryDate;
    .end local v2    # "timestampToUse":Lio/sentry/SentryDate;
    .end local v3    # "messageToUse":Ljava/lang/String;
    .end local v4    # "combinedScope":Lio/sentry/IScope;
    .end local v5    # "propagationContext":Lio/sentry/PropagationContext;
    .end local v6    # "span":Lio/sentry/ISpan;
    .end local v7    # "traceId":Lio/sentry/protocol/SentryId;
    .end local v8    # "spanId":Lio/sentry/SpanId;
    .end local v9    # "logEvent":Lio/sentry/SentryLogEvent;
    goto :goto_3

    .line 132
    :catchall_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error while capturing log event"

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_3
    return-void
.end method

.method private varargs createAttributes(Lio/sentry/logger/SentryLogParameters;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 12
    .param p1, "params"    # Lio/sentry/logger/SentryLogParameters;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/logger/SentryLogParameters;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/SentryLogEventAttributeValue;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v0, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;>;"
    iget-object v1, p0, Lio/sentry/logger/LoggerApi;->scopes:Lio/sentry/Scopes;

    .line 161
    invoke-virtual {v1}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/IScope;->getAttributes()Ljava/util/Map;

    move-result-object v1

    .line 162
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

    .line 163
    .local v3, "scopeAttribute":Lio/sentry/SentryAttribute;
    nop

    .line 164
    invoke-virtual {v3}, Lio/sentry/SentryAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lio/sentry/SentryLogEventAttributeValue;->fromAttribute(Lio/sentry/SentryAttribute;)Lio/sentry/SentryLogEventAttributeValue;

    move-result-object v5

    .line 163
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v3    # "scopeAttribute":Lio/sentry/SentryAttribute;
    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p1}, Lio/sentry/logger/SentryLogParameters;->getOrigin()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "origin":Ljava/lang/String;
    const-string v3, "manual"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    new-instance v3, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v4, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v3, v4, v2}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    const-string v4, "sentry.origin"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_1
    invoke-virtual {p1}, Lio/sentry/logger/SentryLogParameters;->getAttributes()Lio/sentry/SentryAttributes;

    move-result-object v3

    .line 175
    .local v3, "incomingAttributes":Lio/sentry/SentryAttributes;
    if-eqz v3, :cond_2

    .line 176
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

    .line 177
    .local v5, "attribute":Lio/sentry/SentryAttribute;
    invoke-virtual {v5}, Lio/sentry/SentryAttribute;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lio/sentry/SentryLogEventAttributeValue;->fromAttribute(Lio/sentry/SentryAttribute;)Lio/sentry/SentryLogEventAttributeValue;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v5    # "attribute":Lio/sentry/SentryAttribute;
    goto :goto_1

    .line 181
    :cond_2
    if-eqz p3, :cond_4

    .line 182
    const/4 v4, 0x0

    .line 183
    .local v4, "i":I
    array-length v5, p3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v7, p3, v6

    .line 184
    .local v7, "arg":Ljava/lang/Object;
    invoke-static {v7}, Lio/sentry/SentryAttributeType;->inferFrom(Ljava/lang/Object;)Lio/sentry/SentryAttributeType;

    move-result-object v8

    .line 185
    .local v8, "type":Lio/sentry/SentryAttributeType;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sentry.message.parameter."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lio/sentry/SentryLogEventAttributeValue;

    invoke-direct {v10, v8, v7}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    nop

    .end local v7    # "arg":Ljava/lang/Object;
    .end local v8    # "type":Lio/sentry/SentryAttributeType;
    add-int/lit8 v4, v4, 0x1

    .line 183
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 189
    :cond_3
    if-lez v4, :cond_4

    .line 190
    const-string v5, "sentry.message.template"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    .line 191
    new-instance v6, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v7, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v6, v7, p2}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .end local v4    # "i":I
    :cond_4
    iget-object v4, p0, Lio/sentry/logger/LoggerApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v4}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v4

    .line 199
    .local v4, "sdkVersion":Lio/sentry/protocol/SdkVersion;
    if-eqz v4, :cond_5

    .line 200
    new-instance v5, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v6, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    .line 202
    invoke-virtual {v4}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    .line 200
    const-string v6, "sentry.sdk.name"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v5, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v6, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    .line 205
    invoke-virtual {v4}, Lio/sentry/protocol/SdkVersion;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    .line 203
    const-string v6, "sentry.sdk.version"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_5
    iget-object v5, p0, Lio/sentry/logger/LoggerApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v5}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, "environment":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 210
    new-instance v6, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v7, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v6, v7, v5}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    const-string v7, "sentry.environment"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_6
    iget-object v6, p0, Lio/sentry/logger/LoggerApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v6}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v6

    invoke-interface {v6}, Lio/sentry/IScope;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    .line 216
    .local v6, "scopeReplayId":Lio/sentry/protocol/SentryId;
    sget-object v7, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v7, v6}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "sentry.replay_id"

    if-nez v7, :cond_7

    .line 217
    new-instance v7, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v9, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    .line 219
    invoke-virtual {v6}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    .line 217
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 221
    :cond_7
    iget-object v7, p0, Lio/sentry/logger/LoggerApi;->scopes:Lio/sentry/Scopes;

    .line 222
    invoke-virtual {v7}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v7

    invoke-interface {v7}, Lio/sentry/ReplayController;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v7

    .line 223
    .local v7, "controllerReplayId":Lio/sentry/protocol/SentryId;
    sget-object v9, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v9, v7}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 224
    new-instance v9, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v10, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    .line 227
    invoke-virtual {v7}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    .line 224
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v8, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v9, Lio/sentry/SentryAttributeType;->BOOLEAN:Lio/sentry/SentryAttributeType;

    .line 230
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    .line 228
    const-string v9, "sentry._internal.replay_is_buffering"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .end local v7    # "controllerReplayId":Lio/sentry/protocol/SentryId;
    :cond_8
    :goto_3
    iget-object v7, p0, Lio/sentry/logger/LoggerApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v7}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, "release":Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 236
    new-instance v8, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v9, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v8, v9, v7}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    const-string v9, "sentry.release"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_9
    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 241
    invoke-direct {p0, v0}, Lio/sentry/logger/LoggerApi;->setServerName(Ljava/util/Map;)V

    .line 244
    :cond_a
    invoke-direct {p0, v0}, Lio/sentry/logger/LoggerApi;->setUser(Ljava/util/Map;)V

    .line 246
    return-object v0
.end method

.method private maybeFormatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 139
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/logger/LoggerApi;->scopes:Lio/sentry/Scopes;

    .line 147
    invoke-virtual {v1}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 149
    const-string v3, "Error while running log through String.format"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    return-object p1

    .line 140
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-object p1
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

    .line 250
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;>;"
    iget-object v0, p0, Lio/sentry/logger/LoggerApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v0}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 251
    .local v0, "options":Lio/sentry/SentryOptions;
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getServerName()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "optionsServerName":Ljava/lang/String;
    const-string v2, "server.address"

    if-eqz v1, :cond_0

    .line 253
    new-instance v3, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v4, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v3, v4, v1}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isAttachServerName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getHostnameCache()Lio/sentry/HostnameCache;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/HostnameCache;->getHostname()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "hostname":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 259
    new-instance v4, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v5, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v4, v5, v3}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
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

    .line 267
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;>;"
    iget-object v0, p0, Lio/sentry/logger/LoggerApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v0}, Lio/sentry/Scopes;->getCombinedScopeView()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    .line 268
    .local v0, "user":Lio/sentry/protocol/User;
    const-string v1, "user.id"

    if-nez v0, :cond_1

    .line 271
    iget-object v2, p0, Lio/sentry/logger/LoggerApi;->scopes:Lio/sentry/Scopes;

    invoke-virtual {v2}, Lio/sentry/Scopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getDistinctId()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 273
    new-instance v3, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v4, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v3, v4, v2}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getId()Ljava/lang/String;

    move-result-object v2

    .line 277
    .restart local v2    # "id":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 278
    new-instance v3, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v4, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v3, v4, v2}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_2
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "username":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 282
    new-instance v3, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v4, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v3, v4, v1}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    const-string v4, "user.name"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_3
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getEmail()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "email":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 287
    new-instance v4, Lio/sentry/SentryLogEventAttributeValue;

    sget-object v5, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v4, v5, v3}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    const-string v5, "user.email"

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .end local v1    # "username":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "email":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 42
    sget-object v0, Lio/sentry/SentryLogLevel;->DEBUG:Lio/sentry/SentryLogLevel;

    invoke-virtual {p0, v0, p1, p2}, Lio/sentry/logger/LoggerApi;->log(Lio/sentry/SentryLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 57
    sget-object v0, Lio/sentry/SentryLogLevel;->ERROR:Lio/sentry/SentryLogLevel;

    invoke-virtual {p0, v0, p1, p2}, Lio/sentry/logger/LoggerApi;->log(Lio/sentry/SentryLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public varargs fatal(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 62
    sget-object v0, Lio/sentry/SentryLogLevel;->FATAL:Lio/sentry/SentryLogLevel;

    invoke-virtual {p0, v0, p1, p2}, Lio/sentry/logger/LoggerApi;->log(Lio/sentry/SentryLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 47
    sget-object v0, Lio/sentry/SentryLogLevel;->INFO:Lio/sentry/SentryLogLevel;

    invoke-virtual {p0, v0, p1, p2}, Lio/sentry/logger/LoggerApi;->log(Lio/sentry/SentryLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public varargs log(Lio/sentry/SentryLogLevel;Lio/sentry/SentryDate;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "level"    # Lio/sentry/SentryLogLevel;
    .param p2, "timestamp"    # Lio/sentry/SentryDate;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lio/sentry/logger/SentryLogParameters;->create(Lio/sentry/SentryDate;Lio/sentry/SentryAttributes;)Lio/sentry/logger/SentryLogParameters;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lio/sentry/logger/LoggerApi;->captureLog(Lio/sentry/SentryLogLevel;Lio/sentry/logger/SentryLogParameters;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public varargs log(Lio/sentry/SentryLogLevel;Lio/sentry/logger/SentryLogParameters;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "level"    # Lio/sentry/SentryLogLevel;
    .param p2, "params"    # Lio/sentry/logger/SentryLogParameters;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/logger/LoggerApi;->captureLog(Lio/sentry/SentryLogLevel;Lio/sentry/logger/SentryLogParameters;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public varargs log(Lio/sentry/SentryLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "level"    # Lio/sentry/SentryLogLevel;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 70
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lio/sentry/logger/SentryLogParameters;->create(Lio/sentry/SentryDate;Lio/sentry/SentryAttributes;)Lio/sentry/logger/SentryLogParameters;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lio/sentry/logger/LoggerApi;->captureLog(Lio/sentry/SentryLogLevel;Lio/sentry/logger/SentryLogParameters;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 37
    sget-object v0, Lio/sentry/SentryLogLevel;->TRACE:Lio/sentry/SentryLogLevel;

    invoke-virtual {p0, v0, p1, p2}, Lio/sentry/logger/LoggerApi;->log(Lio/sentry/SentryLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 52
    sget-object v0, Lio/sentry/SentryLogLevel;->WARN:Lio/sentry/SentryLogLevel;

    invoke-virtual {p0, v0, p1, p2}, Lio/sentry/logger/LoggerApi;->log(Lio/sentry/SentryLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return-void
.end method
