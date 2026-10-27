.class public final Lio/sentry/android/replay/ReplayIntegration$flush$$inlined$enqueueOnMainThread$1;
.super Ljava/lang/Object;
.source "ReplayIntegration.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/ReplayIntegration;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReplayIntegration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReplayIntegration.kt\nio/sentry/android/replay/ReplayIntegration$enqueueOnMainThread$1\n+ 2 ReplayIntegration.kt\nio/sentry/android/replay/ReplayIntegration\n*L\n1#1,821:1\n376#2,9:822\n*E\n"
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
.field final synthetic this$0:Lio/sentry/android/replay/ReplayIntegration;


# direct methods
.method public constructor <init>(Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration$flush$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 617
    const/4 v0, 0x0

    .line 822
    .local v0, "$i$a$-enqueueOnMainThread-ReplayIntegration$flush$1":I
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$flush$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-static {v1}, Lio/sentry/android/replay/ReplayIntegration;->access$getState$p(Lio/sentry/android/replay/ReplayIntegration;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    .line 823
    .local v1, "current":Lio/sentry/android/replay/ReplayIntegration$ReplayState;
    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->isRecording()Z

    move-result v2

    if-nez v2, :cond_0

    .line 824
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration$flush$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lio/sentry/android/replay/ReplayIntegration;->access$startInternal(Lio/sentry/android/replay/ReplayIntegration;Z)V

    goto :goto_0

    .line 826
    :cond_0
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration$flush$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getGeneration()J

    move-result-wide v3

    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v5

    sget-object v6, Lio/sentry/android/replay/ReplayIntegration$flush$1$1;->INSTANCE:Lio/sentry/android/replay/ReplayIntegration$flush$1$1;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, v4, v5, v6}, Lio/sentry/android/replay/ReplayIntegration;->access$captureCurrentReplay(Lio/sentry/android/replay/ReplayIntegration;JLio/sentry/protocol/SentryId;Lkotlin/jvm/functions/Function2;)V

    .line 830
    :goto_0
    nop

    .line 617
    .end local v0    # "$i$a$-enqueueOnMainThread-ReplayIntegration$flush$1":I
    .end local v1    # "current":Lio/sentry/android/replay/ReplayIntegration$ReplayState;
    return-void
.end method
