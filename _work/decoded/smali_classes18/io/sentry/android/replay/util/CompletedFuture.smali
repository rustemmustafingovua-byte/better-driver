.class public final Lio/sentry/android/replay/util/CompletedFuture;
.super Ljava/lang/Object;
.source "ReplayExecutorService.kt"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u0019\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u0005H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/sentry/android/replay/util/CompletedFuture;",
        "Ljava/util/concurrent/Future;",
        "",
        "()V",
        "cancel",
        "",
        "mayInterruptIfRunning",
        "get",
        "timeout",
        "",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "isCancelled",
        "isDone",
        "sentry-android-replay_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lio/sentry/android/replay/util/CompletedFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/replay/util/CompletedFuture;

    invoke-direct {v0}, Lio/sentry/android/replay/util/CompletedFuture;-><init>()V

    sput-object v0, Lio/sentry/android/replay/util/CompletedFuture;->INSTANCE:Lio/sentry/android/replay/util/CompletedFuture;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lio/sentry/android/replay/util/CompletedFuture;->get()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "p0"    # J
    .param p3, "p1"    # Ljava/util/concurrent/TimeUnit;

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/android/replay/util/CompletedFuture;->get(JLjava/util/concurrent/TimeUnit;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public get()V
    .locals 0

    .line 90
    return-void
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 88
    const/4 v0, 0x1

    return v0
.end method
