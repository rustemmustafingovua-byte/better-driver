.class public final Lio/sentry/SentryWrapper;
.super Ljava/lang/Object;
.source "SentryWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$wrapCallable$0(Lio/sentry/IScopes;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .param p0, "newScopes"    # Lio/sentry/IScopes;
    .param p1, "callable"    # Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-interface {p0}, Lio/sentry/IScopes;->makeCurrent()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 36
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 36
    :cond_0
    return-object v1

    .line 35
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method static synthetic lambda$wrapRunnable$2(Lio/sentry/IScopes;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "newScopes"    # Lio/sentry/IScopes;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 74
    invoke-interface {p0}, Lio/sentry/IScopes;->makeCurrent()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 75
    .local v0, "ignore":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 77
    .end local v0    # "ignore":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 74
    .restart local v0    # "ignore":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method static synthetic lambda$wrapSupplier$1(Lio/sentry/IScopes;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 3
    .param p0, "newScopes"    # Lio/sentry/IScopes;
    .param p1, "supplier"    # Ljava/util/function/Supplier;

    .line 55
    invoke-interface {p0}, Lio/sentry/IScopes;->makeCurrent()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 56
    .local v0, "ignore":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 56
    :cond_0
    return-object v1

    .line 55
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static wrapCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation

    .line 32
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TU;>;"
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    const-string v1, "SentryWrapper.wrapCallable"

    invoke-interface {v0, v1}, Lio/sentry/IScopes;->forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v0

    .line 34
    .local v0, "newScopes":Lio/sentry/IScopes;
    new-instance v1, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda0;-><init>(Lio/sentry/IScopes;Ljava/util/concurrent/Callable;)V

    return-object v1
.end method

.method public static wrapRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 71
    const-string v0, "SentryWrapper.wrapRunnable"

    invoke-static {v0}, Lio/sentry/Sentry;->forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v0

    .line 73
    .local v0, "newScopes":Lio/sentry/IScopes;
    new-instance v1, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p0}, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda2;-><init>(Lio/sentry/IScopes;Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public static wrapSupplier(Ljava/util/function/Supplier;)Ljava/util/function/Supplier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TU;>;)",
            "Ljava/util/function/Supplier<",
            "TU;>;"
        }
    .end annotation

    .line 52
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    const-string v0, "SentryWrapper.wrapSupplier"

    invoke-static {v0}, Lio/sentry/Sentry;->forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v0

    .line 54
    .local v0, "newScopes":Lio/sentry/IScopes;
    new-instance v1, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0}, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda1;-><init>(Lio/sentry/IScopes;Ljava/util/function/Supplier;)V

    return-object v1
.end method
