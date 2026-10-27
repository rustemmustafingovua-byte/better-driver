.class public final Lio/sentry/rrweb/RRWebEvent$Serializer;
.super Ljava/lang/Object;
.source "RRWebEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Serializer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lio/sentry/rrweb/RRWebEvent;Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .param p1, "baseEvent"    # Lio/sentry/rrweb/RRWebEvent;
    .param p2, "writer"    # Lio/sentry/ObjectWriter;
    .param p3, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const-string v0, "type"

    invoke-interface {p2, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/rrweb/RRWebEvent;->access$000(Lio/sentry/rrweb/RRWebEvent;)Lio/sentry/rrweb/RRWebEventType;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 68
    const-string v0, "timestamp"

    invoke-interface {p2, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/rrweb/RRWebEvent;->access$100(Lio/sentry/rrweb/RRWebEvent;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 69
    return-void
.end method
