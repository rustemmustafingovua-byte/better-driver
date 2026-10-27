.class public final Lio/sentry/NoOpSentryExecutorService;
.super Ljava/lang/Object;
.source "NoOpSentryExecutorService.java"

# interfaces
.implements Lio/sentry/ISentryExecutorService;


# static fields
.field private static final instance:Lio/sentry/NoOpSentryExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lio/sentry/NoOpSentryExecutorService;

    invoke-direct {v0}, Lio/sentry/NoOpSentryExecutorService;-><init>()V

    sput-object v0, Lio/sentry/NoOpSentryExecutorService;->instance:Lio/sentry/NoOpSentryExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/ISentryExecutorService;
    .locals 1

    .line 15
    sget-object v0, Lio/sentry/NoOpSentryExecutorService;->instance:Lio/sentry/NoOpSentryExecutorService;

    return-object v0
.end method


# virtual methods
.method public close(J)V
    .locals 0
    .param p1, "timeoutMillis"    # J

    .line 34
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 30
    new-instance v0, Lio/sentry/CancelledFuture;

    invoke-direct {v0}, Lio/sentry/CancelledFuture;-><init>()V

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 20
    new-instance v0, Lio/sentry/CancelledFuture;

    invoke-direct {v0}, Lio/sentry/CancelledFuture;-><init>()V

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 25
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Lio/sentry/CancelledFuture;

    invoke-direct {v0}, Lio/sentry/CancelledFuture;-><init>()V

    return-object v0
.end method
