.class public final Lio/sentry/android/core/AnrIntegrationFactory;
.super Ljava/lang/Object;
.source "AnrIntegrationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Lio/sentry/Integration;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 15
    invoke-virtual {p1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 16
    new-instance v0, Lio/sentry/android/core/AnrV2Integration;

    invoke-direct {v0, p0}, Lio/sentry/android/core/AnrV2Integration;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Lio/sentry/android/core/AnrIntegration;

    invoke-direct {v0, p0}, Lio/sentry/android/core/AnrIntegration;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
