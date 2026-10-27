.class final Lio/sentry/NoOpDistributionApi$CompletedFuture;
.super Ljava/lang/Object;
.source "NoOpDistributionApi.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/NoOpDistributionApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompletedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lio/sentry/NoOpDistributionApi$CompletedFuture;, "Lio/sentry/NoOpDistributionApi$CompletedFuture<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/sentry/NoOpDistributionApi$CompletedFuture;->result:Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 56
    .local p0, "this":Lio/sentry/NoOpDistributionApi$CompletedFuture;, "Lio/sentry/NoOpDistributionApi$CompletedFuture<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 71
    .local p0, "this":Lio/sentry/NoOpDistributionApi$CompletedFuture;, "Lio/sentry/NoOpDistributionApi$CompletedFuture<TT;>;"
    iget-object v0, p0, Lio/sentry/NoOpDistributionApi$CompletedFuture;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 77
    .local p0, "this":Lio/sentry/NoOpDistributionApi$CompletedFuture;, "Lio/sentry/NoOpDistributionApi$CompletedFuture<TT;>;"
    iget-object v0, p0, Lio/sentry/NoOpDistributionApi$CompletedFuture;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 61
    .local p0, "this":Lio/sentry/NoOpDistributionApi$CompletedFuture;, "Lio/sentry/NoOpDistributionApi$CompletedFuture<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 66
    .local p0, "this":Lio/sentry/NoOpDistributionApi$CompletedFuture;, "Lio/sentry/NoOpDistributionApi$CompletedFuture<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
