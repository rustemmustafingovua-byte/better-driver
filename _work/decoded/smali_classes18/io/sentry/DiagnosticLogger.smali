.class public final Lio/sentry/DiagnosticLogger;
.super Ljava/lang/Object;
.source "DiagnosticLogger.java"

# interfaces
.implements Lio/sentry/ILogger;


# instance fields
.field private final logger:Lio/sentry/ILogger;

.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/ILogger;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "logger"    # Lio/sentry/ILogger;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "SentryOptions is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/DiagnosticLogger;->options:Lio/sentry/SentryOptions;

    .line 23
    iput-object p2, p0, Lio/sentry/DiagnosticLogger;->logger:Lio/sentry/ILogger;

    .line 24
    return-void
.end method


# virtual methods
.method public getLogger()Lio/sentry/ILogger;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/sentry/DiagnosticLogger;->logger:Lio/sentry/ILogger;

    return-object v0
.end method

.method public isEnabled(Lio/sentry/SentryLevel;)Z
    .locals 4
    .param p1, "level"    # Lio/sentry/SentryLevel;

    .line 36
    iget-object v0, p0, Lio/sentry/DiagnosticLogger;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDiagnosticLevel()Lio/sentry/SentryLevel;

    move-result-object v0

    .line 37
    .local v0, "diagLevel":Lio/sentry/SentryLevel;
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 38
    return v1

    .line 40
    :cond_0
    iget-object v2, p0, Lio/sentry/DiagnosticLogger;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lio/sentry/SentryLevel;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Lio/sentry/SentryLevel;->ordinal()I

    move-result v3

    if-lt v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "level"    # Lio/sentry/SentryLevel;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 72
    iget-object v0, p0, Lio/sentry/DiagnosticLogger;->logger:Lio/sentry/ILogger;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lio/sentry/DiagnosticLogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lio/sentry/DiagnosticLogger;->logger:Lio/sentry/ILogger;

    invoke-interface {v0, p1, p2, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :cond_0
    return-void
.end method

.method public varargs log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "level"    # Lio/sentry/SentryLevel;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lio/sentry/DiagnosticLogger;->logger:Lio/sentry/ILogger;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lio/sentry/DiagnosticLogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lio/sentry/DiagnosticLogger;->logger:Lio/sentry/ILogger;

    invoke-interface {v0, p1, p2, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_0
    return-void
.end method

.method public varargs log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "level"    # Lio/sentry/SentryLevel;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lio/sentry/DiagnosticLogger;->logger:Lio/sentry/ILogger;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lio/sentry/DiagnosticLogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lio/sentry/DiagnosticLogger;->logger:Lio/sentry/ILogger;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_0
    return-void
.end method
