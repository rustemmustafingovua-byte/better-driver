.class public final Lio/sentry/android/core/NdkIntegration;
.super Ljava/lang/Object;
.source "NdkIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# static fields
.field public static final SENTRY_NDK_CLASS_NAME:Ljava/lang/String; = "io.sentry.android.ndk.SentryNdk"


# instance fields
.field private options:Lio/sentry/android/core/SentryAndroidOptions;

.field private final sentryNdkClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 26
    .local p1, "sentryNdkClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/sentry/android/core/NdkIntegration;->sentryNdkClass:Ljava/lang/Class;

    .line 28
    return-void
.end method

.method private disableNdkIntegration(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableNdk(Z)V

    .line 76
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableScopeSync(Z)V

    .line 77
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNdk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->sentryNdkClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->sentryNdkClass:Ljava/lang/Class;

    const-string v1, "close"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 90
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "NdkIntegration removed."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to close SentryNdk."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    iget-object v1, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 95
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to invoke the SentryNdk.close method."

    .line 96
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, v0}, Lio/sentry/android/core/NdkIntegration;->disableNdkIntegration(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 101
    goto :goto_1

    .line 100
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, v1}, Lio/sentry/android/core/NdkIntegration;->disableNdkIntegration(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 101
    throw v0

    .line 103
    :cond_0
    :goto_1
    return-void
.end method

.method getSentryNdkClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->sentryNdkClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 8
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 32
    const-string v0, "Scopes are required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    nop

    .line 35
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 34
    :goto_0
    const-string v2, "SentryAndroidOptions is required"

    invoke-static {v0, v2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 38
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNdk()Z

    move-result v0

    .line 39
    .local v0, "enabled":Z
    iget-object v2, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NdkIntegration enabled: %s"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    if-eqz v0, :cond_2

    iget-object v2, p0, Lio/sentry/android/core/NdkIntegration;->sentryNdkClass:Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 45
    iget-object v2, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "cachedDir":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 47
    iget-object v1, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "No cache dir path is defined in options."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v1, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, v1}, Lio/sentry/android/core/NdkIntegration;->disableNdkIntegration(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 49
    return-void

    .line 53
    :cond_1
    :try_start_0
    iget-object v4, p0, Lio/sentry/android/core/NdkIntegration;->sentryNdkClass:Ljava/lang/Class;

    const-string v5, "init"

    const-class v6, Lio/sentry/android/core/SentryAndroidOptions;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 54
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 55
    .local v5, "args":[Ljava/lang/Object;
    iget-object v6, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    aput-object v6, v5, v3

    .line 56
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v7, "NdkIntegration installed."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v6, v7, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    const-string v1, "Ndk"

    invoke-static {v1}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "args":[Ljava/lang/Object;
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, v3}, Lio/sentry/android/core/NdkIntegration;->disableNdkIntegration(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 67
    iget-object v3, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Failed to initialize SentryNdk."

    invoke-interface {v3, v4, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 60
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    iget-object v3, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, v3}, Lio/sentry/android/core/NdkIntegration;->disableNdkIntegration(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 62
    iget-object v3, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 63
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 64
    const-string v5, "Failed to invoke the SentryNdk.init method."

    invoke-interface {v3, v4, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    nop

    .line 69
    .end local v2    # "cachedDir":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 70
    :cond_2
    iget-object v1, p0, Lio/sentry/android/core/NdkIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, v1}, Lio/sentry/android/core/NdkIntegration;->disableNdkIntegration(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 72
    :goto_3
    return-void
.end method
