.class final Lio/sentry/android/ndk/SentryNdkUtil;
.super Ljava/lang/Object;
.source "SentryNdkUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v0

    .line 14
    const-string v1, "maven:io.sentry:sentry-android-ndk"

    const-string v2, "8.61.1"

    invoke-virtual {v0, v1, v2}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addPackage(Lio/sentry/protocol/SdkVersion;)V
    .locals 2
    .param p0, "sdkVersion"    # Lio/sentry/protocol/SdkVersion;

    .line 25
    if-nez p0, :cond_0

    .line 26
    return-void

    .line 28
    :cond_0
    const-string v0, "maven:io.sentry:sentry-android-ndk"

    const-string v1, "8.61.1"

    invoke-virtual {p0, v0, v1}, Lio/sentry/protocol/SdkVersion;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method
