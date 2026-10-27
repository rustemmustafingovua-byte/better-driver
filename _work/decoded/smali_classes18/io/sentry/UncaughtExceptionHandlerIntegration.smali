.class public final Lio/sentry/UncaughtExceptionHandlerIntegration;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandlerIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;
    }
.end annotation


# static fields
.field private static final lock:Lio/sentry/util/AutoClosableReentrantLock;


# instance fields
.field private defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private options:Lio/sentry/SentryOptions;

.field private registered:Z

.field private scopes:Lio/sentry/IScopes;

.field private final threadAdapter:Lio/sentry/UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    sput-object v0, Lio/sentry/UncaughtExceptionHandlerIntegration;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-static {}, Lio/sentry/UncaughtExceptionHandler$Adapter;->getInstance()Lio/sentry/UncaughtExceptionHandler;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/UncaughtExceptionHandlerIntegration;-><init>(Lio/sentry/UncaughtExceptionHandler;)V

    .line 44
    return-void
.end method

.method constructor <init>(Lio/sentry/UncaughtExceptionHandler;)V
    .locals 1
    .param p1, "threadAdapter"    # Lio/sentry/UncaughtExceptionHandler;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->registered:Z

    .line 47
    iput-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->threadAdapter:Lio/sentry/UncaughtExceptionHandler;

    .line 48
    return-void
.end method

.method static getUnhandledThrowable(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .line 167
    new-instance v0, Lio/sentry/protocol/Mechanism;

    invoke-direct {v0}, Lio/sentry/protocol/Mechanism;-><init>()V

    .line 168
    .local v0, "mechanism":Lio/sentry/protocol/Mechanism;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setHandled(Ljava/lang/Boolean;)V

    .line 169
    const-string v1, "UncaughtExceptionHandler"

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    .line 170
    new-instance v1, Lio/sentry/exception/ExceptionMechanismException;

    invoke-direct {v1, v0, p1, p0}, Lio/sentry/exception/ExceptionMechanismException;-><init>(Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;Ljava/lang/Thread;)V

    return-object v1
.end method

.method private removeFromHandlerTree(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1
    .param p1, "currentHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 201
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/sentry/UncaughtExceptionHandlerIntegration;->removeFromHandlerTree(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/util/Set;)V

    .line 202
    return-void
.end method

.method private removeFromHandlerTree(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/util/Set;)V
    .locals 5
    .param p1, "currentHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            "Ljava/util/Set<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p2, "visited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread$UncaughtExceptionHandler;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 224
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Found no UncaughtExceptionHandler to remove."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :cond_0
    return-void

    .line 230
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 231
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 233
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    .line 234
    const-string v3, "Cycle detected in UncaughtExceptionHandler chain while removing handler."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    :cond_2
    return-void

    .line 241
    :cond_3
    instance-of v1, p1, Lio/sentry/UncaughtExceptionHandlerIntegration;

    if-nez v1, :cond_4

    .line 242
    return-void

    .line 245
    :cond_4
    move-object v1, p1

    check-cast v1, Lio/sentry/UncaughtExceptionHandlerIntegration;

    .line 248
    .local v1, "currentHandlerIntegration":Lio/sentry/UncaughtExceptionHandlerIntegration;
    iget-object v2, v1, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-ne p0, v2, :cond_5

    .line 249
    iget-object v2, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v2, v1, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 250
    iget-object v2, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v2, :cond_6

    .line 251
    iget-object v2, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "UncaughtExceptionHandlerIntegration removed."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    :cond_5
    iget-object v0, v1, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0, v0, p2}, Lio/sentry/UncaughtExceptionHandlerIntegration;->removeFromHandlerTree(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/util/Set;)V

    .line 256
    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 181
    sget-object v0, Lio/sentry/UncaughtExceptionHandlerIntegration;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 182
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->threadAdapter:Lio/sentry/UncaughtExceptionHandler;

    invoke-interface {v1}, Lio/sentry/UncaughtExceptionHandler;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 183
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->threadAdapter:Lio/sentry/UncaughtExceptionHandler;

    iget-object v2, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, v2}, Lio/sentry/UncaughtExceptionHandler;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 185
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 187
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "UncaughtExceptionHandlerIntegration removed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 188
    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->threadAdapter:Lio/sentry/UncaughtExceptionHandler;

    invoke-interface {v1}, Lio/sentry/UncaughtExceptionHandler;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/sentry/UncaughtExceptionHandlerIntegration;->removeFromHandlerTree(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 194
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    return-void

    .line 181
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method

.method public final register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 7
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 54
    iget-boolean v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->registered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 55
    nop

    .line 56
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 57
    const-string v3, "Attempt to register a UncaughtExceptionHandlerIntegration twice."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->registered:Z

    .line 64
    const-string v0, "Scopes are required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScopes;

    iput-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->scopes:Lio/sentry/IScopes;

    .line 65
    const-string v0, "SentryOptions is required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 67
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 68
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v3, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 72
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->isEnableUncaughtExceptionHandler()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 69
    const-string v4, "UncaughtExceptionHandlerIntegration enabled: %s"

    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableUncaughtExceptionHandler()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    sget-object v0, Lio/sentry/UncaughtExceptionHandlerIntegration;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 76
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v2, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->threadAdapter:Lio/sentry/UncaughtExceptionHandler;

    .line 77
    invoke-interface {v2}, Lio/sentry/UncaughtExceptionHandler;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 78
    .local v2, "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v2, :cond_3

    .line 79
    iget-object v3, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 80
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "default UncaughtExceptionHandler class=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 84
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    .line 81
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    instance-of v3, v2, Lio/sentry/UncaughtExceptionHandlerIntegration;

    if-eqz v3, :cond_2

    .line 87
    move-object v3, v2

    check-cast v3, Lio/sentry/UncaughtExceptionHandlerIntegration;

    .line 89
    .local v3, "currentHandlerIntegration":Lio/sentry/UncaughtExceptionHandlerIntegration;
    iget-object v4, v3, Lio/sentry/UncaughtExceptionHandlerIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v4, :cond_1

    .line 90
    invoke-interface {p1}, Lio/sentry/IScopes;->getGlobalScope()Lio/sentry/IScope;

    move-result-object v4

    iget-object v5, v3, Lio/sentry/UncaughtExceptionHandlerIntegration;->scopes:Lio/sentry/IScopes;

    invoke-interface {v5}, Lio/sentry/IScopes;->getGlobalScope()Lio/sentry/IScope;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 91
    iget-object v4, v3, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v4, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_0

    .line 93
    :cond_1
    iput-object v2, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 95
    .end local v3    # "currentHandlerIntegration":Lio/sentry/UncaughtExceptionHandlerIntegration;
    :goto_0
    goto :goto_1

    .line 96
    :cond_2
    iput-object v2, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 100
    :cond_3
    :goto_1
    iget-object v3, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->threadAdapter:Lio/sentry/UncaughtExceptionHandler;

    invoke-interface {v3, p0}, Lio/sentry/UncaughtExceptionHandler;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v2    # "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 103
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_4
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 104
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 105
    const-string v3, "UncaughtExceptionHandlerIntegration installed."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    const-string v0, "UncaughtExceptionHandler"

    invoke-static {v0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    goto :goto_3

    .line 75
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v1

    .line 108
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_6
    :goto_3
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 13
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .line 112
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "Uncaught exception received."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :try_start_0
    new-instance v0, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;

    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 117
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    move-result-wide v1

    iget-object v4, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;-><init>(JLio/sentry/ILogger;)V

    .line 118
    .local v0, "exceptionHint":Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;
    invoke-static {p1, p2}, Lio/sentry/UncaughtExceptionHandlerIntegration;->getUnhandledThrowable(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 119
    .local v1, "throwable":Ljava/lang/Throwable;
    new-instance v2, Lio/sentry/SentryEvent;

    invoke-direct {v2, v1}, Lio/sentry/SentryEvent;-><init>(Ljava/lang/Throwable;)V

    .line 120
    .local v2, "event":Lio/sentry/SentryEvent;
    sget-object v4, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    invoke-virtual {v2, v4}, Lio/sentry/SentryEvent;->setLevel(Lio/sentry/SentryLevel;)V

    .line 122
    iget-object v4, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->scopes:Lio/sentry/IScopes;

    invoke-interface {v4}, Lio/sentry/IScopes;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v4

    .line 123
    .local v4, "transaction":Lio/sentry/ITransaction;
    if-nez v4, :cond_0

    invoke-virtual {v2}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 125
    invoke-virtual {v2}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;->setFlushable(Lio/sentry/protocol/SentryId;)V

    .line 127
    :cond_0
    invoke-static {v0}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v5

    .line 129
    .local v5, "hint":Lio/sentry/Hint;
    iget-object v6, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->scopes:Lio/sentry/IScopes;

    invoke-interface {v6, v2, v5}, Lio/sentry/IScopes;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v6

    .line 130
    .local v6, "sentryId":Lio/sentry/protocol/SentryId;
    sget-object v7, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v6, v7}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 131
    .local v7, "isEventDropped":Z
    invoke-static {v5}, Lio/sentry/util/HintUtils;->getEventDropReason(Lio/sentry/Hint;)Lio/sentry/hints/EventDropReason;

    move-result-object v8

    .line 134
    .local v8, "eventDropReason":Lio/sentry/hints/EventDropReason;
    if-eqz v7, :cond_1

    sget-object v9, Lio/sentry/hints/EventDropReason;->MULTITHREADED_DEDUPLICATION:Lio/sentry/hints/EventDropReason;

    .line 135
    invoke-virtual {v9, v8}, Lio/sentry/hints/EventDropReason;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 137
    :cond_1
    invoke-virtual {v0}, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;->waitFlush()Z

    move-result v9

    if-nez v9, :cond_2

    .line 138
    iget-object v9, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 139
    invoke-virtual {v9}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v9

    sget-object v10, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v11, "Timed out waiting to flush event to disk before crashing. Event: %s"

    .line 143
    invoke-virtual {v2}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    .line 140
    invoke-interface {v9, v10, v11, v12}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v0    # "exceptionHint":Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;
    .end local v1    # "throwable":Ljava/lang/Throwable;
    .end local v2    # "event":Lio/sentry/SentryEvent;
    .end local v4    # "transaction":Lio/sentry/ITransaction;
    .end local v5    # "hint":Lio/sentry/Hint;
    .end local v6    # "sentryId":Lio/sentry/protocol/SentryId;
    .end local v7    # "isEventDropped":Z
    .end local v8    # "eventDropReason":Lio/sentry/hints/EventDropReason;
    :cond_2
    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 148
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 149
    const-string v4, "Error sending uncaught exception to Sentry."

    invoke-interface {v1, v2, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "Invoking inner uncaught exception handler."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 156
    :cond_3
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isPrintUncaughtStackTrace()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    :cond_4
    :goto_1
    return-void
.end method
