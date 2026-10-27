.class public final Lio/sentry/util/LifecycleHelper;
.super Ljava/lang/Object;
.source "LifecycleHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/lang/Object;)V
    .locals 1
    .param p0, "tokenObject"    # Ljava/lang/Object;

    .line 12
    instance-of v0, p0, Lio/sentry/ISentryLifecycleToken;

    if-eqz v0, :cond_0

    .line 13
    move-object v0, p0

    check-cast v0, Lio/sentry/ISentryLifecycleToken;

    .line 14
    .local v0, "token":Lio/sentry/ISentryLifecycleToken;
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 16
    .end local v0    # "token":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void
.end method
