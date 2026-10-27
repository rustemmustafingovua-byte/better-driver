.class public final Lio/sentry/android/replay/util/ReplayRunnable;
.super Ljava/lang/Object;
.source "ReplayExecutorService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0005J\t\u0010\u0008\u001a\u00020\tH\u0096\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lio/sentry/android/replay/util/ReplayRunnable;",
        "Ljava/lang/Runnable;",
        "taskName",
        "",
        "delegate",
        "(Ljava/lang/String;Ljava/lang/Runnable;)V",
        "getTaskName",
        "()Ljava/lang/String;",
        "run",
        "",
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


# instance fields
.field private final synthetic $$delegate_0:Ljava/lang/Runnable;

.field private final taskName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/util/ReplayRunnable;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2, "delegate"    # Ljava/lang/Runnable;

    const-string v0, "taskName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/util/ReplayRunnable;->taskName:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/android/replay/util/ReplayRunnable;->$$delegate_0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final getTaskName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lio/sentry/android/replay/util/ReplayRunnable;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/util/ReplayRunnable;->$$delegate_0:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
