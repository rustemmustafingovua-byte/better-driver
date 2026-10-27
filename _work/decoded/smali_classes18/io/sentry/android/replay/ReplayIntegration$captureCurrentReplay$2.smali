.class final Lio/sentry/android/replay/ReplayIntegration$captureCurrentReplay$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ReplayIntegration.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/ReplayIntegration;->captureCurrentReplay(JLio/sentry/protocol/SentryId;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/Date;",
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
        "newTimestamp",
        "Ljava/util/Date;",
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
.field final synthetic $activeStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;


# direct methods
.method constructor <init>(Lio/sentry/android/replay/capture/CaptureStrategy;)V
    .locals 1

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration$captureCurrentReplay$2;->$activeStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 354
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/ReplayIntegration$captureCurrentReplay$2;->invoke(Ljava/util/Date;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/util/Date;)V
    .locals 3
    .param p1, "newTimestamp"    # Ljava/util/Date;

    const-string v0, "newTimestamp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$captureCurrentReplay$2;->$activeStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    invoke-interface {v0}, Lio/sentry/android/replay/capture/CaptureStrategy;->getCurrentSegment()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lio/sentry/android/replay/capture/CaptureStrategy;->setCurrentSegment(I)V

    .line 360
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$captureCurrentReplay$2;->$activeStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    invoke-interface {v0, p1}, Lio/sentry/android/replay/capture/CaptureStrategy;->setSegmentTimestamp(Ljava/util/Date;)V

    .line 361
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$captureCurrentReplay$2;->$activeStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    invoke-interface {v0, v2}, Lio/sentry/android/replay/capture/CaptureStrategy;->setFlushed(Z)V

    .line 362
    return-void
.end method
