.class public final Lio/sentry/NoOpDistributionApi;
.super Ljava/lang/Object;
.source "NoOpDistributionApi.java"

# interfaces
.implements Lio/sentry/IDistributionApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/NoOpDistributionApi$CompletedFuture;
    }
.end annotation


# static fields
.field private static final instance:Lio/sentry/NoOpDistributionApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lio/sentry/NoOpDistributionApi;

    invoke-direct {v0}, Lio/sentry/NoOpDistributionApi;-><init>()V

    sput-object v0, Lio/sentry/NoOpDistributionApi;->instance:Lio/sentry/NoOpDistributionApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpDistributionApi;
    .locals 1

    .line 20
    sget-object v0, Lio/sentry/NoOpDistributionApi;->instance:Lio/sentry/NoOpDistributionApi;

    return-object v0
.end method


# virtual methods
.method public checkForUpdate()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lio/sentry/UpdateStatus;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lio/sentry/NoOpDistributionApi$CompletedFuture;

    invoke-static {}, Lio/sentry/UpdateStatus$UpToDate;->getInstance()Lio/sentry/UpdateStatus$UpToDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/NoOpDistributionApi$CompletedFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public checkForUpdateBlocking()Lio/sentry/UpdateStatus;
    .locals 1

    .line 25
    invoke-static {}, Lio/sentry/UpdateStatus$UpToDate;->getInstance()Lio/sentry/UpdateStatus$UpToDate;

    move-result-object v0

    return-object v0
.end method

.method public downloadUpdate(Lio/sentry/UpdateInfo;)V
    .locals 0
    .param p1, "info"    # Lio/sentry/UpdateInfo;

    .line 36
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method
