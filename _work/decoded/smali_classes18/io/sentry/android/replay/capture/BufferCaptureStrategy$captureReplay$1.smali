.class final Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BufferCaptureStrategy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/capture/BufferCaptureStrategy;->captureReplay(ZLkotlin/jvm/functions/Function1;)V
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
.field final synthetic $onSegmentSent:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/Date;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/sentry/android/replay/capture/BufferCaptureStrategy;


# direct methods
.method constructor <init>(Lio/sentry/android/replay/capture/BufferCaptureStrategy;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/replay/capture/BufferCaptureStrategy;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Date;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$1;->this$0:Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    iput-object p2, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$1;->$onSegmentSent:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 117
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$1;->invoke(Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;)V
    .locals 4
    .param p1, "segment"    # Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$1;->this$0:Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    iget-object v1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$1;->this$0:Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    invoke-static {v1}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->access$getBufferedSegments$p(Lio/sentry/android/replay/capture/BufferCaptureStrategy;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->access$capture(Lio/sentry/android/replay/capture/BufferCaptureStrategy;Ljava/util/List;)V

    .line 120
    instance-of v0, p1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    if-eqz v0, :cond_0

    .line 121
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    iget-object v1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$1;->this$0:Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    invoke-static {v1}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->access$getScopes$p(Lio/sentry/android/replay/capture/BufferCaptureStrategy;)Lio/sentry/IScopes;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->capture$default(Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;Lio/sentry/IScopes;Lio/sentry/Hint;ILjava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$1;->$onSegmentSent:Lkotlin/jvm/functions/Function1;

    move-object v1, p1

    check-cast v1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    invoke-virtual {v1}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->getReplay()Lio/sentry/SentryReplayEvent;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryReplayEvent;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    const-string v2, "getTimestamp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    return-void
.end method
