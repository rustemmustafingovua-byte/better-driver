.class public final Lio/sentry/android/replay/capture/SessionCaptureStrategy;
.super Lio/sentry/android/replay/capture/BaseCaptureStrategy;
.source "SessionCaptureStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/capture/SessionCaptureStrategy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 52\u00020\u0001:\u00015B^\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012%\u0008\u0002\u0010\r\u001a\u001f\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u0014J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00160\u000eH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J$\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001f2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u00160\u000eH\u0002J\u001c\u0010\"\u001a\u00020\u00162\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00160\u000eH\u0016J\u0010\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020%H\u0016J@\u0010&\u001a\u00020\u00162\u0008\u0010\'\u001a\u0004\u0018\u00010(2,\u0010)\u001a(\u0012\u0004\u0012\u00020\u0013\u0012\u0013\u0012\u00110+\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(,\u0012\u0004\u0012\u00020\u00160*\u00a2\u0006\u0002\u0008-H\u0016J\u0008\u0010.\u001a\u00020\u0016H\u0016J\"\u0010/\u001a\u00020\u00162\u0006\u00100\u001a\u0002012\u0006\u0010\u0012\u001a\u00020\u000f2\u0008\u00102\u001a\u0004\u0018\u000103H\u0016J\u0008\u00104\u001a\u00020\u0016H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lio/sentry/android/replay/capture/SessionCaptureStrategy;",
        "Lio/sentry/android/replay/capture/BaseCaptureStrategy;",
        "options",
        "Lio/sentry/SentryOptions;",
        "scopes",
        "Lio/sentry/IScopes;",
        "dateProvider",
        "Lio/sentry/transport/ICurrentDateProvider;",
        "ticker",
        "Lio/sentry/time/MonotonicTicker;",
        "executor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "persistingExecutor",
        "replayCacheProvider",
        "Lkotlin/Function1;",
        "Lio/sentry/protocol/SentryId;",
        "Lkotlin/ParameterName;",
        "name",
        "replayId",
        "Lio/sentry/android/replay/ReplayCache;",
        "(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V",
        "captureReplay",
        "",
        "isTerminating",
        "",
        "onSegmentSent",
        "Ljava/util/Date;",
        "convert",
        "Lio/sentry/android/replay/capture/CaptureStrategy;",
        "createCurrentSegment",
        "taskName",
        "",
        "onSegmentCreated",
        "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;",
        "flush",
        "onConfigurationChanged",
        "recorderConfig",
        "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "onScreenshotRecorded",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "store",
        "Lkotlin/Function2;",
        "",
        "frameTimestamp",
        "Lkotlin/ExtensionFunctionType;",
        "pause",
        "start",
        "segmentId",
        "",
        "replayType",
        "Lio/sentry/SentryReplayEvent$ReplayType;",
        "stop",
        "Companion",
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

.field public static final Companion:Lio/sentry/android/replay/capture/SessionCaptureStrategy$Companion;

.field private static final TAG:Ljava/lang/String; = "SessionCaptureStrategy"


# instance fields
.field private final dateProvider:Lio/sentry/transport/ICurrentDateProvider;

.field private final options:Lio/sentry/SentryOptions;

.field private final scopes:Lio/sentry/IScopes;


# direct methods
.method public static synthetic $r8$lambda$0T8afHbNFJvgSBGoczvMDTD7BQk(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lkotlin/jvm/functions/Function2;JLio/sentry/android/replay/ScreenshotRecorderConfig;Z)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->onScreenshotRecorded$lambda$0(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lkotlin/jvm/functions/Function2;JLio/sentry/android/replay/ScreenshotRecorderConfig;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$VT5vjpIEYuVoTf4zBUkxSTUrKXY(Lio/sentry/android/replay/capture/SessionCaptureStrategy;JLio/sentry/protocol/SentryId;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->createCurrentSegment$lambda$0(Lio/sentry/android/replay/capture/SessionCaptureStrategy;JLio/sentry/protocol/SentryId;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cjSTkSaWMoMHihT5yRORY0h7B1s(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lio/sentry/IScope;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->start$lambda$0(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lio/sentry/IScope;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ir67chUB_9tvo5FSJaa3ltN7KJs(Lio/sentry/IScope;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->stop$lambda$0(Lio/sentry/IScope;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->Companion:Lio/sentry/android/replay/capture/SessionCaptureStrategy$Companion;

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->$stable:I

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "scopes"    # Lio/sentry/IScopes;
    .param p3, "dateProvider"    # Lio/sentry/transport/ICurrentDateProvider;
    .param p4, "ticker"    # Lio/sentry/time/MonotonicTicker;
    .param p5, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p6, "persistingExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p7, "replayCacheProvider"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryOptions;",
            "Lio/sentry/IScopes;",
            "Lio/sentry/transport/ICurrentDateProvider;",
            "Lio/sentry/time/MonotonicTicker;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/android/replay/ReplayCache;",
            ">;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ticker"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "persistingExecutor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    nop

    .line 43
    nop

    .line 44
    nop

    .line 45
    nop

    .line 46
    nop

    .line 47
    nop

    .line 48
    nop

    .line 49
    nop

    .line 42
    invoke-direct/range {p0 .. p7}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V

    .line 34
    move-object v0, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "options":Lio/sentry/SentryOptions;
    .local v0, "replayCacheProvider":Lkotlin/jvm/functions/Function1;
    .local p2, "options":Lio/sentry/SentryOptions;
    .local p3, "scopes":Lio/sentry/IScopes;
    .local p4, "dateProvider":Lio/sentry/transport/ICurrentDateProvider;
    .local p5, "ticker":Lio/sentry/time/MonotonicTicker;
    .local p6, "executor":Ljava/util/concurrent/ScheduledExecutorService;
    .local p7, "persistingExecutor":Ljava/util/concurrent/ScheduledExecutorService;
    iput-object p2, p1, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    .line 35
    iput-object p3, p1, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->scopes:Lio/sentry/IScopes;

    .line 36
    iput-object p4, p1, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 33
    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    .line 33
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    .line 33
    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V

    .line 41
    return-void
.end method

.method public static final synthetic access$getScopes$p(Lio/sentry/android/replay/capture/SessionCaptureStrategy;)Lio/sentry/IScopes;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    .line 31
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->scopes:Lio/sentry/IScopes;

    return-object v0
.end method

.method private final createCurrentSegment(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 10
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2, "onSegmentCreated"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getRecorderConfig$sentry_android_replay_release()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v5

    .line 193
    .local v5, "currentConfig":Lio/sentry/android/replay/ScreenshotRecorderConfig;
    if-nez v5, :cond_0

    .line 194
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 195
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recorder config is not set, not creating segment for task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 194
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 202
    .local v2, "requestedAt":J
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCurrentReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v4

    .line 203
    .local v4, "replayId":Lio/sentry/protocol/SentryId;
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getReplayExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    .line 204
    new-instance v8, Lio/sentry/android/replay/util/ReplayRunnable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionCaptureStrategy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 203
    new-instance v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v6, p2

    .end local p2    # "onSegmentCreated":Lkotlin/jvm/functions/Function1;
    .local v6, "onSegmentCreated":Lkotlin/jvm/functions/Function1;
    invoke-direct/range {v0 .. v6}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;JLio/sentry/protocol/SentryId;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lkotlin/jvm/functions/Function1;)V

    .line 204
    invoke-direct {v8, v9, v0}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    check-cast v8, Ljava/lang/Runnable;

    .line 203
    invoke-interface {v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 222
    return-void
.end method

.method private static final createCurrentSegment$lambda$0(Lio/sentry/android/replay/capture/SessionCaptureStrategy;JLio/sentry/protocol/SentryId;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lkotlin/jvm/functions/Function1;)V
    .locals 18
    .param p0, "this$0"    # Lio/sentry/android/replay/capture/SessionCaptureStrategy;
    .param p1, "$requestedAt"    # J
    .param p3, "$replayId"    # Lio/sentry/protocol/SentryId;
    .param p4, "$currentConfig"    # Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .param p5, "$onSegmentCreated"    # Lkotlin/jvm/functions/Function1;

    .line 207
    invoke-virtual/range {p0 .. p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getSegmentTimestamp()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v4, v0

    .line 209
    .local v4, "currentSegmentTimestamp":Ljava/util/Date;
    move-object/from16 v1, p0

    check-cast v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 210
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, p1, v2

    .line 211
    nop

    .line 212
    nop

    .line 213
    invoke-virtual/range {p0 .. p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCurrentSegment()I

    move-result v6

    .line 214
    invoke-virtual/range {p4 .. p4}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingHeight()I

    move-result v7

    .line 215
    invoke-virtual/range {p4 .. p4}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingWidth()I

    move-result v8

    .line 216
    invoke-virtual/range {p4 .. p4}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getFrameRate()I

    move-result v9

    .line 217
    invoke-virtual/range {p4 .. p4}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getBitRate()I

    move-result v10

    .line 209
    const/16 v16, 0x1f00

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v17}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->createSegmentInternal$default(Lio/sentry/android/replay/capture/BaseCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIIIILio/sentry/SentryReplayEvent$ReplayType;Lio/sentry/android/replay/ReplayCache;Ljava/lang/String;Ljava/util/List;Ljava/util/Deque;ILjava/lang/Object;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    move-result-object v0

    .line 208
    nop

    .line 219
    .local v0, "segment":Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method private static final onScreenshotRecorded$lambda$0(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lkotlin/jvm/functions/Function2;JLio/sentry/android/replay/ScreenshotRecorderConfig;Z)V
    .locals 21
    .param p0, "this$0"    # Lio/sentry/android/replay/capture/SessionCaptureStrategy;
    .param p1, "$store"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$frameTimestamp"    # J
    .param p4, "$currentConfig"    # Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .param p5, "$deadlineExceeded"    # Z

    .line 121
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCache()Lio/sentry/android/replay/ReplayCache;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-interface {v3, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    .line 123
    :goto_0
    invoke-virtual {v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getSegmentTimestamp()Ljava/util/Date;

    move-result-object v7

    .line 124
    .local v7, "currentSegmentTimestamp":Ljava/util/Date;
    const/4 v1, 0x0

    if-nez v7, :cond_1

    .line 125
    move-object/from16 v2, p0

    .local v2, "$this$onScreenshotRecorded_u24lambda_u240_u240":Lio/sentry/android/replay/capture/SessionCaptureStrategy;
    const/4 v4, 0x0

    .line 126
    .local v4, "$i$a$-run-SessionCaptureStrategy$onScreenshotRecorded$1$1":I
    iget-object v5, v2, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v8, "Segment timestamp is not set, not recording frame"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v5, v6, v8, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    return-void

    .line 130
    .end local v2    # "$this$onScreenshotRecorded_u24lambda_u240_u240":Lio/sentry/android/replay/capture/SessionCaptureStrategy;
    .end local v4    # "$i$a$-run-SessionCaptureStrategy$onScreenshotRecorded$1$1":I
    :cond_1
    invoke-virtual {v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->isTerminating()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 132
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 133
    new-array v1, v1, [Ljava/lang/Object;

    .line 131
    const-string v5, "Not capturing segment, because the app is terminating, will be captured on next launch"

    invoke-interface {v2, v4, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    return-void

    .line 138
    :cond_2
    if-nez p4, :cond_3

    .line 139
    iget-object v2, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Recorder config is not set, not capturing a segment"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    return-void

    .line 143
    :cond_3
    nop

    .line 144
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v4, p2, v4

    .line 145
    iget-object v2, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryReplayOptions;->getSessionSegmentDuration()J

    move-result-wide v8

    cmp-long v2, v4, v8

    .line 144
    if-ltz v2, :cond_4

    .line 148
    move-object v4, v0

    check-cast v4, Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 149
    iget-object v2, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryReplayOptions;->getSessionSegmentDuration()J

    move-result-wide v5

    .line 150
    nop

    .line 151
    invoke-virtual {v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCurrentReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v8

    .line 152
    invoke-virtual {v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCurrentSegment()I

    move-result v9

    .line 153
    invoke-virtual/range {p4 .. p4}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingHeight()I

    move-result v10

    .line 154
    invoke-virtual/range {p4 .. p4}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingWidth()I

    move-result v11

    .line 155
    invoke-virtual/range {p4 .. p4}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getFrameRate()I

    move-result v12

    .line 156
    invoke-virtual/range {p4 .. p4}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getBitRate()I

    move-result v13

    .line 148
    const/16 v19, 0x1f00

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v4 .. v20}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->createSegmentInternal$default(Lio/sentry/android/replay/capture/BaseCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIIIILio/sentry/SentryReplayEvent$ReplayType;Lio/sentry/android/replay/ReplayCache;Ljava/lang/String;Ljava/util/List;Ljava/util/Deque;ILjava/lang/Object;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    move-result-object v2

    .line 147
    nop

    .line 158
    .local v2, "segment":Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
    instance-of v4, v2, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    if-eqz v4, :cond_4

    .line 159
    move-object v4, v2

    check-cast v4, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    iget-object v5, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->scopes:Lio/sentry/IScopes;

    const/4 v6, 0x2

    const/4 v8, 0x0

    invoke-static {v4, v5, v8, v6, v8}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->capture$default(Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;Lio/sentry/IScopes;Lio/sentry/Hint;ILjava/lang/Object;)V

    .line 160
    invoke-virtual {v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCurrentSegment()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->setCurrentSegment(I)V

    .line 162
    move-object v4, v2

    check-cast v4, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    invoke-virtual {v4}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->getReplay()Lio/sentry/SentryReplayEvent;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryReplayEvent;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->setSegmentTimestamp(Ljava/util/Date;)V

    .line 166
    .end local v2    # "segment":Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
    :cond_4
    if-eqz p5, :cond_5

    .line 167
    iget-object v2, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/ReplayController;->stop()V

    .line 168
    iget-object v2, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v5, "Session replay deadline exceeded (1h), stopping recording"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_5
    return-void
.end method

.method private static final start$lambda$0(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lio/sentry/IScope;)V
    .locals 4
    .param p0, "this$0"    # Lio/sentry/android/replay/capture/SessionCaptureStrategy;
    .param p1, "it"    # Lio/sentry/IScope;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCurrentReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/IScope;->setReplayId(Lio/sentry/protocol/SentryId;)V

    .line 61
    invoke-interface {p1}, Lio/sentry/IScope;->getScreen()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x2e

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v1}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->setScreenAtStart(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private static final stop$lambda$0(Lio/sentry/IScope;)V
    .locals 1
    .param p0, "it"    # Lio/sentry/IScope;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-interface {p0, v0}, Lio/sentry/IScope;->setReplayId(Lio/sentry/protocol/SentryId;)V

    return-void
.end method


# virtual methods
.method public captureReplay(ZLkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "isTerminating"    # Z
    .param p2, "onSegmentSent"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Date;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSegmentSent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 92
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 93
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 91
    const-string v3, "Replay is already running in \'session\' mode, not capturing for event"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->isTerminating()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 97
    return-void
.end method

.method public convert()Lio/sentry/android/replay/capture/CaptureStrategy;
    .locals 1

    .line 189
    move-object v0, p0

    check-cast v0, Lio/sentry/android/replay/capture/CaptureStrategy;

    return-object v0
.end method

.method public flush(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "onSegmentSent"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Date;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSegmentSent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$flush$1;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$flush$1;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "flush"

    invoke-direct {p0, v1, v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->createCurrentSegment(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 108
    return-void
.end method

.method public onConfigurationChanged(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 2
    .param p1, "recorderConfig"    # Lio/sentry/android/replay/ScreenshotRecorderConfig;

    const-string v0, "recorderConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$onConfigurationChanged$1;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$onConfigurationChanged$1;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "onConfigurationChanged"

    invoke-direct {p0, v1, v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->createCurrentSegment(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 186
    invoke-super {p0, p1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->onConfigurationChanged(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    .line 187
    return-void
.end method

.method public onScreenshotRecorded(Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "store"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/sentry/android/replay/ReplayCache;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "store"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getRecorderConfig$sentry_android_replay_release()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v6

    .line 117
    .local v6, "currentConfig":Lio/sentry/android/replay/ScreenshotRecorderConfig;
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 118
    .local v4, "frameTimestamp":J
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getReplayDeadline()Lio/sentry/time/Deadline;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/time/Deadline;->hasPassed()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v1

    .line 119
    .local v7, "deadlineExceeded":Z
    :goto_0
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getReplayExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 120
    new-instance v8, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 119
    new-instance v1, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p2

    .end local p2    # "store":Lkotlin/jvm/functions/Function2;
    .local v3, "store":Lkotlin/jvm/functions/Function2;
    invoke-direct/range {v1 .. v7}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lkotlin/jvm/functions/Function2;JLio/sentry/android/replay/ScreenshotRecorderConfig;Z)V

    .line 120
    const-string p2, "SessionCaptureStrategy.add_frame"

    invoke-direct {v8, p2, v1}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    check-cast v8, Ljava/lang/Runnable;

    .line 119
    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 172
    return-void
.end method

.method public pause()V
    .locals 2

    .line 66
    new-instance v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$pause$1;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$pause$1;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "pause"

    invoke-direct {p0, v1, v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->createCurrentSegment(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 73
    invoke-super {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->pause()V

    .line 74
    return-void
.end method

.method public start(ILio/sentry/protocol/SentryId;Lio/sentry/SentryReplayEvent$ReplayType;)V
    .locals 2
    .param p1, "segmentId"    # I
    .param p2, "replayId"    # Lio/sentry/protocol/SentryId;
    .param p3, "replayType"    # Lio/sentry/SentryReplayEvent$ReplayType;

    const-string v0, "replayId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1, p2, p3}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->start(ILio/sentry/protocol/SentryId;Lio/sentry/SentryReplayEvent$ReplayType;)V

    .line 59
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_0

    new-instance v1, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;)V

    invoke-interface {v0, v1}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 63
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 77
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->getCache()Lio/sentry/android/replay/ReplayCache;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayCache;->getReplayCacheDir$sentry_android_replay_release()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    .local v0, "replayCacheDir":Ljava/io/File;
    :goto_0
    new-instance v1, Lio/sentry/android/replay/capture/SessionCaptureStrategy$stop$1;

    invoke-direct {v1, p0, v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$stop$1;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Ljava/io/File;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-string v2, "stop"

    invoke-direct {p0, v2, v1}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->createCurrentSegment(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 85
    iget-object v1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->scopes:Lio/sentry/IScopes;

    if-eqz v1, :cond_1

    new-instance v2, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v2}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 86
    :cond_1
    invoke-super {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->stop()V

    .line 87
    return-void
.end method
