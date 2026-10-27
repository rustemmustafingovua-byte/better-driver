.class public final Lio/sentry/android/core/SentryInitProvider;
.super Lio/sentry/android/core/EmptySecureContentProvider;
.source "SentryInitProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lio/sentry/android/core/EmptySecureContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 41
    const-class v0, Lio/sentry/android/core/SentryInitProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-super {p0, p1, p2}, Lio/sentry/android/core/EmptySecureContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 46
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An applicationId is required to fulfill the manifest placeholder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 6

    .line 18
    new-instance v0, Lio/sentry/android/core/AndroidLogger;

    invoke-direct {v0}, Lio/sentry/android/core/AndroidLogger;-><init>()V

    .line 19
    .local v0, "logger":Lio/sentry/android/core/AndroidLogger;
    invoke-virtual {p0}, Lio/sentry/android/core/SentryInitProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 20
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 21
    sget-object v2, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v3, "App. Context from ContentProvider is null"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v5}, Lio/sentry/android/core/AndroidLogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    return v4

    .line 25
    :cond_0
    invoke-static {v1, v0}, Lio/sentry/android/core/ManifestMetadataReader;->isAutoInit(Landroid/content/Context;Lio/sentry/ILogger;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    invoke-static {v1}, Lio/sentry/android/core/ContextUtils;->appIsLibraryForComposePreview(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 27
    invoke-static {v1, v0}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/ILogger;)V

    .line 28
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v2

    const-string v3, "AutoInit"

    invoke-virtual {v2, v3}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    .line 30
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public shutdown()V
    .locals 0

    .line 35
    invoke-static {}, Lio/sentry/Sentry;->close()V

    .line 36
    return-void
.end method
