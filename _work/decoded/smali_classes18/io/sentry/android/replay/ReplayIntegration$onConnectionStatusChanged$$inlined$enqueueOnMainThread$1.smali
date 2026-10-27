.class public final Lio/sentry/android/replay/ReplayIntegration$onConnectionStatusChanged$$inlined$enqueueOnMainThread$1;
.super Ljava/lang/Object;
.source "ReplayIntegration.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/ReplayIntegration;->onConnectionStatusChanged(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReplayIntegration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReplayIntegration.kt\nio/sentry/android/replay/ReplayIntegration$enqueueOnMainThread$1\n+ 2 ReplayIntegration.kt\nio/sentry/android/replay/ReplayIntegration\n*L\n1#1,821:1\n577#2,13:822\n*E\n"
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
.field final synthetic $status$inlined:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

.field final synthetic this$0:Lio/sentry/android/replay/ReplayIntegration;


# direct methods
.method public constructor <init>(Lio/sentry/android/replay/ReplayIntegration;Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration$onConnectionStatusChanged$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    iput-object p2, p0, Lio/sentry/android/replay/ReplayIntegration$onConnectionStatusChanged$$inlined$enqueueOnMainThread$1;->$status$inlined:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 617
    const/4 v0, 0x0

    .line 822
    .local v0, "$i$a$-enqueueOnMainThread-ReplayIntegration$onConnectionStatusChanged$1":I
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$onConnectionStatusChanged$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration$onConnectionStatusChanged$$inlined$enqueueOnMainThread$1;->$status$inlined:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    invoke-static {v1, v2}, Lio/sentry/android/replay/ReplayIntegration;->access$setLastKnownConnectionStatus$p(Lio/sentry/android/replay/ReplayIntegration;Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V

    .line 823
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$onConnectionStatusChanged$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-static {v1}, Lio/sentry/android/replay/ReplayIntegration;->access$getState$p(Lio/sentry/android/replay/ReplayIntegration;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getCaptureStrategy()Lio/sentry/android/replay/capture/CaptureStrategy;

    move-result-object v1

    instance-of v1, v1, Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    if-nez v1, :cond_0

    .line 825
    goto :goto_1

    .line 828
    :cond_0
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$onConnectionStatusChanged$$inlined$enqueueOnMainThread$1;->$status$inlined:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    sget-object v2, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    if-ne v1, v2, :cond_1

    .line 829
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$onConnectionStatusChanged$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-static {v1}, Lio/sentry/android/replay/ReplayIntegration;->access$pauseInternal(Lio/sentry/android/replay/ReplayIntegration;)V

    goto :goto_0

    .line 832
    :cond_1
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$onConnectionStatusChanged$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-static {v1}, Lio/sentry/android/replay/ReplayIntegration;->access$resumeInternal(Lio/sentry/android/replay/ReplayIntegration;)V

    .line 834
    :goto_0
    nop

    .line 617
    .end local v0    # "$i$a$-enqueueOnMainThread-ReplayIntegration$onConnectionStatusChanged$1":I
    :goto_1
    return-void
.end method
