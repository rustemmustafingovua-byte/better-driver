.class public final Lio/sentry/transport/StdoutTransport;
.super Ljava/lang/Object;
.source "StdoutTransport.java"

# interfaces
.implements Lio/sentry/transport/ITransport;


# instance fields
.field private final serializer:Lio/sentry/ISerializer;


# direct methods
.method public constructor <init>(Lio/sentry/ISerializer;)V
    .locals 1
    .param p1, "serializer"    # Lio/sentry/ISerializer;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "Serializer is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISerializer;

    iput-object v0, p0, Lio/sentry/transport/StdoutTransport;->serializer:Lio/sentry/ISerializer;

    .line 17
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 43
    return-void
.end method

.method public close(Z)V
    .locals 0
    .param p1, "isRestarting"    # Z

    .line 46
    return-void
.end method

.method public flush(J)V
    .locals 2
    .param p1, "timeoutMillis"    # J

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Flushing"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public getRateLimiter()Lio/sentry/transport/RateLimiter;
    .locals 1

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public send(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 2
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    const-string v0, "SentryEnvelope is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    :try_start_0
    iget-object v0, p0, Lio/sentry/transport/StdoutTransport;->serializer:Lio/sentry/ISerializer;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0, p1, v1}, Lio/sentry/ISerializer;->serialize(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 30
    :goto_0
    return-void
.end method
