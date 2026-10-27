.class public final Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;
.super Ljava/lang/Object;
.source "EventProcessorAndOrder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventProcessor:Lio/sentry/EventProcessor;

.field private final order:J


# direct methods
.method public constructor <init>(Lio/sentry/EventProcessor;Ljava/lang/Long;)V
    .locals 2
    .param p1, "eventProcessor"    # Lio/sentry/EventProcessor;
    .param p2, "order"    # Ljava/lang/Long;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->eventProcessor:Lio/sentry/EventProcessor;

    .line 15
    if-nez p2, :cond_0

    .line 16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->order:J

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->order:J

    .line 20
    :goto_0
    return-void
.end method


# virtual methods
.method public compareTo(Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;)I
    .locals 4
    .param p1, "o"    # Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;

    .line 32
    iget-wide v0, p0, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->order:J

    iget-wide v2, p1, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->order:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 7
    check-cast p1, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;

    invoke-virtual {p0, p1}, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->compareTo(Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;)I

    move-result p1

    return p1
.end method

.method public getEventProcessor()Lio/sentry/EventProcessor;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->eventProcessor:Lio/sentry/EventProcessor;

    return-object v0
.end method

.method public getOrder()Ljava/lang/Long;
    .locals 2

    .line 27
    iget-wide v0, p0, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->order:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
