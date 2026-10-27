.class public abstract Lio/sentry/android/replay/capture/BaseCaptureStrategy;
.super Ljava/lang/Object;
.source "BaseCaptureStrategy.kt"

# interfaces
.implements Lio/sentry/android/replay/capture/CaptureStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/capture/BaseCaptureStrategy$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseCaptureStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseCaptureStrategy.kt\nio/sentry/android/replay/capture/BaseCaptureStrategy\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,291:1\n248#1,9:292\n279#1:301\n248#1,9:302\n279#1:311\n248#1,9:312\n279#1:321\n248#1,9:322\n279#1:331\n281#1,9:332\n256#1:341\n279#1:342\n281#1,9:343\n256#1:352\n279#1:353\n281#1,9:354\n256#1:363\n279#1:364\n281#1,9:365\n256#1:374\n279#1:375\n256#1:377\n279#1:378\n256#1:379\n279#1:380\n1#2:376\n*S KotlinDebug\n*F\n+ 1 BaseCaptureStrategy.kt\nio/sentry/android/replay/capture/BaseCaptureStrategy\n*L\n77#1:292,9\n77#1:301\n88#1:302,9\n88#1:311\n100#1:312,9\n100#1:321\n108#1:322,9\n108#1:331\n110#1:332,9\n110#1:341\n110#1:342\n112#1:343,9\n112#1:352\n112#1:353\n116#1:354,9\n116#1:363\n116#1:364\n121#1:365,9\n121#1:374\n121#1:375\n289#1:377\n289#1:378\n289#1:379\n289#1:380\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008!\u0018\u0000 \u0097\u00012\u00020\u0001:\u0002\u0097\u0001B^\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012%\u0008\u0002\u0010\r\u001a\u001f\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u0014J\u008c\u0001\u0010n\u001a\u00020o2\u0006\u0010p\u001a\u00020q2\u0006\u0010r\u001a\u00020g2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010s\u001a\u00020\'2\u0006\u0010t\u001a\u00020\'2\u0006\u0010u\u001a\u00020\'2\u0006\u0010v\u001a\u00020\'2\u0006\u0010w\u001a\u00020\'2\u0008\u0008\u0002\u0010[\u001a\u00020Z2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010a\u001a\u0004\u0018\u0001002\u0010\u0008\u0002\u0010x\u001a\n\u0012\u0004\u0012\u00020z\u0018\u00010y2\u000e\u0008\u0002\u0010{\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bH\u0004J\u0010\u0010|\u001a\u00020}2\u0006\u0010@\u001a\u00020?H\u0016J\u0011\u0010~\u001a\u00020}2\u0007\u0010\u007f\u001a\u00030\u0080\u0001H\u0016J\t\u0010\u0081\u0001\u001a\u00020}H\u0016J\u001d\u0010\u0082\u0001\u001a\u00020}2\u0007\u0010\u0083\u0001\u001a\u0002002\t\u0010\u0084\u0001\u001a\u0004\u0018\u000100H\u0002J\u009a\u0001\u0010\u0085\u0001\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010R\u0012\u0005\u0012\u0003H\u0087\u00010\u0086\u0001\"\u0005\u0008\u0000\u0010\u0087\u00012\u000c\u0008\u0002\u0010\u0088\u0001\u001a\u0005\u0018\u0001H\u0087\u00012\u0007\u0010\u0089\u0001\u001a\u0002002Z\u0008\u0006\u0010\u008a\u0001\u001aS\u0012\u0016\u0012\u0014\u0018\u000100\u00a2\u0006\r\u0008\u0010\u0012\t\u0008\u0011\u0012\u0005\u0008\u0008(\u0089\u0001\u0012\u0017\u0012\u0015\u0018\u0001H\u0087\u0001\u00a2\u0006\r\u0008\u0010\u0012\t\u0008\u0011\u0012\u0005\u0008\u0008(\u008c\u0001\u0012\u0017\u0012\u0015\u0018\u0001H\u0087\u0001\u00a2\u0006\r\u0008\u0010\u0012\t\u0008\u0011\u0012\u0005\u0008\u0008(\u008d\u0001\u0012\u0004\u0012\u00020}0\u008b\u0001H\u0082\u0008\u00a2\u0006\u0003\u0010\u008e\u0001J\u009c\u0001\u0010\u008f\u0001\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010R\u0012\u0007\u0012\u0005\u0018\u0001H\u0087\u00010\u0086\u0001\"\u0005\u0008\u0000\u0010\u0087\u00012\u000c\u0008\u0002\u0010\u0088\u0001\u001a\u0005\u0018\u0001H\u0087\u00012\u0007\u0010\u0089\u0001\u001a\u0002002Z\u0008\u0006\u0010\u008a\u0001\u001aS\u0012\u0016\u0012\u0014\u0018\u000100\u00a2\u0006\r\u0008\u0010\u0012\t\u0008\u0011\u0012\u0005\u0008\u0008(\u0089\u0001\u0012\u0017\u0012\u0015\u0018\u0001H\u0087\u0001\u00a2\u0006\r\u0008\u0010\u0012\t\u0008\u0011\u0012\u0005\u0008\u0008(\u008c\u0001\u0012\u0017\u0012\u0015\u0018\u0001H\u0087\u0001\u00a2\u0006\r\u0008\u0010\u0012\t\u0008\u0011\u0012\u0005\u0008\u0008(\u008d\u0001\u0012\u0004\u0012\u00020}0\u008b\u0001H\u0082\u0008\u00a2\u0006\u0003\u0010\u008e\u0001J\u0012\u0010\u0090\u0001\u001a\u00020}2\u0007\u0010\u0091\u0001\u001a\u000200H\u0016J\u0012\u0010\u0092\u0001\u001a\u00020}2\u0007\u0010\u0093\u0001\u001a\u00020\u000fH\u0016J\t\u0010\u0094\u0001\u001a\u00020}H\u0016J#\u0010\u0095\u0001\u001a\u00020}2\u0006\u0010s\u001a\u00020\'2\u0006\u0010\u0012\u001a\u00020\u000f2\u0008\u0010[\u001a\u0004\u0018\u00010ZH\u0016J\t\u0010\u0096\u0001\u001a\u00020}H\u0016R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0013X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR+\u0010 \u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u000f8V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R+\u0010(\u001a\u00020\'2\u0006\u0010\u001f\u001a\u00020\'8V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008-\u0010&\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u0014\u0010.\u001a\u0008\u0012\u0004\u0012\u0002000/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u00101\u001a\u0008\u0012\u0004\u0012\u0002000/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u000203X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u00105\u001a\u0002042\u0006\u0010\u001f\u001a\u0002048V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00089\u0010&\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u0014\u0010:\u001a\u00020;X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010<R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\u000bX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010>R/\u0010@\u001a\u0004\u0018\u00010?2\u0008\u0010\u001f\u001a\u0004\u0018\u00010?8@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008E\u0010&\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR/\u0010G\u001a\u0004\u0018\u00010F2\u0008\u0010\u001f\u001a\u0004\u0018\u00010F8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008L\u0010&\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\u0016\u0010M\u001a\u0004\u0018\u00010N8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010PR+\u0010\r\u001a\u001f\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020RX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010S\u001a\u0004\u0018\u00010TX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR\u0014\u0010\n\u001a\u00020\u000bX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u0010>R+\u0010[\u001a\u00020Z2\u0006\u0010\u001f\u001a\u00020Z8V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008`\u0010&\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010a\u001a\u0004\u0018\u0001002\u0008\u0010\u001f\u001a\u0004\u0018\u0001008D@DX\u0084\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008f\u0010&\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR/\u0010h\u001a\u0004\u0018\u00010g2\u0008\u0010\u001f\u001a\u0004\u0018\u00010g8V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008m\u0010&\u001a\u0004\u0008i\u0010j\"\u0004\u0008k\u0010lR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0098\u0001"
    }
    d2 = {
        "Lio/sentry/android/replay/capture/BaseCaptureStrategy;",
        "Lio/sentry/android/replay/capture/CaptureStrategy;",
        "options",
        "Lio/sentry/SentryOptions;",
        "scopes",
        "Lio/sentry/IScopes;",
        "dateProvider",
        "Lio/sentry/transport/ICurrentDateProvider;",
        "ticker",
        "Lio/sentry/time/MonotonicTicker;",
        "replayExecutor",
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
        "cache",
        "getCache",
        "()Lio/sentry/android/replay/ReplayCache;",
        "setCache",
        "(Lio/sentry/android/replay/ReplayCache;)V",
        "currentEvents",
        "Ljava/util/Deque;",
        "Lio/sentry/rrweb/RRWebEvent;",
        "getCurrentEvents",
        "()Ljava/util/Deque;",
        "<set-?>",
        "currentReplayId",
        "getCurrentReplayId",
        "()Lio/sentry/protocol/SentryId;",
        "setCurrentReplayId",
        "(Lio/sentry/protocol/SentryId;)V",
        "currentReplayId$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "",
        "currentSegment",
        "getCurrentSegment",
        "()I",
        "setCurrentSegment",
        "(I)V",
        "currentSegment$delegate",
        "currentSegmentNames",
        "",
        "",
        "currentTraceIds",
        "gestureConverter",
        "Lio/sentry/android/replay/gestures/ReplayGestureConverter;",
        "",
        "isFlushed",
        "()Z",
        "setFlushed",
        "(Z)V",
        "isFlushed$delegate",
        "isTerminating",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getPersistingExecutor",
        "()Ljava/util/concurrent/ScheduledExecutorService;",
        "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "recorderConfig",
        "getRecorderConfig$sentry_android_replay_release",
        "()Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "setRecorderConfig$sentry_android_replay_release",
        "(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V",
        "recorderConfig$delegate",
        "Lio/sentry/android/replay/RecordingMetadata;",
        "recordingMetadata",
        "getRecordingMetadata",
        "()Lio/sentry/android/replay/RecordingMetadata;",
        "setRecordingMetadata",
        "(Lio/sentry/android/replay/RecordingMetadata;)V",
        "recordingMetadata$delegate",
        "replayCacheDir",
        "Ljava/io/File;",
        "getReplayCacheDir",
        "()Ljava/io/File;",
        "replayContextLock",
        "",
        "replayDeadline",
        "Lio/sentry/time/Deadline;",
        "getReplayDeadline",
        "()Lio/sentry/time/Deadline;",
        "setReplayDeadline",
        "(Lio/sentry/time/Deadline;)V",
        "getReplayExecutor",
        "Lio/sentry/SentryReplayEvent$ReplayType;",
        "replayType",
        "getReplayType",
        "()Lio/sentry/SentryReplayEvent$ReplayType;",
        "setReplayType",
        "(Lio/sentry/SentryReplayEvent$ReplayType;)V",
        "replayType$delegate",
        "screenAtStart",
        "getScreenAtStart",
        "()Ljava/lang/String;",
        "setScreenAtStart",
        "(Ljava/lang/String;)V",
        "screenAtStart$delegate",
        "Ljava/util/Date;",
        "segmentTimestamp",
        "getSegmentTimestamp",
        "()Ljava/util/Date;",
        "setSegmentTimestamp",
        "(Ljava/util/Date;)V",
        "segmentTimestamp$delegate",
        "createSegmentInternal",
        "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;",
        "duration",
        "",
        "currentSegmentTimestamp",
        "segmentId",
        "height",
        "width",
        "frameRate",
        "bitRate",
        "breadcrumbs",
        "",
        "Lio/sentry/Breadcrumb;",
        "events",
        "onConfigurationChanged",
        "",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "pause",
        "persistMetadataValue",
        "key",
        "value",
        "persistableAtomic",
        "Lkotlin/properties/ReadWriteProperty;",
        "T",
        "initialValue",
        "propertyName",
        "onChange",
        "Lkotlin/Function3;",
        "oldValue",
        "newValue",
        "(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lkotlin/properties/ReadWriteProperty;",
        "persistableAtomicNullable",
        "registerSegmentName",
        "segmentName",
        "registerTraceId",
        "traceId",
        "resume",
        "start",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final $stable:I

.field public static final Companion:Lio/sentry/android/replay/capture/BaseCaptureStrategy$Companion;

.field private static final MAX_CONTEXT_VALUES:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CaptureStrategy"


# instance fields
.field private cache:Lio/sentry/android/replay/ReplayCache;

.field private final currentEvents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/sentry/rrweb/RRWebEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final currentReplayId$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final currentSegment$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final currentSegmentNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final currentTraceIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gestureConverter:Lio/sentry/android/replay/gestures/ReplayGestureConverter;

.field private final isFlushed$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final isTerminating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final options:Lio/sentry/SentryOptions;

.field private final persistingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final recorderConfig$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final recordingMetadata$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final replayCacheProvider:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/android/replay/ReplayCache;",
            ">;"
        }
    .end annotation
.end field

.field private final replayContextLock:Ljava/lang/Object;

.field private volatile replayDeadline:Lio/sentry/time/Deadline;

.field private final replayExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final replayType$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final scopes:Lio/sentry/IScopes;

.field private final screenAtStart$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final segmentTimestamp$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final ticker:Lio/sentry/time/MonotonicTicker;


# direct methods
.method public static synthetic $r8$lambda$0jioJ_NzQ1kpgzVH3yC54bxGFKA(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/util/Date;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->resume$lambda$0(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/util/Date;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O1c4x-kuyWESOXkrjUtfXkPKFFM(Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->stop$lambda$0(Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x8

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "recorderConfig"

    const-string v4, "getRecorderConfig$sentry_android_replay_release()Lio/sentry/android/replay/ScreenshotRecorderConfig;"

    const-class v5, Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v3, v4, v6}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v1, v6

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "segmentTimestamp"

    const-string v4, "getSegmentTimestamp()Ljava/util/Date;"

    invoke-direct {v2, v5, v3, v4, v6}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "recordingMetadata"

    const-string v4, "getRecordingMetadata()Lio/sentry/android/replay/RecordingMetadata;"

    invoke-direct {v2, v5, v3, v4, v6}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "screenAtStart"

    const-string v4, "getScreenAtStart()Ljava/lang/String;"

    invoke-direct {v2, v5, v3, v4, v6}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "currentReplayId"

    const-string v4, "getCurrentReplayId()Lio/sentry/protocol/SentryId;"

    invoke-direct {v2, v5, v3, v4, v6}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "currentSegment"

    const-string v4, "getCurrentSegment()I"

    invoke-direct {v2, v5, v3, v4, v6}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "replayType"

    const-string v4, "getReplayType()Lio/sentry/SentryReplayEvent$ReplayType;"

    invoke-direct {v2, v5, v3, v4, v6}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "isFlushed"

    const-string v4, "isFlushed()Z"

    invoke-direct {v2, v5, v3, v4, v6}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sput-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->Companion:Lio/sentry/android/replay/capture/BaseCaptureStrategy$Companion;

    sput v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$stable:I

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V
    .locals 18
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "scopes"    # Lio/sentry/IScopes;
    .param p3, "dateProvider"    # Lio/sentry/transport/ICurrentDateProvider;
    .param p4, "ticker"    # Lio/sentry/time/MonotonicTicker;
    .param p5, "replayExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const-string v6, "options"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "dateProvider"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "ticker"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "replayExecutor"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "persistingExecutor"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->options:Lio/sentry/SentryOptions;

    .line 58
    move-object/from16 v6, p2

    iput-object v6, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->scopes:Lio/sentry/IScopes;

    .line 61
    iput-object v3, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->ticker:Lio/sentry/time/MonotonicTicker;

    .line 62
    iput-object v4, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 63
    iput-object v5, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->persistingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 64
    move-object/from16 v7, p7

    iput-object v7, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayCacheProvider:Lkotlin/jvm/functions/Function1;

    .line 72
    new-instance v8, Lio/sentry/android/replay/gestures/ReplayGestureConverter;

    iget-object v9, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->ticker:Lio/sentry/time/MonotonicTicker;

    invoke-direct {v8, v2, v9}, Lio/sentry/android/replay/gestures/ReplayGestureConverter;-><init>(Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;)V

    iput-object v8, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->gestureConverter:Lio/sentry/android/replay/gestures/ReplayGestureConverter;

    .line 74
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v8, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->isTerminating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    const-string v8, ""

    .local v8, "propertyName$iv":Ljava/lang/String;
    move-object/from16 v10, p0

    .line 292
    .local v10, "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    nop

    .line 293
    const/4 v11, 0x0

    .line 292
    .local v11, "initialValue$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 300
    .local v12, "$i$f$persistableAtomicNullable":I
    new-instance v13, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1;

    invoke-direct {v13, v11, v10, v8, v0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    check-cast v13, Lkotlin/properties/ReadWriteProperty;

    .line 301
    nop

    .line 77
    .end local v8    # "propertyName$iv":Ljava/lang/String;
    .end local v10    # "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .end local v11    # "initialValue$iv":Ljava/lang/Object;
    .end local v12    # "$i$f$persistableAtomicNullable":I
    iput-object v13, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->recorderConfig$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 88
    const-string v8, "segment.timestamp"

    .line 302
    .restart local v8    # "propertyName$iv":Ljava/lang/String;
    .restart local v10    # "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    nop

    .line 303
    const/4 v11, 0x0

    .line 302
    .restart local v11    # "initialValue$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 310
    .restart local v12    # "$i$f$persistableAtomicNullable":I
    new-instance v13, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2;

    invoke-direct {v13, v11, v10, v8, v0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    check-cast v13, Lkotlin/properties/ReadWriteProperty;

    .line 311
    nop

    .line 88
    .end local v8    # "propertyName$iv":Ljava/lang/String;
    .end local v10    # "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .end local v11    # "initialValue$iv":Ljava/lang/Object;
    .end local v12    # "$i$f$persistableAtomicNullable":I
    iput-object v13, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->segmentTimestamp$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 100
    const-string v8, ""

    .line 312
    .restart local v8    # "propertyName$iv":Ljava/lang/String;
    .restart local v10    # "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    nop

    .line 313
    const/4 v11, 0x0

    .line 312
    .restart local v11    # "initialValue$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 320
    .restart local v12    # "$i$f$persistableAtomicNullable":I
    new-instance v13, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3;

    invoke-direct {v13, v11, v10, v8, v0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    check-cast v13, Lkotlin/properties/ReadWriteProperty;

    .line 321
    nop

    .line 100
    .end local v8    # "propertyName$iv":Ljava/lang/String;
    .end local v10    # "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .end local v11    # "initialValue$iv":Ljava/lang/Object;
    .end local v12    # "$i$f$persistableAtomicNullable":I
    iput-object v13, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->recordingMetadata$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 108
    const-string v8, "replay.screen-at-start"

    .restart local v8    # "propertyName$iv":Ljava/lang/String;
    move-object/from16 v12, p0

    .local v12, "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    move-object v13, v8

    .line 322
    .end local v8    # "propertyName$iv":Ljava/lang/String;
    .local v13, "propertyName$iv":Ljava/lang/String;
    nop

    .line 323
    const/4 v11, 0x0

    .line 322
    .restart local v11    # "initialValue$iv":Ljava/lang/Object;
    nop

    .line 326
    nop

    .line 322
    const/4 v8, 0x0

    .line 330
    .local v8, "$i$f$persistableAtomicNullable":I
    new-instance v10, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$4;

    move-object v14, v12

    move-object v15, v13

    invoke-direct/range {v10 .. v15}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$4;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;)V

    check-cast v10, Lkotlin/properties/ReadWriteProperty;

    .line 331
    nop

    .line 108
    .end local v8    # "$i$f$persistableAtomicNullable":I
    .end local v11    # "initialValue$iv":Ljava/lang/Object;
    .end local v12    # "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .end local v13    # "propertyName$iv":Ljava/lang/String;
    iput-object v10, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->screenAtStart$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 110
    sget-object v8, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .local v8, "initialValue$iv":Ljava/lang/Object;
    const-string v10, "replay.id"

    .local v10, "propertyName$iv":Ljava/lang/String;
    move-object/from16 v13, p0

    .local v13, "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    move-object/from16 v16, v10

    .line 332
    .end local v10    # "propertyName$iv":Ljava/lang/String;
    .local v16, "propertyName$iv":Ljava/lang/String;
    nop

    .line 336
    nop

    .line 332
    const/4 v10, 0x0

    .line 340
    .local v10, "$i$f$persistableAtomic":I
    move-object/from16 v14, v16

    move-object v15, v13

    .local v13, "this_$iv$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .local v14, "propertyName$iv$iv":Ljava/lang/String;
    .local v15, "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    move-object v12, v8

    .local v12, "initialValue$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 341
    .local v17, "$i$f$persistableAtomicNullable":I
    new-instance v11, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;

    invoke-direct/range {v11 .. v16}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;)V

    check-cast v11, Lkotlin/properties/ReadWriteProperty;

    .line 342
    nop

    .line 340
    .end local v12    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v13    # "this_$iv$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .end local v14    # "propertyName$iv$iv":Ljava/lang/String;
    .end local v17    # "$i$f$persistableAtomicNullable":I
    nop

    .line 110
    .end local v8    # "initialValue$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$persistableAtomic":I
    .end local v15    # "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .end local v16    # "propertyName$iv":Ljava/lang/String;
    iput-object v11, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentReplayId$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 112
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .restart local v8    # "initialValue$iv":Ljava/lang/Object;
    const-string v10, "segment.id"

    .local v10, "propertyName$iv":Ljava/lang/String;
    .local v13, "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    move-object/from16 v16, v10

    .line 343
    .end local v10    # "propertyName$iv":Ljava/lang/String;
    .restart local v16    # "propertyName$iv":Ljava/lang/String;
    nop

    .line 347
    nop

    .line 343
    const/4 v10, 0x0

    .line 351
    .local v10, "$i$f$persistableAtomic":I
    move-object/from16 v14, v16

    .local v13, "this_$iv$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .restart local v14    # "propertyName$iv$iv":Ljava/lang/String;
    .restart local v15    # "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    move-object v12, v8

    .restart local v12    # "initialValue$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 352
    .restart local v17    # "$i$f$persistableAtomicNullable":I
    new-instance v11, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2;

    invoke-direct/range {v11 .. v16}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;)V

    check-cast v11, Lkotlin/properties/ReadWriteProperty;

    .line 353
    nop

    .line 351
    .end local v12    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v13    # "this_$iv$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .end local v14    # "propertyName$iv$iv":Ljava/lang/String;
    .end local v17    # "$i$f$persistableAtomicNullable":I
    nop

    .line 112
    .end local v8    # "initialValue$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$persistableAtomic":I
    .end local v15    # "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .end local v16    # "propertyName$iv":Ljava/lang/String;
    iput-object v11, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentSegment$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 116
    const-string v8, "replay.type"

    .local v8, "propertyName$iv":Ljava/lang/String;
    move-object/from16 v12, p0

    .local v12, "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    move-object v15, v8

    .line 354
    .end local v8    # "propertyName$iv":Ljava/lang/String;
    .local v15, "propertyName$iv":Ljava/lang/String;
    nop

    .line 355
    const/4 v8, 0x0

    .line 354
    .local v8, "initialValue$iv":Ljava/lang/Object;
    nop

    .line 358
    nop

    .line 354
    const/16 v16, 0x0

    .line 362
    .local v16, "$i$f$persistableAtomic":I
    move-object v13, v15

    move-object v14, v12

    .local v12, "this_$iv$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .local v13, "propertyName$iv$iv":Ljava/lang/String;
    .local v14, "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    move-object v11, v8

    .local v11, "initialValue$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 363
    .restart local v17    # "$i$f$persistableAtomicNullable":I
    new-instance v10, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3;

    invoke-direct/range {v10 .. v15}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;)V

    check-cast v10, Lkotlin/properties/ReadWriteProperty;

    .line 364
    nop

    .line 362
    .end local v11    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v12    # "this_$iv$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .end local v13    # "propertyName$iv$iv":Ljava/lang/String;
    .end local v17    # "$i$f$persistableAtomicNullable":I
    nop

    .line 116
    .end local v8    # "initialValue$iv":Ljava/lang/Object;
    .end local v14    # "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .end local v15    # "propertyName$iv":Ljava/lang/String;
    .end local v16    # "$i$f$persistableAtomic":I
    iput-object v10, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayType$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 121
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .restart local v8    # "initialValue$iv":Ljava/lang/Object;
    const-string v9, "replay.flushed"

    .local v9, "propertyName$iv":Ljava/lang/String;
    .local v12, "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    move-object v15, v9

    .line 365
    .end local v9    # "propertyName$iv":Ljava/lang/String;
    .restart local v15    # "propertyName$iv":Ljava/lang/String;
    nop

    .line 369
    nop

    .line 365
    const/4 v9, 0x0

    .line 373
    .local v9, "$i$f$persistableAtomic":I
    move-object v13, v15

    .local v12, "this_$iv$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .restart local v13    # "propertyName$iv$iv":Ljava/lang/String;
    .restart local v14    # "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    move-object v11, v8

    .restart local v11    # "initialValue$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 374
    .local v16, "$i$f$persistableAtomicNullable":I
    new-instance v10, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$4;

    invoke-direct/range {v10 .. v15}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$4;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;)V

    check-cast v10, Lkotlin/properties/ReadWriteProperty;

    .line 375
    nop

    .line 373
    .end local v11    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v12    # "this_$iv$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .end local v13    # "propertyName$iv$iv":Ljava/lang/String;
    .end local v16    # "$i$f$persistableAtomicNullable":I
    nop

    .line 121
    .end local v8    # "initialValue$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$persistableAtomic":I
    .end local v14    # "$this$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .end local v15    # "propertyName$iv":Ljava/lang/String;
    iput-object v10, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->isFlushed$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 123
    new-instance v8, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    check-cast v8, Ljava/util/Deque;

    iput-object v8, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentEvents:Ljava/util/Deque;

    .line 124
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayContextLock:Ljava/lang/Object;

    .line 125
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v8, Ljava/util/Set;

    iput-object v8, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentTraceIds:Ljava/util/Set;

    .line 126
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v8, Ljava/util/Set;

    iput-object v8, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentSegmentNames:Ljava/util/Set;

    .line 56
    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    .line 56
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    .line 56
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

    invoke-direct/range {v1 .. v8}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Lio/sentry/time/MonotonicTicker;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function1;)V

    .line 65
    return-void
.end method

.method public static final synthetic access$getOptions$p(Lio/sentry/android/replay/capture/BaseCaptureStrategy;)Lio/sentry/SentryOptions;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 52
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->options:Lio/sentry/SentryOptions;

    return-object v0
.end method

.method public static final synthetic access$persistMetadataValue(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1, p2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->persistMetadataValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic createSegmentInternal$default(Lio/sentry/android/replay/capture/BaseCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIIIILio/sentry/SentryReplayEvent$ReplayType;Lio/sentry/android/replay/ReplayCache;Ljava/lang/String;Ljava/util/List;Ljava/util/Deque;ILjava/lang/Object;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
    .locals 15

    .line 172
    move/from16 v1, p15

    if-nez p16, :cond_5

    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->getReplayType()Lio/sentry/SentryReplayEvent$ReplayType;

    move-result-object v2

    move-object v10, v2

    goto :goto_0

    .line 172
    :cond_0
    move-object/from16 v10, p10

    :goto_0
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_1

    .line 182
    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->cache:Lio/sentry/android/replay/ReplayCache;

    move-object v11, v2

    goto :goto_1

    .line 172
    :cond_1
    move-object/from16 v11, p11

    :goto_1
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_2

    .line 183
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->getScreenAtStart()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_2

    .line 172
    :cond_2
    move-object/from16 v12, p12

    :goto_2
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_3

    .line 184
    const/4 v2, 0x0

    move-object v13, v2

    goto :goto_3

    .line 172
    :cond_3
    move-object/from16 v13, p13

    :goto_3
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_4

    .line 185
    iget-object v1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentEvents:Ljava/util/Deque;

    move-object v14, v1

    goto :goto_4

    .line 172
    :cond_4
    move-object/from16 v14, p14

    :goto_4
    move-object v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v14}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->createSegmentInternal(JLjava/util/Date;Lio/sentry/protocol/SentryId;IIIIILio/sentry/SentryReplayEvent$ReplayType;Lio/sentry/android/replay/ReplayCache;Ljava/lang/String;Ljava/util/List;Ljava/util/Deque;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: createSegmentInternal"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getRecordingMetadata()Lio/sentry/android/replay/RecordingMetadata;
    .locals 3

    .line 99
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->recordingMetadata$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 99
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 100
    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/RecordingMetadata;

    return-object v0
.end method

.method private final persistMetadataValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->cache:Lio/sentry/android/replay/ReplayCache;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 376
    move-object v2, p2

    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 149
    .local v3, "$i$a$-takeIf-BaseCaptureStrategy$persistMetadataValue$1":I
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v5, 0xd

    invoke-static {v4, v5, v6, v7, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v6, 0x1

    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-takeIf-BaseCaptureStrategy$persistMetadataValue$1":I
    :cond_0
    if-eqz v6, :cond_1

    move-object v1, p2

    :cond_1
    invoke-virtual {v0, p1, v1}, Lio/sentry/android/replay/ReplayCache;->persistSegmentValues$sentry_android_replay_release(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_2
    return-void
.end method

.method private final persistableAtomic(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lkotlin/properties/ReadWriteProperty;
    .locals 6
    .param p1, "initialValue"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "onChange"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-TT;-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/properties/ReadWriteProperty<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 289
    .local v0, "$i$f$persistableAtomic":I
    move-object v1, p2

    .local v1, "propertyName$iv":Ljava/lang/String;
    move-object v2, p1

    .local v2, "initialValue$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "this_$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    const/4 v4, 0x0

    .line 377
    .local v4, "$i$f$persistableAtomicNullable":I
    new-instance v5, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;

    invoke-direct {v5, v2, v3, p3, v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Lkotlin/jvm/functions/Function3;Ljava/lang/String;)V

    check-cast v5, Lkotlin/properties/ReadWriteProperty;

    .line 378
    nop

    .line 289
    .end local v1    # "propertyName$iv":Ljava/lang/String;
    .end local v2    # "initialValue$iv":Ljava/lang/Object;
    .end local v3    # "this_$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .end local v4    # "$i$f$persistableAtomicNullable":I
    return-object v5
.end method

.method static synthetic persistableAtomic$default(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lkotlin/properties/ReadWriteProperty;
    .locals 4
    .param p0, "$this"    # Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .param p1, "initialValue"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "onChange"    # Lkotlin/jvm/functions/Function3;

    .line 281
    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 282
    const/4 p1, 0x0

    .line 281
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 285
    new-instance p4, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomic$1;

    invoke-direct {p4, p0, p2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomic$1;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;)V

    move-object p3, p4

    check-cast p3, Lkotlin/jvm/functions/Function3;

    .line 281
    :cond_1
    const/4 p4, 0x0

    .line 289
    .local p4, "$i$f$persistableAtomic":I
    move-object p5, p2

    .local p5, "propertyName$iv":Ljava/lang/String;
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    move-object v1, p1

    .local v1, "initialValue$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 379
    .local v2, "$i$f$persistableAtomicNullable":I
    new-instance v3, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;

    invoke-direct {v3, v1, v0, p3, p5}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Lkotlin/jvm/functions/Function3;Ljava/lang/String;)V

    check-cast v3, Lkotlin/properties/ReadWriteProperty;

    .line 380
    nop

    .line 289
    .end local v0    # "this_$iv":Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .end local v1    # "initialValue$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$persistableAtomicNullable":I
    .end local p5    # "propertyName$iv":Ljava/lang/String;
    return-object v3

    .line 281
    .end local p4    # "$i$f$persistableAtomic":I
    :cond_2
    new-instance p4, Ljava/lang/UnsupportedOperationException;

    const-string p5, "Super calls with default arguments not supported in this target, function: persistableAtomic"

    invoke-direct {p4, p5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method private final persistableAtomicNullable(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lkotlin/properties/ReadWriteProperty;
    .locals 2
    .param p1, "initialValue"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "onChange"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-TT;-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/properties/ReadWriteProperty<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 256
    .local v0, "$i$f$persistableAtomicNullable":I
    new-instance v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;

    invoke-direct {v1, p1, p0, p3, p2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Lkotlin/jvm/functions/Function3;Ljava/lang/String;)V

    check-cast v1, Lkotlin/properties/ReadWriteProperty;

    .line 279
    return-object v1
.end method

.method static synthetic persistableAtomicNullable$default(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lkotlin/properties/ReadWriteProperty;
    .locals 0
    .param p0, "$this"    # Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .param p1, "initialValue"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "onChange"    # Lkotlin/jvm/functions/Function3;

    .line 248
    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 249
    const/4 p1, 0x0

    .line 248
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 252
    new-instance p4, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$1;

    invoke-direct {p4, p0, p2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$1;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;)V

    move-object p3, p4

    check-cast p3, Lkotlin/jvm/functions/Function3;

    .line 248
    :cond_1
    const/4 p4, 0x0

    .line 256
    .local p4, "$i$f$persistableAtomicNullable":I
    new-instance p5, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;

    invoke-direct {p5, p1, p0, p3, p2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Lkotlin/jvm/functions/Function3;Ljava/lang/String;)V

    check-cast p5, Lkotlin/properties/ReadWriteProperty;

    .line 279
    return-object p5

    .line 248
    .end local p4    # "$i$f$persistableAtomicNullable":I
    :cond_2
    new-instance p4, Ljava/lang/UnsupportedOperationException;

    const-string p5, "Super calls with default arguments not supported in this target, function: persistableAtomicNullable"

    invoke-direct {p4, p5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method private static final resume$lambda$0(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/util/Date;)V
    .locals 0
    .param p0, "this$0"    # Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .param p1, "$resumedAt"    # Ljava/util/Date;

    .line 155
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->setSegmentTimestamp(Ljava/util/Date;)V

    return-void
.end method

.method private final setRecordingMetadata(Lio/sentry/android/replay/RecordingMetadata;)V
    .locals 3
    .param p1, "<set-?>"    # Lio/sentry/android/replay/RecordingMetadata;

    .line 99
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->recordingMetadata$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 99
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 100
    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private static final stop$lambda$0(Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V
    .locals 2
    .param p0, "this$0"    # Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 164
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->cache:Lio/sentry/android/replay/ReplayCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayCache;->close()V

    .line 165
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayDeadline:Lio/sentry/time/Deadline;

    .line 166
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->setSegmentTimestamp(Ljava/util/Date;)V

    .line 167
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    const-string v1, "EMPTY_ID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->setCurrentReplayId(Lio/sentry/protocol/SentryId;)V

    .line 168
    return-void
.end method


# virtual methods
.method protected final createSegmentInternal(JLjava/util/Date;Lio/sentry/protocol/SentryId;IIIIILio/sentry/SentryReplayEvent$ReplayType;Lio/sentry/android/replay/ReplayCache;Ljava/lang/String;Ljava/util/List;Ljava/util/Deque;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
    .locals 21
    .param p1, "duration"    # J
    .param p3, "currentSegmentTimestamp"    # Ljava/util/Date;
    .param p4, "replayId"    # Lio/sentry/protocol/SentryId;
    .param p5, "segmentId"    # I
    .param p6, "height"    # I
    .param p7, "width"    # I
    .param p8, "frameRate"    # I
    .param p9, "bitRate"    # I
    .param p10, "replayType"    # Lio/sentry/SentryReplayEvent$ReplayType;
    .param p11, "cache"    # Lio/sentry/android/replay/ReplayCache;
    .param p12, "screenAtStart"    # Ljava/lang/String;
    .param p13, "breadcrumbs"    # Ljava/util/List;
    .param p14, "events"    # Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Date;",
            "Lio/sentry/protocol/SentryId;",
            "IIIII",
            "Lio/sentry/SentryReplayEvent$ReplayType;",
            "Lio/sentry/android/replay/ReplayCache;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/sentry/Breadcrumb;",
            ">;",
            "Ljava/util/Deque<",
            "Lio/sentry/rrweb/RRWebEvent;",
            ">;)",
            "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "currentSegmentTimestamp"

    move-object/from16 v7, p3

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayId"

    move-object/from16 v8, p4

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayType"

    move-object/from16 v12, p10

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    move-object/from16 v2, p14

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v3, v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayContextLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .line 189
    .local v0, "$i$a$-synchronized-BaseCaptureStrategy$createSegmentInternal$1":I
    :try_start_0
    iget-object v4, v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentTraceIds:Ljava/util/Set;

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentSegmentNames:Ljava/util/Set;

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 190
    .local v4, "context":Lkotlin/Pair;
    iget-object v5, v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentTraceIds:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 191
    iget-object v5, v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentSegmentNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    nop

    .line 188
    .end local v0    # "$i$a$-synchronized-BaseCaptureStrategy$createSegmentInternal$1":I
    .end local v4    # "context":Lkotlin/Pair;
    monitor-exit v3

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/List;

    .line 187
    nop

    .local v19, "traceIds":Ljava/util/List;
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/util/List;

    .line 194
    .local v20, "segmentNames":Ljava/util/List;
    sget-object v2, Lio/sentry/android/replay/capture/CaptureStrategy;->Companion:Lio/sentry/android/replay/capture/CaptureStrategy$Companion;

    .line 195
    iget-object v3, v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->scopes:Lio/sentry/IScopes;

    .line 196
    iget-object v4, v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->options:Lio/sentry/SentryOptions;

    .line 197
    nop

    .line 198
    nop

    .line 199
    nop

    .line 200
    nop

    .line 201
    nop

    .line 202
    nop

    .line 203
    nop

    .line 204
    nop

    .line 205
    nop

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 209
    nop

    .line 210
    nop

    .line 211
    nop

    .line 194
    move-wide/from16 v5, p1

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v13, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    invoke-virtual/range {v2 .. v20}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->createSegment(Lio/sentry/IScopes;Lio/sentry/SentryOptions;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIILio/sentry/SentryReplayEvent$ReplayType;Lio/sentry/android/replay/ReplayCache;IILjava/lang/String;Ljava/util/List;Ljava/util/Deque;Ljava/util/List;Ljava/util/List;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    move-result-object v0

    return-object v0

    .line 188
    .end local v19    # "traceIds":Ljava/util/List;
    .end local v20    # "segmentNames":Ljava/util/List;
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method protected final getCache()Lio/sentry/android/replay/ReplayCache;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->cache:Lio/sentry/android/replay/ReplayCache;

    return-object v0
.end method

.method protected final getCurrentEvents()Ljava/util/Deque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Lio/sentry/rrweb/RRWebEvent;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentEvents:Ljava/util/Deque;

    return-object v0
.end method

.method public getCurrentReplayId()Lio/sentry/protocol/SentryId;
    .locals 3

    .line 109
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentReplayId$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 109
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    .line 110
    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getCurrentSegment()I
    .locals 3

    .line 111
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentSegment$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 111
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    .line 112
    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method protected final getPersistingExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->persistingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public final getRecorderConfig$sentry_android_replay_release()Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .locals 3

    .line 76
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->recorderConfig$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 76
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 77
    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/ScreenshotRecorderConfig;

    return-object v0
.end method

.method public getReplayCacheDir()Ljava/io/File;
    .locals 1

    .line 114
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->cache:Lio/sentry/android/replay/ReplayCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayCache;->getReplayCacheDir$sentry_android_replay_release()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected final getReplayDeadline()Lio/sentry/time/Deadline;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayDeadline:Lio/sentry/time/Deadline;

    return-object v0
.end method

.method protected final getReplayExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public getReplayType()Lio/sentry/SentryReplayEvent$ReplayType;
    .locals 3

    .line 116
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayType$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 116
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryReplayEvent$ReplayType;

    return-object v0
.end method

.method protected final getScreenAtStart()Ljava/lang/String;
    .locals 3

    .line 107
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->screenAtStart$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 107
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    .line 108
    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSegmentTimestamp()Ljava/util/Date;
    .locals 3

    .line 87
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->segmentTimestamp$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 87
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 88
    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public isFlushed()Z
    .locals 3

    .line 120
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->isFlushed$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 120
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    .line 121
    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected final isTerminating()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->isTerminating:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public onConfigurationChanged(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 1
    .param p1, "recorderConfig"    # Lio/sentry/android/replay/ScreenshotRecorderConfig;

    const-string v0, "recorderConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->setRecorderConfig$sentry_android_replay_release(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    .line 217
    return-void
.end method

.method public bridge onScreenChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "screen"    # Ljava/lang/String;

    .line 52
    invoke-static {p0, p1}, Lio/sentry/android/replay/capture/CaptureStrategy$DefaultImpls;->onScreenChanged(Lio/sentry/android/replay/capture/CaptureStrategy;Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->getRecorderConfig$sentry_android_replay_release()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "config":Lio/sentry/android/replay/ScreenshotRecorderConfig;
    const/4 v1, 0x0

    .line 221
    .local v1, "$i$a$-let-BaseCaptureStrategy$onTouchEvent$1":I
    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->gestureConverter:Lio/sentry/android/replay/gestures/ReplayGestureConverter;

    invoke-virtual {v2, p1, v0}, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->convert(Landroid/view/MotionEvent;Lio/sentry/android/replay/ScreenshotRecorderConfig;)Ljava/util/List;

    move-result-object v2

    .line 222
    .local v2, "rrwebEvents":Ljava/util/List;
    if-eqz v2, :cond_0

    .line 223
    iget-object v3, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentEvents:Ljava/util/Deque;

    check-cast v3, Ljava/util/Collection;

    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 225
    :cond_0
    nop

    .line 220
    .end local v0    # "config":Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .end local v1    # "$i$a$-let-BaseCaptureStrategy$onTouchEvent$1":I
    .end local v2    # "rrwebEvents":Ljava/util/List;
    nop

    .line 226
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 0

    .line 158
    return-void
.end method

.method public registerSegmentName(Ljava/lang/String;)V
    .locals 4
    .param p1, "segmentName"    # Ljava/lang/String;

    const-string v0, "segmentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayContextLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 241
    .local v1, "$i$a$-synchronized-BaseCaptureStrategy$registerSegmentName$1":I
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentSegmentNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    .line 242
    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentSegmentNames:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    nop

    .end local v1    # "$i$a$-synchronized-BaseCaptureStrategy$registerSegmentName$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 246
    :cond_2
    :goto_1
    return-void
.end method

.method public registerTraceId(Lio/sentry/protocol/SentryId;)V
    .locals 5
    .param p1, "traceId"    # Lio/sentry/protocol/SentryId;

    const-string v0, "traceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayContextLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 231
    .local v1, "$i$a$-synchronized-BaseCaptureStrategy$registerTraceId$1":I
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentTraceIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 232
    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentTraceIds:Ljava/util/Set;

    invoke-virtual {p1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_0
    nop

    .end local v1    # "$i$a$-synchronized-BaseCaptureStrategy$registerTraceId$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 236
    :cond_1
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 5

    .line 153
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    const-string v1, "getCurrentDateTime(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .local v0, "resumedAt":Ljava/util/Date;
    iget-object v1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lio/sentry/android/replay/util/ReplayRunnable;

    new-instance v3, Lio/sentry/android/replay/capture/BaseCaptureStrategy$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/util/Date;)V

    const-string v4, "CaptureStrategy.resume"

    invoke-direct {v2, v4, v3}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 156
    return-void
.end method

.method protected final setCache(Lio/sentry/android/replay/ReplayCache;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/sentry/android/replay/ReplayCache;

    .line 75
    iput-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->cache:Lio/sentry/android/replay/ReplayCache;

    return-void
.end method

.method public setCurrentReplayId(Lio/sentry/protocol/SentryId;)V
    .locals 3
    .param p1, "<set-?>"    # Lio/sentry/protocol/SentryId;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentReplayId$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 109
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    .line 110
    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setCurrentSegment(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 111
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->currentSegment$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 111
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setFlushed(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 120
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->isFlushed$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 120
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    .line 121
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRecorderConfig$sentry_android_replay_release(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 3
    .param p1, "<set-?>"    # Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 76
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->recorderConfig$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 76
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 77
    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method protected final setReplayDeadline(Lio/sentry/time/Deadline;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/sentry/time/Deadline;

    .line 98
    iput-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayDeadline:Lio/sentry/time/Deadline;

    return-void
.end method

.method public setReplayType(Lio/sentry/SentryReplayEvent$ReplayType;)V
    .locals 3
    .param p1, "<set-?>"    # Lio/sentry/SentryReplayEvent$ReplayType;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayType$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 116
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method protected final setScreenAtStart(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->screenAtStart$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 107
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    .line 108
    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setSegmentTimestamp(Ljava/util/Date;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/util/Date;

    .line 87
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->segmentTimestamp$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1
    nop

    .line 87
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 88
    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public start(ILio/sentry/protocol/SentryId;Lio/sentry/SentryReplayEvent$ReplayType;)V
    .locals 5
    .param p1, "segmentId"    # I
    .param p2, "replayId"    # Lio/sentry/protocol/SentryId;
    .param p3, "replayType"    # Lio/sentry/SentryReplayEvent$ReplayType;

    const-string v0, "replayId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayCacheProvider:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/ReplayCache;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lio/sentry/android/replay/ReplayCache;

    iget-object v1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-direct {v0, v1, p2}, Lio/sentry/android/replay/ReplayCache;-><init>(Lio/sentry/SentryOptions;Lio/sentry/protocol/SentryId;)V

    :cond_1
    iput-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->cache:Lio/sentry/android/replay/ReplayCache;

    .line 131
    invoke-virtual {p0, p2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->setCurrentReplayId(Lio/sentry/protocol/SentryId;)V

    .line 132
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->setCurrentSegment(I)V

    .line 133
    if-nez p3, :cond_3

    instance-of v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    if-eqz v0, :cond_2

    sget-object v0, Lio/sentry/SentryReplayEvent$ReplayType;->SESSION:Lio/sentry/SentryReplayEvent$ReplayType;

    goto :goto_0

    :cond_2
    sget-object v0, Lio/sentry/SentryReplayEvent$ReplayType;->BUFFER:Lio/sentry/SentryReplayEvent$ReplayType;

    goto :goto_0

    :cond_3
    move-object v0, p3

    :goto_0
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->setReplayType(Lio/sentry/SentryReplayEvent$ReplayType;)V

    .line 135
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->setSegmentTimestamp(Ljava/util/Date;)V

    .line 136
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->ticker:Lio/sentry/time/MonotonicTicker;

    iget-object v1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getSessionDuration()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Lio/sentry/time/Deadline;->after(Lio/sentry/time/MonotonicTicker;JLjava/util/concurrent/TimeUnit;)Lio/sentry/time/Deadline;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayDeadline:Lio/sentry/time/Deadline;

    .line 138
    nop

    .line 139
    new-instance v0, Lio/sentry/android/replay/RecordingMetadata;

    .line 140
    iget-object v1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    .line 142
    iget-object v3, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getDist()Ljava/lang/String;

    move-result-object v3

    .line 143
    iget-object v4, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryReplayOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v4

    .line 139
    :cond_4
    invoke-direct {v0, v1, v2, v3, v4}, Lio/sentry/android/replay/RecordingMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SdkVersion;)V

    .line 138
    invoke-direct {p0, v0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->setRecordingMetadata(Lio/sentry/android/replay/RecordingMetadata;)V

    .line 145
    return-void
.end method

.method public stop()V
    .locals 4

    .line 162
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->replayExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 163
    new-instance v1, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 162
    new-instance v2, Lio/sentry/android/replay/capture/BaseCaptureStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    .line 163
    const-string v3, "CaptureStrategy.stop"

    invoke-direct {v1, v3, v2}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 162
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 170
    return-void
.end method
