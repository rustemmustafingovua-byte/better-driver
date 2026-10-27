.class public final Lio/sentry/android/replay/ReplayCache;
.super Ljava/lang/Object;
.source "ReplayCache.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/ReplayCache$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReplayCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReplayCache.kt\nio/sentry/android/replay/ReplayCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 FileReadWrite.kt\nkotlin/io/FilesKt__FileReadWriteKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,547:1\n1#2:548\n1#2:554\n284#3,5:549\n743#4,4:555\n*S KotlinDebug\n*F\n+ 1 ReplayCache.kt\nio/sentry/android/replay/ReplayCache\n*L\n295#1:554\n295#1:549,5\n296#1:555,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0007\u0018\u0000 D2\u00020\u0001:\u0001DB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J)\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0015H\u0000\u00a2\u0006\u0002\u0008\'J\"\u0010 \u001a\u00020!2\u0006\u0010(\u001a\u00020\u00182\u0006\u0010$\u001a\u00020%2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0015J\u0008\u0010)\u001a\u00020!H\u0016JJ\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010,\u001a\u00020%2\u0006\u0010-\u001a\u00020%2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020/2\u0006\u00102\u001a\u00020/2\u0006\u00103\u001a\u00020/2\u0008\u0008\u0002\u00104\u001a\u00020\u0018J\u0010\u00105\u001a\u00020!2\u0006\u00106\u001a\u00020\u0018H\u0002J\u0012\u00107\u001a\u0002082\u0008\u00109\u001a\u0004\u0018\u00010\u000bH\u0002J\u0011\u0010:\u001a\u0004\u0018\u00010%H\u0000\u00a2\u0006\u0004\u0008;\u0010<J\u001f\u0010=\u001a\u00020!2\u0006\u0010>\u001a\u00020\u00152\u0008\u0010?\u001a\u0004\u0018\u00010\u0015H\u0000\u00a2\u0006\u0002\u0008@J\u0017\u0010A\u001a\u0004\u0018\u00010\u00152\u0006\u0010B\u001a\u00020%H\u0000\u00a2\u0006\u0002\u0008CR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u0014j\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0015`\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0017\u001a\u0004\u0018\u00010\u00188@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001d\u001a\u0004\u0018\u00010\u00188@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u001c\u001a\u0004\u0008\u001e\u0010\u001aR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006E"
    }
    d2 = {
        "Lio/sentry/android/replay/ReplayCache;",
        "Ljava/io/Closeable;",
        "options",
        "Lio/sentry/SentryOptions;",
        "replayId",
        "Lio/sentry/protocol/SentryId;",
        "(Lio/sentry/SentryOptions;Lio/sentry/protocol/SentryId;)V",
        "encoder",
        "Lio/sentry/android/replay/video/SimpleVideoEncoder;",
        "frames",
        "",
        "Lio/sentry/android/replay/ReplayFrame;",
        "getFrames$sentry_android_replay_release",
        "()Ljava/util/List;",
        "framesLock",
        "Lio/sentry/util/AutoClosableReentrantLock;",
        "isClosed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "lock",
        "ongoingSegment",
        "Ljava/util/LinkedHashMap;",
        "",
        "Lkotlin/collections/LinkedHashMap;",
        "ongoingSegmentFile",
        "Ljava/io/File;",
        "getOngoingSegmentFile$sentry_android_replay_release",
        "()Ljava/io/File;",
        "ongoingSegmentFile$delegate",
        "Lkotlin/Lazy;",
        "replayCacheDir",
        "getReplayCacheDir$sentry_android_replay_release",
        "replayCacheDir$delegate",
        "addFrame",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "frameTimestamp",
        "",
        "screen",
        "addFrame$sentry_android_replay_release",
        "screenshot",
        "close",
        "createVideoOf",
        "Lio/sentry/android/replay/GeneratedVideo;",
        "duration",
        "from",
        "segmentId",
        "",
        "height",
        "width",
        "frameRate",
        "bitRate",
        "videoFile",
        "deleteFile",
        "file",
        "encode",
        "",
        "frame",
        "firstFrameTimestamp",
        "firstFrameTimestamp$sentry_android_replay_release",
        "()Ljava/lang/Long;",
        "persistSegmentValues",
        "key",
        "value",
        "persistSegmentValues$sentry_android_replay_release",
        "rotate",
        "until",
        "rotate$sentry_android_replay_release",
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

.field public static final Companion:Lio/sentry/android/replay/ReplayCache$Companion;

.field public static final ONGOING_SEGMENT:Ljava/lang/String; = ".ongoing_segment"

.field private static final RECORDING_METADATA_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEGMENT_KEY_BIT_RATE:Ljava/lang/String; = "config.bit-rate"

.field public static final SEGMENT_KEY_DIST:Ljava/lang/String; = "replay.dist"

.field public static final SEGMENT_KEY_ENVIRONMENT:Ljava/lang/String; = "replay.environment"

.field public static final SEGMENT_KEY_FLUSHED:Ljava/lang/String; = "replay.flushed"

.field public static final SEGMENT_KEY_FRAME_RATE:Ljava/lang/String; = "config.frame-rate"

.field public static final SEGMENT_KEY_HEIGHT:Ljava/lang/String; = "config.height"

.field public static final SEGMENT_KEY_ID:Ljava/lang/String; = "segment.id"

.field public static final SEGMENT_KEY_RELEASE:Ljava/lang/String; = "replay.release"

.field public static final SEGMENT_KEY_REPLAY_ID:Ljava/lang/String; = "replay.id"

.field public static final SEGMENT_KEY_REPLAY_RECORDING:Ljava/lang/String; = "replay.recording"

.field public static final SEGMENT_KEY_REPLAY_SCREEN_AT_START:Ljava/lang/String; = "replay.screen-at-start"

.field public static final SEGMENT_KEY_REPLAY_TYPE:Ljava/lang/String; = "replay.type"

.field public static final SEGMENT_KEY_SDK_NAME:Ljava/lang/String; = "replay.sdk-name"

.field public static final SEGMENT_KEY_SDK_VERSION:Ljava/lang/String; = "replay.sdk-version"

.field public static final SEGMENT_KEY_TIMESTAMP:Ljava/lang/String; = "segment.timestamp"

.field public static final SEGMENT_KEY_WIDTH:Ljava/lang/String; = "config.width"

.field private static final VIDEO_EXTENSION:Ljava/lang/String; = "mp4"


# instance fields
.field private encoder:Lio/sentry/android/replay/video/SimpleVideoEncoder;

.field private final frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/android/replay/ReplayFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final framesLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final ongoingSegment:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ongoingSegmentFile$delegate:Lkotlin/Lazy;

.field private final options:Lio/sentry/SentryOptions;

.field private final replayCacheDir$delegate:Lkotlin/Lazy;

.field private final replayId:Lio/sentry/protocol/SentryId;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/sentry/android/replay/ReplayCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/replay/ReplayCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/replay/ReplayCache;->Companion:Lio/sentry/android/replay/ReplayCache$Companion;

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/ReplayCache;->$stable:I

    .line 332
    nop

    .line 333
    nop

    .line 334
    nop

    .line 333
    nop

    .line 335
    nop

    .line 333
    nop

    .line 336
    nop

    .line 333
    nop

    .line 337
    const-string v0, "replay.sdk-version"

    const-string v1, "replay.release"

    const-string v2, "replay.environment"

    const-string v3, "replay.dist"

    const-string v4, "replay.sdk-name"

    filled-new-array {v1, v2, v3, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 333
    nop

    .line 332
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/sentry/android/replay/ReplayCache;->RECORDING_METADATA_KEYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/protocol/SentryId;)V
    .locals 2
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "replayId"    # Lio/sentry/protocol/SentryId;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/ReplayCache;->options:Lio/sentry/SentryOptions;

    iput-object p2, p0, Lio/sentry/android/replay/ReplayCache;->replayId:Lio/sentry/protocol/SentryId;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/replay/ReplayCache;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/ReplayCache;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 45
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/ReplayCache;->framesLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 48
    new-instance v0, Lio/sentry/android/replay/ReplayCache$replayCacheDir$2;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/ReplayCache$replayCacheDir$2;-><init>(Lio/sentry/android/replay/ReplayCache;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/ReplayCache;->replayCacheDir$delegate:Lkotlin/Lazy;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/sentry/android/replay/ReplayCache;->frames:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/ReplayCache;->ongoingSegment:Ljava/util/LinkedHashMap;

    .line 53
    new-instance v0, Lio/sentry/android/replay/ReplayCache$ongoingSegmentFile$2;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/ReplayCache$ongoingSegmentFile$2;-><init>(Lio/sentry/android/replay/ReplayCache;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/ReplayCache;->ongoingSegmentFile$delegate:Lkotlin/Lazy;

    .line 41
    return-void
.end method

.method public static final synthetic access$deleteFile(Lio/sentry/android/replay/ReplayCache;Ljava/io/File;)V
    .locals 0
    .param p0, "$this"    # Lio/sentry/android/replay/ReplayCache;
    .param p1, "file"    # Ljava/io/File;

    .line 41
    invoke-direct {p0, p1}, Lio/sentry/android/replay/ReplayCache;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$getOptions$p(Lio/sentry/android/replay/ReplayCache;)Lio/sentry/SentryOptions;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/ReplayCache;

    .line 41
    iget-object v0, p0, Lio/sentry/android/replay/ReplayCache;->options:Lio/sentry/SentryOptions;

    return-object v0
.end method

.method public static final synthetic access$getRECORDING_METADATA_KEYS$cp()Ljava/util/List;
    .locals 1

    .line 41
    sget-object v0, Lio/sentry/android/replay/ReplayCache;->RECORDING_METADATA_KEYS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getReplayId$p(Lio/sentry/android/replay/ReplayCache;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/ReplayCache;

    .line 41
    iget-object v0, p0, Lio/sentry/android/replay/ReplayCache;->replayId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public static synthetic addFrame$default(Lio/sentry/android/replay/ReplayCache;Ljava/io/File;JLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 103
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/sentry/android/replay/ReplayCache;->addFrame(Ljava/io/File;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic addFrame$sentry_android_replay_release$default(Lio/sentry/android/replay/ReplayCache;Landroid/graphics/Bitmap;JLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 75
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/sentry/android/replay/ReplayCache;->addFrame$sentry_android_replay_release(Landroid/graphics/Bitmap;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic createVideoOf$default(Lio/sentry/android/replay/ReplayCache;JJIIIIILjava/io/File;ILjava/lang/Object;)Lio/sentry/android/replay/GeneratedVideo;
    .locals 14

    .line 132
    move/from16 v0, p11

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayCache;->getReplayCacheDir$sentry_android_replay_release()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v8, p5

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v13, v0

    goto :goto_0

    .line 132
    :cond_0
    move/from16 v8, p5

    move-object/from16 v13, p10

    :goto_0
    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v3 .. v13}, Lio/sentry/android/replay/ReplayCache;->createVideoOf(JJIIIIILjava/io/File;)Lio/sentry/android/replay/GeneratedVideo;

    move-result-object p0

    return-object p0
.end method

.method private final deleteFile(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .line 245
    const-string v0, "Failed to delete replay frame: %s"

    .line 246
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lio/sentry/android/replay/ReplayCache;->options:Lio/sentry/SentryOptions;

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

    .line 249
    :catchall_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/android/replay/ReplayCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v1, v0, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private final encode(Lio/sentry/android/replay/ReplayFrame;)Z
    .locals 5
    .param p1, "frame"    # Lio/sentry/android/replay/ReplayFrame;

    .line 226
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 227
    return v0

    .line 229
    :cond_0
    nop

    .line 230
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/android/replay/ReplayFrame;->getScreenshot()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 231
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lio/sentry/android/replay/ReplayCache;->encoder:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    if-eqz v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->encode(Landroid/graphics/Bitmap;)V

    .line 232
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    nop

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    const/4 v0, 0x1

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/android/replay/ReplayCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 236
    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 237
    nop

    .line 238
    nop

    .line 235
    const-string v4, "Unable to decode bitmap and encode it into a video, skipping frame"

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    nop

    .line 229
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method


# virtual methods
.method public final addFrame(Ljava/io/File;JLjava/lang/String;)V
    .locals 5
    .param p1, "screenshot"    # Ljava/io/File;
    .param p2, "frameTimestamp"    # J
    .param p4, "screen"    # Ljava/lang/String;

    const-string v0, "screenshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lio/sentry/android/replay/ReplayFrame;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/sentry/android/replay/ReplayFrame;-><init>(Ljava/io/File;JLjava/lang/String;)V

    .line 105
    .local v0, "frame":Lio/sentry/android/replay/ReplayFrame;
    iget-object v1, p0, Lio/sentry/android/replay/ReplayCache;->framesLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    check-cast v1, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Lio/sentry/ISentryLifecycleToken;

    .line 548
    .local v2, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v3, 0x0

    .line 105
    .local v3, "$i$a$-use-ReplayCache$addFrame$2":I
    iget-object v4, p0, Lio/sentry/android/replay/ReplayCache;->frames:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v2    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v3    # "$i$a$-use-ReplayCache$addFrame$2":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v2

    .end local v0    # "frame":Lio/sentry/android/replay/ReplayFrame;
    .end local p1    # "screenshot":Ljava/io/File;
    .end local p2    # "frameTimestamp":J
    .end local p4    # "screen":Ljava/lang/String;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v0    # "frame":Lio/sentry/android/replay/ReplayFrame;
    .restart local p1    # "screenshot":Ljava/io/File;
    .restart local p2    # "frameTimestamp":J
    .restart local p4    # "screen":Ljava/lang/String;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final addFrame$sentry_android_replay_release(Landroid/graphics/Bitmap;JLjava/lang/String;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "frameTimestamp"    # J
    .param p4, "screen"    # Ljava/lang/String;

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayCache;->getReplayCacheDir$sentry_android_replay_release()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayCache;->getReplayCacheDir$sentry_android_replay_release()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 81
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayCache;->getReplayCacheDir$sentry_android_replay_release()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 548
    .local v1, "it":Ljava/io/File;
    const/4 v2, 0x0

    .line 81
    .local v2, "$i$a$-also-ReplayCache$addFrame$screenshot$1":I
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 82
    .end local v1    # "it":Ljava/io/File;
    .end local v2    # "$i$a$-also-ReplayCache$addFrame$screenshot$1":I
    .local v0, "screenshot":Ljava/io/File;
    monitor-enter p1

    const/4 v1, 0x0

    .line 83
    .local v1, "$i$a$-synchronized-ReplayCache$addFrame$1":I
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_2

    .line 84
    nop

    .line 82
    .end local v1    # "$i$a$-synchronized-ReplayCache$addFrame$1":I
    monitor-exit p1

    return-void

    .restart local v1    # "$i$a$-synchronized-ReplayCache$addFrame$1":I
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    .line 86
    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v3, v2

    check-cast v3, Ljava/io/FileOutputStream;

    .local v3, "it":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 87
    .local v4, "$i$a$-use-ReplayCache$addFrame$1$1":I
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v6, p0, Lio/sentry/android/replay/ReplayCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryReplayOptions;->getQuality()Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    move-result-object v6

    iget v6, v6, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->screenshotQuality:I

    move-object v7, v3

    check-cast v7, Ljava/io/OutputStream;

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 88
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 89
    nop

    .end local v3    # "it":Ljava/io/FileOutputStream;
    .end local v4    # "$i$a$-use-ReplayCache$addFrame$1$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    const/4 v3, 0x0

    :try_start_3
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 90
    invoke-virtual {p0, v0, p2, p3, p4}, Lio/sentry/android/replay/ReplayCache;->addFrame(Ljava/io/File;JLjava/lang/String;)V

    .line 91
    nop

    .end local v1    # "$i$a$-synchronized-ReplayCache$addFrame$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 82
    monitor-exit p1

    .line 92
    return-void

    .line 86
    .restart local v1    # "$i$a$-synchronized-ReplayCache$addFrame$1":I
    :catchall_0
    move-exception v3

    .end local v0    # "screenshot":Ljava/io/File;
    .end local v1    # "$i$a$-synchronized-ReplayCache$addFrame$1":I
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .end local p2    # "frameTimestamp":J
    .end local p4    # "screen":Ljava/lang/String;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v0    # "screenshot":Ljava/io/File;
    .restart local v1    # "$i$a$-synchronized-ReplayCache$addFrame$1":I
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p2    # "frameTimestamp":J
    .restart local p4    # "screen":Ljava/lang/String;
    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "screenshot":Ljava/io/File;
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .end local p2    # "frameTimestamp":J
    .end local p4    # "screen":Ljava/lang/String;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 82
    .end local v1    # "$i$a$-synchronized-ReplayCache$addFrame$1":I
    .restart local v0    # "screenshot":Ljava/io/File;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p2    # "frameTimestamp":J
    .restart local p4    # "screen":Ljava/lang/String;
    :catchall_2
    move-exception v1

    monitor-exit p1

    throw v1

    .line 77
    .end local v0    # "screenshot":Ljava/io/File;
    :cond_3
    :goto_0
    return-void
.end method

.method public close()V
    .locals 3

    .line 277
    nop

    .line 278
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lio/sentry/android/replay/ReplayCache;->encoder:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->release()V

    .line 279
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/replay/ReplayCache;->encoder:Lio/sentry/android/replay/video/SimpleVideoEncoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-object v1, p0, Lio/sentry/android/replay/ReplayCache;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 282
    nop

    .line 283
    return-void

    .line 281
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/sentry/android/replay/ReplayCache;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method

.method public final createVideoOf(JJIIIIILjava/io/File;)Lio/sentry/android/replay/GeneratedVideo;
    .locals 27
    .param p1, "duration"    # J
    .param p3, "from"    # J
    .param p5, "segmentId"    # I
    .param p6, "height"    # I
    .param p7, "width"    # I
    .param p8, "frameRate"    # I
    .param p9, "bitRate"    # I
    .param p10, "videoFile"    # Ljava/io/File;

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-object/from16 v5, p10

    const-string v0, "videoFile"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, v1, Lio/sentry/android/replay/ReplayCache;->framesLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v0, v4

    check-cast v0, Lio/sentry/ISentryLifecycleToken;

    .line 548
    .local v0, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v6, 0x0

    .line 144
    .local v6, "$i$a$-use-ReplayCache$createVideoOf$framesSnapshot$1":I
    iget-object v7, v1, Lio/sentry/android/replay/ReplayCache;->frames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v7, v1, Lio/sentry/android/replay/ReplayCache;->frames:Ljava/util/List;

    check-cast v7, Ljava/util/Collection;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .end local v0    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v6    # "$i$a$-use-ReplayCache$createVideoOf$framesSnapshot$1":I
    :goto_0
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 143
    move-object v13, v7

    .line 145
    .local v13, "framesSnapshot":Ljava/util/List;
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v14, 0x0

    if-eqz v4, :cond_1

    .line 147
    iget-object v4, v1, Lio/sentry/android/replay/ReplayCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v7, "No captured frames, skipping generating a video segment"

    new-array v8, v14, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    return-object v0

    .line 150
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    const-wide/16 v15, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v6, v15

    if-lez v4, :cond_2

    .line 151
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 154
    :cond_2
    nop

    .line 155
    new-instance v17, Lio/sentry/android/replay/video/SimpleVideoEncoder;

    .line 156
    iget-object v4, v1, Lio/sentry/android/replay/ReplayCache;->options:Lio/sentry/SentryOptions;

    .line 157
    new-instance v7, Lio/sentry/android/replay/video/MuxerConfig;

    .line 158
    nop

    .line 160
    nop

    .line 159
    nop

    .line 161
    nop

    .line 162
    nop

    .line 157
    const/16 v11, 0x20

    const/4 v12, 0x0

    const/4 v10, 0x0

    move/from16 v6, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v18, v4

    move-object v4, v7

    move/from16 v7, p6

    invoke-direct/range {v4 .. v12}, Lio/sentry/android/replay/video/MuxerConfig;-><init>(Ljava/io/File;IIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 155
    move-object v7, v4

    move-object v11, v5

    const/4 v9, 0x4

    const/4 v8, 0x0

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-direct/range {v5 .. v10}, Lio/sentry/android/replay/video/SimpleVideoEncoder;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/video/MuxerConfig;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 165
    move-object v4, v5

    .local v4, "$this$createVideoOf_u24lambda_u241":Lio/sentry/android/replay/video/SimpleVideoEncoder;
    const/4 v6, 0x0

    .line 168
    .local v6, "$i$a$-apply-ReplayCache$createVideoOf$1":I
    nop

    .line 169
    :try_start_1
    invoke-virtual {v4}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 174
    nop

    .line 165
    .end local v4    # "$this$createVideoOf_u24lambda_u241":Lio/sentry/android/replay/video/SimpleVideoEncoder;
    .end local v6    # "$i$a$-apply-ReplayCache$createVideoOf$1":I
    nop

    .line 154
    iput-object v5, v1, Lio/sentry/android/replay/ReplayCache;->encoder:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    .line 176
    const/16 v4, 0x3e8

    int-to-long v4, v4

    move/from16 v8, p8

    int-to-long v6, v8

    div-long/2addr v4, v6

    .line 177
    .local v4, "step":J
    const/4 v6, 0x0

    .line 178
    .local v6, "frameCount":I
    const/4 v7, 0x0

    .local v7, "lastFrame":Ljava/lang/Object;
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    .line 179
    add-long v9, v2, p1

    invoke-static {v2, v3, v9, v10}, Lkotlin/ranges/RangesKt;->until(JJ)Lkotlin/ranges/LongRange;

    move-result-object v9

    check-cast v9, Lkotlin/ranges/LongProgression;

    invoke-static {v9, v4, v5}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/LongProgression;J)Lkotlin/ranges/LongProgression;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/ranges/LongProgression;->getFirst()J

    move-result-wide v17

    .local v17, "timestamp":J
    invoke-virtual {v9}, Lkotlin/ranges/LongProgression;->getLast()J

    move-result-wide v19

    invoke-virtual {v9}, Lkotlin/ranges/LongProgression;->getStep()J

    move-result-wide v9

    cmp-long v12, v9, v15

    if-lez v12, :cond_3

    cmp-long v21, v17, v19

    if-lez v21, :cond_4

    :cond_3
    if-gez v12, :cond_b

    cmp-long v12, v19, v17

    if-gtz v12, :cond_b

    .line 180
    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 181
    .local v12, "iter":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 182
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lio/sentry/android/replay/ReplayFrame;

    .line 183
    .local v21, "frame":Lio/sentry/android/replay/ReplayFrame;
    add-long v22, v17, v4

    invoke-virtual/range {v21 .. v21}, Lio/sentry/android/replay/ReplayFrame;->getTimestamp()J

    move-result-wide v24

    cmp-long v26, v17, v24

    if-gtz v26, :cond_6

    cmp-long v22, v24, v22

    if-gtz v22, :cond_6

    const/16 v22, 0x1

    goto :goto_2

    :cond_6
    move/from16 v22, v14

    :goto_2
    if-eqz v22, :cond_7

    .line 184
    move-object/from16 v7, v21

    .line 185
    goto :goto_3

    .line 189
    :cond_7
    invoke-virtual/range {v21 .. v21}, Lio/sentry/android/replay/ReplayFrame;->getTimestamp()J

    move-result-wide v22

    add-long v24, v17, v4

    cmp-long v22, v22, v24

    if-lez v22, :cond_5

    .line 190
    nop

    .line 196
    .end local v21    # "frame":Lio/sentry/android/replay/ReplayFrame;
    :cond_8
    :goto_3
    move-object v15, v7

    check-cast v15, Lio/sentry/android/replay/ReplayFrame;

    invoke-direct {v1, v15}, Lio/sentry/android/replay/ReplayCache;->encode(Lio/sentry/android/replay/ReplayFrame;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 197
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 198
    :cond_9
    if-eqz v7, :cond_a

    .line 201
    move-object v15, v7

    check-cast v15, Lio/sentry/android/replay/ReplayFrame;

    invoke-virtual {v15}, Lio/sentry/android/replay/ReplayFrame;->getScreenshot()Ljava/io/File;

    move-result-object v15

    invoke-direct {v1, v15}, Lio/sentry/android/replay/ReplayCache;->deleteFile(Ljava/io/File;)V

    .line 202
    iget-object v15, v1, Lio/sentry/android/replay/ReplayCache;->framesLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v15}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v15

    check-cast v15, Ljava/lang/AutoCloseable;

    :try_start_2
    move-object/from16 v16, v15

    check-cast v16, Lio/sentry/ISentryLifecycleToken;

    .line 548
    .local v16, "it":Lio/sentry/ISentryLifecycleToken;
    const/16 v23, 0x0

    .line 202
    .local v23, "$i$a$-use-ReplayCache$createVideoOf$2":I
    iget-object v14, v1, Lio/sentry/android/replay/ReplayCache;->frames:Ljava/util/List;

    check-cast v14, Ljava/util/Collection;

    invoke-static {v14}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v16    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v23    # "$i$a$-use-ReplayCache$createVideoOf$2":I
    invoke-static {v15, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 203
    invoke-interface {v13, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 204
    const/4 v7, 0x0

    goto :goto_4

    .line 202
    :catchall_0
    move-exception v0

    move-object v9, v0

    .end local v4    # "step":J
    .end local v6    # "frameCount":I
    .end local v7    # "lastFrame":Ljava/lang/Object;
    .end local v12    # "iter":Ljava/util/Iterator;
    .end local v13    # "framesSnapshot":Ljava/util/List;
    .end local v17    # "timestamp":J
    .end local p1    # "duration":J
    .end local p3    # "from":J
    .end local p5    # "segmentId":I
    .end local p6    # "height":I
    .end local p7    # "width":I
    .end local p8    # "frameRate":I
    .end local p9    # "bitRate":I
    .end local p10    # "videoFile":Ljava/io/File;
    :try_start_3
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v4    # "step":J
    .restart local v6    # "frameCount":I
    .restart local v7    # "lastFrame":Ljava/lang/Object;
    .restart local v12    # "iter":Ljava/util/Iterator;
    .restart local v13    # "framesSnapshot":Ljava/util/List;
    .restart local v17    # "timestamp":J
    .restart local p1    # "duration":J
    .restart local p3    # "from":J
    .restart local p5    # "segmentId":I
    .restart local p6    # "height":I
    .restart local p7    # "width":I
    .restart local p8    # "frameRate":I
    .restart local p9    # "bitRate":I
    .restart local p10    # "videoFile":Ljava/io/File;
    :catchall_1
    move-exception v0

    invoke-static {v15, v9}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    .line 179
    .end local v12    # "iter":Ljava/util/Iterator;
    :cond_a
    :goto_4
    cmp-long v12, v17, v19

    if-eqz v12, :cond_b

    add-long v17, v17, v9

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    goto :goto_1

    .line 208
    .end local v17    # "timestamp":J
    :cond_b
    if-nez v6, :cond_d

    .line 209
    iget-object v9, v1, Lio/sentry/android/replay/ReplayCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v9}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v9

    sget-object v10, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v12, "Generated a video with no frames, not capturing a replay segment"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v9, v10, v12, v14}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v9, v1, Lio/sentry/android/replay/ReplayCache;->encoder:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->release()V

    .line 211
    :cond_c
    iput-object v0, v1, Lio/sentry/android/replay/ReplayCache;->encoder:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    .line 212
    invoke-direct {v1, v11}, Lio/sentry/android/replay/ReplayCache;->deleteFile(Ljava/io/File;)V

    .line 213
    return-object v0

    .line 216
    :cond_d
    iget-object v9, v1, Lio/sentry/android/replay/ReplayCache;->encoder:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->release()V

    .line 217
    :cond_e
    iget-object v9, v1, Lio/sentry/android/replay/ReplayCache;->encoder:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->getDuration()J

    move-result-wide v15

    goto :goto_5

    :cond_f
    const-wide/16 v15, 0x0

    :goto_5
    move-wide v9, v15

    .line 218
    .local v9, "videoDuration":J
    iput-object v0, v1, Lio/sentry/android/replay/ReplayCache;->encoder:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    .line 220
    add-long v14, v2, p1

    invoke-virtual {v1, v14, v15}, Lio/sentry/android/replay/ReplayCache;->rotate$sentry_android_replay_release(J)Ljava/lang/String;

    .line 222
    new-instance v0, Lio/sentry/android/replay/GeneratedVideo;

    invoke-direct {v0, v11, v6, v9, v10}, Lio/sentry/android/replay/GeneratedVideo;-><init>(Ljava/io/File;IJ)V

    return-object v0

    .line 170
    .end local v7    # "lastFrame":Ljava/lang/Object;
    .end local v9    # "videoDuration":J
    .local v4, "$this$createVideoOf_u24lambda_u241":Lio/sentry/android/replay/video/SimpleVideoEncoder;
    .local v6, "$i$a$-apply-ReplayCache$createVideoOf$1":I
    :catchall_2
    move-exception v0

    move/from16 v8, p8

    .line 171
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->release()V

    .line 172
    throw v0

    .line 144
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v4    # "$this$createVideoOf_u24lambda_u241":Lio/sentry/android/replay/video/SimpleVideoEncoder;
    .end local v6    # "$i$a$-apply-ReplayCache$createVideoOf$1":I
    .end local v13    # "framesSnapshot":Ljava/util/List;
    :catchall_3
    move-exception v0

    move/from16 v8, p8

    move-object v11, v5

    move-object v5, v0

    .end local p1    # "duration":J
    .end local p3    # "from":J
    .end local p5    # "segmentId":I
    .end local p6    # "height":I
    .end local p7    # "width":I
    .end local p8    # "frameRate":I
    .end local p9    # "bitRate":I
    .end local p10    # "videoFile":Ljava/io/File;
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .restart local p1    # "duration":J
    .restart local p3    # "from":J
    .restart local p5    # "segmentId":I
    .restart local p6    # "height":I
    .restart local p7    # "width":I
    .restart local p8    # "frameRate":I
    .restart local p9    # "bitRate":I
    .restart local p10    # "videoFile":Ljava/io/File;
    :catchall_4
    move-exception v0

    invoke-static {v4, v5}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final firstFrameTimestamp$sentry_android_replay_release()Ljava/lang/Long;
    .locals 7

    .line 110
    iget-object v0, p0, Lio/sentry/android/replay/ReplayCache;->framesLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    check-cast v0, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Lio/sentry/ISentryLifecycleToken;

    .line 548
    .local v1, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v2, 0x0

    .line 110
    .local v2, "$i$a$-use-ReplayCache$firstFrameTimestamp$1":I
    iget-object v3, p0, Lio/sentry/android/replay/ReplayCache;->frames:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/android/replay/ReplayFrame;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lio/sentry/android/replay/ReplayFrame;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    .end local v1    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v2    # "$i$a$-use-ReplayCache$firstFrameTimestamp$1":I
    :goto_0
    invoke-static {v0, v4}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v3

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final getFrames$sentry_android_replay_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/android/replay/ReplayFrame;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lio/sentry/android/replay/ReplayCache;->frames:Ljava/util/List;

    return-object v0
.end method

.method public final getOngoingSegmentFile$sentry_android_replay_release()Ljava/io/File;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/sentry/android/replay/ReplayCache;->ongoingSegmentFile$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public final getReplayCacheDir$sentry_android_replay_release()Ljava/io/File;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/sentry/android/replay/ReplayCache;->replayCacheDir$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public final persistSegmentValues$sentry_android_replay_release(Ljava/lang/String;Ljava/lang/String;)V
    .locals 29
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "key"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v0, v1, Lio/sentry/android/replay/ReplayCache;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v0, v4

    check-cast v0, Lio/sentry/ISentryLifecycleToken;

    move-object v5, v0

    .local v5, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v6, 0x0

    .line 288
    .local v6, "$i$a$-use-ReplayCache$persistSegmentValues$1":I
    iget-object v0, v1, Lio/sentry/android/replay/ReplayCache;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 289
    nop

    .line 287
    .end local v5    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v6    # "$i$a$-use-ReplayCache$persistSegmentValues$1":I
    invoke-static {v4, v7}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    .line 291
    .restart local v5    # "it":Lio/sentry/ISentryLifecycleToken;
    .restart local v6    # "$i$a$-use-ReplayCache$persistSegmentValues$1":I
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayCache;->getOngoingSegmentFile$sentry_android_replay_release()Ljava/io/File;

    move-result-object v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v9

    :goto_0
    if-nez v0, :cond_2

    .line 292
    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayCache;->getOngoingSegmentFile$sentry_android_replay_release()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 294
    :cond_2
    iget-object v0, v1, Lio/sentry/android/replay/ReplayCache;->ongoingSegment:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 295
    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayCache;->getOngoingSegmentFile$sentry_android_replay_release()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v10, v0

    .line 549
    .local v10, "$this$useLines_u24default$iv":Ljava/io/File;
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object v11, v0

    .local v11, "charset$iv":Ljava/nio/charset/Charset;
    const/4 v12, 0x0

    .line 550
    .local v12, "$i$f$useLines":I
    nop

    .line 553
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v13, Ljava/io/InputStream;

    invoke-direct {v0, v13, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v0, Ljava/io/Reader;

    instance-of v13, v0, Ljava/io/BufferedReader;

    if-eqz v13, :cond_3

    check-cast v0, Ljava/io/BufferedReader;

    goto :goto_1

    :cond_3
    new-instance v13, Ljava/io/BufferedReader;

    const/16 v14, 0x2000

    invoke-direct {v13, v0, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v13

    :goto_1
    move-object v13, v0

    check-cast v13, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v0, v13

    check-cast v0, Ljava/io/BufferedReader;

    .line 554
    .local v0, "it$iv":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 553
    .local v14, "$i$a$-use-FilesKt__FileReadWriteKt$useLines$2$iv":I
    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;

    move-result-object v15

    .local v15, "lines":Lkotlin/sequences/Sequence;
    const/16 v16, 0x0

    .line 296
    .local v16, "$i$a$-useLines$default-ReplayCache$persistSegmentValues$1$1":I
    iget-object v7, v1, Lio/sentry/android/replay/ReplayCache;->ongoingSegment:Ljava/util/LinkedHashMap;

    check-cast v7, Ljava/util/Map;

    .local v7, "destination$iv":Ljava/util/Map;
    move-object/from16 v17, v15

    .local v17, "$this$associateTo$iv":Lkotlin/sequences/Sequence;
    const/16 v18, 0x0

    .line 555
    .local v18, "$i$f$associateTo":I
    invoke-interface/range {v17 .. v17}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .line 556
    .local v20, "element$iv":Ljava/lang/Object;
    move-object/from16 v21, v20

    check-cast v21, Ljava/lang/String;

    .local v21, "it":Ljava/lang/String;
    const/16 v22, 0x0

    .line 297
    .local v22, "$i$a$-associateTo-ReplayCache$persistSegmentValues$1$1$1":I
    move-object/from16 v23, v21

    check-cast v23, Ljava/lang/CharSequence;

    const-string v24, "="

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x2

    const/16 v28, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x2

    invoke-static/range {v23 .. v28}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v24, v23

    const/4 v9, 0x1

    .local v24, "k":Ljava/lang/String;
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 298
    .local v8, "v":Ljava/lang/String;
    move-object/from16 v9, v24

    .end local v24    # "k":Ljava/lang/String;
    .local v9, "k":Ljava/lang/String;
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v24

    .line 556
    .end local v8    # "v":Ljava/lang/String;
    .end local v9    # "k":Ljava/lang/String;
    .end local v21    # "it":Ljava/lang/String;
    .end local v22    # "$i$a$-associateTo-ReplayCache$persistSegmentValues$1$1$1":I
    invoke-virtual/range {v24 .. v24}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual/range {v24 .. v24}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_2

    .line 558
    .end local v20    # "element$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v7    # "destination$iv":Ljava/util/Map;
    .end local v17    # "$this$associateTo$iv":Lkotlin/sequences/Sequence;
    .end local v18    # "$i$f$associateTo":I
    check-cast v7, Ljava/util/LinkedHashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    nop

    .line 553
    .end local v0    # "it$iv":Ljava/io/BufferedReader;
    .end local v14    # "$i$a$-use-FilesKt__FileReadWriteKt$useLines$2$iv":I
    .end local v15    # "lines":Lkotlin/sequences/Sequence;
    .end local v16    # "$i$a$-useLines$default-ReplayCache$persistSegmentValues$1$1":I
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v13, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v10    # "$this$useLines_u24default$iv":Ljava/io/File;
    .end local v11    # "charset$iv":Ljava/nio/charset/Charset;
    .end local v12    # "$i$f$useLines":I
    goto :goto_3

    .restart local v10    # "$this$useLines_u24default$iv":Ljava/io/File;
    .restart local v11    # "charset$iv":Ljava/nio/charset/Charset;
    .restart local v12    # "$i$f$useLines":I
    :catchall_0
    move-exception v0

    move-object v7, v0

    .end local v5    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v6    # "$i$a$-use-ReplayCache$persistSegmentValues$1":I
    .end local v10    # "$this$useLines_u24default$iv":Ljava/io/File;
    .end local v11    # "charset$iv":Ljava/nio/charset/Charset;
    .end local v12    # "$i$f$useLines":I
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v5    # "it":Lio/sentry/ISentryLifecycleToken;
    .restart local v6    # "$i$a$-use-ReplayCache$persistSegmentValues$1":I
    .restart local v10    # "$this$useLines_u24default$iv":Ljava/io/File;
    .restart local v11    # "charset$iv":Ljava/nio/charset/Charset;
    .restart local v12    # "$i$f$useLines":I
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v13, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    throw v0

    .line 302
    .end local v10    # "$this$useLines_u24default$iv":Ljava/io/File;
    .end local v11    # "charset$iv":Ljava/nio/charset/Charset;
    .end local v12    # "$i$f$useLines":I
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :cond_5
    :goto_3
    if-nez v3, :cond_6

    .line 303
    iget-object v0, v1, Lio/sentry/android/replay/ReplayCache;->ongoingSegment:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 305
    :cond_6
    iget-object v0, v1, Lio/sentry/android/replay/ReplayCache;->ongoingSegment:Ljava/util/LinkedHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :goto_4
    invoke-virtual {v1}, Lio/sentry/android/replay/ReplayCache;->getOngoingSegmentFile$sentry_android_replay_release()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v7, v1, Lio/sentry/android/replay/ReplayCache;->ongoingSegment:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    const-string v8, "<get-entries>(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v7

    check-cast v17, Ljava/lang/Iterable;

    const-string v7, "\n"

    move-object/from16 v18, v7

    check-cast v18, Ljava/lang/CharSequence;

    sget-object v7, Lio/sentry/android/replay/ReplayCache$persistSegmentValues$1$2;->INSTANCE:Lio/sentry/android/replay/ReplayCache$persistSegmentValues$1$2;

    move-object/from16 v23, v7

    check-cast v23, Lkotlin/jvm/functions/Function1;

    const/16 v24, 0x1e

    const/16 v25, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v17 .. v25}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v0, v7, v9, v8, v9}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 287
    .end local v5    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v6    # "$i$a$-use-ReplayCache$persistSegmentValues$1":I
    :cond_7
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 309
    return-void

    .line 287
    :catchall_2
    move-exception v0

    move-object v5, v0

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catchall_3
    move-exception v0

    invoke-static {v4, v5}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final rotate$sentry_android_replay_release(J)Ljava/lang/String;
    .locals 6
    .param p1, "until"    # J

    .line 261
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 262
    .local v0, "screen":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v1, p0, Lio/sentry/android/replay/ReplayCache;->framesLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    check-cast v1, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Lio/sentry/ISentryLifecycleToken;

    .local v2, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v3, 0x0

    .line 263
    .local v3, "$i$a$-use-ReplayCache$rotate$1":I
    iget-object v4, p0, Lio/sentry/android/replay/ReplayCache;->frames:Ljava/util/List;

    new-instance v5, Lio/sentry/android/replay/ReplayCache$rotate$1$1;

    invoke-direct {v5, p1, p2, p0, v0}, Lio/sentry/android/replay/ReplayCache$rotate$1$1;-><init>(JLio/sentry/android/replay/ReplayCache;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    nop

    .line 262
    .end local v2    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v3    # "$i$a$-use-ReplayCache$rotate$1":I
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 273
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 262
    :catchall_0
    move-exception v2

    .end local v0    # "screen":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "until":J
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v0    # "screen":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local p1    # "until":J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v3
.end method
