.class final Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;
.super Ljava/lang/Object;
.source "QueuedThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/QueuedThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CancelledFuture"
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 119
    .local p0, "this":Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;, "Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 122
    .local p0, "this":Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;, "Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;, "Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture<TT;>;"
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
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

    .line 142
    .local p0, "this":Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;, "Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture<TT;>;"
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 127
    .local p0, "this":Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;, "Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 132
    .local p0, "this":Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;, "Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
