.class final Lio/sentry/MovePreviousSession;
.super Ljava/lang/Object;
.source "MovePreviousSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/sentry/MovePreviousSession;->options:Lio/sentry/SentryOptions;

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 20
    iget-object v0, p0, Lio/sentry/MovePreviousSession;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "cacheDirPath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 22
    iget-object v1, p0, Lio/sentry/MovePreviousSession;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Cache dir is not set, not moving the previous session."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lio/sentry/MovePreviousSession;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object v1

    .line 27
    .local v1, "cache":Lio/sentry/cache/IEnvelopeCache;
    instance-of v2, v1, Lio/sentry/cache/EnvelopeCache;

    if-eqz v2, :cond_1

    .line 28
    invoke-static {v0}, Lio/sentry/cache/EnvelopeCache;->getCurrentSessionFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 29
    .local v2, "currentSessionFile":Ljava/io/File;
    invoke-static {v0}, Lio/sentry/cache/EnvelopeCache;->getPreviousSessionFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 31
    .local v3, "previousSessionFile":Ljava/io/File;
    move-object v4, v1

    check-cast v4, Lio/sentry/cache/EnvelopeCache;

    invoke-virtual {v4, v2, v3}, Lio/sentry/cache/EnvelopeCache;->movePreviousSession(Ljava/io/File;Ljava/io/File;)V

    .line 33
    move-object v4, v1

    check-cast v4, Lio/sentry/cache/EnvelopeCache;

    invoke-virtual {v4}, Lio/sentry/cache/EnvelopeCache;->flushPreviousSession()V

    .line 35
    .end local v2    # "currentSessionFile":Ljava/io/File;
    .end local v3    # "previousSessionFile":Ljava/io/File;
    :cond_1
    return-void
.end method
