.class public final Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;
.super Ljava/lang/Object;
.source "ReplayIntegration.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/ReplayIntegration;->onAppForegrounded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReplayIntegration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReplayIntegration.kt\nio/sentry/android/replay/ReplayIntegration$enqueueOnMainThread$1\n+ 2 ReplayIntegration.kt\nio/sentry/android/replay/ReplayIntegration\n*L\n1#1,821:1\n183#2,22:822\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "io/sentry/android/replay/ReplayIntegration$enqueueOnMainThread$1"
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
.field final synthetic $startNewSession$inlined:Z

.field final synthetic this$0:Lio/sentry/android/replay/ReplayIntegration;


# direct methods
.method public constructor <init>(Lio/sentry/android/replay/ReplayIntegration;Z)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    iput-boolean p2, p0, Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;->$startNewSession$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 617
    const/4 v0, 0x0

    .line 822
    .local v0, "$i$a$-enqueueOnMainThread-ReplayIntegration$onAppForegrounded$1":I
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayIntegration;->isEnabled$sentry_android_replay_release()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 823
    goto/16 :goto_2

    .line 825
    :cond_0
    iget-boolean v1, p0, Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;->$startNewSession$inlined:Z

    if-eqz v1, :cond_5

    .line 826
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayIntegration;->isManualPause$sentry_android_replay_release()Z

    move-result v1

    .line 827
    .local v1, "wasManuallyPaused":Z
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5}, Lio/sentry/android/replay/ReplayIntegration;->stopInternal$default(Lio/sentry/android/replay/ReplayIntegration;ZILjava/lang/Object;)V

    .line 828
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-static {v3}, Lio/sentry/android/replay/ReplayIntegration;->access$getOptions$p(Lio/sentry/android/replay/ReplayIntegration;)Lio/sentry/SentryOptions;

    move-result-object v3

    const-string v6, "options"

    if-nez v3, :cond_1

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_1
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryReplayOptions;->getSessionSampleRate()Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3}, Lio/sentry/android/replay/ReplayIntegration;->access$sample(Lio/sentry/android/replay/ReplayIntegration;Ljava/lang/Double;)Z

    move-result v2

    .line 829
    .local v2, "isFullSession":Z
    if-nez v2, :cond_4

    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-static {v3}, Lio/sentry/android/replay/ReplayIntegration;->access$getOptions$p(Lio/sentry/android/replay/ReplayIntegration;)Lio/sentry/SentryOptions;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_2
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryReplayOptions;->isSessionReplayForErrorsEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 830
    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-static {v3}, Lio/sentry/android/replay/ReplayIntegration;->access$getOptions$p(Lio/sentry/android/replay/ReplayIntegration;)Lio/sentry/SentryOptions;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v5, v3

    :goto_0
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    .line 831
    sget-object v5, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 832
    new-array v4, v4, [Ljava/lang/Object;

    .line 830
    const-string v6, "Session replay is not started, full session was not sampled and onErrorSampleRate is not specified"

    invoke-interface {v3, v5, v6, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 835
    :cond_4
    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-static {v3, v2}, Lio/sentry/android/replay/ReplayIntegration;->access$startInternal(Lio/sentry/android/replay/ReplayIntegration;Z)V

    .line 837
    :goto_1
    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-virtual {v3, v1}, Lio/sentry/android/replay/ReplayIntegration;->setManualPause$sentry_android_replay_release(Z)V

    .line 838
    if-eqz v1, :cond_5

    .line 839
    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-static {v3}, Lio/sentry/android/replay/ReplayIntegration;->access$pauseInternal(Lio/sentry/android/replay/ReplayIntegration;)V

    .line 842
    .end local v1    # "wasManuallyPaused":Z
    .end local v2    # "isFullSession":Z
    :cond_5
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$onAppForegrounded$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-static {v1}, Lio/sentry/android/replay/ReplayIntegration;->access$resumeInternal(Lio/sentry/android/replay/ReplayIntegration;)V

    .line 843
    nop

    .line 617
    .end local v0    # "$i$a$-enqueueOnMainThread-ReplayIntegration$onAppForegrounded$1":I
    :goto_2
    return-void
.end method
