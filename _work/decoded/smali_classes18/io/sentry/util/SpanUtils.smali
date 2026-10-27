.class public final Lio/sentry/util/SpanUtils;
.super Ljava/lang/Object;
.source "SpanUtils.java"


# static fields
.field private static final ignoredSpanDecisionsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/sentry/util/SpanUtils;->ignoredSpanDecisionsCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ignoredSpanOriginsForOpenTelemetry(Lio/sentry/SentryOpenTelemetryMode;)Ljava/util/List;
    .locals 2
    .param p0, "mode"    # Lio/sentry/SentryOpenTelemetryMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryOpenTelemetryMode;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v0, "origins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lio/sentry/SentryOpenTelemetryMode;->AGENT:Lio/sentry/SentryOpenTelemetryMode;

    if-eq v1, p0, :cond_0

    sget-object v1, Lio/sentry/SentryOpenTelemetryMode;->AGENTLESS_SPRING:Lio/sentry/SentryOpenTelemetryMode;

    if-ne v1, p0, :cond_1

    .line 26
    :cond_0
    const-string v1, "auto.http.spring_jakarta.webmvc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    const-string v1, "auto.http.spring.webmvc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    const-string v1, "auto.http.spring7.webmvc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    const-string v1, "auto.spring_jakarta.webflux"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    const-string v1, "auto.spring.webflux"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    const-string v1, "auto.spring7.webflux"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v1, "auto.db.jdbc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v1, "auto.http.spring_jakarta.webclient"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v1, "auto.http.spring.webclient"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v1, "auto.http.spring7.webclient"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v1, "auto.http.spring_jakarta.restclient"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v1, "auto.http.spring.restclient"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v1, "auto.http.spring7.restclient"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v1, "auto.http.spring_jakarta.resttemplate"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v1, "auto.http.spring.resttemplate"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v1, "auto.http.spring7.resttemplate"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v1, "auto.http.openfeign"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v1, "auto.http.ktor-client"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v1, "auto.queue.spring_jakarta.kafka.producer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v1, "auto.queue.spring_jakarta.kafka.consumer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v1, "auto.queue.kafka.producer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v1, "auto.queue.kafka.consumer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    sget-object v1, Lio/sentry/SentryOpenTelemetryMode;->AGENT:Lio/sentry/SentryOpenTelemetryMode;

    if-ne v1, p0, :cond_2

    .line 51
    const-string v1, "auto.graphql.graphql"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v1, "auto.graphql.graphql22"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v1, "auto.http.okhttp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_2
    return-object v0
.end method

.method public static isIgnored(Ljava/util/List;Ljava/lang/String;)Z
    .locals 6
    .param p1, "origin"    # Ljava/lang/String;
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

    .line 65
    .local p0, "ignoredOrigins":Ljava/util/List;, "Ljava/util/List<Lio/sentry/FilterString;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 69
    :cond_0
    sget-object v1, Lio/sentry/util/SpanUtils;->ignoredSpanDecisionsCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    sget-object v0, Lio/sentry/util/SpanUtils;->ignoredSpanDecisionsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 73
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

    .line 74
    .local v2, "ignoredOrigin":Lio/sentry/FilterString;
    invoke-virtual {v2}, Lio/sentry/FilterString;->getFilterString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    sget-object v0, Lio/sentry/util/SpanUtils;->ignoredSpanDecisionsCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return v3

    .line 78
    .end local v2    # "ignoredOrigin":Lio/sentry/FilterString;
    :cond_2
    goto :goto_0

    .line 80
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

    .line 82
    .restart local v2    # "ignoredOrigin":Lio/sentry/FilterString;
    :try_start_0
    invoke-virtual {v2, p1}, Lio/sentry/FilterString;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 83
    sget-object v4, Lio/sentry/util/SpanUtils;->ignoredSpanDecisionsCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    return v3

    .line 88
    :cond_4
    goto :goto_2

    .line 86
    :catchall_0
    move-exception v4

    .line 89
    .end local v2    # "ignoredOrigin":Lio/sentry/FilterString;
    :goto_2
    goto :goto_1

    .line 91
    :cond_5
    sget-object v1, Lio/sentry/util/SpanUtils;->ignoredSpanDecisionsCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return v0

    .line 66
    :cond_6
    :goto_3
    return v0
.end method
