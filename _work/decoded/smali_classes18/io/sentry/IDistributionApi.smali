.class public interface abstract Lio/sentry/IDistributionApi;
.super Ljava/lang/Object;
.source "IDistributionApi.java"


# virtual methods
.method public abstract checkForUpdate()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lio/sentry/UpdateStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract checkForUpdateBlocking()Lio/sentry/UpdateStatus;
.end method

.method public abstract downloadUpdate(Lio/sentry/UpdateInfo;)V
.end method

.method public abstract isEnabled()Z
.end method
