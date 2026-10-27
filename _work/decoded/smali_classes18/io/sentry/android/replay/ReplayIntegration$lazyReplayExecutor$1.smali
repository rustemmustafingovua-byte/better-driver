.class final Lio/sentry/android/replay/ReplayIntegration$lazyReplayExecutor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ReplayIntegration.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/ReplayIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/sentry/android/replay/util/ReplayExecutorService;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lio/sentry/android/replay/util/ReplayExecutorService;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/android/replay/ReplayIntegration;


# direct methods
.method constructor <init>(Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 1

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration$lazyReplayExecutor$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/sentry/android/replay/util/ReplayExecutorService;
    .locals 3

    .line 125
    new-instance v0, Lio/sentry/android/replay/ReplayIntegration$ReplayExecutorServiceThreadFactory;

    invoke-direct {v0}, Lio/sentry/android/replay/ReplayIntegration$ReplayExecutorServiceThreadFactory;-><init>()V

    check-cast v0, Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 126
    .local v0, "delegate":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v1, Lio/sentry/android/replay/util/ReplayExecutorService;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration$lazyReplayExecutor$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-static {v2}, Lio/sentry/android/replay/ReplayIntegration;->access$getOptions$p(Lio/sentry/android/replay/ReplayIntegration;)Lio/sentry/SentryOptions;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "options"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-direct {v1, v0, v2}, Lio/sentry/android/replay/util/ReplayExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lio/sentry/SentryOptions;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration$lazyReplayExecutor$1;->invoke()Lio/sentry/android/replay/util/ReplayExecutorService;

    move-result-object v0

    return-object v0
.end method
