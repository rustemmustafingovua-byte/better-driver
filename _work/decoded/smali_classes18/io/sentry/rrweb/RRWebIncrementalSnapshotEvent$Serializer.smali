.class public final Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Serializer;
.super Ljava/lang/Object;
.source "RRWebIncrementalSnapshotEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Serializer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 2
    .param p1, "baseEvent"    # Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;
    .param p2, "writer"    # Lio/sentry/ObjectWriter;
    .param p3, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const-string v0, "source"

    invoke-interface {p2, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;->access$000(Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;)Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 79
    return-void
.end method
