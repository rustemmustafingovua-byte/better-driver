.class final Lio/sentry/android/replay/ReplayIntegration$ReplayState;
.super Ljava/lang/Object;
.source "ReplayIntegration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/ReplayIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReplayState"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\tH\u00c6\u0003J3\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u00102\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\u0016\u0010!\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007J\t\u0010\"\u001a\u00020#H\u00d6\u0001R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\u0013\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006$"
    }
    d2 = {
        "Lio/sentry/android/replay/ReplayIntegration$ReplayState;",
        "",
        "generation",
        "",
        "lifecycleState",
        "Lio/sentry/android/replay/ReplayLifecycleState;",
        "replayId",
        "Lio/sentry/protocol/SentryId;",
        "captureStrategy",
        "Lio/sentry/android/replay/capture/CaptureStrategy;",
        "(JLio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/capture/CaptureStrategy;)V",
        "getCaptureStrategy",
        "()Lio/sentry/android/replay/capture/CaptureStrategy;",
        "getGeneration",
        "()J",
        "isBuffering",
        "",
        "()Z",
        "isRecording",
        "isTouchRecordingAllowed",
        "getLifecycleState",
        "()Lio/sentry/android/replay/ReplayLifecycleState;",
        "getReplayId",
        "()Lio/sentry/protocol/SentryId;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "matches",
        "toString",
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


# instance fields
.field private final captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

.field private final generation:J

.field private final lifecycleState:Lio/sentry/android/replay/ReplayLifecycleState;

.field private final replayId:Lio/sentry/protocol/SentryId;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0xf

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;-><init>(JLio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/capture/CaptureStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/capture/CaptureStrategy;)V
    .locals 1
    .param p1, "generation"    # J
    .param p3, "lifecycleState"    # Lio/sentry/android/replay/ReplayLifecycleState;
    .param p4, "replayId"    # Lio/sentry/protocol/SentryId;
    .param p5, "captureStrategy"    # Lio/sentry/android/replay/capture/CaptureStrategy;

    const-string v0, "lifecycleState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    iput-wide p1, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->generation:J

    .line 753
    iput-object p3, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->lifecycleState:Lio/sentry/android/replay/ReplayLifecycleState;

    .line 754
    iput-object p4, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->replayId:Lio/sentry/protocol/SentryId;

    .line 755
    iput-object p5, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 751
    return-void
.end method

.method public synthetic constructor <init>(JLio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/capture/CaptureStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 751
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 752
    const-wide/16 p1, 0x0

    move-wide v1, p1

    goto :goto_0

    .line 751
    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 753
    sget-object p3, Lio/sentry/android/replay/ReplayLifecycleState;->INITIAL:Lio/sentry/android/replay/ReplayLifecycleState;

    move-object v3, p3

    goto :goto_1

    .line 751
    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    .line 754
    sget-object p4, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    const-string p1, "EMPTY_ID"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p4

    goto :goto_2

    .line 751
    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    .line 755
    const/4 p5, 0x0

    move-object v5, p5

    goto :goto_3

    .line 751
    :cond_3
    move-object v5, p5

    :goto_3
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;-><init>(JLio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/capture/CaptureStrategy;)V

    .line 756
    return-void
.end method

.method public static synthetic copy$default(Lio/sentry/android/replay/ReplayIntegration$ReplayState;JLio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/capture/CaptureStrategy;ILjava/lang/Object;)Lio/sentry/android/replay/ReplayIntegration$ReplayState;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->generation:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->lifecycleState:Lio/sentry/android/replay/ReplayLifecycleState;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->replayId:Lio/sentry/protocol/SentryId;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    :cond_3
    move-object v0, p0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->copy(JLio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/capture/CaptureStrategy;)Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->generation:J

    return-wide v0
.end method

.method public final component2()Lio/sentry/android/replay/ReplayLifecycleState;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->lifecycleState:Lio/sentry/android/replay/ReplayLifecycleState;

    return-object v0
.end method

.method public final component3()Lio/sentry/protocol/SentryId;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->replayId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public final component4()Lio/sentry/android/replay/capture/CaptureStrategy;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    return-object v0
.end method

.method public final copy(JLio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/capture/CaptureStrategy;)Lio/sentry/android/replay/ReplayIntegration$ReplayState;
    .locals 7

    const-string v0, "lifecycleState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;-><init>(JLio/sentry/android/replay/ReplayLifecycleState;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/capture/CaptureStrategy;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    iget-wide v3, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->generation:J

    iget-wide v5, v1, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->generation:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->lifecycleState:Lio/sentry/android/replay/ReplayLifecycleState;

    iget-object v4, v1, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->lifecycleState:Lio/sentry/android/replay/ReplayLifecycleState;

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->replayId:Lio/sentry/protocol/SentryId;

    iget-object v4, v1, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->replayId:Lio/sentry/protocol/SentryId;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    iget-object v1, v1, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCaptureStrategy()Lio/sentry/android/replay/capture/CaptureStrategy;
    .locals 1

    .line 755
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    return-object v0
.end method

.method public final getGeneration()J
    .locals 2

    .line 752
    iget-wide v0, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->generation:J

    return-wide v0
.end method

.method public final getLifecycleState()Lio/sentry/android/replay/ReplayLifecycleState;
    .locals 1

    .line 753
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->lifecycleState:Lio/sentry/android/replay/ReplayLifecycleState;

    return-object v0
.end method

.method public final getReplayId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 754
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->replayId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->generation:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->lifecycleState:Lio/sentry/android/replay/ReplayLifecycleState;

    invoke-virtual {v2}, Lio/sentry/android/replay/ReplayLifecycleState;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->replayId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v2}, Lio/sentry/protocol/SentryId;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    return v1
.end method

.method public final isBuffering()Z
    .locals 1

    .line 758
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    instance-of v0, v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    return v0
.end method

.method public final isRecording()Z
    .locals 2

    .line 761
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->lifecycleState:Lio/sentry/android/replay/ReplayLifecycleState;

    sget-object v1, Lio/sentry/android/replay/ReplayLifecycleState;->STARTED:Lio/sentry/android/replay/ReplayLifecycleState;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/ReplayLifecycleState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->lifecycleState:Lio/sentry/android/replay/ReplayLifecycleState;

    sget-object v1, Lio/sentry/android/replay/ReplayLifecycleState;->STOPPED:Lio/sentry/android/replay/ReplayLifecycleState;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/ReplayLifecycleState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTouchRecordingAllowed()Z
    .locals 2

    .line 764
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->lifecycleState:Lio/sentry/android/replay/ReplayLifecycleState;

    sget-object v1, Lio/sentry/android/replay/ReplayLifecycleState;->STARTED:Lio/sentry/android/replay/ReplayLifecycleState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->lifecycleState:Lio/sentry/android/replay/ReplayLifecycleState;

    sget-object v1, Lio/sentry/android/replay/ReplayLifecycleState;->RESUMED:Lio/sentry/android/replay/ReplayLifecycleState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final matches(JLio/sentry/protocol/SentryId;)Z
    .locals 2
    .param p1, "generation"    # J
    .param p3, "replayId"    # Lio/sentry/protocol/SentryId;

    const-string v0, "replayId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->generation:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->replayId:Lio/sentry/protocol/SentryId;

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplayState(generation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->generation:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lifecycleState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->lifecycleState:Lio/sentry/android/replay/ReplayLifecycleState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", replayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->replayId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captureStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$ReplayState;->captureStrategy:Lio/sentry/android/replay/capture/CaptureStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
