.class public final Lio/sentry/util/EventProcessorUtils;
.super Ljava/lang/Object;
.source "EventProcessorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unwrap(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;",
            ">;)",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;"
        }
    .end annotation

    .line 16
    .local p0, "orderedEventProcessor":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v0, "eventProcessors":Ljava/util/List;, "Ljava/util/List<Lio/sentry/EventProcessor;>;"
    if-eqz p0, :cond_0

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;

    .line 20
    .local v2, "eventProcessorAndOrder":Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;
    invoke-virtual {v2}, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->getEventProcessor()Lio/sentry/EventProcessor;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .end local v2    # "eventProcessorAndOrder":Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method
