.class final Lio/sentry/android/core/EnvelopeFileObserver;
.super Landroid/os/FileObserver;
.source "EnvelopeFileObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;
    }
.end annotation


# instance fields
.field private final envelopeSender:Lio/sentry/IEnvelopeSender;

.field private final flushTimeoutMillis:J

.field private final logger:Lio/sentry/ILogger;

.field private final rootPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/sentry/IEnvelopeSender;Lio/sentry/ILogger;J)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "envelopeSender"    # Lio/sentry/IEnvelopeSender;
    .param p3, "logger"    # Lio/sentry/ILogger;
    .param p4, "flushTimeoutMillis"    # J

    .line 38
    invoke-direct {p0, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lio/sentry/android/core/EnvelopeFileObserver;->rootPath:Ljava/lang/String;

    .line 40
    const-string v0, "Envelope sender is required."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IEnvelopeSender;

    iput-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserver;->envelopeSender:Lio/sentry/IEnvelopeSender;

    .line 41
    const-string v0, "Logger is required."

    invoke-static {p3, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ILogger;

    iput-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserver;->logger:Lio/sentry/ILogger;

    .line 42
    iput-wide p4, p0, Lio/sentry/android/core/EnvelopeFileObserver;->flushTimeoutMillis:J

    .line 43
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5
    .param p1, "eventType"    # I
    .param p2, "relativePath"    # Ljava/lang/String;

    .line 47
    if-eqz p2, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserver;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/android/core/EnvelopeFileObserver;->rootPath:Ljava/lang/String;

    filled-new-array {v2, v3, p2}, [Ljava/lang/Object;

    move-result-object v2

    .line 51
    const-string v3, "onEvent fired for EnvelopeFileObserver with event type %d on path: %s for file %s."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    new-instance v0, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;

    iget-wide v1, p0, Lio/sentry/android/core/EnvelopeFileObserver;->flushTimeoutMillis:J

    iget-object v3, p0, Lio/sentry/android/core/EnvelopeFileObserver;->logger:Lio/sentry/ILogger;

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;-><init>(JLio/sentry/ILogger;)V

    .line 62
    .local v0, "cachedHint":Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;
    invoke-static {v0}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v1

    .line 64
    .local v1, "hint":Lio/sentry/Hint;
    iget-object v2, p0, Lio/sentry/android/core/EnvelopeFileObserver;->envelopeSender:Lio/sentry/IEnvelopeSender;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lio/sentry/android/core/EnvelopeFileObserver;->rootPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lio/sentry/IEnvelopeSender;->processEnvelopeFile(Ljava/lang/String;Lio/sentry/Hint;)V

    .line 65
    return-void

    .line 48
    .end local v0    # "cachedHint":Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;
    .end local v1    # "hint":Lio/sentry/Hint;
    :cond_1
    :goto_0
    return-void
.end method
