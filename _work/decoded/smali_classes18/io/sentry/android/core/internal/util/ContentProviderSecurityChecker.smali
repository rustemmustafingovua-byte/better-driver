.class public final Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;
.super Ljava/lang/Object;
.source "ContentProviderSecurityChecker.java"


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    new-instance v0, Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;-><init>(Lio/sentry/android/core/BuildInfoProvider;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 0
    .param p1, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 22
    return-void
.end method


# virtual methods
.method public checkPrivilegeEscalation(Landroid/content/ContentProvider;)V
    .locals 5
    .param p1, "contentProvider"    # Landroid/content/ContentProvider;

    .line 47
    iget-object v0, p0, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    .line 48
    .local v0, "sdkVersion":I
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    .line 50
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "callingPackage":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "appPackage":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Provider does not allow for granting of Uri permissions"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    .end local v1    # "callingPackage":Ljava/lang/String;
    .end local v2    # "appPackage":Ljava/lang/String;
    :cond_1
    return-void
.end method
