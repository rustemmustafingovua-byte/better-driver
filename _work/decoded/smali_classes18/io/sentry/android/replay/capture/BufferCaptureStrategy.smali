.class public final Lio/sentry/android/replay/capture/BufferCaptureStrategy;
.super Lio/sentry/android/replay/capture/BaseCaptureStrategy;
.source "BufferCaptureStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/capture/BufferCaptureStrategy$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferCaptureStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferCaptureStrategy.kt\nio/sentry/android/replay/capture/BufferCaptureStrategy\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,290:1\n1872#2,3:291\n*S KotlinDebug\n*F\n+ 1 BufferCaptureStrategy.kt\nio/sentry/android/replay/capture/BufferCaptureStrategy\n*L\n249#1:291,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0001\u0018\u0000 =2\u00020\u0001:\u0001=B^\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012%\u0008\u0002\u0010\r\u001a\u001f\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u0014J$\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00190\u000eH\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J$\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\"2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u00190\u000eH\u0002J\u0012\u0010%\u001a\u00020\u00192\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0002J\u001c\u0010(\u001a\u00020\u00192\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00190\u000eH\u0016J\u0008\u0010)\u001a\u00020\u001bH\u0002J\u0010\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020,H\u0016J@\u0010-\u001a\u00020\u00192\u0008\u0010.\u001a\u0004\u0018\u00010/2,\u00100\u001a(\u0012\u0004\u0012\u00020\u0013\u0012\u0013\u0012\u001102\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(3\u0012\u0004\u0012\u00020\u001901\u00a2\u0006\u0002\u00084H\u0016J\u0010\u00105\u001a\u00020\u00192\u0006\u00106\u001a\u000207H\u0016J\u0008\u00108\u001a\u00020\u0019H\u0016J\u0008\u00109\u001a\u00020\u0019H\u0016J\u0012\u0010:\u001a\u00020\u0019*\u0008\u0012\u0004\u0012\u00020\u00170\u0016H\u0002J\u001a\u0010;\u001a\u00020\u0019*\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010<\u001a\u000202H\u0002R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lio/sentry/android/replay/capture/BufferCaptureStrategy;",
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
        "bufferedSegments",
        "",
        "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;",
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
        "deleteFile",
        "file",
        "Ljava/io/File;",
        "flush",
        "isReplayRateLimited",
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
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "pause",
        "stop",
        "capture",
        "rotate",
        "bufferLimit",
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

.field public static final Companion:Lio/sentry/android/replay/capture/BufferCaptureStrategy$Companion;

.field private static final ENVELOPE_PROCESSING_DELAY:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "BufferCaptureStrategy"


# instance fields
.field private final bufferedSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;",
            ">;"
        }
    .end annotation
.end field

.field private final dateProvider:Lio/sentry/transport/ICurrentDateProvider;

.field private final options:Lio/sentry/SentryOptions;

.field private final scopes:Lio/sentry/IScopes;

.field private final ticker:Lio/sentry/time/MonotonicTicker;


# direct methods
.method public static synthetic $r8$lambda$L3b0rRpvLW4tv48pM6SYElSMbIk(Lio/sentry/android/replay/capture/BufferCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->createCurrentSegment$lambda$1(Lio/sentry/android/replay/capture/BufferCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MSJ2px7U--OgNaU9fTWZchprnC0(Ljava/io/File;Lio/sentry/android/replay/capture/BufferCaptureStrategy;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->stop$lambda$0(Ljava/io/File;Lio/sentry/android/replay/capture/BufferCaptureStrategy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nA-VOjgiTs1MNeIgeKj9xj-Vg3o(Lio/sentry/android/replay/capture/BufferCaptureStrategy;Lkotlin/jvm/functions/Function2;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->onScreenshotRecorded$lambda$0(Lio/sentry/android/replay/capture/BufferCaptureStrategy;Lkotlin/jvm/functions/Function2;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/replay/capture/BufferCaptureStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->Companion:Lio/sentry/android/replay/capture/BufferCaptureStrategy$Companion;

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->$stable:I

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V
    .locals 2
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

    .line 54
    nop

    .line 55
    nop

    .line 56
    nop

    .line 57
    nop

    .line 58
    nop

    .line 59
    nop

    .line 60
    nop

    .line 61
    nop

    .line 54
    invoke-direct/range {p0 .. p7}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V

    .line 46
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
    iput-object p2, p1, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->options:Lio/sentry/SentryOptions;

    .line 47
    iput-object p3, p1, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->scopes:Lio/sentry/IScopes;

    .line 48
    iput-object p4, p1, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 49
    iput-object p5, p1, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->ticker:Lio/sentry/time/MonotonicTicker;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, p1, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->bufferedSegments:Ljava/util/List;

    .line 45
    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    .line 45
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    .line 45
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

    invoke-direct/range {v1 .. v8}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V

    .line 53
    return-void
.end method

.method public static final synthetic access$capture(Lio/sentry/android/replay/capture/BufferCaptureStrategy;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Lio/sentry/android/replay/capture/BufferCaptureStrategy;
    .param p1, "$receiver"    # Ljava/util/List;

    .line 41
    invoke-direct {p0, p1}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->capture(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$deleteFile(Lio/sentry/android/replay/capture/BufferCaptureStrategy;Ljava/io/File;)V
    .locals 0
    .param p0, "$this"    # Lio/sentry/android/replay/capture/BufferCaptureStrategy;
    .param p1, "file"    # Ljava/io/File;

    .line 41
    invoke-direct {p0, p1}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$getBufferedSegments$p(Lio/sentry/android/replay/capture/BufferCaptureStrategy;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    .line 41
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->bufferedSegments:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getScopes$p(Lio/sentry/android/replay/capture/BufferCaptureStrategy;)Lio/sentry/IScopes;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    .line 41
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->scopes:Lio/sentry/IScopes;

    return-object v0
.end method

.method private final capture(Ljava/util/List;)V
    .locals 4
    .param p1, "$this$capture"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;",
            ">;)V"
        }
    .end annotation

    .line 222
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->removeFirstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    .line 223
    .local v0, "bufferedSegment":Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;
    :goto_0
    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->scopes:Lio/sentry/IScopes;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->capture$default(Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;Lio/sentry/IScopes;Lio/sentry/Hint;ILjava/lang/Object;)V

    .line 225
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->removeFirstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    .line 229
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method private final createCurrentSegment(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 16
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

    .line 254
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual {v1}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->getRecorderConfig$sentry_android_replay_release()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v6

    .line 255
    .local v6, "currentConfig":Lio/sentry/android/replay/ScreenshotRecorderConfig;
    if-nez v6, :cond_0

    .line 256
    iget-object v0, v1, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 257
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recorder config is not set, not creating segment for task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 256
    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    return-void

    .line 262
    :cond_0
    iget-object v0, v1, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->getErrorReplayDuration()J

    move-result-wide v9

    .line 263
    .local v9, "errorReplayDuration":J
    iget-object v0, v1, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v11

    .line 265
    .local v11, "now":J
    invoke-virtual {v1}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->getCache()Lio/sentry/android/replay/ReplayCache;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayCache;->firstFrameTimestamp$sentry_android_replay_release()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .local v2, "it":J
    const/4 v0, 0x0

    .line 267
    .local v0, "$i$a$-let-BufferCaptureStrategy$createCurrentSegment$currentSegmentTimestamp$1":I
    invoke-static {v2, v3}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v0

    .line 265
    .end local v0    # "$i$a$-let-BufferCaptureStrategy$createCurrentSegment$currentSegmentTimestamp$1":I
    .end local v2    # "it":J
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v0

    goto :goto_1

    .line 268
    :cond_2
    :goto_0
    sub-long v2, v11, v9

    invoke-static {v2, v3}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v0

    move-object v4, v0

    .line 265
    :goto_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 264
    nop

    .line 269
    .local v4, "currentSegmentTimestamp":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v11, v2

    .line 270
    .local v2, "duration":J
    invoke-virtual {v1}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->getCurrentReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v5

    .line 272
    .local v5, "replayId":Lio/sentry/protocol/SentryId;
    invoke-virtual {v1}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->getReplayExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v13

    .line 273
    new-instance v14, Lio/sentry/android/replay/util/ReplayRunnable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BufferCaptureStrategy."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 272
    new-instance v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/replay/capture/BufferCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lkotlin/jvm/functions/Function1;)V

    .line 273
    invoke-direct {v14, v15, v0}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    check-cast v14, Ljava/lang/Runnable;

    .line 272
    invoke-interface {v13, v14}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 288
    return-void
.end method

.method private static final createCurrentSegment$lambda$1(Lio/sentry/android/replay/capture/BufferCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lkotlin/jvm/functions/Function1;)V
    .locals 18
    .param p0, "this$0"    # Lio/sentry/android/replay/capture/BufferCaptureStrategy;
    .param p1, "$duration"    # J
    .param p3, "$currentSegmentTimestamp"    # Ljava/util/Date;
    .param p4, "$replayId"    # Lio/sentry/protocol/SentryId;
    .param p5, "$currentConfig"    # Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .param p6, "$onSegmentCreated"    # Lkotlin/jvm/functions/Function1;

    .line 275
    move-object/from16 v1, p0

    check-cast v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 276
    nop

    .line 277
    nop

    .line 278
    nop

    .line 279
    invoke-virtual/range {p0 .. p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->getCurrentSegment()I

    move-result v6

    .line 280
    invoke-virtual/range {p5 .. p5}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingHeight()I

    move-result v7

    .line 281
    invoke-virtual/range {p5 .. p5}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getRecordingWidth()I

    move-result v8

    .line 282
    invoke-virtual/range {p5 .. p5}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getFrameRate()I

    move-result v9

    .line 283
    invoke-virtual/range {p5 .. p5}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getBitRate()I

    move-result v10

    .line 275
    const/16 v16, 0x1f00

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v17}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->createSegmentInternal$default(Lio/sentry/android/replay/capture/BaseCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIIIILio/sentry/SentryReplayEvent$ReplayType;Lio/sentry/android/replay/ReplayCache;Ljava/lang/String;Ljava/util/List;Ljava/util/Deque;ILjava/lang/Object;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    move-result-object v0

    .line 274
    nop

    .line 285
    .local v0, "segment":Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void
.end method

.method private final deleteFile(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .line 209
    const-string v0, "Failed to delete replay segment: %s"

    if-nez p1, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    nop

    .line 213
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    iget-object v1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v1, v0, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method private final isReplayRateLimited()Z
    .locals 5

    .line 204
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->scopes:Lio/sentry/IScopes;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    if-eqz v0, :cond_2

    .local v0, "it":Lio/sentry/transport/RateLimiter;
    const/4 v2, 0x0

    .line 205
    .local v2, "$i$a$-let-BufferCaptureStrategy$isReplayRateLimited$1":I
    sget-object v3, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-virtual {v0, v3}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    sget-object v3, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    invoke-virtual {v0, v3}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    .line 204
    .end local v0    # "it":Lio/sentry/transport/RateLimiter;
    .end local v2    # "$i$a$-let-BufferCaptureStrategy$isReplayRateLimited$1":I
    :goto_1
    nop

    .line 206
    nop

    .line 204
    if-ne v0, v4, :cond_2

    move v1, v4

    .line 206
    :cond_2
    return v1
.end method

.method private static final onScreenshotRecorded$lambda$0(Lio/sentry/android/replay/capture/BufferCaptureStrategy;Lkotlin/jvm/functions/Function2;J)V
    .locals 5
    .param p0, "this$0"    # Lio/sentry/android/replay/capture/BufferCaptureStrategy;
    .param p1, "$store"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$frameTimestamp"    # J

    .line 141
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->getCache()Lio/sentry/android/replay/ReplayCache;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 144
    .local v0, "now":J
    iget-object v2, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryReplayOptions;->getErrorReplayDuration()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 145
    .local v2, "bufferLimit":J
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->getCache()Lio/sentry/android/replay/ReplayCache;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2, v3}, Lio/sentry/android/replay/ReplayCache;->rotate$sentry_android_replay_release(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v4}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->setScreenAtStart(Ljava/lang/String;)V

    .line 146
    iget-object v4, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->bufferedSegments:Ljava/util/List;

    invoke-direct {p0, v4, v2, v3}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->rotate(Ljava/util/List;J)V

    .line 147
    return-void
.end method

.method private final rotate(Ljava/util/List;J)V
    .locals 9
    .param p1, "$this$rotate"    # Ljava/util/List;
    .param p2, "bufferLimit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;",
            ">;J)V"
        }
    .end annotation

    .line 235
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 236
    .local v0, "removed":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v1, Lio/sentry/android/replay/capture/BufferCaptureStrategy$rotate$1;

    invoke-direct {v1, p2, p3, p0, v0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy$rotate$1;-><init>(JLio/sentry/android/replay/capture/BufferCaptureStrategy;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 247
    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_2

    .line 249
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 291
    .local v2, "$i$f$forEachIndexed":I
    const/4 v3, 0x0

    .line 292
    .local v3, "index$iv":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index$iv":I
    .local v6, "index$iv":I
    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v7, v5

    check-cast v7, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    .local v3, "index":I
    .local v7, "segment":Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;
    const/4 v8, 0x0

    .line 249
    .local v8, "$i$a$-forEachIndexed-BufferCaptureStrategy$rotate$2":I
    invoke-virtual {v7, v3}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->setSegmentId(I)V

    .line 292
    .end local v3    # "index":I
    .end local v7    # "segment":Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;
    .end local v8    # "$i$a$-forEachIndexed-BufferCaptureStrategy$rotate$2":I
    move v3, v6

    .end local v5    # "item$iv":Ljava/lang/Object;
    goto :goto_0

    .line 293
    .end local v6    # "index$iv":I
    .local v3, "index$iv":I
    :cond_1
    nop

    .line 251
    .end local v1    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEachIndexed":I
    .end local v3    # "index$iv":I
    :cond_2
    return-void
.end method

.method private static final stop$lambda$0(Ljava/io/File;Lio/sentry/android/replay/capture/BufferCaptureStrategy;)V
    .locals 1
    .param p0, "$replayCacheDir"    # Ljava/io/File;
    .param p1, "this$0"    # Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    .line 87
    sget-object v0, Lio/sentry/android/replay/ReplayCache;->Companion:Lio/sentry/android/replay/ReplayCache$Companion;

    invoke-virtual {v0, p0}, Lio/sentry/android/replay/ReplayCache$Companion;->deleteExceptSegmentVideos(Ljava/io/File;)V

    .line 88
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->setCurrentSegment(I)V

    .line 89
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

    .line 95
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->isTerminating()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    iget-object v1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    .line 99
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 100
    new-array v0, v0, [Ljava/lang/Object;

    .line 98
    const-string v3, "Not capturing replay for crashed event, will be captured on next launch"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    return-void

    .line 105
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->isReplayRateLimited()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "Replay is rate-limited, not capturing for event"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->RATELIMIT_BACKOFF:Lio/sentry/clientreport/DiscardReason;

    sget-object v2, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    invoke-interface {v0, v1, v2}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 114
    return-void

    .line 117
    :cond_1
    new-instance v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$1;

    invoke-direct {v0, p0, p2}, Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$1;-><init>(Lio/sentry/android/replay/capture/BufferCaptureStrategy;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "capture_replay"

    invoke-direct {p0, v1, v0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->createCurrentSegment(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 128
    return-void
.end method

.method public convert()Lio/sentry/android/replay/capture/CaptureStrategy;
    .locals 11

    .line 163
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->isTerminating()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 165
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 166
    new-array v1, v1, [Ljava/lang/Object;

    .line 164
    const-string v3, "Not converting to session mode, because the process is about to terminate"

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    move-object v0, p0

    check-cast v0, Lio/sentry/android/replay/capture/CaptureStrategy;

    return-object v0

    .line 170
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->isReplayRateLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Not converting to session mode, because replay is rate-limited"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    move-object v0, p0

    check-cast v0, Lio/sentry/android/replay/capture/CaptureStrategy;

    return-object v0

    .line 180
    :cond_1
    new-instance v1, Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    .line 181
    iget-object v2, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->options:Lio/sentry/SentryOptions;

    .line 182
    iget-object v3, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->scopes:Lio/sentry/IScopes;

    .line 183
    iget-object v4, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 184
    iget-object v5, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->ticker:Lio/sentry/time/MonotonicTicker;

    .line 185
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->getReplayExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 186
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->getPersistingExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    .line 180
    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 179
    nop

    .line 188
    .local v1, "captureStrategy":Lio/sentry/android/replay/capture/SessionCaptureStrategy;
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->getRecorderConfig$sentry_android_replay_release()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->setRecorderConfig$sentry_android_replay_release(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    .line 189
    nop

    .line 190
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->getCurrentSegment()I

    move-result v0

    .line 191
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->getCurrentReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    .line 192
    sget-object v3, Lio/sentry/SentryReplayEvent$ReplayType;->BUFFER:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 189
    invoke-virtual {v1, v0, v2, v3}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->start(ILio/sentry/protocol/SentryId;Lio/sentry/SentryReplayEvent$ReplayType;)V

    .line 194
    move-object v0, v1

    check-cast v0, Lio/sentry/android/replay/capture/CaptureStrategy;

    return-object v0
.end method

.method public flush(Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->captureReplay(ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onConfigurationChanged(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 2
    .param p1, "recorderConfig"    # Lio/sentry/android/replay/ScreenshotRecorderConfig;

    const-string v0, "recorderConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$onConfigurationChanged$1;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy$onConfigurationChanged$1;-><init>(Lio/sentry/android/replay/capture/BufferCaptureStrategy;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "configuration_changed"

    invoke-direct {p0, v1, v0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->createCurrentSegment(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 159
    invoke-super {p0, p1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->onConfigurationChanged(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    .line 160
    return-void
.end method

.method public onScreenshotRecorded(Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)V
    .locals 6
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

    .line 138
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 139
    .local v0, "frameTimestamp":J
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->getReplayExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 140
    new-instance v3, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 139
    new-instance v4, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p2, v0, v1}, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/replay/capture/BufferCaptureStrategy;Lkotlin/jvm/functions/Function2;J)V

    .line 140
    const-string v5, "BufferCaptureStrategy.add_frame"

    invoke-direct {v3, v5, v4}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    check-cast v3, Ljava/lang/Runnable;

    .line 139
    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 149
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-super {p0, p1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 199
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryReplayOptions;->getErrorReplayDuration()J

    move-result-wide v2

    sub-long v6, v0, v2

    .line 200
    .local v6, "bufferLimit":J
    sget-object v4, Lio/sentry/android/replay/capture/CaptureStrategy;->Companion:Lio/sentry/android/replay/capture/CaptureStrategy$Companion;

    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->getCurrentEvents()Ljava/util/Deque;

    move-result-object v5

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->rotateEvents$sentry_android_replay_release$default(Lio/sentry/android/replay/capture/CaptureStrategy$Companion;Ljava/util/Deque;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 201
    return-void
.end method

.method public pause()V
    .locals 2

    .line 73
    new-instance v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$pause$1;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy$pause$1;-><init>(Lio/sentry/android/replay/capture/BufferCaptureStrategy;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "pause"

    invoke-direct {p0, v1, v0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->createCurrentSegment(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 80
    invoke-super {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->pause()V

    .line 81
    return-void
.end method

.method public stop()V
    .locals 5

    .line 84
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->getCache()Lio/sentry/android/replay/ReplayCache;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayCache;->getReplayCacheDir$sentry_android_replay_release()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 85
    .local v0, "replayCacheDir":Ljava/io/File;
    :goto_0
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->getReplayExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 86
    new-instance v2, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 85
    new-instance v3, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda2;-><init>(Ljava/io/File;Lio/sentry/android/replay/capture/BufferCaptureStrategy;)V

    .line 86
    const-string v4, "BufferCaptureStrategy.stop"

    invoke-direct {v2, v4, v3}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 85
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 91
    invoke-super {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->stop()V

    .line 92
    return-void
.end method
