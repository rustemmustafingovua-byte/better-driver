.class final Lio/sentry/android/replay/capture/SessionCaptureStrategy$flush$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SessionCaptureStrategy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/capture/SessionCaptureStrategy;->flush(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "segment",
        "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;",
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
.field final synthetic this$0:Lio/sentry/android/replay/capture/SessionCaptureStrategy;


# direct methods
.method constructor <init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;)V
    .locals 1

    iput-object p1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$flush$1;->this$0:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 100
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$flush$1;->invoke(Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;)V
    .locals 4
    .param p1, "segment"    # Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    instance-of v0, p1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    if-eqz v0, :cond_0

    .line 102
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    iget-object v1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$flush$1;->this$0:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    invoke-static {v1}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->access$getScopes$p(Lio/sentry/android/replay/capture/SessionCaptureStrategy;)Lio/sentry/IScopes;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->capture$default(Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;Lio/sentry/IScopes;Lio/sentry/Hint;ILjava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$flush$1;->this$0:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    invoke-virtual {v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCurrentSegment()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->setCurrentSegment(I)V

    .line 104
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$flush$1;->this$0:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    move-object v1, p1

    check-cast v1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    invoke-virtual {v1}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->getReplay()Lio/sentry/SentryReplayEvent;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryReplayEvent;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->setSegmentTimestamp(Ljava/util/Date;)V

    .line 105
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$flush$1;->this$0:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    invoke-virtual {v0, v2}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->setFlushed(Z)V

    .line 107
    :cond_0
    return-void
.end method
