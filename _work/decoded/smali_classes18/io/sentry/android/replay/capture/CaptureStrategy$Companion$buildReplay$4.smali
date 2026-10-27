.class final Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;
.super Lkotlin/jvm/internal/Lambda;
.source "CaptureStrategy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->buildReplay(Lio/sentry/SentryOptions;Ljava/io/File;Lio/sentry/protocol/SentryId;Ljava/util/Date;IIIIIJLio/sentry/SentryReplayEvent$ReplayType;Ljava/lang/String;Ljava/util/List;Ljava/util/Deque;Ljava/util/List;Ljava/util/List;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/sentry/rrweb/RRWebEvent;",
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
        "event",
        "Lio/sentry/rrweb/RRWebEvent;",
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
.field final synthetic $recordingPayload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/rrweb/RRWebEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $segmentTimestamp:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/util/Date;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Lio/sentry/rrweb/RRWebEvent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;->$segmentTimestamp:Ljava/util/Date;

    iput-object p2, p0, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;->$recordingPayload:Ljava/util/List;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 235
    move-object v0, p1

    check-cast v0, Lio/sentry/rrweb/RRWebEvent;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;->invoke(Lio/sentry/rrweb/RRWebEvent;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/sentry/rrweb/RRWebEvent;)V
    .locals 4
    .param p1, "event"    # Lio/sentry/rrweb/RRWebEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Lio/sentry/rrweb/RRWebEvent;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;->$segmentTimestamp:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 237
    iget-object v0, p0, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;->$recordingPayload:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    return-void
.end method
