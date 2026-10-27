.class public final Lio/sentry/android/replay/ReplayIntegration$captureReplay$$inlined$enqueueOnMainThread$1;
.super Ljava/lang/Object;
.source "ReplayIntegration.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/ReplayIntegration;->captureReplay(Ljava/lang/Boolean;)Lio/sentry/protocol/SentryId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReplayIntegration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReplayIntegration.kt\nio/sentry/android/replay/ReplayIntegration$enqueueOnMainThread$1\n+ 2 ReplayIntegration.kt\nio/sentry/android/replay/ReplayIntegration\n*L\n1#1,821:1\n324#2,4:822\n*E\n"
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
.field final synthetic $current$inlined:Lio/sentry/android/replay/ReplayIntegration$ReplayState;

.field final synthetic this$0:Lio/sentry/android/replay/ReplayIntegration;


# direct methods
.method public constructor <init>(Lio/sentry/android/replay/ReplayIntegration;Lio/sentry/android/replay/ReplayIntegration$ReplayState;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration$captureReplay$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    iput-object p2, p0, Lio/sentry/android/replay/ReplayIntegration$captureReplay$$inlined$enqueueOnMainThread$1;->$current$inlined:Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 617
    const/4 v0, 0x0

    .line 822
    .local v0, "$i$a$-enqueueOnMainThread-ReplayIntegration$captureReplay$3":I
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$captureReplay$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration$captureReplay$$inlined$enqueueOnMainThread$1;->$current$inlined:Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    invoke-virtual {v2}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getGeneration()J

    move-result-wide v2

    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration$captureReplay$$inlined$enqueueOnMainThread$1;->$current$inlined:Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    invoke-virtual {v4}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v4

    sget-object v5, Lio/sentry/android/replay/ReplayIntegration$captureReplay$3$1;->INSTANCE:Lio/sentry/android/replay/ReplayIntegration$captureReplay$3$1;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2, v3, v4, v5}, Lio/sentry/android/replay/ReplayIntegration;->access$captureCurrentReplay(Lio/sentry/android/replay/ReplayIntegration;JLio/sentry/protocol/SentryId;Lkotlin/jvm/functions/Function2;)V

    .line 825
    nop

    .line 617
    .end local v0    # "$i$a$-enqueueOnMainThread-ReplayIntegration$captureReplay$3":I
    return-void
.end method
