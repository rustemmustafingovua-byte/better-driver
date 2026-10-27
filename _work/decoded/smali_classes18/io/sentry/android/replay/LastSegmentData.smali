.class public final Lio/sentry/android/replay/LastSegmentData;
.super Ljava/lang/Object;
.source "ReplayCache.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0080\u0008\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0002\u0010\u0015J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0005H\u00c6\u0003J\t\u0010*\u001a\u00020\u0007H\u00c6\u0003J\t\u0010+\u001a\u00020\tH\u00c6\u0003J\t\u0010,\u001a\u00020\u000bH\u00c6\u0003J\t\u0010-\u001a\u00020\rH\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000f\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003Jm\u00101\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u000e\u0008\u0002\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00c6\u0001J\u0013\u00102\u001a\u0002032\u0008\u00104\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00105\u001a\u00020\tH\u00d6\u0001J\t\u00106\u001a\u00020\u000fH\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'\u00a8\u00067"
    }
    d2 = {
        "Lio/sentry/android/replay/LastSegmentData;",
        "",
        "recorderConfig",
        "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "cache",
        "Lio/sentry/android/replay/ReplayCache;",
        "timestamp",
        "Ljava/util/Date;",
        "id",
        "",
        "duration",
        "",
        "replayType",
        "Lio/sentry/SentryReplayEvent$ReplayType;",
        "screenAtStart",
        "",
        "events",
        "",
        "Lio/sentry/rrweb/RRWebEvent;",
        "metadata",
        "Lio/sentry/android/replay/RecordingMetadata;",
        "(Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/android/replay/ReplayCache;Ljava/util/Date;IJLio/sentry/SentryReplayEvent$ReplayType;Ljava/lang/String;Ljava/util/List;Lio/sentry/android/replay/RecordingMetadata;)V",
        "getCache",
        "()Lio/sentry/android/replay/ReplayCache;",
        "getDuration",
        "()J",
        "getEvents",
        "()Ljava/util/List;",
        "getId",
        "()I",
        "getMetadata",
        "()Lio/sentry/android/replay/RecordingMetadata;",
        "getRecorderConfig",
        "()Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "getReplayType",
        "()Lio/sentry/SentryReplayEvent$ReplayType;",
        "getScreenAtStart",
        "()Ljava/lang/String;",
        "getTimestamp",
        "()Ljava/util/Date;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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


# static fields
.field public static final $stable:I


# instance fields
.field private final cache:Lio/sentry/android/replay/ReplayCache;

.field private final duration:J

.field private final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/rrweb/RRWebEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final id:I

.field private final metadata:Lio/sentry/android/replay/RecordingMetadata;

.field private final recorderConfig:Lio/sentry/android/replay/ScreenshotRecorderConfig;

.field private final replayType:Lio/sentry/SentryReplayEvent$ReplayType;

.field private final screenAtStart:Ljava/lang/String;

.field private final timestamp:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/LastSegmentData;->$stable:I

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/android/replay/ReplayCache;Ljava/util/Date;IJLio/sentry/SentryReplayEvent$ReplayType;Ljava/lang/String;Ljava/util/List;Lio/sentry/android/replay/RecordingMetadata;)V
    .locals 1
    .param p1, "recorderConfig"    # Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .param p2, "cache"    # Lio/sentry/android/replay/ReplayCache;
    .param p3, "timestamp"    # Ljava/util/Date;
    .param p4, "id"    # I
    .param p5, "duration"    # J
    .param p7, "replayType"    # Lio/sentry/SentryReplayEvent$ReplayType;
    .param p8, "screenAtStart"    # Ljava/lang/String;
    .param p9, "events"    # Ljava/util/List;
    .param p10, "metadata"    # Lio/sentry/android/replay/RecordingMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
            "Lio/sentry/android/replay/ReplayCache;",
            "Ljava/util/Date;",
            "IJ",
            "Lio/sentry/SentryReplayEvent$ReplayType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lio/sentry/rrweb/RRWebEvent;",
            ">;",
            "Lio/sentry/android/replay/RecordingMetadata;",
            ")V"
        }
    .end annotation

    const-string v0, "recorderConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamp"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayType"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p1, p0, Lio/sentry/android/replay/LastSegmentData;->recorderConfig:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 518
    iput-object p2, p0, Lio/sentry/android/replay/LastSegmentData;->cache:Lio/sentry/android/replay/ReplayCache;

    .line 519
    iput-object p3, p0, Lio/sentry/android/replay/LastSegmentData;->timestamp:Ljava/util/Date;

    .line 520
    iput p4, p0, Lio/sentry/android/replay/LastSegmentData;->id:I

    .line 521
    iput-wide p5, p0, Lio/sentry/android/replay/LastSegmentData;->duration:J

    .line 522
    iput-object p7, p0, Lio/sentry/android/replay/LastSegmentData;->replayType:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 523
    iput-object p8, p0, Lio/sentry/android/replay/LastSegmentData;->screenAtStart:Ljava/lang/String;

    .line 524
    iput-object p9, p0, Lio/sentry/android/replay/LastSegmentData;->events:Ljava/util/List;

    .line 526
    iput-object p10, p0, Lio/sentry/android/replay/LastSegmentData;->metadata:Lio/sentry/android/replay/RecordingMetadata;

    .line 516
    return-void
.end method

.method public static synthetic copy$default(Lio/sentry/android/replay/LastSegmentData;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/android/replay/ReplayCache;Ljava/util/Date;IJLio/sentry/SentryReplayEvent$ReplayType;Ljava/lang/String;Ljava/util/List;Lio/sentry/android/replay/RecordingMetadata;ILjava/lang/Object;)Lio/sentry/android/replay/LastSegmentData;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    iget-object p1, p0, Lio/sentry/android/replay/LastSegmentData;->recorderConfig:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    iget-object p2, p0, Lio/sentry/android/replay/LastSegmentData;->cache:Lio/sentry/android/replay/ReplayCache;

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    iget-object p3, p0, Lio/sentry/android/replay/LastSegmentData;->timestamp:Ljava/util/Date;

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    iget p4, p0, Lio/sentry/android/replay/LastSegmentData;->id:I

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    iget-wide p5, p0, Lio/sentry/android/replay/LastSegmentData;->duration:J

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    iget-object p7, p0, Lio/sentry/android/replay/LastSegmentData;->replayType:Lio/sentry/SentryReplayEvent$ReplayType;

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    iget-object p8, p0, Lio/sentry/android/replay/LastSegmentData;->screenAtStart:Ljava/lang/String;

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    iget-object p9, p0, Lio/sentry/android/replay/LastSegmentData;->events:Ljava/util/List;

    :cond_7
    and-int/lit16 p11, p11, 0x100

    if-eqz p11, :cond_8

    iget-object p10, p0, Lio/sentry/android/replay/LastSegmentData;->metadata:Lio/sentry/android/replay/RecordingMetadata;

    :cond_8
    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move-wide p7, p5

    move-object p5, p3

    move p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p12}, Lio/sentry/android/replay/LastSegmentData;->copy(Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/android/replay/ReplayCache;Ljava/util/Date;IJLio/sentry/SentryReplayEvent$ReplayType;Ljava/lang/String;Ljava/util/List;Lio/sentry/android/replay/RecordingMetadata;)Lio/sentry/android/replay/LastSegmentData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/LastSegmentData;->recorderConfig:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    return-object v0
.end method

.method public final component2()Lio/sentry/android/replay/ReplayCache;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/LastSegmentData;->cache:Lio/sentry/android/replay/ReplayCache;

    return-object v0
.end method

.method public final component3()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/LastSegmentData;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lio/sentry/android/replay/LastSegmentData;->id:I

    return v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/android/replay/LastSegmentData;->duration:J

    return-wide v0
.end method

.method public final component6()Lio/sentry/SentryReplayEvent$ReplayType;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/LastSegmentData;->replayType:Lio/sentry/SentryReplayEvent$ReplayType;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/LastSegmentData;->screenAtStart:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/rrweb/RRWebEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/android/replay/LastSegmentData;->events:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Lio/sentry/android/replay/RecordingMetadata;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/LastSegmentData;->metadata:Lio/sentry/android/replay/RecordingMetadata;

    return-object v0
.end method

.method public final copy(Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/android/replay/ReplayCache;Ljava/util/Date;IJLio/sentry/SentryReplayEvent$ReplayType;Ljava/lang/String;Ljava/util/List;Lio/sentry/android/replay/RecordingMetadata;)Lio/sentry/android/replay/LastSegmentData;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
            "Lio/sentry/android/replay/ReplayCache;",
            "Ljava/util/Date;",
            "IJ",
            "Lio/sentry/SentryReplayEvent$ReplayType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lio/sentry/rrweb/RRWebEvent;",
            ">;",
            "Lio/sentry/android/replay/RecordingMetadata;",
            ")",
            "Lio/sentry/android/replay/LastSegmentData;"
        }
    .end annotation

    const-string v0, "recorderConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamp"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayType"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lio/sentry/android/replay/LastSegmentData;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lio/sentry/android/replay/LastSegmentData;-><init>(Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/android/replay/ReplayCache;Ljava/util/Date;IJLio/sentry/SentryReplayEvent$ReplayType;Ljava/lang/String;Ljava/util/List;Lio/sentry/android/replay/RecordingMetadata;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/sentry/android/replay/LastSegmentData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/sentry/android/replay/LastSegmentData;

    iget-object v3, p0, Lio/sentry/android/replay/LastSegmentData;->recorderConfig:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    iget-object v4, v1, Lio/sentry/android/replay/LastSegmentData;->recorderConfig:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lio/sentry/android/replay/LastSegmentData;->cache:Lio/sentry/android/replay/ReplayCache;

    iget-object v4, v1, Lio/sentry/android/replay/LastSegmentData;->cache:Lio/sentry/android/replay/ReplayCache;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lio/sentry/android/replay/LastSegmentData;->timestamp:Ljava/util/Date;

    iget-object v4, v1, Lio/sentry/android/replay/LastSegmentData;->timestamp:Ljava/util/Date;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lio/sentry/android/replay/LastSegmentData;->id:I

    iget v4, v1, Lio/sentry/android/replay/LastSegmentData;->id:I

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lio/sentry/android/replay/LastSegmentData;->duration:J

    iget-wide v5, v1, Lio/sentry/android/replay/LastSegmentData;->duration:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lio/sentry/android/replay/LastSegmentData;->replayType:Lio/sentry/SentryReplayEvent$ReplayType;

    iget-object v4, v1, Lio/sentry/android/replay/LastSegmentData;->replayType:Lio/sentry/SentryReplayEvent$ReplayType;

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lio/sentry/android/replay/LastSegmentData;->screenAtStart:Ljava/lang/String;

    iget-object v4, v1, Lio/sentry/android/replay/LastSegmentData;->screenAtStart:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lio/sentry/android/replay/LastSegmentData;->events:Ljava/util/List;

    iget-object v4, v1, Lio/sentry/android/replay/LastSegmentData;->events:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lio/sentry/android/replay/LastSegmentData;->metadata:Lio/sentry/android/replay/RecordingMetadata;

    iget-object v1, v1, Lio/sentry/android/replay/LastSegmentData;->metadata:Lio/sentry/android/replay/RecordingMetadata;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getCache()Lio/sentry/android/replay/ReplayCache;
    .locals 1

    .line 518
    iget-object v0, p0, Lio/sentry/android/replay/LastSegmentData;->cache:Lio/sentry/android/replay/ReplayCache;

    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    .line 521
    iget-wide v0, p0, Lio/sentry/android/replay/LastSegmentData;->duration:J

    return-wide v0
.end method

.method public final getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/rrweb/RRWebEvent;",
            ">;"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lio/sentry/android/replay/LastSegmentData;->events:Ljava/util/List;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 520
    iget v0, p0, Lio/sentry/android/replay/LastSegmentData;->id:I

    return v0
.end method

.method public final getMetadata()Lio/sentry/android/replay/RecordingMetadata;
    .locals 1

    .line 526
    iget-object v0, p0, Lio/sentry/android/replay/LastSegmentData;->metadata:Lio/sentry/android/replay/RecordingMetadata;

    return-object v0
.end method

.method public final getRecorderConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .locals 1

    .line 517
    iget-object v0, p0, Lio/sentry/android/replay/LastSegmentData;->recorderConfig:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    return-object v0
.end method

.method public final getReplayType()Lio/sentry/SentryReplayEvent$ReplayType;
    .locals 1

    .line 522
    iget-object v0, p0, Lio/sentry/android/replay/LastSegmentData;->replayType:Lio/sentry/SentryReplayEvent$ReplayType;

    return-object v0
.end method

.method public final getScreenAtStart()Ljava/lang/String;
    .locals 1

    .line 523
    iget-object v0, p0, Lio/sentry/android/replay/LastSegmentData;->screenAtStart:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()Ljava/util/Date;
    .locals 1

    .line 519
    iget-object v0, p0, Lio/sentry/android/replay/LastSegmentData;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lio/sentry/android/replay/LastSegmentData;->recorderConfig:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    invoke-virtual {v0}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/sentry/android/replay/LastSegmentData;->cache:Lio/sentry/android/replay/ReplayCache;

    invoke-virtual {v2}, Lio/sentry/android/replay/ReplayCache;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/sentry/android/replay/LastSegmentData;->timestamp:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lio/sentry/android/replay/LastSegmentData;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lio/sentry/android/replay/LastSegmentData;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/sentry/android/replay/LastSegmentData;->replayType:Lio/sentry/SentryReplayEvent$ReplayType;

    invoke-virtual {v2}, Lio/sentry/SentryReplayEvent$ReplayType;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/sentry/android/replay/LastSegmentData;->screenAtStart:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/sentry/android/replay/LastSegmentData;->screenAtStart:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/sentry/android/replay/LastSegmentData;->events:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/sentry/android/replay/LastSegmentData;->metadata:Lio/sentry/android/replay/RecordingMetadata;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lio/sentry/android/replay/LastSegmentData;->metadata:Lio/sentry/android/replay/RecordingMetadata;

    invoke-virtual {v2}, Lio/sentry/android/replay/RecordingMetadata;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastSegmentData(recorderConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/LastSegmentData;->recorderConfig:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/LastSegmentData;->cache:Lio/sentry/android/replay/ReplayCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/LastSegmentData;->timestamp:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/sentry/android/replay/LastSegmentData;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/android/replay/LastSegmentData;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", replayType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/LastSegmentData;->replayType:Lio/sentry/SentryReplayEvent$ReplayType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenAtStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/LastSegmentData;->screenAtStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/LastSegmentData;->events:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/LastSegmentData;->metadata:Lio/sentry/android/replay/RecordingMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
