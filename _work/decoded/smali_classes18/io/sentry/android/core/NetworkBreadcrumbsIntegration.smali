.class public final Lio/sentry/android/core/NetworkBreadcrumbsIntegration;
.super Ljava/lang/Object;
.source "NetworkBreadcrumbsIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;,
        Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;
    }
.end annotation


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final context:Landroid/content/Context;

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field volatile networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

.field private options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 42
    nop

    .line 43
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Context is required"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->context:Landroid/content/Context;

    .line 44
    nop

    .line 45
    const-string v0, "BuildInfoProvider is required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/BuildInfoProvider;

    iput-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 98
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    .line 99
    .local v1, "callbackRef":Landroid/net/ConnectivityManager$NetworkCallback;
    const/4 v2, 0x0

    iput-object v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 102
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    if-eqz v1, :cond_1

    .line 103
    invoke-static {v1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->removeNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 105
    :cond_1
    return-void

    .line 97
    .end local v1    # "callbackRef":Landroid/net/ConnectivityManager$NetworkCallback;
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 7
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 50
    const-string v0, "Scopes are required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 56
    .local v0, "androidOptions":Lio/sentry/android/core/SentryAndroidOptions;
    iput-object p2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->options:Lio/sentry/SentryOptions;

    .line 58
    nop

    .line 59
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 63
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNetworkEventBreadcrumbs()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 60
    const-string v4, "NetworkBreadcrumbsIntegration enabled: %s"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNetworkEventBreadcrumbs()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v1

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 69
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "NetworkCallbacks need Android N+."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 74
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    new-instance v2, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    iget-object v4, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 76
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v5

    invoke-direct {v2, p1, v4, v5}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;-><init>(Lio/sentry/IScopes;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/SentryDateProvider;)V

    iput-object v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    .line 78
    iget-object v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->context:Landroid/content/Context;

    .line 80
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    iget-object v5, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    iget-object v6, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    .line 79
    invoke-static {v2, v4, v5, v6}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->addNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Landroid/net/ConnectivityManager$NetworkCallback;)Z

    move-result v2

    .line 81
    .local v2, "registered":Z
    if-eqz v2, :cond_2

    .line 82
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "NetworkBreadcrumbsIntegration installed."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    const-string v3, "NetworkBreadcrumbs"

    invoke-static {v3}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    goto :goto_1

    .line 85
    :cond_2
    nop

    .line 86
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "NetworkBreadcrumbsIntegration not installed."

    new-array v3, v3, [Ljava/lang/Object;

    .line 87
    invoke-interface {v4, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v2    # "registered":Z
    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_3

    .line 73
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v2

    .line 92
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_4
    :goto_3
    return-void
.end method
