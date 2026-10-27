.class final Lio/sentry/CancelledFuture;
.super Ljava/lang/Object;
.source "CancelledFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
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

    .line 13
    .local p0, "this":Lio/sentry/CancelledFuture;, "Lio/sentry/CancelledFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 16
    .local p0, "this":Lio/sentry/CancelledFuture;, "Lio/sentry/CancelledFuture<TT;>;"
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

    .line 31
    .local p0, "this":Lio/sentry/CancelledFuture;, "Lio/sentry/CancelledFuture<TT;>;"
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

    .line 36
    .local p0, "this":Lio/sentry/CancelledFuture;, "Lio/sentry/CancelledFuture<TT;>;"
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 21
    .local p0, "this":Lio/sentry/CancelledFuture;, "Lio/sentry/CancelledFuture<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 26
    .local p0, "this":Lio/sentry/CancelledFuture;, "Lio/sentry/CancelledFuture<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
