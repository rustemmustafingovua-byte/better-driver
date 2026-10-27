.class public final Lio/sentry/DeduplicateMultithreadedEventProcessor;
.super Ljava/lang/Object;
.source "DeduplicateMultithreadedEventProcessor.java"

# interfaces
.implements Lio/sentry/internal/eventprocessor/SentryEventProcessor;


# instance fields
.field private final options:Lio/sentry/SentryOptions;

.field private final processedEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/DeduplicateMultithreadedEventProcessor;->processedEvents:Ljava/util/Map;

    .line 26
    iput-object p1, p0, Lio/sentry/DeduplicateMultithreadedEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 27
    return-void
.end method


# virtual methods
.method public getOrder()Ljava/lang/Long;
    .locals 2

    .line 69
    const-wide/16 v0, 0x1b58

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 8
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 31
    const-class v0, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;

    invoke-static {p2, v0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    return-object p1

    .line 37
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getUnhandledException()Lio/sentry/protocol/SentryException;

    move-result-object v0

    .line 38
    .local v0, "exception":Lio/sentry/protocol/SentryException;
    if-nez v0, :cond_1

    .line 39
    return-object p1

    .line 42
    :cond_1
    invoke-virtual {v0}, Lio/sentry/protocol/SentryException;->getType()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 44
    return-object p1

    .line 47
    :cond_2
    invoke-virtual {v0}, Lio/sentry/protocol/SentryException;->getThreadId()Ljava/lang/Long;

    move-result-object v2

    .line 48
    .local v2, "currentEventTid":Ljava/lang/Long;
    if-nez v2, :cond_3

    .line 49
    return-object p1

    .line 52
    :cond_3
    iget-object v3, p0, Lio/sentry/DeduplicateMultithreadedEventProcessor;->processedEvents:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 53
    .local v3, "tid":Ljava/lang/Long;
    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 54
    iget-object v4, p0, Lio/sentry/DeduplicateMultithreadedEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 55
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 59
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 56
    const-string v7, "Event %s has been dropped due to multi-threaded deduplication"

    invoke-interface {v4, v5, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    sget-object v4, Lio/sentry/hints/EventDropReason;->MULTITHREADED_DEDUPLICATION:Lio/sentry/hints/EventDropReason;

    invoke-static {p2, v4}, Lio/sentry/util/HintUtils;->setEventDropReason(Lio/sentry/Hint;Lio/sentry/hints/EventDropReason;)V

    .line 61
    const/4 v4, 0x0

    return-object v4

    .line 63
    :cond_4
    iget-object v4, p0, Lio/sentry/DeduplicateMultithreadedEventProcessor;->processedEvents:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-object p1
.end method
