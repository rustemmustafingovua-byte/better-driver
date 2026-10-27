.class final Lio/sentry/clientreport/AtomicClientReportStorage;
.super Ljava/lang/Object;
.source "AtomicClientReportStorage.java"

# interfaces
.implements Lio/sentry/clientreport/IClientReportStorage;


# instance fields
.field private final lostEventCounts:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Ljava/util/Map<",
            "Lio/sentry/clientreport/ClientReportKey;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    new-instance v1, Lio/sentry/clientreport/AtomicClientReportStorage$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/sentry/clientreport/AtomicClientReportStorage$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v0, p0, Lio/sentry/clientreport/AtomicClientReportStorage;->lostEventCounts:Lio/sentry/util/LazyEvaluator;

    .line 36
    return-void
.end method

.method static synthetic lambda$new$0()Ljava/util/Map;
    .locals 14

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 25
    .local v0, "modifyableEventCountsForInit":Ljava/util/Map;, "Ljava/util/Map<Lio/sentry/clientreport/ClientReportKey;Ljava/util/concurrent/atomic/AtomicLong;>;"
    invoke-static {}, Lio/sentry/clientreport/DiscardReason;->values()[Lio/sentry/clientreport/DiscardReason;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 26
    .local v5, "discardReason":Lio/sentry/clientreport/DiscardReason;
    invoke-static {}, Lio/sentry/DataCategory;->values()[Lio/sentry/DataCategory;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 27
    .local v9, "category":Lio/sentry/DataCategory;
    new-instance v10, Lio/sentry/clientreport/ClientReportKey;

    .line 28
    invoke-virtual {v5}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lio/sentry/clientreport/ClientReportKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v12, 0x0

    invoke-direct {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 27
    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .end local v9    # "category":Lio/sentry/DataCategory;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 25
    .end local v5    # "discardReason":Lio/sentry/clientreport/DiscardReason;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 33
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addCount(Lio/sentry/clientreport/ClientReportKey;Ljava/lang/Long;)V
    .locals 3
    .param p1, "key"    # Lio/sentry/clientreport/ClientReportKey;
    .param p2, "count"    # Ljava/lang/Long;

    .line 40
    iget-object v0, p0, Lio/sentry/clientreport/AtomicClientReportStorage;->lostEventCounts:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    .local v0, "quantity":Ljava/util/concurrent/atomic/AtomicLong;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 45
    :cond_0
    return-void
.end method

.method public resetCountsAndGet()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/clientreport/DiscardedEvent;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "discardedEvents":Ljava/util/List;, "Ljava/util/List<Lio/sentry/clientreport/DiscardedEvent;>;"
    iget-object v1, p0, Lio/sentry/clientreport/AtomicClientReportStorage;->lostEventCounts:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v1}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 52
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lio/sentry/clientreport/ClientReportKey;Ljava/util/concurrent/atomic/AtomicLong;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 53
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/sentry/clientreport/ClientReportKey;Ljava/util/concurrent/atomic/AtomicLong;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 54
    .local v4, "quantity":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-lez v5, :cond_0

    .line 55
    new-instance v5, Lio/sentry/clientreport/DiscardedEvent;

    .line 56
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/sentry/clientreport/ClientReportKey;

    invoke-virtual {v6}, Lio/sentry/clientreport/ClientReportKey;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/sentry/clientreport/ClientReportKey;

    invoke-virtual {v7}, Lio/sentry/clientreport/ClientReportKey;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Lio/sentry/clientreport/DiscardedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/sentry/clientreport/ClientReportKey;Ljava/util/concurrent/atomic/AtomicLong;>;"
    .end local v4    # "quantity":Ljava/lang/Long;
    :cond_0
    goto :goto_0

    .line 59
    :cond_1
    return-object v0
.end method
