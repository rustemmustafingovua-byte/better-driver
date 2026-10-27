.class public final Lio/sentry/SentryClient;
.super Ljava/lang/Object;
.source "SentryClient.java"

# interfaces
.implements Lio/sentry/ISentryClient;


# static fields
.field static final SENTRY_PROTOCOL_VERSION:Ljava/lang/String; = "7"


# instance fields
.field private enabled:Z

.field private final loggerBatchProcessor:Lio/sentry/logger/ILoggerBatchProcessor;

.field private final metricsBatchProcessor:Lio/sentry/metrics/IMetricsBatchProcessor;

.field private final options:Lio/sentry/SentryOptions;

.field private final transport:Lio/sentry/transport/ITransport;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 3
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "SentryOptions is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/SentryClient;->enabled:Z

    .line 54
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTransportFactory()Lio/sentry/ITransportFactory;

    move-result-object v0

    .line 55
    .local v0, "transportFactory":Lio/sentry/ITransportFactory;
    instance-of v1, v0, Lio/sentry/NoOpTransportFactory;

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Lio/sentry/AsyncHttpTransportFactory;

    invoke-direct {v1}, Lio/sentry/AsyncHttpTransportFactory;-><init>()V

    move-object v0, v1

    .line 57
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setTransportFactory(Lio/sentry/ITransportFactory;)V

    .line 60
    :cond_0
    new-instance v1, Lio/sentry/RequestDetailsResolver;

    invoke-direct {v1, p1}, Lio/sentry/RequestDetailsResolver;-><init>(Lio/sentry/SentryOptions;)V

    .line 61
    .local v1, "requestDetailsResolver":Lio/sentry/RequestDetailsResolver;
    invoke-virtual {v1}, Lio/sentry/RequestDetailsResolver;->resolve()Lio/sentry/RequestDetails;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lio/sentry/ITransportFactory;->create(Lio/sentry/SentryOptions;Lio/sentry/RequestDetails;)Lio/sentry/transport/ITransport;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/SentryClient;->transport:Lio/sentry/transport/ITransport;

    .line 62
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogs()Lio/sentry/SentryOptions$Logs;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions$Logs;->getLoggerBatchProcessorFactory()Lio/sentry/logger/ILoggerBatchProcessorFactory;

    move-result-object v2

    invoke-interface {v2, p1, p0}, Lio/sentry/logger/ILoggerBatchProcessorFactory;->create(Lio/sentry/SentryOptions;Lio/sentry/SentryClient;)Lio/sentry/logger/ILoggerBatchProcessor;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/SentryClient;->loggerBatchProcessor:Lio/sentry/logger/ILoggerBatchProcessor;

    .line 63
    nop

    .line 64
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMetrics()Lio/sentry/SentryOptions$Metrics;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions$Metrics;->getMetricsBatchProcessorFactory()Lio/sentry/metrics/IMetricsBatchProcessorFactory;

    move-result-object v2

    invoke-interface {v2, p1, p0}, Lio/sentry/metrics/IMetricsBatchProcessorFactory;->create(Lio/sentry/SentryOptions;Lio/sentry/SentryClient;)Lio/sentry/metrics/IMetricsBatchProcessor;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/SentryClient;->metricsBatchProcessor:Lio/sentry/metrics/IMetricsBatchProcessor;

    .line 65
    return-void
.end method

.method private addScopeAttachmentsToHint(Lio/sentry/IScope;Lio/sentry/Hint;)V
    .locals 1
    .param p1, "scope"    # Lio/sentry/IScope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 366
    if-eqz p1, :cond_0

    .line 367
    invoke-interface {p1}, Lio/sentry/IScope;->getAttachments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/sentry/Hint;->addAttachments(Ljava/util/List;)V

    .line 369
    :cond_0
    return-void
.end method

.method private applyFeedbackScope(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 5
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "scope"    # Lio/sentry/IScope;
    .param p3, "hint"    # Lio/sentry/Hint;

    .line 1505
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1506
    invoke-interface {p2}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setUser(Lio/sentry/protocol/User;)V

    .line 1508
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getTags()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1509
    invoke-interface {p2}, Lio/sentry/IScope;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setTags(Ljava/util/Map;)V

    goto :goto_1

    .line 1511
    :cond_1
    invoke-interface {p2}, Lio/sentry/IScope;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1512
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1513
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    goto :goto_0

    .line 1517
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    .line 1518
    .local v0, "contexts":Lio/sentry/protocol/Contexts;
    new-instance v1, Lio/sentry/protocol/Contexts;

    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1519
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/sentry/protocol/Contexts;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1520
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    goto :goto_2

    .line 1524
    :cond_5
    invoke-interface {p2}, Lio/sentry/IScope;->getSpan()Lio/sentry/ISpan;

    move-result-object v1

    .line 1525
    .local v1, "span":Lio/sentry/ISpan;
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1526
    if-nez v1, :cond_6

    .line 1527
    nop

    .line 1528
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    .line 1529
    invoke-interface {p2}, Lio/sentry/IScope;->getPropagationContext()Lio/sentry/PropagationContext;

    move-result-object v3

    invoke-static {v3}, Lio/sentry/TransactionContext;->fromPropagationContext(Lio/sentry/PropagationContext;)Lio/sentry/TransactionContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    goto :goto_3

    .line 1531
    :cond_6
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-interface {v1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    .line 1535
    :cond_7
    :goto_3
    invoke-interface {p2}, Lio/sentry/IScope;->getEventProcessors()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, p3, v2}, Lio/sentry/SentryClient;->processFeedbackEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryEvent;

    move-result-object p1

    .line 1536
    return-object p1
.end method

.method private applyScope(Lio/sentry/CheckIn;Lio/sentry/IScope;)Lio/sentry/CheckIn;
    .locals 3
    .param p1, "checkIn"    # Lio/sentry/CheckIn;
    .param p2, "scope"    # Lio/sentry/IScope;

    .line 1540
    if-eqz p2, :cond_1

    .line 1542
    invoke-interface {p2}, Lio/sentry/IScope;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    .line 1543
    .local v0, "span":Lio/sentry/ISpan;
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getContexts()Lio/sentry/MonitorContexts;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/MonitorContexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1544
    if-nez v0, :cond_0

    .line 1545
    nop

    .line 1546
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getContexts()Lio/sentry/MonitorContexts;

    move-result-object v1

    .line 1547
    invoke-interface {p2}, Lio/sentry/IScope;->getPropagationContext()Lio/sentry/PropagationContext;

    move-result-object v2

    invoke-static {v2}, Lio/sentry/TransactionContext;->fromPropagationContext(Lio/sentry/PropagationContext;)Lio/sentry/TransactionContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/sentry/MonitorContexts;->setTrace(Lio/sentry/SpanContext;)V

    goto :goto_0

    .line 1549
    :cond_0
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getContexts()Lio/sentry/MonitorContexts;

    move-result-object v1

    invoke-interface {v0}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/sentry/MonitorContexts;->setTrace(Lio/sentry/SpanContext;)V

    .line 1553
    .end local v0    # "span":Lio/sentry/ISpan;
    :cond_1
    :goto_0
    return-object p1
.end method

.method private applyScope(Lio/sentry/SentryBaseEvent;Lio/sentry/IScope;Z)Lio/sentry/SentryBaseEvent;
    .locals 6
    .param p2, "scope"    # Lio/sentry/IScope;
    .param p3, "isCached"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/sentry/SentryBaseEvent;",
            ">(TT;",
            "Lio/sentry/IScope;",
            "Z)TT;"
        }
    .end annotation

    .line 1599
    .local p1, "sentryBaseEvent":Lio/sentry/SentryBaseEvent;, "TT;"
    if-eqz p2, :cond_c

    .line 1600
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1601
    invoke-interface {p2}, Lio/sentry/IScope;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setRequest(Lio/sentry/protocol/Request;)V

    .line 1603
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1604
    invoke-interface {p2}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setUser(Lio/sentry/protocol/User;)V

    .line 1606
    :cond_1
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1607
    invoke-interface {p2}, Lio/sentry/IScope;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setTags(Ljava/util/Map;)V

    goto :goto_1

    .line 1609
    :cond_2
    invoke-interface {p2}, Lio/sentry/IScope;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1610
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1611
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    goto :goto_0

    .line 1615
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getBreadcrumbs()Ljava/util/List;

    move-result-object v0

    .line 1616
    .local v0, "eventBreadcrumbs":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Breadcrumb;>;"
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 1622
    :cond_5
    if-nez p3, :cond_7

    .line 1625
    invoke-interface {p2}, Lio/sentry/IScope;->getBreadcrumbs()Ljava/util/Queue;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/sentry/SentryClient;->sortBreadcrumbsByDate(Lio/sentry/SentryBaseEvent;Ljava/util/Collection;)V

    goto :goto_3

    .line 1619
    :cond_6
    :goto_2
    if-nez p3, :cond_7

    .line 1620
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Lio/sentry/IScope;->getBreadcrumbs()Ljava/util/Queue;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lio/sentry/SentryBaseEvent;->setBreadcrumbs(Ljava/util/List;)V

    .line 1627
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getExtras()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1628
    invoke-interface {p2}, Lio/sentry/IScope;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/SentryBaseEvent;->setExtras(Ljava/util/Map;)V

    goto :goto_5

    .line 1630
    :cond_8
    invoke-interface {p2}, Lio/sentry/IScope;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1631
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1632
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9
    goto :goto_4

    .line 1636
    :cond_a
    :goto_5
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    .line 1637
    .local v1, "contexts":Lio/sentry/protocol/Contexts;
    new-instance v2, Lio/sentry/protocol/Contexts;

    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1638
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/sentry/protocol/Contexts;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1639
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b
    goto :goto_6

    .line 1643
    .end local v0    # "eventBreadcrumbs":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Breadcrumb;>;"
    .end local v1    # "contexts":Lio/sentry/protocol/Contexts;
    :cond_c
    return-object p1
.end method

.method private applyScope(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 3
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "scope"    # Lio/sentry/IScope;
    .param p3, "hint"    # Lio/sentry/Hint;

    .line 1465
    if-eqz p2, :cond_6

    .line 1466
    const-class v0, Lio/sentry/hints/Cached;

    invoke-static {p3, v0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/SentryClient;->applyScope(Lio/sentry/SentryBaseEvent;Lio/sentry/IScope;Z)Lio/sentry/SentryBaseEvent;

    .line 1468
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getTransaction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1469
    invoke-interface {p2}, Lio/sentry/IScope;->getTransactionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setTransaction(Ljava/lang/String;)V

    .line 1471
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getFingerprints()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1472
    invoke-interface {p2}, Lio/sentry/IScope;->getFingerprint()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setFingerprints(Ljava/util/List;)V

    .line 1475
    :cond_1
    invoke-interface {p2}, Lio/sentry/IScope;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1476
    invoke-interface {p2}, Lio/sentry/IScope;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setLevel(Lio/sentry/SentryLevel;)V

    .line 1479
    :cond_2
    invoke-interface {p2}, Lio/sentry/IScope;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    .line 1480
    .local v0, "span":Lio/sentry/ISpan;
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1481
    if-nez v0, :cond_3

    .line 1482
    nop

    .line 1483
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    .line 1484
    invoke-interface {p2}, Lio/sentry/IScope;->getPropagationContext()Lio/sentry/PropagationContext;

    move-result-object v2

    invoke-static {v2}, Lio/sentry/TransactionContext;->fromPropagationContext(Lio/sentry/PropagationContext;)Lio/sentry/TransactionContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    goto :goto_0

    .line 1486
    :cond_3
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-interface {v0}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    .line 1490
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getFeatureFlags()Lio/sentry/protocol/FeatureFlags;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1491
    invoke-interface {p2}, Lio/sentry/IScope;->getFeatureFlags()Lio/sentry/protocol/FeatureFlags;

    move-result-object v1

    .line 1492
    .local v1, "featureFlags":Lio/sentry/protocol/FeatureFlags;
    if-eqz v1, :cond_5

    .line 1493
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/sentry/protocol/Contexts;->setFeatureFlags(Lio/sentry/protocol/FeatureFlags;)V

    .line 1497
    .end local v1    # "featureFlags":Lio/sentry/protocol/FeatureFlags;
    :cond_5
    invoke-interface {p2}, Lio/sentry/IScope;->getEventProcessors()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, p3, v1}, Lio/sentry/SentryClient;->processEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryEvent;

    move-result-object p1

    .line 1499
    .end local v0    # "span":Lio/sentry/ISpan;
    :cond_6
    return-object p1
.end method

.method private applyScope(Lio/sentry/SentryReplayEvent;Lio/sentry/IScope;)Lio/sentry/SentryReplayEvent;
    .locals 5
    .param p1, "replayEvent"    # Lio/sentry/SentryReplayEvent;
    .param p2, "scope"    # Lio/sentry/IScope;

    .line 1559
    if-eqz p2, :cond_8

    .line 1560
    invoke-virtual {p1}, Lio/sentry/SentryReplayEvent;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1561
    invoke-interface {p2}, Lio/sentry/IScope;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryReplayEvent;->setRequest(Lio/sentry/protocol/Request;)V

    .line 1563
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryReplayEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1564
    invoke-interface {p2}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryReplayEvent;->setUser(Lio/sentry/protocol/User;)V

    .line 1566
    :cond_1
    invoke-virtual {p1}, Lio/sentry/SentryReplayEvent;->getTags()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1567
    invoke-interface {p2}, Lio/sentry/IScope;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryReplayEvent;->setTags(Ljava/util/Map;)V

    goto :goto_1

    .line 1569
    :cond_2
    invoke-interface {p2}, Lio/sentry/IScope;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1570
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lio/sentry/SentryReplayEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1571
    invoke-virtual {p1}, Lio/sentry/SentryReplayEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    goto :goto_0

    .line 1575
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lio/sentry/SentryReplayEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    .line 1576
    .local v0, "contexts":Lio/sentry/protocol/Contexts;
    new-instance v1, Lio/sentry/protocol/Contexts;

    invoke-interface {p2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1577
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/sentry/protocol/Contexts;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1578
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    goto :goto_2

    .line 1583
    :cond_6
    invoke-interface {p2}, Lio/sentry/IScope;->getSpan()Lio/sentry/ISpan;

    move-result-object v1

    .line 1584
    .local v1, "span":Lio/sentry/ISpan;
    invoke-virtual {p1}, Lio/sentry/SentryReplayEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1585
    if-nez v1, :cond_7

    .line 1586
    nop

    .line 1587
    invoke-virtual {p1}, Lio/sentry/SentryReplayEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    .line 1588
    invoke-interface {p2}, Lio/sentry/IScope;->getPropagationContext()Lio/sentry/PropagationContext;

    move-result-object v3

    invoke-static {v3}, Lio/sentry/TransactionContext;->fromPropagationContext(Lio/sentry/PropagationContext;)Lio/sentry/TransactionContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    goto :goto_3

    .line 1590
    :cond_7
    invoke-virtual {p1}, Lio/sentry/SentryReplayEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-interface {v1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    .line 1594
    .end local v0    # "contexts":Lio/sentry/protocol/Contexts;
    .end local v1    # "span":Lio/sentry/ISpan;
    :cond_8
    :goto_3
    return-object p1
.end method

.method private buildEnvelope(Lio/sentry/CheckIn;Lio/sentry/TraceContext;)Lio/sentry/SentryEnvelope;
    .locals 5
    .param p1, "checkIn"    # Lio/sentry/CheckIn;
    .param p2, "traceContext"    # Lio/sentry/TraceContext;

    .line 815
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 817
    .local v0, "envelopeItems":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 818
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v1

    invoke-static {v1, p1}, Lio/sentry/SentryEnvelopeItem;->fromCheckIn(Lio/sentry/ISerializer;Lio/sentry/CheckIn;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v1

    .line 819
    .local v1, "checkInItem":Lio/sentry/SentryEnvelopeItem;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    new-instance v2, Lio/sentry/SentryEnvelopeHeader;

    .line 822
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getCheckInId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    iget-object v4, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v4

    invoke-direct {v2, v3, v4, p2}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    .line 824
    .local v2, "envelopeHeader":Lio/sentry/SentryEnvelopeHeader;
    new-instance v3, Lio/sentry/SentryEnvelope;

    invoke-direct {v3, v2, v0}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    return-object v3
.end method

.method private buildEnvelope(Lio/sentry/SentryBaseEvent;Ljava/util/List;Lio/sentry/Session;Lio/sentry/TraceContext;Lio/sentry/ProfilingTraceData;)Lio/sentry/SentryEnvelope;
    .locals 8
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p3, "session"    # Lio/sentry/Session;
    .param p4, "traceContext"    # Lio/sentry/TraceContext;
    .param p5, "profilingTraceData"    # Lio/sentry/ProfilingTraceData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryBaseEvent;",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;",
            "Lio/sentry/Session;",
            "Lio/sentry/TraceContext;",
            "Lio/sentry/ProfilingTraceData;",
            ")",
            "Lio/sentry/SentryEnvelope;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lio/sentry/exception/SentryEnvelopeException;
        }
    .end annotation

    .line 430
    .local p2, "attachments":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Attachment;>;"
    const/4 v0, 0x0

    .line 432
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v1, "envelopeItems":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    if-eqz p1, :cond_0

    .line 435
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 436
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v2

    invoke-static {v2, p1}, Lio/sentry/SentryEnvelopeItem;->fromEvent(Lio/sentry/ISerializer;Lio/sentry/SentryBaseEvent;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v2

    .line 437
    .local v2, "eventItem":Lio/sentry/SentryEnvelopeItem;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    .line 441
    .end local v2    # "eventItem":Lio/sentry/SentryEnvelopeItem;
    :cond_0
    if-eqz p3, :cond_1

    .line 442
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 443
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v2

    invoke-static {v2, p3}, Lio/sentry/SentryEnvelopeItem;->fromSession(Lio/sentry/ISerializer;Lio/sentry/Session;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v2

    .line 444
    .local v2, "sessionItem":Lio/sentry/SentryEnvelopeItem;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v2    # "sessionItem":Lio/sentry/SentryEnvelopeItem;
    :cond_1
    if-eqz p5, :cond_2

    .line 448
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 450
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getMaxTraceFileSize()J

    move-result-wide v2

    iget-object v4, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v4

    .line 449
    invoke-static {p5, v2, v3, v4}, Lio/sentry/SentryEnvelopeItem;->fromProfilingTrace(Lio/sentry/ProfilingTraceData;JLio/sentry/ISerializer;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v2

    .line 451
    .local v2, "profilingTraceItem":Lio/sentry/SentryEnvelopeItem;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    if-nez v0, :cond_2

    .line 454
    new-instance v3, Lio/sentry/protocol/SentryId;

    invoke-virtual {p5}, Lio/sentry/ProfilingTraceData;->getProfileId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 458
    .end local v2    # "profilingTraceItem":Lio/sentry/SentryEnvelopeItem;
    :cond_2
    if-eqz p2, :cond_3

    .line 459
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/Attachment;

    .line 460
    .local v3, "attachment":Lio/sentry/Attachment;
    iget-object v4, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 462
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v4

    iget-object v5, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 463
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    iget-object v6, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 465
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getMaxAttachmentSize()J

    move-result-wide v6

    .line 461
    invoke-static {v4, v5, v3, v6, v7}, Lio/sentry/SentryEnvelopeItem;->fromAttachment(Lio/sentry/ISerializer;Lio/sentry/ILogger;Lio/sentry/Attachment;J)Lio/sentry/SentryEnvelopeItem;

    move-result-object v4

    .line 466
    .local v4, "attachmentItem":Lio/sentry/SentryEnvelopeItem;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    .end local v3    # "attachment":Lio/sentry/Attachment;
    .end local v4    # "attachmentItem":Lio/sentry/SentryEnvelopeItem;
    goto :goto_0

    .line 470
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 471
    new-instance v2, Lio/sentry/SentryEnvelopeHeader;

    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 472
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v3

    invoke-direct {v2, v0, v3, p4}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    .line 474
    .local v2, "envelopeHeader":Lio/sentry/SentryEnvelopeHeader;
    new-instance v3, Lio/sentry/SentryEnvelope;

    invoke-direct {v3, v2, v1}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    return-object v3

    .line 477
    .end local v2    # "envelopeHeader":Lio/sentry/SentryEnvelopeHeader;
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private buildEnvelope(Lio/sentry/SentryLogEvents;)Lio/sentry/SentryEnvelope;
    .locals 5
    .param p1, "logEvents"    # Lio/sentry/SentryLogEvents;

    .line 828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v0, "envelopeItems":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 831
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v1

    invoke-static {v1, p1}, Lio/sentry/SentryEnvelopeItem;->fromLogs(Lio/sentry/ISerializer;Lio/sentry/SentryLogEvents;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v1

    .line 832
    .local v1, "logItem":Lio/sentry/SentryEnvelopeItem;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    new-instance v2, Lio/sentry/SentryEnvelopeHeader;

    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 835
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    .line 837
    .local v2, "envelopeHeader":Lio/sentry/SentryEnvelopeHeader;
    new-instance v3, Lio/sentry/SentryEnvelope;

    invoke-direct {v3, v2, v0}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    return-object v3
.end method

.method private buildEnvelope(Lio/sentry/SentryMetricsEvents;)Lio/sentry/SentryEnvelope;
    .locals 5
    .param p1, "metricsEvents"    # Lio/sentry/SentryMetricsEvents;

    .line 841
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v0, "envelopeItems":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 844
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v1

    invoke-static {v1, p1}, Lio/sentry/SentryEnvelopeItem;->fromMetrics(Lio/sentry/ISerializer;Lio/sentry/SentryMetricsEvents;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v1

    .line 845
    .local v1, "metricsItem":Lio/sentry/SentryEnvelopeItem;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    new-instance v2, Lio/sentry/SentryEnvelopeHeader;

    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 848
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    .line 850
    .local v2, "envelopeHeader":Lio/sentry/SentryEnvelopeHeader;
    new-instance v3, Lio/sentry/SentryEnvelope;

    invoke-direct {v3, v2, v0}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    return-object v3
.end method

.method private buildEnvelope(Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;Lio/sentry/TraceContext;Z)Lio/sentry/SentryEnvelope;
    .locals 5
    .param p1, "event"    # Lio/sentry/SentryReplayEvent;
    .param p2, "replayRecording"    # Lio/sentry/ReplayRecording;
    .param p3, "traceContext"    # Lio/sentry/TraceContext;
    .param p4, "cleanupReplayFolder"    # Z

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v0, "envelopeItems":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 862
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 863
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 861
    invoke-static {v1, v2, p1, p2, p4}, Lio/sentry/SentryEnvelopeItem;->fromReplay(Lio/sentry/ISerializer;Lio/sentry/ILogger;Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;Z)Lio/sentry/SentryEnvelopeItem;

    move-result-object v1

    .line 867
    .local v1, "replayItem":Lio/sentry/SentryEnvelopeItem;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    invoke-virtual {p1}, Lio/sentry/SentryReplayEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    .line 872
    .local v2, "sentryId":Lio/sentry/protocol/SentryId;
    new-instance v3, Lio/sentry/SentryEnvelopeHeader;

    iget-object v4, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 874
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryReplayOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v4

    invoke-direct {v3, v2, v4, p3}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    .line 876
    .local v3, "envelopeHeader":Lio/sentry/SentryEnvelopeHeader;
    new-instance v4, Lio/sentry/SentryEnvelope;

    invoke-direct {v4, v3, v0}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    return-object v4
.end method

.method private buildEnvelope(Lio/sentry/UserFeedback;)Lio/sentry/SentryEnvelope;
    .locals 5
    .param p1, "userFeedback"    # Lio/sentry/UserFeedback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v0, "envelopeItems":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 804
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v1

    invoke-static {v1, p1}, Lio/sentry/SentryEnvelopeItem;->fromUserFeedback(Lio/sentry/ISerializer;Lio/sentry/UserFeedback;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v1

    .line 805
    .local v1, "userFeedbackItem":Lio/sentry/SentryEnvelopeItem;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    new-instance v2, Lio/sentry/SentryEnvelopeHeader;

    .line 808
    invoke-virtual {p1}, Lio/sentry/UserFeedback;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    iget-object v4, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;)V

    .line 810
    .local v2, "envelopeHeader":Lio/sentry/SentryEnvelopeHeader;
    new-instance v3, Lio/sentry/SentryEnvelope;

    invoke-direct {v3, v2, v0}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    return-object v3
.end method

.method private executeBeforeSend(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 5
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 1658
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeSend()Lio/sentry/SentryOptions$BeforeSendCallback;

    move-result-object v0

    .line 1659
    .local v0, "beforeSend":Lio/sentry/SentryOptions$BeforeSendCallback;
    if-eqz v0, :cond_2

    .line 1660
    :try_start_0
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->enter()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1661
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_1
    invoke-interface {v0, p1, p2}, Lio/sentry/SentryOptions$BeforeSendCallback;->execute(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v2

    .line 1662
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1673
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    nop

    .line 1674
    if-nez p1, :cond_2

    .line 1675
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1676
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v1

    sget-object v2, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    sget-object v3, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 1677
    invoke-interface {v1, v2, v3}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    goto :goto_1

    .line 1660
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "beforeSend":Lio/sentry/SentryOptions$BeforeSendCallback;
    .end local p1    # "event":Lio/sentry/SentryEvent;
    .end local p2    # "hint":Lio/sentry/Hint;
    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1662
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v0    # "beforeSend":Lio/sentry/SentryOptions$BeforeSendCallback;
    .restart local p1    # "event":Lio/sentry/SentryEvent;
    .restart local p2    # "hint":Lio/sentry/Hint;
    :catchall_2
    move-exception v1

    .line 1663
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1664
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1665
    const-string v4, "The beforeSend callback threw an exception. Dropping event."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1669
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1670
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v2

    sget-object v3, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    sget-object v4, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 1671
    invoke-interface {v2, v3, v4}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 1672
    const/4 v2, 0x0

    return-object v2

    .line 1680
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-object p1
.end method

.method private executeBeforeSendFeedback(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 5
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 1747
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeSendFeedback()Lio/sentry/SentryOptions$BeforeSendCallback;

    move-result-object v0

    .line 1748
    .local v0, "beforeSendFeedback":Lio/sentry/SentryOptions$BeforeSendCallback;
    if-eqz v0, :cond_2

    .line 1749
    :try_start_0
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->enter()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1750
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_1
    invoke-interface {v0, p1, p2}, Lio/sentry/SentryOptions$BeforeSendCallback;->execute(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v2

    .line 1751
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1762
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    nop

    .line 1763
    if-nez p1, :cond_2

    .line 1764
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1765
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v1

    sget-object v2, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    sget-object v3, Lio/sentry/DataCategory;->Feedback:Lio/sentry/DataCategory;

    .line 1766
    invoke-interface {v1, v2, v3}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    goto :goto_1

    .line 1749
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "beforeSendFeedback":Lio/sentry/SentryOptions$BeforeSendCallback;
    .end local p1    # "event":Lio/sentry/SentryEvent;
    .end local p2    # "hint":Lio/sentry/Hint;
    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1751
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v0    # "beforeSendFeedback":Lio/sentry/SentryOptions$BeforeSendCallback;
    .restart local p1    # "event":Lio/sentry/SentryEvent;
    .restart local p2    # "hint":Lio/sentry/Hint;
    :catchall_2
    move-exception v1

    .line 1752
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1753
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1754
    const-string v4, "The beforeSendFeedback callback threw an exception. Dropping feedback."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1758
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1759
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v2

    sget-object v3, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    sget-object v4, Lio/sentry/DataCategory;->Feedback:Lio/sentry/DataCategory;

    .line 1760
    invoke-interface {v2, v3, v4}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 1761
    const/4 v2, 0x0

    return-object v2

    .line 1769
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-object p1
.end method

.method private executeBeforeSendLog(Lio/sentry/SentryLogEvent;)Lio/sentry/SentryLogEvent;
    .locals 6
    .param p1, "event"    # Lio/sentry/SentryLogEvent;

    .line 1800
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1801
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogs()Lio/sentry/SentryOptions$Logs;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions$Logs;->getBeforeSend()Lio/sentry/SentryOptions$Logs$BeforeSendLogCallback;

    move-result-object v0

    .line 1802
    .local v0, "beforeSendLog":Lio/sentry/SentryOptions$Logs$BeforeSendLogCallback;
    if-eqz v0, :cond_2

    .line 1803
    move-object v1, p1

    .line 1804
    .local v1, "eventBeforeCallback":Lio/sentry/SentryLogEvent;
    :try_start_0
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->enter()Lio/sentry/ISentryLifecycleToken;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1805
    .local v2, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_1
    invoke-interface {v0, p1}, Lio/sentry/SentryOptions$Logs$BeforeSendLogCallback;->execute(Lio/sentry/SentryLogEvent;)Lio/sentry/SentryLogEvent;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v3

    .line 1806
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1815
    .end local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    nop

    .line 1816
    if-nez p1, :cond_2

    .line 1817
    sget-object v2, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    invoke-direct {p0, v2, v1}, Lio/sentry/SentryClient;->recordLostLogEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryLogEvent;)V

    goto :goto_1

    .line 1804
    .restart local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_3
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "beforeSendLog":Lio/sentry/SentryOptions$Logs$BeforeSendLogCallback;
    .end local v1    # "eventBeforeCallback":Lio/sentry/SentryLogEvent;
    .end local p1    # "event":Lio/sentry/SentryLogEvent;
    :cond_1
    :goto_0
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1806
    .end local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v0    # "beforeSendLog":Lio/sentry/SentryOptions$Logs$BeforeSendLogCallback;
    .restart local v1    # "eventBeforeCallback":Lio/sentry/SentryLogEvent;
    .restart local p1    # "event":Lio/sentry/SentryLogEvent;
    :catchall_2
    move-exception v2

    .line 1807
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1808
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1809
    const-string v5, "The beforeSendLog callback threw an exception. Dropping log event."

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1813
    sget-object v3, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    invoke-direct {p0, v3, v1}, Lio/sentry/SentryClient;->recordLostLogEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryLogEvent;)V

    .line 1814
    const/4 v3, 0x0

    return-object v3

    .line 1820
    .end local v1    # "eventBeforeCallback":Lio/sentry/SentryLogEvent;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-object p1
.end method

.method private executeBeforeSendMetric(Lio/sentry/SentryMetricsEvent;Lio/sentry/Hint;)Lio/sentry/SentryMetricsEvent;
    .locals 6
    .param p1, "event"    # Lio/sentry/SentryMetricsEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 1825
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1826
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getMetrics()Lio/sentry/SentryOptions$Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions$Metrics;->getBeforeSend()Lio/sentry/SentryOptions$Metrics$BeforeSendMetricCallback;

    move-result-object v0

    .line 1827
    .local v0, "beforeSendMetric":Lio/sentry/SentryOptions$Metrics$BeforeSendMetricCallback;
    if-eqz v0, :cond_2

    .line 1828
    move-object v1, p1

    .line 1829
    .local v1, "eventBeforeCallback":Lio/sentry/SentryMetricsEvent;
    :try_start_0
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->enter()Lio/sentry/ISentryLifecycleToken;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1830
    .local v2, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_1
    invoke-interface {v0, p1, p2}, Lio/sentry/SentryOptions$Metrics$BeforeSendMetricCallback;->execute(Lio/sentry/SentryMetricsEvent;Lio/sentry/Hint;)Lio/sentry/SentryMetricsEvent;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v3

    .line 1831
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1840
    .end local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    nop

    .line 1841
    if-nez p1, :cond_2

    .line 1842
    sget-object v2, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    invoke-direct {p0, v2, v1}, Lio/sentry/SentryClient;->recordLostMetricsEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryMetricsEvent;)V

    goto :goto_1

    .line 1829
    .restart local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_3
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "beforeSendMetric":Lio/sentry/SentryOptions$Metrics$BeforeSendMetricCallback;
    .end local v1    # "eventBeforeCallback":Lio/sentry/SentryMetricsEvent;
    .end local p1    # "event":Lio/sentry/SentryMetricsEvent;
    .end local p2    # "hint":Lio/sentry/Hint;
    :cond_1
    :goto_0
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1831
    .end local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v0    # "beforeSendMetric":Lio/sentry/SentryOptions$Metrics$BeforeSendMetricCallback;
    .restart local v1    # "eventBeforeCallback":Lio/sentry/SentryMetricsEvent;
    .restart local p1    # "event":Lio/sentry/SentryMetricsEvent;
    .restart local p2    # "hint":Lio/sentry/Hint;
    :catchall_2
    move-exception v2

    .line 1832
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1833
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1834
    const-string v5, "The beforeSendMetric callback threw an exception. Dropping metrics event."

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1838
    sget-object v3, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    invoke-direct {p0, v3, v1}, Lio/sentry/SentryClient;->recordLostMetricsEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryMetricsEvent;)V

    .line 1839
    const/4 v3, 0x0

    return-object v3

    .line 1845
    .end local v1    # "eventBeforeCallback":Lio/sentry/SentryMetricsEvent;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-object p1
.end method

.method private executeBeforeSendReplay(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/SentryReplayEvent;
    .locals 5
    .param p1, "event"    # Lio/sentry/SentryReplayEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 1774
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeSendReplay()Lio/sentry/SentryOptions$BeforeSendReplayCallback;

    move-result-object v0

    .line 1775
    .local v0, "beforeSendReplay":Lio/sentry/SentryOptions$BeforeSendReplayCallback;
    if-eqz v0, :cond_2

    .line 1776
    :try_start_0
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->enter()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1777
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_1
    invoke-interface {v0, p1, p2}, Lio/sentry/SentryOptions$BeforeSendReplayCallback;->execute(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/SentryReplayEvent;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v2

    .line 1778
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1789
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    nop

    .line 1790
    if-nez p1, :cond_2

    .line 1791
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1792
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v1

    sget-object v2, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    sget-object v3, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    .line 1793
    invoke-interface {v1, v2, v3}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    goto :goto_1

    .line 1776
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "beforeSendReplay":Lio/sentry/SentryOptions$BeforeSendReplayCallback;
    .end local p1    # "event":Lio/sentry/SentryReplayEvent;
    .end local p2    # "hint":Lio/sentry/Hint;
    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1778
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v0    # "beforeSendReplay":Lio/sentry/SentryOptions$BeforeSendReplayCallback;
    .restart local p1    # "event":Lio/sentry/SentryReplayEvent;
    .restart local p2    # "hint":Lio/sentry/Hint;
    :catchall_2
    move-exception v1

    .line 1779
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1780
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1781
    const-string v4, "The beforeSendReplay callback threw an exception. Dropping replay event."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1785
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1786
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v2

    sget-object v3, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    sget-object v4, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    .line 1787
    invoke-interface {v2, v3, v4}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 1788
    const/4 v2, 0x0

    return-object v2

    .line 1796
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-object p1
.end method

.method private executeBeforeSendTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;Z)Lio/sentry/protocol/SentryTransaction;
    .locals 9
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "hasProfile"    # Z

    .line 1685
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1686
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeSendTransaction()Lio/sentry/SentryOptions$BeforeSendTransactionCallback;

    move-result-object v0

    .line 1687
    .local v0, "beforeSendTransaction":Lio/sentry/SentryOptions$BeforeSendTransactionCallback;
    if-eqz v0, :cond_4

    .line 1688
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1689
    .local v1, "spanCountBeforeCallback":I
    :try_start_0
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->enter()Lio/sentry/ISentryLifecycleToken;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1690
    .local v2, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_1
    invoke-interface {v0, p1, p2}, Lio/sentry/SentryOptions$BeforeSendTransactionCallback;->execute(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v3

    .line 1691
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1711
    .end local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    nop

    .line 1713
    if-nez p1, :cond_1

    .line 1714
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1715
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v2

    sget-object v3, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    sget-object v4, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 1716
    invoke-interface {v2, v3, v4}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 1717
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1718
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v2

    sget-object v3, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    sget-object v4, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    add-int/lit8 v5, v1, 0x1

    int-to-long v5, v5

    .line 1719
    invoke-interface {v2, v3, v4, v5, v6}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 1721
    if-eqz p3, :cond_4

    .line 1722
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1723
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v2

    sget-object v3, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    sget-object v4, Lio/sentry/DataCategory;->Profile:Lio/sentry/DataCategory;

    .line 1724
    invoke-interface {v2, v3, v4}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    goto/16 :goto_1

    .line 1727
    :cond_1
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1728
    .local v2, "spanCountAfterCallback":I
    if-ge v2, v1, :cond_4

    .line 1729
    sub-int v3, v1, v2

    .line 1730
    .local v3, "droppedSpanCount":I
    iget-object v4, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1731
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 1735
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 1732
    const-string v7, "%d spans were dropped by beforeSendTransaction."

    invoke-interface {v4, v5, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1736
    iget-object v4, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1737
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v4

    sget-object v5, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    sget-object v6, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    int-to-long v7, v3

    .line 1738
    invoke-interface {v4, v5, v6, v7, v8}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    goto :goto_1

    .line 1689
    .end local v3    # "droppedSpanCount":I
    .local v2, "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_3
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "beforeSendTransaction":Lio/sentry/SentryOptions$BeforeSendTransactionCallback;
    .end local v1    # "spanCountBeforeCallback":I
    .end local p1    # "transaction":Lio/sentry/protocol/SentryTransaction;
    .end local p2    # "hint":Lio/sentry/Hint;
    .end local p3    # "hasProfile":Z
    :cond_2
    :goto_0
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1691
    .end local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v0    # "beforeSendTransaction":Lio/sentry/SentryOptions$BeforeSendTransactionCallback;
    .restart local v1    # "spanCountBeforeCallback":I
    .restart local p1    # "transaction":Lio/sentry/protocol/SentryTransaction;
    .restart local p2    # "hint":Lio/sentry/Hint;
    .restart local p3    # "hasProfile":Z
    :catchall_2
    move-exception v2

    .line 1692
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1693
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1694
    const-string v5, "The beforeSendTransaction callback threw an exception. Dropping transaction."

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1698
    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1699
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v3

    sget-object v4, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    sget-object v5, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 1700
    invoke-interface {v3, v4, v5}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 1701
    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1702
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v3

    sget-object v4, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    sget-object v5, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    add-int/lit8 v6, v1, 0x1

    int-to-long v6, v6

    .line 1703
    invoke-interface {v3, v4, v5, v6, v7}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 1705
    if-eqz p3, :cond_3

    .line 1706
    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1707
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v3

    sget-object v4, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    sget-object v5, Lio/sentry/DataCategory;->Profile:Lio/sentry/DataCategory;

    .line 1708
    invoke-interface {v3, v4, v5}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 1710
    :cond_3
    const/4 v3, 0x0

    return-object v3

    .line 1742
    .end local v1    # "spanCountBeforeCallback":I
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    return-object p1
.end method

.method private filterForTransaction(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;)",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;"
        }
    .end annotation

    .line 1449
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Attachment;>;"
    if-nez p1, :cond_0

    .line 1450
    const/4 v0, 0x0

    return-object v0

    .line 1453
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1454
    .local v0, "attachmentsToSend":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Attachment;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/Attachment;

    .line 1455
    .local v2, "attachment":Lio/sentry/Attachment;
    invoke-virtual {v2}, Lio/sentry/Attachment;->isAddToTransactions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1456
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1458
    .end local v2    # "attachment":Lio/sentry/Attachment;
    :cond_1
    goto :goto_0

    .line 1460
    :cond_2
    return-object v0
.end method

.method private finalizeTransaction(Lio/sentry/IScope;Lio/sentry/Hint;)V
    .locals 5
    .param p1, "scope"    # Lio/sentry/IScope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 294
    invoke-interface {p1}, Lio/sentry/IScope;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v0

    .line 295
    .local v0, "transaction":Lio/sentry/ITransaction;
    if-eqz v0, :cond_1

    .line 296
    const-class v1, Lio/sentry/hints/TransactionEnd;

    invoke-static {p2, v1}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    invoke-static {p2}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object v1

    .line 298
    .local v1, "sentrySdkHint":Ljava/lang/Object;
    instance-of v2, v1, Lio/sentry/hints/DiskFlushNotification;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 299
    move-object v2, v1

    check-cast v2, Lio/sentry/hints/DiskFlushNotification;

    invoke-interface {v0}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/sentry/hints/DiskFlushNotification;->setFlushable(Lio/sentry/protocol/SentryId;)V

    .line 300
    sget-object v2, Lio/sentry/SpanStatus;->ABORTED:Lio/sentry/SpanStatus;

    invoke-interface {v0, v2, v3, p2}, Lio/sentry/ITransaction;->forceFinish(Lio/sentry/SpanStatus;ZLio/sentry/Hint;)V

    goto :goto_0

    .line 302
    :cond_0
    sget-object v2, Lio/sentry/SpanStatus;->ABORTED:Lio/sentry/SpanStatus;

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ITransaction;->forceFinish(Lio/sentry/SpanStatus;ZLio/sentry/Hint;)V

    .line 306
    .end local v1    # "sentrySdkHint":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void
.end method

.method private getAttachments(Lio/sentry/Hint;)Ljava/util/List;
    .locals 5
    .param p1, "hint"    # Lio/sentry/Hint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/Hint;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;"
        }
    .end annotation

    .line 398
    invoke-virtual {p1}, Lio/sentry/Hint;->getAttachments()Ljava/util/List;

    move-result-object v0

    .line 400
    .local v0, "attachments":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Attachment;>;"
    invoke-virtual {p1}, Lio/sentry/Hint;->getScreenshot()Lio/sentry/Attachment;

    move-result-object v1

    .line 401
    .local v1, "screenshot":Lio/sentry/Attachment;
    if-eqz v1, :cond_0

    .line 402
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_0
    invoke-virtual {p1}, Lio/sentry/Hint;->getViewHierarchy()Lio/sentry/Attachment;

    move-result-object v2

    .line 406
    .local v2, "viewHierarchy":Lio/sentry/Attachment;
    if-eqz v2, :cond_1

    .line 407
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_1
    invoke-virtual {p1}, Lio/sentry/Hint;->getThreadDump()Lio/sentry/Attachment;

    move-result-object v3

    .line 411
    .local v3, "threadDump":Lio/sentry/Attachment;
    if-eqz v3, :cond_2

    .line 412
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_2
    invoke-virtual {p1}, Lio/sentry/Hint;->getTombstone()Lio/sentry/Attachment;

    move-result-object v4

    .line 416
    .local v4, "tombstone":Lio/sentry/Attachment;
    if-eqz v4, :cond_3

    .line 417
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_3
    return-object v0
.end method

.method private getTraceContext(Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Lio/sentry/TraceContext;
    .locals 4
    .param p1, "scope"    # Lio/sentry/IScope;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "event"    # Lio/sentry/SentryBaseEvent;
    .param p4, "txn"    # Ljava/lang/String;

    .line 1328
    const/4 v0, 0x0

    .line 1329
    .local v0, "traceContext":Lio/sentry/TraceContext;
    const-class v1, Lio/sentry/hints/Backfillable;

    invoke-static {p2, v1}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v1

    .line 1330
    .local v1, "isBackfillable":Z
    if-eqz v1, :cond_0

    .line 1332
    if-eqz p3, :cond_2

    .line 1333
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-static {p3, p4, v2}, Lio/sentry/Baggage;->fromEvent(Lio/sentry/SentryBaseEvent;Ljava/lang/String;Lio/sentry/SentryOptions;)Lio/sentry/Baggage;

    move-result-object v2

    .line 1334
    .local v2, "baggage":Lio/sentry/Baggage;
    invoke-virtual {v2}, Lio/sentry/Baggage;->toTraceContext()Lio/sentry/TraceContext;

    move-result-object v0

    .line 1335
    .end local v2    # "baggage":Lio/sentry/Baggage;
    goto :goto_0

    .line 1336
    :cond_0
    if-eqz p1, :cond_2

    .line 1337
    invoke-interface {p1}, Lio/sentry/IScope;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v2

    .line 1338
    .local v2, "transaction":Lio/sentry/ITransaction;
    if-eqz v2, :cond_1

    .line 1339
    invoke-interface {v2}, Lio/sentry/ITransaction;->traceContext()Lio/sentry/TraceContext;

    move-result-object v0

    goto :goto_0

    .line 1341
    :cond_1
    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1342
    invoke-static {p1, v3}, Lio/sentry/util/TracingUtils;->maybeUpdateBaggage(Lio/sentry/IScope;Lio/sentry/SentryOptions;)Lio/sentry/PropagationContext;

    move-result-object v3

    .line 1343
    .local v3, "propagationContext":Lio/sentry/PropagationContext;
    invoke-virtual {v3}, Lio/sentry/PropagationContext;->traceContext()Lio/sentry/TraceContext;

    move-result-object v0

    .line 1346
    .end local v2    # "transaction":Lio/sentry/ITransaction;
    .end local v3    # "propagationContext":Lio/sentry/PropagationContext;
    :cond_2
    :goto_0
    return-object v0
.end method

.method private getTraceContext(Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/SentryEvent;)Lio/sentry/TraceContext;
    .locals 1
    .param p1, "scope"    # Lio/sentry/IScope;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "event"    # Lio/sentry/SentryEvent;

    .line 1320
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lio/sentry/SentryEvent;->getTransaction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/SentryClient;->getTraceContext(Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Lio/sentry/TraceContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$captureEvent$0(Lio/sentry/Session;)V
    .locals 0
    .param p0, "session"    # Lio/sentry/Session;

    .line 177
    return-void
.end method

.method private processEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryEvent;
    .locals 7
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryEvent;",
            "Lio/sentry/Hint;",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;)",
            "Lio/sentry/SentryEvent;"
        }
    .end annotation

    .line 485
    .local p3, "eventProcessors":Ljava/util/List;, "Ljava/util/List<Lio/sentry/EventProcessor;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/EventProcessor;

    .line 489
    .local v1, "processor":Lio/sentry/EventProcessor;
    :try_start_0
    instance-of v2, v1, Lio/sentry/BackfillingEventProcessor;

    .line 490
    .local v2, "isBackfillingProcessor":Z
    const-class v3, Lio/sentry/hints/Backfillable;

    invoke-static {p2, v3}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v3

    .line 491
    .local v3, "isBackfillable":Z
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 492
    invoke-interface {v1, p1, p2}, Lio/sentry/EventProcessor;->process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object v4

    move-object p1, v4

    goto :goto_1

    .line 493
    :cond_0
    if-nez v3, :cond_1

    if-nez v2, :cond_1

    .line 494
    invoke-interface {v1, p1, p2}, Lio/sentry/EventProcessor;->process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v4

    .line 510
    .end local v2    # "isBackfillingProcessor":Z
    .end local v3    # "isBackfillable":Z
    :cond_1
    :goto_1
    goto :goto_2

    .line 496
    :catchall_0
    move-exception v2

    .line 497
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 498
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 503
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 499
    const-string v6, "An exception occurred while processing event by processor: %s"

    invoke-interface {v3, v4, v2, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    instance-of v3, v1, Lio/sentry/internal/eventprocessor/SentryEventProcessor;

    if-nez v3, :cond_2

    .line 505
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 506
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v3, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    sget-object v4, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 507
    invoke-interface {v0, v3, v4}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 508
    const/4 v0, 0x0

    return-object v0

    .line 512
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    if-nez p1, :cond_3

    .line 513
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 514
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 518
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 515
    const-string v4, "Event was dropped by a processor: %s"

    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 520
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v2, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object v3, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 521
    invoke-interface {v0, v2, v3}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 522
    goto :goto_3

    .line 524
    .end local v1    # "processor":Lio/sentry/EventProcessor;
    :cond_3
    goto :goto_0

    .line 525
    :cond_4
    :goto_3
    return-object p1
.end method

.method private processFeedbackEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryEvent;
    .locals 7
    .param p1, "feedbackEvent"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryEvent;",
            "Lio/sentry/Hint;",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;)",
            "Lio/sentry/SentryEvent;"
        }
    .end annotation

    .line 737
    .local p3, "eventProcessors":Ljava/util/List;, "Ljava/util/List<Lio/sentry/EventProcessor;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/EventProcessor;

    .line 739
    .local v1, "processor":Lio/sentry/EventProcessor;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lio/sentry/EventProcessor;->process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    .end local p1    # "feedbackEvent":Lio/sentry/SentryEvent;
    .local v2, "feedbackEvent":Lio/sentry/SentryEvent;
    move-object p1, v2

    goto :goto_1

    .line 740
    .end local v2    # "feedbackEvent":Lio/sentry/SentryEvent;
    .restart local p1    # "feedbackEvent":Lio/sentry/SentryEvent;
    :catchall_0
    move-exception v2

    .line 741
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 742
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 747
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 743
    const-string v6, "An exception occurred while processing feedback event by processor: %s"

    invoke-interface {v3, v4, v2, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    instance-of v3, v1, Lio/sentry/internal/eventprocessor/SentryEventProcessor;

    if-nez v3, :cond_0

    .line 749
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 750
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v3, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    sget-object v4, Lio/sentry/DataCategory;->Feedback:Lio/sentry/DataCategory;

    .line 751
    invoke-interface {v0, v3, v4}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 752
    const/4 v0, 0x0

    return-object v0

    .line 756
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    if-nez p1, :cond_1

    .line 757
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 758
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 762
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 759
    const-string v4, "Feedback event was dropped by a processor: %s"

    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 764
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v2, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object v3, Lio/sentry/DataCategory;->Feedback:Lio/sentry/DataCategory;

    .line 765
    invoke-interface {v0, v2, v3}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 766
    goto :goto_2

    .line 768
    .end local v1    # "processor":Lio/sentry/EventProcessor;
    :cond_1
    goto :goto_0

    .line 769
    :cond_2
    :goto_2
    return-object p1
.end method

.method private processLogEvent(Lio/sentry/SentryLogEvent;Ljava/util/List;)Lio/sentry/SentryLogEvent;
    .locals 8
    .param p1, "event"    # Lio/sentry/SentryLogEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryLogEvent;",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;)",
            "Lio/sentry/SentryLogEvent;"
        }
    .end annotation

    .line 549
    .local p2, "eventProcessors":Ljava/util/List;, "Ljava/util/List<Lio/sentry/EventProcessor;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/EventProcessor;

    .line 550
    .local v1, "processor":Lio/sentry/EventProcessor;
    move-object v2, p1

    .line 552
    .local v2, "eventBeforeProcessor":Lio/sentry/SentryLogEvent;
    :try_start_0
    invoke-interface {v1, p1}, Lio/sentry/EventProcessor;->process(Lio/sentry/SentryLogEvent;)Lio/sentry/SentryLogEvent;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    .end local p1    # "event":Lio/sentry/SentryLogEvent;
    .local v3, "event":Lio/sentry/SentryLogEvent;
    move-object p1, v3

    goto :goto_1

    .line 553
    .end local v3    # "event":Lio/sentry/SentryLogEvent;
    .restart local p1    # "event":Lio/sentry/SentryLogEvent;
    :catchall_0
    move-exception v3

    .line 554
    .local v3, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 555
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 560
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 556
    const-string v7, "An exception occurred while processing log event by processor: %s"

    invoke-interface {v4, v5, v3, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    instance-of v4, v1, Lio/sentry/internal/eventprocessor/SentryEventProcessor;

    if-nez v4, :cond_0

    .line 562
    sget-object v0, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    invoke-direct {p0, v0, v2}, Lio/sentry/SentryClient;->recordLostLogEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryLogEvent;)V

    .line 563
    const/4 v0, 0x0

    return-object v0

    .line 567
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    if-nez p1, :cond_1

    .line 568
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 569
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 573
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 570
    const-string v5, "Log event was dropped by a processor: %s"

    invoke-interface {v0, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    sget-object v0, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    invoke-direct {p0, v0, v2}, Lio/sentry/SentryClient;->recordLostLogEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryLogEvent;)V

    .line 575
    goto :goto_2

    .line 577
    .end local v1    # "processor":Lio/sentry/EventProcessor;
    .end local v2    # "eventBeforeProcessor":Lio/sentry/SentryLogEvent;
    :cond_1
    goto :goto_0

    .line 578
    :cond_2
    :goto_2
    return-object p1
.end method

.method private processMetricsEvent(Lio/sentry/SentryMetricsEvent;Ljava/util/List;Lio/sentry/Hint;)Lio/sentry/SentryMetricsEvent;
    .locals 8
    .param p1, "event"    # Lio/sentry/SentryMetricsEvent;
    .param p3, "hint"    # Lio/sentry/Hint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryMetricsEvent;",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;",
            "Lio/sentry/Hint;",
            ")",
            "Lio/sentry/SentryMetricsEvent;"
        }
    .end annotation

    .line 586
    .local p2, "eventProcessors":Ljava/util/List;, "Ljava/util/List<Lio/sentry/EventProcessor;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/EventProcessor;

    .line 587
    .local v1, "processor":Lio/sentry/EventProcessor;
    move-object v2, p1

    .line 589
    .local v2, "eventBeforeProcessor":Lio/sentry/SentryMetricsEvent;
    :try_start_0
    invoke-interface {v1, p1, p3}, Lio/sentry/EventProcessor;->process(Lio/sentry/SentryMetricsEvent;Lio/sentry/Hint;)Lio/sentry/SentryMetricsEvent;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    .end local p1    # "event":Lio/sentry/SentryMetricsEvent;
    .local v3, "event":Lio/sentry/SentryMetricsEvent;
    move-object p1, v3

    goto :goto_1

    .line 590
    .end local v3    # "event":Lio/sentry/SentryMetricsEvent;
    .restart local p1    # "event":Lio/sentry/SentryMetricsEvent;
    :catchall_0
    move-exception v3

    .line 591
    .local v3, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 592
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 597
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 593
    const-string v7, "An exception occurred while processing metrics event by processor: %s"

    invoke-interface {v4, v5, v3, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    instance-of v4, v1, Lio/sentry/internal/eventprocessor/SentryEventProcessor;

    if-nez v4, :cond_0

    .line 599
    sget-object v0, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    invoke-direct {p0, v0, v2}, Lio/sentry/SentryClient;->recordLostMetricsEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryMetricsEvent;)V

    .line 600
    const/4 v0, 0x0

    return-object v0

    .line 604
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    if-nez p1, :cond_1

    .line 605
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 606
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 610
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 607
    const-string v5, "Metrics event was dropped by a processor: %s"

    invoke-interface {v0, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    sget-object v0, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    invoke-direct {p0, v0, v2}, Lio/sentry/SentryClient;->recordLostMetricsEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryMetricsEvent;)V

    .line 612
    goto :goto_2

    .line 614
    .end local v1    # "processor":Lio/sentry/EventProcessor;
    .end local v2    # "eventBeforeProcessor":Lio/sentry/SentryMetricsEvent;
    :cond_1
    goto :goto_0

    .line 615
    :cond_2
    :goto_2
    return-object p1
.end method

.method private processReplayEvent(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryReplayEvent;
    .locals 7
    .param p1, "replayEvent"    # Lio/sentry/SentryReplayEvent;
    .param p2, "hint"    # Lio/sentry/Hint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryReplayEvent;",
            "Lio/sentry/Hint;",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;)",
            "Lio/sentry/SentryReplayEvent;"
        }
    .end annotation

    .line 697
    .local p3, "eventProcessors":Ljava/util/List;, "Ljava/util/List<Lio/sentry/EventProcessor;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/EventProcessor;

    .line 699
    .local v1, "processor":Lio/sentry/EventProcessor;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lio/sentry/EventProcessor;->process(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/SentryReplayEvent;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    .end local p1    # "replayEvent":Lio/sentry/SentryReplayEvent;
    .local v2, "replayEvent":Lio/sentry/SentryReplayEvent;
    move-object p1, v2

    goto :goto_1

    .line 700
    .end local v2    # "replayEvent":Lio/sentry/SentryReplayEvent;
    .restart local p1    # "replayEvent":Lio/sentry/SentryReplayEvent;
    :catchall_0
    move-exception v2

    .line 701
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 702
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 707
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 703
    const-string v6, "An exception occurred while processing replay event by processor: %s"

    invoke-interface {v3, v4, v2, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    instance-of v3, v1, Lio/sentry/internal/eventprocessor/SentryEventProcessor;

    if-nez v3, :cond_0

    .line 709
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 710
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v3, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    sget-object v4, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    .line 711
    invoke-interface {v0, v3, v4}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 712
    const/4 v0, 0x0

    return-object v0

    .line 716
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    if-nez p1, :cond_1

    .line 717
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 718
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 722
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 719
    const-string v4, "Replay event was dropped by a processor: %s"

    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 724
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v2, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object v3, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    .line 725
    invoke-interface {v0, v2, v3}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 726
    goto :goto_2

    .line 728
    .end local v1    # "processor":Lio/sentry/EventProcessor;
    :cond_1
    goto :goto_0

    .line 729
    :cond_2
    :goto_2
    return-object p1
.end method

.method private processTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;Ljava/util/List;Z)Lio/sentry/protocol/SentryTransaction;
    .locals 10
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p4, "hasProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/protocol/SentryTransaction;",
            "Lio/sentry/Hint;",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;Z)",
            "Lio/sentry/protocol/SentryTransaction;"
        }
    .end annotation

    .line 623
    .local p3, "eventProcessors":Ljava/util/List;, "Ljava/util/List<Lio/sentry/EventProcessor;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/EventProcessor;

    .line 624
    .local v1, "processor":Lio/sentry/EventProcessor;
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 626
    .local v2, "spanCountBeforeProcessor":I
    :try_start_0
    invoke-interface {v1, p1, p2}, Lio/sentry/EventProcessor;->process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    .end local p1    # "transaction":Lio/sentry/protocol/SentryTransaction;
    .local v3, "transaction":Lio/sentry/protocol/SentryTransaction;
    move-object p1, v3

    goto :goto_1

    .line 627
    .end local v3    # "transaction":Lio/sentry/protocol/SentryTransaction;
    .restart local p1    # "transaction":Lio/sentry/protocol/SentryTransaction;
    :catchall_0
    move-exception v3

    .line 628
    .local v3, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 629
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 634
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 630
    const-string v7, "An exception occurred while processing transaction by processor: %s"

    invoke-interface {v4, v5, v3, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    instance-of v4, v1, Lio/sentry/internal/eventprocessor/SentryEventProcessor;

    if-nez v4, :cond_1

    .line 636
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 637
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v4, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    sget-object v5, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 638
    invoke-interface {v0, v4, v5}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 639
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 640
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v4, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    sget-object v5, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    add-int/lit8 v6, v2, 0x1

    int-to-long v6, v6

    .line 641
    invoke-interface {v0, v4, v5, v6, v7}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 643
    if-eqz p4, :cond_0

    .line 644
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 645
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v4, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    sget-object v5, Lio/sentry/DataCategory;->Profile:Lio/sentry/DataCategory;

    .line 646
    invoke-interface {v0, v4, v5}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 648
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 651
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 653
    .local v3, "spanCountAfterProcessor":I
    :goto_2
    if-nez p1, :cond_3

    .line 654
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 655
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 659
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 656
    const-string v6, "Transaction was dropped by a processor: %s"

    invoke-interface {v0, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 661
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v4, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object v5, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 662
    invoke-interface {v0, v4, v5}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 664
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 665
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v4, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object v5, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    add-int/lit8 v6, v2, 0x1

    int-to-long v6, v6

    .line 666
    invoke-interface {v0, v4, v5, v6, v7}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 668
    if-eqz p4, :cond_5

    .line 669
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 670
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v4, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object v5, Lio/sentry/DataCategory;->Profile:Lio/sentry/DataCategory;

    .line 671
    invoke-interface {v0, v4, v5}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    goto :goto_3

    .line 674
    :cond_3
    if-ge v3, v2, :cond_4

    .line 676
    sub-int v4, v2, v3

    .line 677
    .local v4, "droppedSpanCount":I
    iget-object v5, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 678
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 682
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 683
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 679
    const-string v8, "%d spans were dropped by a processor: %s"

    invoke-interface {v5, v6, v8, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    iget-object v5, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 685
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v5

    sget-object v6, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object v7, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    int-to-long v8, v4

    .line 686
    invoke-interface {v5, v6, v7, v8, v9}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 688
    .end local v1    # "processor":Lio/sentry/EventProcessor;
    .end local v2    # "spanCountBeforeProcessor":I
    .end local v3    # "spanCountAfterProcessor":I
    .end local v4    # "droppedSpanCount":I
    :cond_4
    goto/16 :goto_0

    .line 689
    :cond_5
    :goto_3
    return-object p1
.end method

.method private recordLostLogEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryLogEvent;)V
    .locals 4
    .param p1, "reason"    # Lio/sentry/clientreport/DiscardReason;
    .param p2, "event"    # Lio/sentry/SentryLogEvent;

    .line 530
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v1, Lio/sentry/DataCategory;->LogItem:Lio/sentry/DataCategory;

    invoke-interface {v0, p1, v1}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 531
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 532
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lio/sentry/util/JsonSerializationUtils;->byteSizeOf(Lio/sentry/ISerializer;Lio/sentry/ILogger;Lio/sentry/JsonSerializable;)J

    move-result-wide v0

    .line 533
    .local v0, "numberOfBytes":J
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v2

    sget-object v3, Lio/sentry/DataCategory;->LogByte:Lio/sentry/DataCategory;

    invoke-interface {v2, p1, v3, v0, v1}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 534
    return-void
.end method

.method private recordLostMetricsEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryMetricsEvent;)V
    .locals 4
    .param p1, "reason"    # Lio/sentry/clientreport/DiscardReason;
    .param p2, "event"    # Lio/sentry/SentryMetricsEvent;

    .line 538
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v1, Lio/sentry/DataCategory;->TraceMetric:Lio/sentry/DataCategory;

    invoke-interface {v0, p1, v1}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 539
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 540
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lio/sentry/util/JsonSerializationUtils;->byteSizeOf(Lio/sentry/ISerializer;Lio/sentry/ILogger;Lio/sentry/JsonSerializable;)J

    move-result-wide v0

    .line 541
    .local v0, "numberOfBytes":J
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 542
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v2

    sget-object v3, Lio/sentry/DataCategory;->TraceMetricByte:Lio/sentry/DataCategory;

    .line 543
    invoke-interface {v2, p1, v3, v0, v1}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 544
    return-void
.end method

.method private sample()Z
    .locals 7

    .line 1902
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/sentry/util/SentryRandom;->current()Lio/sentry/util/Random;

    move-result-object v0

    .line 1904
    .local v0, "random":Lio/sentry/util/Random;
    :goto_0
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSampleRate()Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1905
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSampleRate()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 1906
    .local v3, "sampling":D
    invoke-virtual {v0}, Lio/sentry/util/Random;->nextDouble()D

    move-result-wide v5

    cmpg-double v1, v3, v5

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1908
    .end local v3    # "sampling":D
    :cond_2
    return v2
.end method

.method private sendEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 5
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 990
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0

    .line 994
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 995
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeEnvelopeCallback()Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

    move-result-object v0

    .line 996
    .local v0, "beforeEnvelopeCallback":Lio/sentry/SentryOptions$BeforeEnvelopeCallback;
    if-eqz v0, :cond_3

    .line 997
    :try_start_0
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->enter()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 998
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_1
    invoke-interface {v0, p1, p2}, Lio/sentry/SentryOptions$BeforeEnvelopeCallback;->execute(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 999
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1003
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    goto :goto_1

    .line 997
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "beforeEnvelopeCallback":Lio/sentry/SentryOptions$BeforeEnvelopeCallback;
    .end local p1    # "envelope":Lio/sentry/SentryEnvelope;
    .end local p2    # "hint":Lio/sentry/Hint;
    :cond_2
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 999
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v0    # "beforeEnvelopeCallback":Lio/sentry/SentryOptions$BeforeEnvelopeCallback;
    .restart local p1    # "envelope":Lio/sentry/SentryEnvelope;
    .restart local p2    # "hint":Lio/sentry/Hint;
    :catchall_2
    move-exception v1

    .line 1000
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1001
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1002
    const-string v4, "The BeforeEnvelope callback threw an exception."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1006
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/sentry/SentryIntegrationPackageStorage;->checkForMixedVersions(Lio/sentry/ILogger;)Z

    .line 1008
    if-nez p2, :cond_4

    .line 1009
    iget-object v1, p0, Lio/sentry/SentryClient;->transport:Lio/sentry/transport/ITransport;

    invoke-interface {v1, p1}, Lio/sentry/transport/ITransport;->send(Lio/sentry/SentryEnvelope;)V

    goto :goto_2

    .line 1011
    :cond_4
    iget-object v1, p0, Lio/sentry/SentryClient;->transport:Lio/sentry/transport/ITransport;

    invoke-interface {v1, p1, p2}, Lio/sentry/transport/ITransport;->send(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    .line 1013
    :goto_2
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    .line 1014
    .local v1, "id":Lio/sentry/protocol/SentryId;
    if-eqz v1, :cond_5

    move-object v2, v1

    goto :goto_3

    :cond_5
    sget-object v2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    :goto_3
    return-object v2
.end method

.method private shouldApplyScopeData(Lio/sentry/CheckIn;Lio/sentry/Hint;)Z
    .locals 4
    .param p1, "event"    # Lio/sentry/CheckIn;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 80
    invoke-static {p2}, Lio/sentry/util/HintUtils;->shouldApplyScopeData(Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 84
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 88
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getCheckInId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 85
    const-string v3, "Check-in was cached so not applying scope: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method private shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z
    .locals 4
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 69
    invoke-static {p2}, Lio/sentry/util/HintUtils;->shouldApplyScopeData(Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 73
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 74
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Event was cached so not applying scope: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method private shouldSendSessionUpdateForDroppedEvent(Lio/sentry/Session;Lio/sentry/Session;)Z
    .locals 4
    .param p1, "sessionBeforeUpdate"    # Lio/sentry/Session;
    .param p2, "sessionAfterUpdate"    # Lio/sentry/Session;

    .line 373
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 374
    return v0

    .line 377
    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 378
    return v1

    .line 381
    :cond_1
    nop

    .line 382
    invoke-virtual {p2}, Lio/sentry/Session;->getStatus()Lio/sentry/Session$State;

    move-result-object v2

    sget-object v3, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    if-ne v2, v3, :cond_2

    .line 383
    invoke-virtual {p1}, Lio/sentry/Session;->getStatus()Lio/sentry/Session$State;

    move-result-object v2

    sget-object v3, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    if-eq v2, v3, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 384
    .local v2, "didSessionMoveToCrashedState":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 385
    return v1

    .line 388
    :cond_3
    nop

    .line 389
    invoke-virtual {p2}, Lio/sentry/Session;->errorCount()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p1}, Lio/sentry/Session;->errorCount()I

    move-result v3

    if-gtz v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v0

    .line 390
    .local v3, "didSessionMoveToErroredState":Z
    :goto_1
    if-eqz v3, :cond_5

    .line 391
    return v1

    .line 394
    :cond_5
    return v0
.end method

.method private sortBreadcrumbsByDate(Lio/sentry/SentryBaseEvent;Ljava/util/Collection;)V
    .locals 2
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryBaseEvent;",
            "Ljava/util/Collection<",
            "Lio/sentry/Breadcrumb;",
            ">;)V"
        }
    .end annotation

    .line 1648
    .local p2, "breadcrumbs":Ljava/util/Collection;, "Ljava/util/Collection<Lio/sentry/Breadcrumb;>;"
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getBreadcrumbs()Ljava/util/List;

    move-result-object v0

    .line 1650
    .local v0, "sortedBreadcrumbs":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Breadcrumb;>;"
    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1651
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1652
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1654
    :cond_0
    return-void
.end method


# virtual methods
.method public captureBatchedLogEvents(Lio/sentry/SentryLogEvents;)V
    .locals 5
    .param p1, "logEvents"    # Lio/sentry/SentryLogEvents;

    .line 1387
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/SentryClient;->buildEnvelope(Lio/sentry/SentryLogEvents;)Lio/sentry/SentryEnvelope;

    move-result-object v0

    .line 1388
    .local v0, "envelope":Lio/sentry/SentryEnvelope;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/sentry/SentryClient;->sendEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    nop

    .end local v0    # "envelope":Lio/sentry/SentryEnvelope;
    goto :goto_0

    .line 1389
    :catch_0
    move-exception v0

    .line 1390
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Capturing logs failed."

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1392
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public captureBatchedMetricsEvents(Lio/sentry/SentryMetricsEvents;)V
    .locals 5
    .param p1, "metricsEvents"    # Lio/sentry/SentryMetricsEvents;

    .line 1441
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/SentryClient;->buildEnvelope(Lio/sentry/SentryMetricsEvents;)Lio/sentry/SentryEnvelope;

    move-result-object v0

    .line 1442
    .local v0, "envelope":Lio/sentry/SentryEnvelope;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/sentry/SentryClient;->sendEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    nop

    .end local v0    # "envelope":Lio/sentry/SentryEnvelope;
    goto :goto_0

    .line 1443
    :catch_0
    move-exception v0

    .line 1444
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Capturing metrics failed."

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1446
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public captureCheckIn(Lio/sentry/CheckIn;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 6
    .param p1, "checkIn"    # Lio/sentry/CheckIn;
    .param p2, "scope"    # Lio/sentry/IScope;
    .param p3, "hint"    # Lio/sentry/Hint;

    .line 1179
    if-nez p3, :cond_0

    .line 1180
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    move-object p3, v0

    .line 1183
    :cond_0
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1184
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/CheckIn;->setEnvironment(Ljava/lang/String;)V

    .line 1187
    :cond_1
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getRelease()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1188
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/CheckIn;->setRelease(Ljava/lang/String;)V

    .line 1191
    :cond_2
    invoke-direct {p0, p1, p3}, Lio/sentry/SentryClient;->shouldApplyScopeData(Lio/sentry/CheckIn;Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1192
    invoke-direct {p0, p1, p2}, Lio/sentry/SentryClient;->applyScope(Lio/sentry/CheckIn;Lio/sentry/IScope;)Lio/sentry/CheckIn;

    move-result-object p1

    .line 1195
    :cond_3
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getIgnoredCheckIns()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/CheckIn;->getMonitorSlug()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/util/CheckInUtils;->isIgnored(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1196
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1197
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 1201
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getMonitorSlug()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1198
    const-string v3, "Check-in was dropped as slug %s is ignored"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1202
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1203
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object v2, Lio/sentry/DataCategory;->Monitor:Lio/sentry/DataCategory;

    .line 1204
    invoke-interface {v0, v1, v2}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 1205
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0

    .line 1208
    :cond_4
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Lio/sentry/CheckIn;->getCheckInId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Capturing check-in: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1210
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getCheckInId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    .line 1213
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p2, p3, v1}, Lio/sentry/SentryClient;->getTraceContext(Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/SentryEvent;)Lio/sentry/TraceContext;

    move-result-object v1

    .line 1214
    .local v1, "traceContext":Lio/sentry/TraceContext;
    invoke-direct {p0, p1, v1}, Lio/sentry/SentryClient;->buildEnvelope(Lio/sentry/CheckIn;Lio/sentry/TraceContext;)Lio/sentry/SentryEnvelope;

    move-result-object v2

    .line 1216
    .local v2, "envelope":Lio/sentry/SentryEnvelope;
    invoke-virtual {p3}, Lio/sentry/Hint;->clear()V

    .line 1217
    invoke-direct {p0, v2, p3}, Lio/sentry/SentryClient;->sendEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    .end local v0    # "sentryId":Lio/sentry/protocol/SentryId;
    .end local v1    # "traceContext":Lio/sentry/TraceContext;
    .end local v2    # "envelope":Lio/sentry/SentryEnvelope;
    .local v3, "sentryId":Lio/sentry/protocol/SentryId;
    goto :goto_0

    .line 1218
    .end local v3    # "sentryId":Lio/sentry/protocol/SentryId;
    .restart local v0    # "sentryId":Lio/sentry/protocol/SentryId;
    :catch_0
    move-exception v1

    .line 1219
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Capturing check-in %s failed."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v1, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1221
    sget-object v3, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 1224
    .end local v0    # "sentryId":Lio/sentry/protocol/SentryId;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "sentryId":Lio/sentry/protocol/SentryId;
    :goto_0
    return-object v3
.end method

.method public captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 4
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 968
    const-string v0, "SentryEnvelope is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 970
    if-nez p2, :cond_0

    .line 971
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    move-object p2, v0

    .line 975
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/Hint;->clear()V

    .line 976
    invoke-direct {p0, p1, p2}, Lio/sentry/SentryClient;->sendEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to capture envelope."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 980
    .end local v0    # "e":Ljava/io/IOException;
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 19
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "scope"    # Lio/sentry/IScope;
    .param p3, "hint"    # Lio/sentry/Hint;

    .line 96
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    const-string v2, "SentryEvent is required."

    invoke-static {v0, v2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    sget-object v2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v2

    .line 103
    :cond_0
    if-nez p3, :cond_1

    .line 104
    new-instance v2, Lio/sentry/Hint;

    invoke-direct {v2}, Lio/sentry/Hint;-><init>()V

    move-object v8, v2

    .end local p3    # "hint":Lio/sentry/Hint;
    .local v2, "hint":Lio/sentry/Hint;
    goto :goto_0

    .line 103
    .end local v2    # "hint":Lio/sentry/Hint;
    .restart local p3    # "hint":Lio/sentry/Hint;
    :cond_1
    move-object/from16 v8, p3

    .line 109
    .end local p3    # "hint":Lio/sentry/Hint;
    .local v8, "hint":Lio/sentry/Hint;
    :goto_0
    invoke-direct {v1, v0, v8}, Lio/sentry/SentryClient;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v2, Lio/sentry/hints/Cached;

    invoke-static {v8, v2}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 110
    invoke-direct {v1, v7, v8}, Lio/sentry/SentryClient;->addScopeAttachmentsToHint(Lio/sentry/IScope;Lio/sentry/Hint;)V

    .line 113
    :cond_2
    iget-object v2, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {v0}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Capturing event: %s"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    if-eqz v0, :cond_4

    .line 116
    invoke-virtual {v0}, Lio/sentry/SentryEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    .line 117
    .local v2, "eventThrowable":Ljava/lang/Throwable;
    if-eqz v2, :cond_3

    iget-object v3, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 118
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getIgnoredExceptionsForType()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v2}, Lio/sentry/util/ExceptionUtils;->isIgnored(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    iget-object v3, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 120
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 121
    const-string v6, "Event was dropped as the exception %s is ignored"

    invoke-interface {v3, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v3, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 126
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v3

    sget-object v4, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object v5, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 127
    invoke-interface {v3, v4, v5}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 128
    sget-object v3, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v3

    .line 131
    :cond_3
    iget-object v3, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getIgnoredErrors()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v0}, Lio/sentry/util/ErrorUtils;->isIgnored(Ljava/util/List;Lio/sentry/SentryEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 132
    iget-object v3, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 133
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 137
    invoke-virtual {v0}, Lio/sentry/SentryEvent;->getMessage()Lio/sentry/protocol/Message;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 134
    const-string v6, "Event was dropped as it matched a string/pattern in ignoredErrors"

    invoke-interface {v3, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v3, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 139
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v3

    sget-object v4, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object v5, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 140
    invoke-interface {v3, v4, v5}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 141
    sget-object v3, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v3

    .line 145
    .end local v2    # "eventThrowable":Ljava/lang/Throwable;
    :cond_4
    invoke-direct {v1, v0, v8}, Lio/sentry/SentryClient;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 149
    invoke-direct {v1, v0, v7, v8}, Lio/sentry/SentryClient;->applyScope(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object v0

    .line 151
    .end local p1    # "event":Lio/sentry/SentryEvent;
    .local v0, "event":Lio/sentry/SentryEvent;
    if-nez v0, :cond_5

    .line 152
    iget-object v2, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Event was dropped by applyScope"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    sget-object v2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v2

    .line 157
    :cond_5
    iget-object v2, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v8, v2}, Lio/sentry/SentryClient;->processEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryEvent;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_6

    .line 160
    invoke-direct {v1, v0, v8}, Lio/sentry/SentryClient;->executeBeforeSend(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object v0

    .line 162
    if-nez v0, :cond_6

    .line 163
    iget-object v2, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Event was dropped by beforeSend"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :cond_6
    if-eqz v0, :cond_7

    .line 168
    iget-object v2, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-static {v0, v8, v2}, Lio/sentry/util/EventSizeLimitingUtils;->limitEventSize(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/SentryOptions;)Lio/sentry/SentryEvent;

    move-result-object v0

    .line 171
    :cond_7
    if-nez v0, :cond_8

    .line 172
    sget-object v2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v2

    .line 177
    :cond_8
    if-eqz v7, :cond_9

    new-instance v4, Lio/sentry/SentryClient$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lio/sentry/SentryClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v7, v4}, Lio/sentry/IScope;->withSession(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;

    move-result-object v4

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    :goto_1
    move-object v9, v4

    .line 178
    .local v9, "sessionBeforeUpdate":Lio/sentry/Session;
    const/4 v4, 0x0

    .line 180
    .local v4, "session":Lio/sentry/Session;
    if-eqz v0, :cond_d

    .line 182
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lio/sentry/Session;->isTerminated()Z

    move-result v5

    if-nez v5, :cond_b

    .line 183
    :cond_a
    invoke-virtual {v1, v0, v8, v7}, Lio/sentry/SentryClient;->updateSessionData(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/IScope;)Lio/sentry/Session;

    move-result-object v4

    .line 186
    :cond_b
    invoke-direct {v1}, Lio/sentry/SentryClient;->sample()Z

    move-result v5

    if-nez v5, :cond_c

    .line 187
    iget-object v5, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 188
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 192
    invoke-virtual {v0}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    .line 189
    const-string v11, "Event %s was dropped due to sampling decision."

    invoke-interface {v5, v6, v11, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object v5, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 194
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v5

    sget-object v6, Lio/sentry/clientreport/DiscardReason;->SAMPLE_RATE:Lio/sentry/clientreport/DiscardReason;

    sget-object v10, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 195
    invoke-interface {v5, v6, v10}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 197
    const/4 v0, 0x0

    move-object v5, v4

    move-object v4, v0

    goto :goto_2

    .line 186
    :cond_c
    move-object v5, v4

    move-object v4, v0

    goto :goto_2

    .line 180
    :cond_d
    move-object v5, v4

    move-object v4, v0

    .line 201
    .end local v0    # "event":Lio/sentry/SentryEvent;
    .local v4, "event":Lio/sentry/SentryEvent;
    .local v5, "session":Lio/sentry/Session;
    :goto_2
    nop

    .line 202
    invoke-direct {v1, v9, v5}, Lio/sentry/SentryClient;->shouldSendSessionUpdateForDroppedEvent(Lio/sentry/Session;Lio/sentry/Session;)Z

    move-result v10

    .line 204
    .local v10, "shouldSendSessionUpdate":Z
    if-nez v4, :cond_e

    if-nez v10, :cond_e

    .line 205
    iget-object v0, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 206
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v3, v3, [Ljava/lang/Object;

    .line 207
    const-string v6, "Not sending session update for dropped event as it did not cause the session health to change."

    invoke-interface {v0, v2, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0

    .line 213
    :cond_e
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 214
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 215
    invoke-virtual {v4}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    move-object v11, v0

    goto :goto_3

    .line 218
    :cond_f
    move-object v11, v0

    .end local v0    # "sentryId":Lio/sentry/protocol/SentryId;
    .local v11, "sentryId":Lio/sentry/protocol/SentryId;
    :goto_3
    const-class v0, Lio/sentry/hints/Backfillable;

    invoke-static {v8, v0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v12

    .line 219
    .local v12, "isBackfillable":Z
    const-class v0, Lio/sentry/hints/Cached;

    .line 220
    invoke-static {v8, v0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-class v0, Lio/sentry/hints/ApplyScopeData;

    invoke-static {v8, v0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_4

    :cond_10
    move v0, v3

    :goto_4
    move v13, v0

    .line 224
    .local v13, "isCached":Z
    if-eqz v4, :cond_1a

    if-nez v12, :cond_1a

    if-nez v13, :cond_1a

    invoke-virtual {v4}, Lio/sentry/SentryEvent;->isErrored()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v4}, Lio/sentry/SentryEvent;->isCrashed()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 225
    :cond_11
    const/4 v14, 0x1

    .line 226
    .local v14, "shouldCaptureReplay":Z
    iget-object v0, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 227
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->getBeforeErrorSampling()Lio/sentry/SentryReplayOptions$BeforeErrorSamplingCallback;

    move-result-object v15

    .line 228
    .local v15, "beforeErrorSampling":Lio/sentry/SentryReplayOptions$BeforeErrorSamplingCallback;
    if-eqz v15, :cond_15

    .line 229
    :try_start_0
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->enter()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v0

    .line 230
    .local v16, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_1
    invoke-interface {v15, v4, v8}, Lio/sentry/SentryReplayOptions$BeforeErrorSamplingCallback;->execute(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v14, v0

    .line 231
    if-eqz v16, :cond_12

    :try_start_2
    invoke-interface/range {v16 .. v16}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 244
    .end local v16    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_12
    goto :goto_6

    .line 229
    .restart local v16    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v16, :cond_13

    :try_start_3
    invoke-interface/range {v16 .. v16}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "event":Lio/sentry/SentryEvent;
    .end local v5    # "session":Lio/sentry/Session;
    .end local v8    # "hint":Lio/sentry/Hint;
    .end local v9    # "sessionBeforeUpdate":Lio/sentry/Session;
    .end local v10    # "shouldSendSessionUpdate":Z
    .end local v11    # "sentryId":Lio/sentry/protocol/SentryId;
    .end local v12    # "isBackfillable":Z
    .end local v13    # "isCached":Z
    .end local v14    # "shouldCaptureReplay":Z
    .end local v15    # "beforeErrorSampling":Lio/sentry/SentryReplayOptions$BeforeErrorSamplingCallback;
    .end local p2    # "scope":Lio/sentry/IScope;
    :cond_13
    :goto_5
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 231
    .end local v16    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v4    # "event":Lio/sentry/SentryEvent;
    .restart local v5    # "session":Lio/sentry/Session;
    .restart local v8    # "hint":Lio/sentry/Hint;
    .restart local v9    # "sessionBeforeUpdate":Lio/sentry/Session;
    .restart local v10    # "shouldSendSessionUpdate":Z
    .restart local v11    # "sentryId":Lio/sentry/protocol/SentryId;
    .restart local v12    # "isBackfillable":Z
    .restart local v13    # "isCached":Z
    .restart local v14    # "shouldCaptureReplay":Z
    .restart local v15    # "beforeErrorSampling":Lio/sentry/SentryReplayOptions$BeforeErrorSamplingCallback;
    .restart local p2    # "scope":Lio/sentry/IScope;
    :catchall_2
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 233
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 234
    const-string v6, "The beforeErrorSampling callback threw an exception. Skipping replay capture."

    invoke-interface {v2, v3, v6, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    sget-object v2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iget-object v3, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v3

    invoke-interface {v3}, Lio/sentry/ReplayController;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 239
    iget-object v2, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 240
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v2

    sget-object v3, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    sget-object v6, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    .line 241
    invoke-interface {v2, v3, v6}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 243
    :cond_14
    const/4 v14, 0x0

    .line 246
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_15
    :goto_6
    if-eqz v14, :cond_1a

    .line 248
    if-eqz v7, :cond_16

    invoke-interface {v7}, Lio/sentry/IScope;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    goto :goto_7

    :cond_16
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 249
    .local v0, "scopeReplayId":Lio/sentry/protocol/SentryId;
    :goto_7
    iget-object v2, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 250
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v2

    invoke-virtual {v4}, Lio/sentry/SentryEvent;->isCrashed()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/sentry/ReplayController;->captureReplay(Ljava/lang/Boolean;)Lio/sentry/protocol/SentryId;

    move-result-object v2

    .line 252
    .local v2, "capturedReplayId":Lio/sentry/protocol/SentryId;
    sget-object v3, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v2, v3}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object v3, v2

    goto :goto_8

    :cond_17
    move-object v3, v0

    .line 253
    .local v3, "replayId":Lio/sentry/protocol/SentryId;
    :goto_8
    if-eqz v7, :cond_19

    sget-object v6, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v3, v6}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 254
    invoke-interface {v7}, Lio/sentry/IScope;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v6

    .line 255
    .local v6, "transaction":Lio/sentry/ITransaction;
    if-eqz v6, :cond_18

    .line 256
    invoke-interface {v6}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v17

    move-object/from16 v18, v0

    .end local v0    # "scopeReplayId":Lio/sentry/protocol/SentryId;
    .local v18, "scopeReplayId":Lio/sentry/protocol/SentryId;
    invoke-virtual/range {v17 .. v17}, Lio/sentry/SpanContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object v0

    .line 257
    .local v0, "baggage":Lio/sentry/Baggage;
    if-eqz v0, :cond_1a

    .line 258
    invoke-virtual {v0, v3}, Lio/sentry/Baggage;->forceSetReplayId(Lio/sentry/protocol/SentryId;)V

    goto :goto_9

    .line 255
    .end local v18    # "scopeReplayId":Lio/sentry/protocol/SentryId;
    .local v0, "scopeReplayId":Lio/sentry/protocol/SentryId;
    :cond_18
    move-object/from16 v18, v0

    .end local v0    # "scopeReplayId":Lio/sentry/protocol/SentryId;
    .restart local v18    # "scopeReplayId":Lio/sentry/protocol/SentryId;
    goto :goto_9

    .line 253
    .end local v6    # "transaction":Lio/sentry/ITransaction;
    .end local v18    # "scopeReplayId":Lio/sentry/protocol/SentryId;
    .restart local v0    # "scopeReplayId":Lio/sentry/protocol/SentryId;
    :cond_19
    move-object/from16 v18, v0

    .line 266
    .end local v0    # "scopeReplayId":Lio/sentry/protocol/SentryId;
    .end local v2    # "capturedReplayId":Lio/sentry/protocol/SentryId;
    .end local v3    # "replayId":Lio/sentry/protocol/SentryId;
    .end local v14    # "shouldCaptureReplay":Z
    .end local v15    # "beforeErrorSampling":Lio/sentry/SentryReplayOptions$BeforeErrorSamplingCallback;
    :cond_1a
    :goto_9
    :try_start_5
    invoke-direct {v1, v7, v8, v4}, Lio/sentry/SentryClient;->getTraceContext(Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/SentryEvent;)Lio/sentry/TraceContext;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 267
    .local v0, "traceContext":Lio/sentry/TraceContext;
    if-eqz v4, :cond_1b

    const/4 v3, 0x1

    goto :goto_a

    :cond_1b
    const/4 v3, 0x0

    :goto_a
    move v14, v3

    .line 268
    .local v14, "shouldSendAttachments":Z
    if-eqz v14, :cond_1c

    :try_start_6
    invoke-direct {v1, v8}, Lio/sentry/SentryClient;->getAttachments(Lio/sentry/Hint;)Ljava/util/List;

    move-result-object v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_6 .. :try_end_6} :catch_0

    move-object v3, v2

    goto :goto_c

    .line 276
    .end local v0    # "traceContext":Lio/sentry/TraceContext;
    .end local v14    # "shouldSendAttachments":Z
    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    :goto_b
    move-object v2, v4

    move-object v4, v5

    goto :goto_e

    .line 268
    .restart local v0    # "traceContext":Lio/sentry/TraceContext;
    .restart local v14    # "shouldSendAttachments":Z
    :cond_1c
    const/4 v3, 0x0

    .line 269
    .local v3, "attachments":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Attachment;>;"
    :goto_c
    nop

    .line 270
    const/4 v6, 0x0

    move-object v2, v4

    move-object v4, v5

    move-object v5, v0

    .end local v0    # "traceContext":Lio/sentry/TraceContext;
    .local v2, "event":Lio/sentry/SentryEvent;
    .local v4, "session":Lio/sentry/Session;
    .local v5, "traceContext":Lio/sentry/TraceContext;
    :try_start_7
    invoke-direct/range {v1 .. v6}, Lio/sentry/SentryClient;->buildEnvelope(Lio/sentry/SentryBaseEvent;Ljava/util/List;Lio/sentry/Session;Lio/sentry/TraceContext;Lio/sentry/ProfilingTraceData;)Lio/sentry/SentryEnvelope;

    move-result-object v0

    .line 272
    .local v0, "envelope":Lio/sentry/SentryEnvelope;
    invoke-virtual {v8}, Lio/sentry/Hint;->clear()V

    .line 273
    if-eqz v0, :cond_1d

    .line 274
    invoke-direct {v1, v0, v8}, Lio/sentry/SentryClient;->sendEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v11, v6

    .line 282
    .end local v0    # "envelope":Lio/sentry/SentryEnvelope;
    .end local v3    # "attachments":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Attachment;>;"
    .end local v5    # "traceContext":Lio/sentry/TraceContext;
    .end local v14    # "shouldSendAttachments":Z
    :cond_1d
    goto :goto_f

    .line 276
    :catch_2
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_e

    .end local v2    # "event":Lio/sentry/SentryEvent;
    .local v4, "event":Lio/sentry/SentryEvent;
    .local v5, "session":Lio/sentry/Session;
    :catch_4
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    :goto_d
    move-object v2, v4

    move-object v4, v5

    .line 277
    .end local v5    # "session":Lio/sentry/Session;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "event":Lio/sentry/SentryEvent;
    .local v4, "session":Lio/sentry/Session;
    :goto_e
    iget-object v3, v1, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v6, "Capturing event %s failed."

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v3, v5, v0, v6, v14}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    invoke-static {v8}, Lio/sentry/util/HintUtils;->setCaptureFailed(Lio/sentry/Hint;)V

    .line 281
    sget-object v11, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f
    if-eqz v7, :cond_1e

    .line 287
    invoke-direct {v1, v7, v8}, Lio/sentry/SentryClient;->finalizeTransaction(Lio/sentry/IScope;Lio/sentry/Hint;)V

    .line 290
    :cond_1e
    return-object v11
.end method

.method public captureFeedback(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;Lio/sentry/IScope;)Lio/sentry/protocol/SentryId;
    .locals 12
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "scope"    # Lio/sentry/IScope;

    .line 1239
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0

    .line 1243
    :cond_0
    new-instance v0, Lio/sentry/SentryEvent;

    invoke-direct {v0}, Lio/sentry/SentryEvent;-><init>()V

    .line 1244
    .local v0, "event":Lio/sentry/SentryEvent;
    invoke-virtual {v0}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/sentry/protocol/Contexts;->setFeedback(Lio/sentry/protocol/Feedback;)V

    .line 1246
    if-nez p2, :cond_1

    .line 1247
    new-instance v1, Lio/sentry/Hint;

    invoke-direct {v1}, Lio/sentry/Hint;-><init>()V

    move-object p2, v1

    .line 1250
    :cond_1
    invoke-virtual {p1}, Lio/sentry/protocol/Feedback;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1251
    invoke-interface {p3}, Lio/sentry/IScope;->getScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/protocol/Feedback;->setUrl(Ljava/lang/String;)V

    .line 1254
    :cond_2
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {v0}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Capturing feedback: %s"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1256
    invoke-direct {p0, v0, p2}, Lio/sentry/SentryClient;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1260
    invoke-direct {p0, v0, p3, p2}, Lio/sentry/SentryClient;->applyFeedbackScope(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object v0

    .line 1262
    if-nez v0, :cond_3

    .line 1263
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Feedback was dropped by applyScope"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1264
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v1

    .line 1268
    :cond_3
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lio/sentry/SentryClient;->processFeedbackEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryEvent;

    move-result-object v0

    .line 1270
    if-eqz v0, :cond_5

    .line 1271
    invoke-direct {p0, v0, p2}, Lio/sentry/SentryClient;->executeBeforeSendFeedback(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object v0

    .line 1273
    if-nez v0, :cond_4

    .line 1274
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Event was dropped by beforeSend"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1278
    :cond_4
    move-object v7, v0

    goto :goto_0

    .line 1270
    :cond_5
    move-object v7, v0

    .line 1278
    .end local v0    # "event":Lio/sentry/SentryEvent;
    .local v7, "event":Lio/sentry/SentryEvent;
    :goto_0
    if-nez v7, :cond_6

    .line 1279
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0

    .line 1282
    :cond_6
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 1283
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    invoke-virtual {v7}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1284
    invoke-virtual {v7}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 1283
    :cond_7
    move-object v1, v0

    .line 1288
    .end local v0    # "sentryId":Lio/sentry/protocol/SentryId;
    .local v1, "sentryId":Lio/sentry/protocol/SentryId;
    :goto_1
    invoke-virtual {p1}, Lio/sentry/protocol/Feedback;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1289
    invoke-interface {p3}, Lio/sentry/IScope;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    .line 1290
    .local v0, "scopeReplayId":Lio/sentry/protocol/SentryId;
    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v2}, Lio/sentry/ReplayController;->captureReplay(Ljava/lang/Boolean;)Lio/sentry/protocol/SentryId;

    move-result-object v2

    .line 1292
    .local v2, "capturedReplayId":Lio/sentry/protocol/SentryId;
    sget-object v3, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v2, v3}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object v3, v2

    goto :goto_2

    :cond_8
    move-object v3, v0

    .line 1293
    .local v3, "replayId":Lio/sentry/protocol/SentryId;
    :goto_2
    sget-object v4, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v3, v4}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1294
    invoke-virtual {p1, v3}, Lio/sentry/protocol/Feedback;->setReplayId(Lio/sentry/protocol/SentryId;)V

    .line 1299
    .end local v0    # "scopeReplayId":Lio/sentry/protocol/SentryId;
    .end local v2    # "capturedReplayId":Lio/sentry/protocol/SentryId;
    .end local v3    # "replayId":Lio/sentry/protocol/SentryId;
    :cond_9
    :try_start_0
    invoke-direct {p0, p3, p2, v7}, Lio/sentry/SentryClient;->getTraceContext(Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/SentryEvent;)Lio/sentry/TraceContext;

    move-result-object v10

    .line 1300
    .local v10, "traceContext":Lio/sentry/TraceContext;
    invoke-direct {p0, p2}, Lio/sentry/SentryClient;->getAttachments(Lio/sentry/Hint;)Ljava/util/List;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1301
    .local v8, "attachments":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Attachment;>;"
    nop

    .line 1302
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    :try_start_1
    invoke-direct/range {v6 .. v11}, Lio/sentry/SentryClient;->buildEnvelope(Lio/sentry/SentryBaseEvent;Ljava/util/List;Lio/sentry/Session;Lio/sentry/TraceContext;Lio/sentry/ProfilingTraceData;)Lio/sentry/SentryEnvelope;

    move-result-object v0

    .line 1304
    .local v0, "envelope":Lio/sentry/SentryEnvelope;
    invoke-virtual {p2}, Lio/sentry/Hint;->clear()V

    .line 1305
    if-eqz v0, :cond_a

    .line 1306
    invoke-direct {p0, v0, p2}, Lio/sentry/SentryClient;->sendEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    .line 1313
    .end local v0    # "envelope":Lio/sentry/SentryEnvelope;
    .end local v8    # "attachments":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Attachment;>;"
    .end local v10    # "traceContext":Lio/sentry/TraceContext;
    :cond_a
    goto :goto_5

    .line 1308
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    move-object v6, p0

    .line 1309
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    iget-object v2, v6, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Capturing feedback %s failed."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v0, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1312
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 1315
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-object v1
.end method

.method public captureLog(Lio/sentry/SentryLogEvent;Lio/sentry/IScope;)V
    .locals 4
    .param p1, "logEvent"    # Lio/sentry/SentryLogEvent;
    .param p2, "scope"    # Lio/sentry/IScope;

    .line 1353
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    return-void

    .line 1357
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1358
    invoke-interface {p2}, Lio/sentry/IScope;->getEventProcessors()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/SentryClient;->processLogEvent(Lio/sentry/SentryLogEvent;Ljava/util/List;)Lio/sentry/SentryLogEvent;

    move-result-object p1

    .line 1359
    if-nez p1, :cond_1

    .line 1360
    return-void

    .line 1364
    :cond_1
    if-eqz p1, :cond_2

    .line 1365
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/SentryClient;->processLogEvent(Lio/sentry/SentryLogEvent;Ljava/util/List;)Lio/sentry/SentryLogEvent;

    move-result-object p1

    .line 1366
    if-nez p1, :cond_2

    .line 1367
    return-void

    .line 1371
    :cond_2
    if-eqz p1, :cond_4

    .line 1372
    invoke-direct {p0, p1}, Lio/sentry/SentryClient;->executeBeforeSendLog(Lio/sentry/SentryLogEvent;)Lio/sentry/SentryLogEvent;

    move-result-object p1

    .line 1374
    if-nez p1, :cond_3

    .line 1375
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Log Event was dropped by beforeSendLog"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1376
    return-void

    .line 1379
    :cond_3
    iget-object v0, p0, Lio/sentry/SentryClient;->loggerBatchProcessor:Lio/sentry/logger/ILoggerBatchProcessor;

    invoke-interface {v0, p1}, Lio/sentry/logger/ILoggerBatchProcessor;->add(Lio/sentry/SentryLogEvent;)V

    .line 1381
    :cond_4
    return-void
.end method

.method public captureMetric(Lio/sentry/SentryMetricsEvent;Lio/sentry/IScope;Lio/sentry/Hint;)V
    .locals 4
    .param p1, "metricsEvent"    # Lio/sentry/SentryMetricsEvent;
    .param p2, "scope"    # Lio/sentry/IScope;
    .param p3, "hint"    # Lio/sentry/Hint;

    .line 1401
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1402
    return-void

    .line 1405
    :cond_0
    if-nez p3, :cond_1

    .line 1406
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    move-object p3, v0

    .line 1409
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1410
    invoke-interface {p2}, Lio/sentry/IScope;->getEventProcessors()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lio/sentry/SentryClient;->processMetricsEvent(Lio/sentry/SentryMetricsEvent;Ljava/util/List;Lio/sentry/Hint;)Lio/sentry/SentryMetricsEvent;

    move-result-object p1

    .line 1411
    if-nez p1, :cond_2

    .line 1412
    return-void

    .line 1416
    :cond_2
    if-eqz p1, :cond_3

    .line 1417
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lio/sentry/SentryClient;->processMetricsEvent(Lio/sentry/SentryMetricsEvent;Ljava/util/List;Lio/sentry/Hint;)Lio/sentry/SentryMetricsEvent;

    move-result-object p1

    .line 1418
    if-nez p1, :cond_3

    .line 1419
    return-void

    .line 1423
    :cond_3
    if-eqz p1, :cond_5

    .line 1424
    invoke-direct {p0, p1, p3}, Lio/sentry/SentryClient;->executeBeforeSendMetric(Lio/sentry/SentryMetricsEvent;Lio/sentry/Hint;)Lio/sentry/SentryMetricsEvent;

    move-result-object p1

    .line 1426
    if-nez p1, :cond_4

    .line 1427
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1428
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1429
    const-string v3, "Metrics Event was dropped by beforeSendMetrics"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1430
    return-void

    .line 1433
    :cond_4
    iget-object v0, p0, Lio/sentry/SentryClient;->metricsBatchProcessor:Lio/sentry/metrics/IMetricsBatchProcessor;

    invoke-interface {v0, p1}, Lio/sentry/metrics/IMetricsBatchProcessor;->add(Lio/sentry/SentryMetricsEvent;)V

    .line 1435
    :cond_5
    return-void
.end method

.method public captureProfileChunk(Lio/sentry/ProfileChunk;Lio/sentry/IScope;)Lio/sentry/protocol/SentryId;
    .locals 7
    .param p1, "profileChunk"    # Lio/sentry/ProfileChunk;
    .param p2, "scope"    # Lio/sentry/IScope;

    .line 1136
    const-string v0, "profileChunk is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1138
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1139
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 1140
    invoke-virtual {p1}, Lio/sentry/ProfileChunk;->getChunkId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Capturing profile chunk: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1142
    invoke-virtual {p1}, Lio/sentry/ProfileChunk;->getChunkId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    .line 1143
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    invoke-virtual {p1}, Lio/sentry/ProfileChunk;->getDebugMeta()Lio/sentry/protocol/DebugMeta;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-static {v1, v2}, Lio/sentry/protocol/DebugMeta;->buildDebugMeta(Lio/sentry/protocol/DebugMeta;Lio/sentry/SentryOptions;)Lio/sentry/protocol/DebugMeta;

    move-result-object v1

    .line 1144
    .local v1, "debugMeta":Lio/sentry/protocol/DebugMeta;
    if-eqz v1, :cond_0

    .line 1145
    invoke-virtual {p1, v1}, Lio/sentry/ProfileChunk;->setDebugMeta(Lio/sentry/protocol/DebugMeta;)V

    .line 1152
    :cond_0
    :try_start_0
    const-string v2, "application/x-perfetto-trace"

    invoke-virtual {p1}, Lio/sentry/ProfileChunk;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1153
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1154
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v2

    invoke-static {p1, v2}, Lio/sentry/SentryEnvelopeItem;->fromPerfettoProfileChunk(Lio/sentry/ProfileChunk;Lio/sentry/ISerializer;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v2

    .local v2, "envelopeItem":Lio/sentry/SentryEnvelopeItem;
    goto :goto_0

    .line 1156
    .end local v2    # "envelopeItem":Lio/sentry/SentryEnvelopeItem;
    :cond_1
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1158
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getProfilerConverter()Lio/sentry/IProfileConverter;

    move-result-object v3

    .line 1157
    invoke-static {p1, v2, v3}, Lio/sentry/SentryEnvelopeItem;->fromProfileChunk(Lio/sentry/ProfileChunk;Lio/sentry/ISerializer;Lio/sentry/IProfileConverter;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v2

    .line 1160
    .restart local v2    # "envelopeItem":Lio/sentry/SentryEnvelopeItem;
    :goto_0
    new-instance v3, Lio/sentry/SentryEnvelope;

    new-instance v4, Lio/sentry/SentryEnvelopeHeader;

    iget-object v5, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1162
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v0, v5, v6}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    .line 1163
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    .line 1164
    .local v3, "envelope":Lio/sentry/SentryEnvelope;
    invoke-direct {p0, v3, v6}, Lio/sentry/SentryClient;->sendEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    .end local v0    # "sentryId":Lio/sentry/protocol/SentryId;
    .end local v2    # "envelopeItem":Lio/sentry/SentryEnvelopeItem;
    .end local v3    # "envelope":Lio/sentry/SentryEnvelope;
    .local v4, "sentryId":Lio/sentry/protocol/SentryId;
    goto :goto_2

    .line 1165
    .end local v4    # "sentryId":Lio/sentry/protocol/SentryId;
    .restart local v0    # "sentryId":Lio/sentry/protocol/SentryId;
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 1166
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v3, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1167
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    .line 1168
    const-string v6, "Capturing profile chunk %s failed."

    invoke-interface {v3, v4, v2, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1170
    sget-object v4, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 1173
    .end local v0    # "sentryId":Lio/sentry/protocol/SentryId;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "sentryId":Lio/sentry/protocol/SentryId;
    :goto_2
    return-object v4
.end method

.method public captureReplayEvent(Lio/sentry/SentryReplayEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 6
    .param p1, "event"    # Lio/sentry/SentryReplayEvent;
    .param p2, "scope"    # Lio/sentry/IScope;
    .param p3, "hint"    # Lio/sentry/Hint;

    .line 311
    const-string v0, "SessionReplay is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 314
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0

    .line 318
    :cond_0
    if-nez p3, :cond_1

    .line 319
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    move-object p3, v0

    .line 322
    :cond_1
    invoke-direct {p0, p1, p3}, Lio/sentry/SentryClient;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    invoke-direct {p0, p1, p2}, Lio/sentry/SentryClient;->applyScope(Lio/sentry/SentryReplayEvent;Lio/sentry/IScope;)Lio/sentry/SentryReplayEvent;

    .line 326
    :cond_2
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Lio/sentry/SentryReplayEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Capturing session replay: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 329
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    invoke-virtual {p1}, Lio/sentry/SentryReplayEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 330
    invoke-virtual {p1}, Lio/sentry/SentryReplayEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    .line 333
    :cond_3
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, p3, v1}, Lio/sentry/SentryClient;->processReplayEvent(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryReplayEvent;

    move-result-object p1

    .line 335
    if-eqz p1, :cond_4

    .line 336
    invoke-direct {p0, p1, p3}, Lio/sentry/SentryClient;->executeBeforeSendReplay(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/SentryReplayEvent;

    move-result-object p1

    .line 338
    if-nez p1, :cond_4

    .line 339
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Event was dropped by beforeSendReplay"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    :cond_4
    if-nez p1, :cond_5

    .line 344
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v1

    .line 348
    :cond_5
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p2, p3, p1, v1}, Lio/sentry/SentryClient;->getTraceContext(Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Lio/sentry/TraceContext;

    move-result-object v1

    .line 349
    .local v1, "traceContext":Lio/sentry/TraceContext;
    const-class v2, Lio/sentry/hints/Backfillable;

    invoke-static {p3, v2}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v2

    .line 350
    .local v2, "cleanupReplayFolder":Z
    nop

    .line 351
    invoke-virtual {p3}, Lio/sentry/Hint;->getReplayRecording()Lio/sentry/ReplayRecording;

    move-result-object v3

    invoke-direct {p0, p1, v3, v1, v2}, Lio/sentry/SentryClient;->buildEnvelope(Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;Lio/sentry/TraceContext;Z)Lio/sentry/SentryEnvelope;

    move-result-object v3

    .line 353
    .local v3, "envelope":Lio/sentry/SentryEnvelope;
    invoke-virtual {p3}, Lio/sentry/Hint;->clear()V

    .line 354
    iget-object v4, p0, Lio/sentry/SentryClient;->transport:Lio/sentry/transport/ITransport;

    invoke-interface {v4, v3, p3}, Lio/sentry/transport/ITransport;->send(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v1    # "traceContext":Lio/sentry/TraceContext;
    .end local v2    # "cleanupReplayFolder":Z
    .end local v3    # "envelope":Lio/sentry/SentryEnvelope;
    goto :goto_0

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Capturing event %s failed."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v1, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 362
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public captureSession(Lio/sentry/Session;Lio/sentry/Hint;)V
    .locals 4
    .param p1, "session"    # Lio/sentry/Session;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 944
    const-string v0, "Session is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 946
    invoke-virtual {p1}, Lio/sentry/Session;->getRelease()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/sentry/Session;->getRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 955
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/sentry/SentryEnvelope;->from(Lio/sentry/ISerializer;Lio/sentry/Session;Lio/sentry/protocol/SdkVersion;)Lio/sentry/SentryEnvelope;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    .local v0, "envelope":Lio/sentry/SentryEnvelope;
    nop

    .line 961
    invoke-virtual {p0, v0, p2}, Lio/sentry/SentryClient;->captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 962
    return-void

    .line 956
    .end local v0    # "envelope":Lio/sentry/SentryEnvelope;
    :catch_0
    move-exception v0

    .line 957
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to capture session."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 958
    return-void

    .line 947
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 948
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 949
    const-string v3, "Sessions can\'t be captured without setting a release."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    return-void
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
    .locals 10
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "traceContext"    # Lio/sentry/TraceContext;
    .param p3, "scope"    # Lio/sentry/IScope;
    .param p4, "hint"    # Lio/sentry/Hint;
    .param p5, "profilingTraceData"    # Lio/sentry/ProfilingTraceData;

    .line 1024
    const-string v0, "Transaction is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1027
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0

    .line 1031
    :cond_0
    if-nez p4, :cond_1

    .line 1032
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    move-object p4, v0

    .line 1035
    :cond_1
    invoke-direct {p0, p1, p4}, Lio/sentry/SentryClient;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1036
    invoke-direct {p0, p3, p4}, Lio/sentry/SentryClient;->addScopeAttachmentsToHint(Lio/sentry/IScope;Lio/sentry/Hint;)V

    .line 1039
    :cond_2
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1040
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 1041
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Capturing transaction: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1043
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getIgnoredTransactions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getTransaction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/util/TracingUtils;->isIgnored(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1044
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1045
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 1049
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getTransaction()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1046
    const-string v4, "Transaction was dropped as transaction name %s is ignored"

    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1051
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v2, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object v3, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 1052
    invoke-interface {v0, v2, v3}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 1053
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1054
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v2, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    sget-object v3, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    .line 1056
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v1

    int-to-long v4, v4

    .line 1055
    invoke-interface {v0, v2, v3, v4, v5}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 1057
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0

    .line 1060
    :cond_3
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 1061
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1062
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 1061
    :cond_4
    move-object v2, v0

    .line 1065
    .end local v0    # "sentryId":Lio/sentry/protocol/SentryId;
    .local v2, "sentryId":Lio/sentry/protocol/SentryId;
    :goto_0
    invoke-direct {p0, p1, p4}, Lio/sentry/SentryClient;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 1066
    const-class v0, Lio/sentry/hints/Cached;

    invoke-static {p4, v0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v0

    invoke-direct {p0, p1, p3, v0}, Lio/sentry/SentryClient;->applyScope(Lio/sentry/SentryBaseEvent;Lio/sentry/IScope;Z)Lio/sentry/SentryBaseEvent;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lio/sentry/protocol/SentryTransaction;

    .line 1068
    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    .line 1069
    nop

    .line 1071
    invoke-interface {p3}, Lio/sentry/IScope;->getEventProcessors()Ljava/util/List;

    move-result-object v0

    if-eqz p5, :cond_5

    move v4, v1

    goto :goto_1

    :cond_5
    move v4, v3

    .line 1070
    :goto_1
    invoke-direct {p0, p1, p4, v0, v4}, Lio/sentry/SentryClient;->processTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;Ljava/util/List;Z)Lio/sentry/protocol/SentryTransaction;

    move-result-object p1

    .line 1074
    :cond_6
    if-nez p1, :cond_7

    .line 1075
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Transaction was dropped by applyScope"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1079
    :cond_7
    if-eqz p1, :cond_9

    .line 1080
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1082
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    move-result-object v0

    if-eqz p5, :cond_8

    move v4, v1

    goto :goto_2

    :cond_8
    move v4, v3

    .line 1081
    :goto_2
    invoke-direct {p0, p1, p4, v0, v4}, Lio/sentry/SentryClient;->processTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;Ljava/util/List;Z)Lio/sentry/protocol/SentryTransaction;

    move-result-object p1

    .line 1085
    :cond_9
    if-nez p1, :cond_a

    .line 1086
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Transaction was dropped by Event processors."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1087
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0

    .line 1090
    :cond_a
    if-eqz p5, :cond_b

    goto :goto_3

    :cond_b
    move v1, v3

    :goto_3
    invoke-direct {p0, p1, p4, v1}, Lio/sentry/SentryClient;->executeBeforeSendTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;Z)Lio/sentry/protocol/SentryTransaction;

    move-result-object v5

    .line 1092
    .end local p1    # "transaction":Lio/sentry/protocol/SentryTransaction;
    .local v5, "transaction":Lio/sentry/protocol/SentryTransaction;
    if-nez v5, :cond_c

    .line 1093
    iget-object p1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1094
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v1, v3, [Ljava/lang/Object;

    .line 1095
    const-string v3, "Transaction was dropped by beforeSendTransaction."

    invoke-interface {p1, v0, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1096
    sget-object p1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p1

    .line 1100
    :cond_c
    nop

    .line 1103
    :try_start_0
    invoke-direct {p0, p4}, Lio/sentry/SentryClient;->getAttachments(Lio/sentry/Hint;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/SentryClient;->filterForTransaction(Ljava/util/List;)Ljava/util/List;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1101
    const/4 v7, 0x0

    move-object v4, p0

    move-object v8, p2

    move-object v9, p5

    .end local p2    # "traceContext":Lio/sentry/TraceContext;
    .end local p5    # "profilingTraceData":Lio/sentry/ProfilingTraceData;
    .local v8, "traceContext":Lio/sentry/TraceContext;
    .local v9, "profilingTraceData":Lio/sentry/ProfilingTraceData;
    :try_start_1
    invoke-direct/range {v4 .. v9}, Lio/sentry/SentryClient;->buildEnvelope(Lio/sentry/SentryBaseEvent;Ljava/util/List;Lio/sentry/Session;Lio/sentry/TraceContext;Lio/sentry/ProfilingTraceData;)Lio/sentry/SentryEnvelope;

    move-result-object p1

    .line 1108
    .local p1, "envelope":Lio/sentry/SentryEnvelope;
    invoke-virtual {p4}, Lio/sentry/Hint;->clear()V

    .line 1109
    if-eqz p1, :cond_d

    .line 1110
    invoke-direct {p0, p1, p4}, Lio/sentry/SentryClient;->sendEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, p2

    .line 1116
    .end local p1    # "envelope":Lio/sentry/SentryEnvelope;
    :cond_d
    goto :goto_7

    .line 1112
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_4
    move-object p1, v0

    goto :goto_6

    .end local v8    # "traceContext":Lio/sentry/TraceContext;
    .end local v9    # "profilingTraceData":Lio/sentry/ProfilingTraceData;
    .restart local p2    # "traceContext":Lio/sentry/TraceContext;
    .restart local p5    # "profilingTraceData":Lio/sentry/ProfilingTraceData;
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_5
    move-object v4, p0

    move-object v8, p2

    move-object v9, p5

    move-object p1, v0

    .line 1113
    .end local p2    # "traceContext":Lio/sentry/TraceContext;
    .end local p5    # "profilingTraceData":Lio/sentry/ProfilingTraceData;
    .restart local v8    # "traceContext":Lio/sentry/TraceContext;
    .restart local v9    # "profilingTraceData":Lio/sentry/ProfilingTraceData;
    .local p1, "e":Ljava/lang/Exception;
    :goto_6
    iget-object p2, v4, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object p5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Capturing transaction %s failed."

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, p5, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    sget-object v2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 1118
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_7
    sget-object p1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v2, p1}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 1119
    invoke-virtual {v5}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object p1

    .line 1120
    .local p1, "trace":Lio/sentry/SpanContext;
    if-eqz p1, :cond_e

    .line 1121
    iget-object p2, v4, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object p2

    invoke-virtual {p1}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object p5

    invoke-interface {p2, p5}, Lio/sentry/ReplayController;->registerTraceId(Lio/sentry/protocol/SentryId;)V

    .line 1123
    :cond_e
    invoke-virtual {v5}, Lio/sentry/protocol/SentryTransaction;->getTransaction()Ljava/lang/String;

    move-result-object p2

    .line 1124
    .local p2, "segmentName":Ljava/lang/String;
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_f

    .line 1125
    iget-object p5, v4, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p5}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object p5

    invoke-interface {p5, p2}, Lio/sentry/ReplayController;->registerSegmentName(Ljava/lang/String;)V

    .line 1129
    .end local p1    # "trace":Lio/sentry/SpanContext;
    .end local p2    # "segmentName":Ljava/lang/String;
    :cond_f
    return-object v2
.end method

.method public captureUserFeedback(Lio/sentry/UserFeedback;)V
    .locals 5
    .param p1, "userFeedback"    # Lio/sentry/UserFeedback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 775
    const-string v0, "SentryEvent is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 777
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {p1}, Lio/sentry/UserFeedback;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Capturing userFeedback without a Sentry Id."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 779
    return-void

    .line 781
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 782
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 783
    invoke-virtual {p1}, Lio/sentry/UserFeedback;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Capturing userFeedback: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 786
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/SentryClient;->buildEnvelope(Lio/sentry/UserFeedback;)Lio/sentry/SentryEnvelope;

    move-result-object v0

    .line 787
    .local v0, "envelope":Lio/sentry/SentryEnvelope;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/sentry/SentryClient;->sendEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    nop

    .end local v0    # "envelope":Lio/sentry/SentryEnvelope;
    goto :goto_0

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 790
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 795
    invoke-virtual {p1}, Lio/sentry/UserFeedback;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 791
    const-string v4, "Capturing user feedback %s failed."

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 1850
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/sentry/SentryClient;->close(Z)V

    .line 1851
    return-void
.end method

.method public close(Z)V
    .locals 8
    .param p1, "isRestarting"    # Z

    .line 1855
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Closing SentryClient."

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1857
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lio/sentry/SentryClient;->flush(J)V

    .line 1858
    iget-object v0, p0, Lio/sentry/SentryClient;->loggerBatchProcessor:Lio/sentry/logger/ILoggerBatchProcessor;

    invoke-interface {v0, p1}, Lio/sentry/logger/ILoggerBatchProcessor;->close(Z)V

    .line 1859
    iget-object v0, p0, Lio/sentry/SentryClient;->metricsBatchProcessor:Lio/sentry/metrics/IMetricsBatchProcessor;

    invoke-interface {v0, p1}, Lio/sentry/metrics/IMetricsBatchProcessor;->close(Z)V

    .line 1860
    iget-object v0, p0, Lio/sentry/SentryClient;->transport:Lio/sentry/transport/ITransport;

    invoke-interface {v0, p1}, Lio/sentry/transport/ITransport;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1865
    goto :goto_1

    .line 1861
    :catch_0
    move-exception v0

    .line 1862
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1863
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 1864
    const-string v4, "Failed to close the connection to the Sentry Server."

    invoke-interface {v1, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1866
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/EventProcessor;

    .line 1867
    .local v1, "eventProcessor":Lio/sentry/EventProcessor;
    instance-of v3, v1, Ljava/io/Closeable;

    if-eqz v3, :cond_1

    .line 1869
    :try_start_1
    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1878
    goto :goto_3

    .line 1870
    :catch_1
    move-exception v3

    .line 1871
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 1872
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v6

    .line 1873
    const-string v7, "Failed to close the event processor {}."

    invoke-interface {v4, v5, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1880
    .end local v1    # "eventProcessor":Lio/sentry/EventProcessor;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    goto :goto_2

    .line 1881
    :cond_2
    iput-boolean v2, p0, Lio/sentry/SentryClient;->enabled:Z

    .line 1882
    return-void
.end method

.method public flush(J)V
    .locals 1
    .param p1, "timeoutMillis"    # J

    .line 1886
    iget-object v0, p0, Lio/sentry/SentryClient;->loggerBatchProcessor:Lio/sentry/logger/ILoggerBatchProcessor;

    invoke-interface {v0, p1, p2}, Lio/sentry/logger/ILoggerBatchProcessor;->flush(J)V

    .line 1887
    iget-object v0, p0, Lio/sentry/SentryClient;->metricsBatchProcessor:Lio/sentry/metrics/IMetricsBatchProcessor;

    invoke-interface {v0, p1, p2}, Lio/sentry/metrics/IMetricsBatchProcessor;->flush(J)V

    .line 1888
    iget-object v0, p0, Lio/sentry/SentryClient;->transport:Lio/sentry/transport/ITransport;

    invoke-interface {v0, p1, p2}, Lio/sentry/transport/ITransport;->flush(J)V

    .line 1889
    return-void
.end method

.method public getRateLimiter()Lio/sentry/transport/RateLimiter;
    .locals 1

    .line 1893
    iget-object v0, p0, Lio/sentry/SentryClient;->transport:Lio/sentry/transport/ITransport;

    invoke-interface {v0}, Lio/sentry/transport/ITransport;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lio/sentry/SentryClient;->enabled:Z

    return v0
.end method

.method public isHealthy()Z
    .locals 1

    .line 1898
    iget-object v0, p0, Lio/sentry/SentryClient;->transport:Lio/sentry/transport/ITransport;

    invoke-interface {v0}, Lio/sentry/transport/ITransport;->isHealthy()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$updateSessionData$1$io-sentry-SentryClient(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/Session;)V
    .locals 6
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "session"    # Lio/sentry/Session;

    .line 897
    if-eqz p3, :cond_6

    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "status":Lio/sentry/Session$State;
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->isCrashed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    sget-object v0, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    .line 903
    :cond_0
    const/4 v1, 0x0

    .line 904
    .local v1, "crashedOrErrored":Z
    sget-object v2, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    if-eq v2, v0, :cond_1

    invoke-virtual {p1}, Lio/sentry/SentryEvent;->isErrored()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 905
    :cond_1
    const/4 v1, 0x1

    .line 908
    :cond_2
    const/4 v2, 0x0

    .line 909
    .local v2, "userAgent":Ljava/lang/String;
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/protocol/Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 910
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/protocol/Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v4, "user-agent"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 911
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/protocol/Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 915
    :cond_3
    invoke-static {p2}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object v3

    .line 916
    .local v3, "sentrySdkHint":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 917
    .local v4, "abnormalMechanism":Ljava/lang/String;
    instance-of v5, v3, Lio/sentry/hints/AbnormalExit;

    if-eqz v5, :cond_4

    .line 918
    move-object v5, v3

    check-cast v5, Lio/sentry/hints/AbnormalExit;

    invoke-interface {v5}, Lio/sentry/hints/AbnormalExit;->mechanism()Ljava/lang/String;

    move-result-object v4

    .line 919
    sget-object v0, Lio/sentry/Session$State;->Abnormal:Lio/sentry/Session$State;

    .line 922
    :cond_4
    invoke-virtual {p3, v0, v2, v1, v4}, Lio/sentry/Session;->update(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 924
    invoke-virtual {p3}, Lio/sentry/Session;->isTerminated()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 925
    invoke-virtual {p3}, Lio/sentry/Session;->end()V

    .line 928
    .end local v0    # "status":Lio/sentry/Session$State;
    .end local v1    # "crashedOrErrored":Z
    .end local v2    # "userAgent":Ljava/lang/String;
    .end local v3    # "sentrySdkHint":Ljava/lang/Object;
    .end local v4    # "abnormalMechanism":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 929
    :cond_6
    iget-object v0, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    .line 930
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 931
    const-string v3, "Session is null on scope.withSession"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    :goto_0
    return-void
.end method

.method updateSessionData(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/IScope;)Lio/sentry/Session;
    .locals 5
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "scope"    # Lio/sentry/IScope;

    .line 890
    const/4 v0, 0x0

    .line 892
    .local v0, "clonedSession":Lio/sentry/Session;
    invoke-static {p2}, Lio/sentry/util/HintUtils;->shouldApplyScopeData(Lio/sentry/Hint;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 893
    if-eqz p3, :cond_0

    .line 894
    new-instance v1, Lio/sentry/SentryClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/SentryClient$$ExternalSyntheticLambda1;-><init>(Lio/sentry/SentryClient;Lio/sentry/SentryEvent;Lio/sentry/Hint;)V

    .line 895
    invoke-interface {p3, v1}, Lio/sentry/IScope;->withSession(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;

    move-result-object v0

    goto :goto_0

    .line 935
    :cond_0
    iget-object v1, p0, Lio/sentry/SentryClient;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Scope is null on client.captureEvent"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 938
    :cond_1
    :goto_0
    return-object v0
.end method
