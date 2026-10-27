.class public final Lio/sentry/RequestDetailsResolver;
.super Ljava/lang/Object;
.source "RequestDetailsResolver.java"


# static fields
.field private static final SENTRY_AUTH:Ljava/lang/String; = "X-Sentry-Auth"

.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"


# instance fields
.field private final dsn:Lio/sentry/Dsn;

.field private final sentryClientName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "options is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->retrieveParsedDsn()Lio/sentry/Dsn;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/RequestDetailsResolver;->dsn:Lio/sentry/Dsn;

    .line 36
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSentryClientName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/RequestDetailsResolver;->sentryClientName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "dsn"    # Ljava/lang/String;
    .param p2, "sentryClientName"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "dsn is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    new-instance v0, Lio/sentry/Dsn;

    invoke-direct {v0, p1}, Lio/sentry/Dsn;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/RequestDetailsResolver;->dsn:Lio/sentry/Dsn;

    .line 28
    iput-object p2, p0, Lio/sentry/RequestDetailsResolver;->sentryClientName:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public resolve()Lio/sentry/RequestDetails;
    .locals 8

    .line 41
    iget-object v0, p0, Lio/sentry/RequestDetailsResolver;->dsn:Lio/sentry/Dsn;

    invoke-virtual {v0}, Lio/sentry/Dsn;->getSentryUri()Ljava/net/URI;

    move-result-object v0

    .line 42
    .local v0, "sentryUri":Ljava/net/URI;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/envelope/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "envelopeUrl":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/RequestDetailsResolver;->dsn:Lio/sentry/Dsn;

    invoke-virtual {v2}, Lio/sentry/Dsn;->getPublicKey()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "publicKey":Ljava/lang/String;
    iget-object v3, p0, Lio/sentry/RequestDetailsResolver;->dsn:Lio/sentry/Dsn;

    invoke-virtual {v3}, Lio/sentry/Dsn;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "secretKey":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sentry sentry_version=7,sentry_client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lio/sentry/RequestDetailsResolver;->sentryClientName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",sentry_key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 56
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",sentry_secret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, ""

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "authHeader":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "User-Agent"

    iget-object v7, p0, Lio/sentry/RequestDetailsResolver;->sentryClientName:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v6, "X-Sentry-Auth"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v6, Lio/sentry/RequestDetails;

    invoke-direct {v6, v1, v5}, Lio/sentry/RequestDetails;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v6
.end method
