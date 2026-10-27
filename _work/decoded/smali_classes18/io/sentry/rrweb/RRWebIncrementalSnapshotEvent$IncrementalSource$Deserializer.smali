.class public final Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource$Deserializer;
.super Ljava/lang/Object;
.source "RRWebIncrementalSnapshotEvent.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;
    .locals 2
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-static {}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->values()[Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    move-result-object v0

    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    move-result-object p1

    return-object p1
.end method
