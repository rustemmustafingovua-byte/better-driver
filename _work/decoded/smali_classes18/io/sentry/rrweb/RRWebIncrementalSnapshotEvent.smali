.class public abstract Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;
.super Lio/sentry/rrweb/RRWebEvent;
.source "RRWebIncrementalSnapshotEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;,
        Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Deserializer;,
        Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Serializer;,
        Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$JsonKeys;
    }
.end annotation


# instance fields
.field private source:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;


# direct methods
.method public constructor <init>(Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;)V
    .locals 1
    .param p1, "source"    # Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 55
    sget-object v0, Lio/sentry/rrweb/RRWebEventType;->IncrementalSnapshot:Lio/sentry/rrweb/RRWebEventType;

    invoke-direct {p0, v0}, Lio/sentry/rrweb/RRWebEvent;-><init>(Lio/sentry/rrweb/RRWebEventType;)V

    .line 56
    iput-object p1, p0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;->source:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;)Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;
    .locals 1
    .param p0, "x0"    # Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;

    .line 12
    iget-object v0, p0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;->source:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    return-object v0
.end method

.method static synthetic access$002(Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;)Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;
    .locals 0
    .param p0, "x0"    # Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;
    .param p1, "x1"    # Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 12
    iput-object p1, p0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;->source:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    return-object p1
.end method


# virtual methods
.method public getSource()Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;->source:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    return-object v0
.end method

.method public setSource(Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;)V
    .locals 0
    .param p1, "source"    # Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 64
    iput-object p1, p0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;->source:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 65
    return-void
.end method
