.class public final Lio/sentry/DataCollectionResolver;
.super Ljava/lang/Object;
.source "DataCollectionResolver.java"


# instance fields
.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    .line 17
    return-void
.end method

.method private explicitOrDefault(Ljava/lang/Boolean;ZZ)Z
    .locals 1
    .param p1, "explicit"    # Ljava/lang/Boolean;
    .param p2, "defaultValue"    # Z
    .param p3, "legacyFallback"    # Z

    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lio/sentry/DataCollectionResolver;->isDataCollectionConfigured()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p3

    :goto_0
    return v0
.end method

.method private explicitOrEmptyDenyList(Lio/sentry/KeyValueCollectionBehavior;)Lio/sentry/KeyValueCollectionBehavior;
    .locals 1
    .param p1, "explicit"    # Lio/sentry/KeyValueCollectionBehavior;

    .line 130
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lio/sentry/KeyValueCollectionBehavior;->denyList([Ljava/lang/String;)Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private explicitOrSendDefaultPii(Ljava/lang/Boolean;Z)Z
    .locals 1
    .param p1, "explicit"    # Ljava/lang/Boolean;
    .param p2, "defaultValue"    # Z

    .line 117
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/DataCollectionResolver;->explicitOrDefault(Ljava/lang/Boolean;ZZ)Z

    move-result v0

    return v0
.end method

.method private isHttpBodyEnabled(Lio/sentry/HttpBodyType;Z)Z
    .locals 3
    .param p1, "bodyType"    # Lio/sentry/HttpBodyType;
    .param p2, "legacyFallback"    # Z

    .line 135
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v0

    .line 136
    .local v0, "dataCollection":Lio/sentry/DataCollection;
    invoke-virtual {v0}, Lio/sentry/DataCollection;->getHttpBodies()Ljava/util/Set;

    move-result-object v1

    .line 137
    .local v1, "httpBodies":Ljava/util/Set;, "Ljava/util/Set<Lio/sentry/HttpBodyType;>;"
    if-eqz v1, :cond_0

    .line 138
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 140
    :cond_0
    invoke-virtual {p0}, Lio/sentry/DataCollectionResolver;->isDataCollectionConfigured()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private isLegacyGraphqlBodyEnabled()Z
    .locals 2

    .line 111
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/sentry/SentryOptions$RequestSize;->NONE:Lio/sentry/SentryOptions$RequestSize;

    iget-object v1, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    .line 112
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getMaxRequestBodySize()Lio/sentry/SentryOptions$RequestSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryOptions$RequestSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0
.end method


# virtual methods
.method public getCookies()Lio/sentry/KeyValueCollectionBehavior;
    .locals 4

    .line 64
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v0

    .line 65
    .local v0, "dataCollection":Lio/sentry/DataCollection;
    invoke-virtual {v0}, Lio/sentry/DataCollection;->getCookies()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v1

    .line 67
    .local v1, "cookies":Lio/sentry/KeyValueCollectionBehavior;
    if-eqz v1, :cond_0

    .line 68
    return-object v1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lio/sentry/DataCollectionResolver;->isDataCollectionConfigured()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 71
    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v2}, Lio/sentry/KeyValueCollectionBehavior;->denyList([Ljava/lang/String;)Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v2

    return-object v2

    .line 73
    :cond_1
    iget-object v2, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v2}, Lio/sentry/KeyValueCollectionBehavior;->denyList([Ljava/lang/String;)Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v2

    goto :goto_0

    .line 75
    :cond_2
    invoke-static {}, Lio/sentry/KeyValueCollectionBehavior;->off()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v2

    .line 73
    :goto_0
    return-object v2
.end method

.method public getHttpRequestHeaders()Lio/sentry/KeyValueCollectionBehavior;
    .locals 1

    .line 83
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection$HttpHeaders;->getRequest()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/DataCollectionResolver;->explicitOrEmptyDenyList(Lio/sentry/KeyValueCollectionBehavior;)Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    return-object v0
.end method

.method public getHttpResponseHeaders()Lio/sentry/KeyValueCollectionBehavior;
    .locals 1

    .line 87
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection;->getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection$HttpHeaders;->getResponse()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/DataCollectionResolver;->explicitOrEmptyDenyList(Lio/sentry/KeyValueCollectionBehavior;)Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    return-object v0
.end method

.method public getUrlQueryParams()Lio/sentry/KeyValueCollectionBehavior;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection;->getUrlQueryParams()Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/DataCollectionResolver;->explicitOrEmptyDenyList(Lio/sentry/KeyValueCollectionBehavior;)Lio/sentry/KeyValueCollectionBehavior;

    move-result-object v0

    return-object v0
.end method

.method public isDataCollectionConfigured()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection;->isExplicitlyConfigured()Z

    move-result v0

    return v0
.end method

.method public isDatabaseQueryData()Z
    .locals 2

    .line 28
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection;->getDatabaseQueryData()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/sentry/DataCollectionResolver;->explicitOrSendDefaultPii(Ljava/lang/Boolean;Z)Z

    move-result v0

    return v0
.end method

.method public isFilePaths()Z
    .locals 2

    .line 32
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection;->getFilePaths()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/sentry/DataCollectionResolver;->explicitOrSendDefaultPii(Ljava/lang/Boolean;Z)Z

    move-result v0

    return v0
.end method

.method public isGraphqlDocument()Z
    .locals 2

    .line 36
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection$Graphql;->getDocument()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/sentry/DataCollectionResolver;->explicitOrSendDefaultPii(Ljava/lang/Boolean;Z)Z

    move-result v0

    return v0
.end method

.method public isGraphqlDocumentWithLegacyAlways()Z
    .locals 2

    .line 45
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection$Graphql;->getDocument()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lio/sentry/DataCollectionResolver;->explicitOrDefault(Ljava/lang/Boolean;ZZ)Z

    move-result v0

    return v0
.end method

.method public isGraphqlDocumentWithLegacyBodyGate()Z
    .locals 3

    .line 40
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    .line 41
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection$Graphql;->getDocument()Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0}, Lio/sentry/DataCollectionResolver;->isLegacyGraphqlBodyEnabled()Z

    move-result v1

    .line 40
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lio/sentry/DataCollectionResolver;->explicitOrDefault(Ljava/lang/Boolean;ZZ)Z

    move-result v0

    return v0
.end method

.method public isGraphqlVariables()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection$Graphql;->getVariables()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/sentry/DataCollectionResolver;->explicitOrSendDefaultPii(Ljava/lang/Boolean;Z)Z

    move-result v0

    return v0
.end method

.method public isGraphqlVariablesWithLegacyAlways()Z
    .locals 2

    .line 60
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection$Graphql;->getVariables()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lio/sentry/DataCollectionResolver;->explicitOrDefault(Ljava/lang/Boolean;ZZ)Z

    move-result v0

    return v0
.end method

.method public isGraphqlVariablesWithLegacyBodyGate()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    .line 54
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection;->getGraphql()Lio/sentry/DataCollection$Graphql;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection$Graphql;->getVariables()Ljava/lang/Boolean;

    move-result-object v0

    .line 56
    invoke-direct {p0}, Lio/sentry/DataCollectionResolver;->isLegacyGraphqlBodyEnabled()Z

    move-result v1

    .line 53
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lio/sentry/DataCollectionResolver;->explicitOrDefault(Ljava/lang/Boolean;ZZ)Z

    move-result v0

    return v0
.end method

.method public isIncomingRequestBody()Z
    .locals 2

    .line 91
    sget-object v0, Lio/sentry/HttpBodyType;->INCOMING_REQUEST:Lio/sentry/HttpBodyType;

    iget-object v1, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lio/sentry/DataCollectionResolver;->isHttpBodyEnabled(Lio/sentry/HttpBodyType;Z)Z

    move-result v0

    return v0
.end method

.method public isIncomingResponseBody()Z
    .locals 2

    .line 99
    sget-object v0, Lio/sentry/HttpBodyType;->INCOMING_RESPONSE:Lio/sentry/HttpBodyType;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/sentry/DataCollectionResolver;->isHttpBodyEnabled(Lio/sentry/HttpBodyType;Z)Z

    move-result v0

    return v0
.end method

.method public isOutgoingRequestBody()Z
    .locals 2

    .line 95
    sget-object v0, Lio/sentry/HttpBodyType;->OUTGOING_REQUEST:Lio/sentry/HttpBodyType;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/sentry/DataCollectionResolver;->isHttpBodyEnabled(Lio/sentry/HttpBodyType;Z)Z

    move-result v0

    return v0
.end method

.method public isOutgoingResponseBody()Z
    .locals 2

    .line 103
    sget-object v0, Lio/sentry/HttpBodyType;->OUTGOING_RESPONSE:Lio/sentry/HttpBodyType;

    iget-object v1, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lio/sentry/DataCollectionResolver;->isHttpBodyEnabled(Lio/sentry/HttpBodyType;Z)Z

    move-result v0

    return v0
.end method

.method public isOutgoingResponseBodyWithLegacyBodyGate()Z
    .locals 2

    .line 107
    sget-object v0, Lio/sentry/HttpBodyType;->OUTGOING_RESPONSE:Lio/sentry/HttpBodyType;

    invoke-direct {p0}, Lio/sentry/DataCollectionResolver;->isLegacyGraphqlBodyEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lio/sentry/DataCollectionResolver;->isHttpBodyEnabled(Lio/sentry/HttpBodyType;Z)Z

    move-result v0

    return v0
.end method

.method public isUserInfo()Z
    .locals 2

    .line 24
    iget-object v0, p0, Lio/sentry/DataCollectionResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDataCollection()Lio/sentry/DataCollection;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/DataCollection;->getUserInfo()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/sentry/DataCollectionResolver;->explicitOrSendDefaultPii(Ljava/lang/Boolean;Z)Z

    move-result v0

    return v0
.end method
