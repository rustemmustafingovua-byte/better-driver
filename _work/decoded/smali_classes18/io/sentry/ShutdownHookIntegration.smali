.class public final Lio/sentry/ShutdownHookIntegration;
.super Ljava/lang/Object;
.source "ShutdownHookIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# instance fields
.field private final runtime:Ljava/lang/Runtime;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/ShutdownHookIntegration;-><init>(Ljava/lang/Runtime;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runtime;)V
    .locals 1
    .param p1, "runtime"    # Ljava/lang/Runtime;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "Runtime is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runtime;

    iput-object v0, p0, Lio/sentry/ShutdownHookIntegration;->runtime:Ljava/lang/Runtime;

    .line 23
    return-void
.end method

.method private handleShutdownInProgress(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 57
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 62
    const-string v2, "Shutdown in progress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    const-string v2, "VM already shutting down"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 66
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "message":Ljava/lang/String;
    :cond_1
    throw v0
.end method

.method static synthetic lambda$register$0(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 2
    .param p0, "scopes"    # Lio/sentry/IScopes;
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 36
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lio/sentry/IScopes;->flush(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lio/sentry/ShutdownHookIntegration;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lio/sentry/ShutdownHookIntegration$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/sentry/ShutdownHookIntegration$$ExternalSyntheticLambda2;-><init>(Lio/sentry/ShutdownHookIntegration;)V

    invoke-direct {p0, v0}, Lio/sentry/ShutdownHookIntegration;->handleShutdownInProgress(Ljava/lang/Runnable;)V

    .line 53
    :cond_0
    return-void
.end method

.method getHook()Ljava/lang/Thread;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/sentry/ShutdownHookIntegration;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method synthetic lambda$close$2$io-sentry-ShutdownHookIntegration()V
    .locals 2

    .line 51
    iget-object v0, p0, Lio/sentry/ShutdownHookIntegration;->runtime:Ljava/lang/Runtime;

    iget-object v1, p0, Lio/sentry/ShutdownHookIntegration;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    return-void
.end method

.method synthetic lambda$register$1$io-sentry-ShutdownHookIntegration(Lio/sentry/SentryOptions;)V
    .locals 4
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 39
    iget-object v0, p0, Lio/sentry/ShutdownHookIntegration;->runtime:Ljava/lang/Runtime;

    iget-object v1, p0, Lio/sentry/ShutdownHookIntegration;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 40
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShutdownHookIntegration installed."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    const-string v0, "ShutdownHook"

    invoke-static {v0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 4
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 31
    const-string v0, "Scopes are required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    const-string v0, "SentryOptions is required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableShutdownHook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/sentry/ShutdownHookIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lio/sentry/ShutdownHookIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V

    const-string v2, "sentry-shutdownhook"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/ShutdownHookIntegration;->thread:Ljava/lang/Thread;

    .line 37
    new-instance v0, Lio/sentry/ShutdownHookIntegration$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lio/sentry/ShutdownHookIntegration$$ExternalSyntheticLambda1;-><init>(Lio/sentry/ShutdownHookIntegration;Lio/sentry/SentryOptions;)V

    invoke-direct {p0, v0}, Lio/sentry/ShutdownHookIntegration;->handleShutdownInProgress(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "enableShutdownHook is disabled."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :goto_0
    return-void
.end method
