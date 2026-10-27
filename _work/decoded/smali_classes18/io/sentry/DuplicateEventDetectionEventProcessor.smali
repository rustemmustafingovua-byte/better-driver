.class public final Lio/sentry/DuplicateEventDetectionEventProcessor;
.super Ljava/lang/Object;
.source "DuplicateEventDetectionEventProcessor.java"

# interfaces
.implements Lio/sentry/internal/eventprocessor/SentryEventProcessor;


# instance fields
.field private final capturedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 17
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/DuplicateEventDetectionEventProcessor;->capturedObjects:Ljava/util/Map;

    .line 21
    iput-object p1, p0, Lio/sentry/DuplicateEventDetectionEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 22
    return-void
.end method

.method private static allCauses(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, "causes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 61
    .local v1, "visited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 63
    .local v2, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    .line 67
    :cond_0
    return-object v0
.end method

.method private static containsAnyKey(Ljava/util/Map;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 50
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/lang/Object;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 51
    .local v1, "entry":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const/4 v0, 0x1

    return v0

    .line 54
    .end local v1    # "entry":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getOrder()Ljava/lang/Long;
    .locals 2

    .line 72
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 6
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 26
    iget-object v0, p0, Lio/sentry/DuplicateEventDetectionEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableDeduplication()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    .line 28
    .local v0, "throwable":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 29
    iget-object v1, p0, Lio/sentry/DuplicateEventDetectionEventProcessor;->capturedObjects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/sentry/DuplicateEventDetectionEventProcessor;->capturedObjects:Ljava/util/Map;

    .line 30
    invoke-static {v0}, Lio/sentry/DuplicateEventDetectionEventProcessor;->allCauses(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lio/sentry/DuplicateEventDetectionEventProcessor;->containsAnyKey(Ljava/util/Map;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v1, p0, Lio/sentry/DuplicateEventDetectionEventProcessor;->capturedObjects:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    iget-object v1, p0, Lio/sentry/DuplicateEventDetectionEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 32
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 36
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 33
    const-string v5, "Duplicate Exception detected. Event %s will be discarded."

    invoke-interface {v1, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-object v2

    .line 42
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    goto :goto_2

    .line 43
    :cond_3
    iget-object v0, p0, Lio/sentry/DuplicateEventDetectionEventProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Event deduplication is disabled."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :goto_2
    return-object p1
.end method
