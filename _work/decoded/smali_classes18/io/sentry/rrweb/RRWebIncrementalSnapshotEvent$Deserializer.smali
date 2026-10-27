.class public final Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Deserializer;
.super Ljava/lang/Object;
.source "RRWebIncrementalSnapshotEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeValue(Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z
    .locals 2
    .param p1, "baseEvent"    # Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;
    .param p2, "nextName"    # Ljava/lang/String;
    .param p3, "reader"    # Lio/sentry/ObjectReader;
    .param p4, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    const-string v0, "source"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource$Deserializer;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource$Deserializer;-><init>()V

    .line 92
    invoke-interface {p3, p4, v0}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 91
    const-string v1, ""

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 90
    invoke-static {p1, v0}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;->access$002(Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;)Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 93
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
