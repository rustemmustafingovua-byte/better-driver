.class public final Lio/sentry/android/core/MemoryLimiterIntegration;
.super Ljava/lang/Object;
.source "MemoryLimiterIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;,
        Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterHint;
    }
.end annotation


# static fields
.field static final MEMORY_LIMITER_DESCRIPTION:Ljava/lang/String; = "MemoryLimiter:AnonSwap"

.field static final MEMORY_LIMITER_DESCRIPTION_PREFIX:Ljava/lang/String; = "MemoryLimiter:"

.field static final MEMORY_LIMITER_FINGERPRINT:Ljava/lang/String; = "memory-limiter"

.field static final MEMORY_LIMITER_MECHANISM:Ljava/lang/String; = "memory_limiter"

.field static final MEMORY_LIMITER_MESSAGE_PREFIX:Ljava/lang/String; = "Android process killed by MemoryLimiter"

.field static final MEMORY_LIMIT_CLASS_CACHED:Ljava/lang/String; = "cached"

.field static final MEMORY_LIMIT_CLASS_DATA_KEY:Ljava/lang/String; = "memory_limit_class"

.field static final MEMORY_LIMIT_CLASS_NOT_VISIBLE:Ljava/lang/String; = "not_visible"

.field static final MEMORY_LIMIT_CLASS_VISIBLE:Ljava/lang/String; = "visible"

.field static final PROCESS_IMPORTANCE_DATA_KEY:Ljava/lang/String; = "process_importance"

.field static final PROCESS_IMPORTANCE_FINGERPRINT_PREFIX:Ljava/lang/String; = "process_importance:"


# instance fields
.field private androidOptions:Lio/sentry/android/core/SentryAndroidOptions;

.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final context:Landroid/content/Context;

.field private final dateProvider:Lio/sentry/transport/ICurrentDateProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 96
    invoke-static {}, Lio/sentry/transport/CurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lio/sentry/android/core/MemoryLimiterIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/android/core/BuildInfoProvider;)V

    .line 97
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dateProvider"    # Lio/sentry/transport/ICurrentDateProvider;
    .param p3, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->context:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 106
    iput-object p3, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 107
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

    .line 164
    iget-object v0, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->androidOptions:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->androidOptions:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MemoryLimiterIntegration removed."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :cond_0
    return-void
.end method

.method public register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 10
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 111
    nop

    .line 113
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 112
    :goto_0
    const-string v2, "SentryAndroidOptions is required"

    invoke-static {v0, v2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->androidOptions:Lio/sentry/android/core/SentryAndroidOptions;

    .line 116
    iget-object v0, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->androidOptions:Lio/sentry/android/core/SentryAndroidOptions;

    .line 117
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v3, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->androidOptions:Lio/sentry/android/core/SentryAndroidOptions;

    .line 119
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->isMemoryLimiterEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 118
    const-string v4, "MemoryLimiterIntegration enabled: %s"

    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->androidOptions:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isMemoryLimiterEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v2, 0x25

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    .line 126
    iget-object v0, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->androidOptions:Lio/sentry/android/core/SentryAndroidOptions;

    .line 127
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v2, v3, [Ljava/lang/Object;

    .line 128
    const-string v3, "MemoryLimiter is only supported on Android API 37 and above. Skipping registration."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->androidOptions:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 135
    iget-object v0, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->androidOptions:Lio/sentry/android/core/SentryAndroidOptions;

    .line 136
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v2, v3, [Ljava/lang/Object;

    .line 137
    const-string v3, "Cache dir is not set, unable to process MemoryLimiter exits. Skipping registration."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    return-void

    .line 144
    :cond_3
    nop

    .line 145
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v4, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;

    iget-object v5, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->context:Landroid/content/Context;

    iget-object v7, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->androidOptions:Lio/sentry/android/core/SentryAndroidOptions;

    iget-object v8, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    new-instance v9, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;

    iget-object v2, p0, Lio/sentry/android/core/MemoryLimiterIntegration;->androidOptions:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {v9, v2, v1}, Lio/sentry/android/core/MemoryLimiterIntegration$MemoryLimiterPolicy;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/MemoryLimiterIntegration$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, p1

    .end local p1    # "scopes":Lio/sentry/IScopes;
    .local v6, "scopes":Lio/sentry/IScopes;
    :try_start_1
    invoke-direct/range {v4 .. v9}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;-><init>(Landroid/content/Context;Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;)V

    .line 146
    invoke-interface {v0, v4}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    goto :goto_2

    .line 153
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v6    # "scopes":Lio/sentry/IScopes;
    .restart local p1    # "scopes":Lio/sentry/IScopes;
    :catchall_1
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    .line 154
    .restart local v6    # "scopes":Lio/sentry/IScopes;
    .local p1, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {p1}, Lio/sentry/util/ExceptionUtils;->rethrowIfFatal(Ljava/lang/Throwable;)V

    .line 155
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "Failed to start MemoryLimiter processor."

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .end local p1    # "e":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "MemoryLimiterIntegration installed."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    const-string p1, "MemoryLimiter"

    invoke-static {p1}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 160
    return-void
.end method
