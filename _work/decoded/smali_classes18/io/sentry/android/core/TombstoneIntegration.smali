.class public Lio/sentry/android/core/TombstoneIntegration;
.super Ljava/lang/Object;
.source "TombstoneIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;,
        Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final dateProvider:Lio/sentry/transport/ICurrentDateProvider;

.field private options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-static {}, Lio/sentry/transport/CurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/TombstoneIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;)V

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dateProvider"    # Lio/sentry/transport/ICurrentDateProvider;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/TombstoneIntegration;->context:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lio/sentry/android/core/TombstoneIntegration;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 67
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lio/sentry/android/core/TombstoneIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lio/sentry/android/core/TombstoneIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "TombstoneIntegration removed."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :cond_0
    return-void
.end method

.method public register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 9
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 71
    nop

    .line 73
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/TombstoneIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 76
    iget-object v0, p0, Lio/sentry/android/core/TombstoneIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 77
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v2, p0, Lio/sentry/android/core/TombstoneIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 81
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isTombstoneEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 78
    const-string v3, "TombstoneIntegration enabled: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lio/sentry/android/core/TombstoneIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isTombstoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lio/sentry/android/core/TombstoneIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lio/sentry/android/core/TombstoneIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 86
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 87
    const-string v3, "Cache dir is not set, unable to process Tombstones"

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return-void

    .line 92
    :cond_1
    nop

    .line 93
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v2, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;

    iget-object v3, p0, Lio/sentry/android/core/TombstoneIntegration;->context:Landroid/content/Context;

    iget-object v5, p0, Lio/sentry/android/core/TombstoneIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    iget-object v6, p0, Lio/sentry/android/core/TombstoneIntegration;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    new-instance v7, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;

    iget-object v4, p0, Lio/sentry/android/core/TombstoneIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    iget-object v8, p0, Lio/sentry/android/core/TombstoneIntegration;->context:Landroid/content/Context;

    invoke-direct {v7, v4, v8}, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, p1

    .end local p1    # "scopes":Lio/sentry/IScopes;
    .local v4, "scopes":Lio/sentry/IScopes;
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;-><init>(Landroid/content/Context;Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;)V

    .line 94
    invoke-interface {v0, v2}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    goto :goto_2

    .line 101
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v4    # "scopes":Lio/sentry/IScopes;
    .restart local p1    # "scopes":Lio/sentry/IScopes;
    :catchall_1
    move-exception v0

    move-object v4, p1

    move-object p1, v0

    .line 102
    .restart local v4    # "scopes":Lio/sentry/IScopes;
    .local p1, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Failed to start tombstone processor."

    invoke-interface {v0, v2, v3, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .end local p1    # "e":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "TombstoneIntegration installed."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    const-string p1, "Tombstone"

    invoke-static {p1}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    goto :goto_3

    .line 83
    .end local v4    # "scopes":Lio/sentry/IScopes;
    .local p1, "scopes":Lio/sentry/IScopes;
    :cond_2
    move-object v4, p1

    .line 107
    .end local p1    # "scopes":Lio/sentry/IScopes;
    .restart local v4    # "scopes":Lio/sentry/IScopes;
    :goto_3
    return-void
.end method
