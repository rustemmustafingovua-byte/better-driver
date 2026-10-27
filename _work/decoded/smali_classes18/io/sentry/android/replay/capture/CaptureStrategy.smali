.class public interface abstract Lio/sentry/android/replay/capture/CaptureStrategy;
.super Ljava/lang/Object;
.source "CaptureStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/capture/CaptureStrategy$Companion;,
        Lio/sentry/android/replay/capture/CaptureStrategy$DefaultImpls;,
        Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008`\u0018\u0000 H2\u00020\u0001:\u0002HIJ$\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u000f2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020$0\'H&J\u0008\u0010(\u001a\u00020\u0000H&J\u001c\u0010)\u001a\u00020$2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020$0\'H&J\u0010\u0010*\u001a\u00020$2\u0006\u0010+\u001a\u00020,H&J\u0012\u0010-\u001a\u00020$2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016JB\u00100\u001a\u00020$2\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022,\u00103\u001a(\u0012\u0004\u0012\u000205\u0012\u0013\u0012\u001106\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(9\u0012\u0004\u0012\u00020$04\u00a2\u0006\u0002\u0008:H&J\u0010\u0010;\u001a\u00020$2\u0006\u0010<\u001a\u00020=H&J\u0008\u0010>\u001a\u00020$H&J\u0010\u0010?\u001a\u00020$2\u0006\u0010@\u001a\u00020/H&J\u0010\u0010A\u001a\u00020$2\u0006\u0010B\u001a\u00020\u0003H&J\u0008\u0010C\u001a\u00020$H&J(\u0010D\u001a\u00020$2\u0008\u0008\u0002\u0010E\u001a\u00020\t2\u0008\u0008\u0002\u0010F\u001a\u00020\u00032\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018H&J\u0008\u0010G\u001a\u00020$H&R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0008\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0018\u0010\u000e\u001a\u00020\u000fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0017\u001a\u00020\u0018X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006J"
    }
    d2 = {
        "Lio/sentry/android/replay/capture/CaptureStrategy;",
        "",
        "currentReplayId",
        "Lio/sentry/protocol/SentryId;",
        "getCurrentReplayId",
        "()Lio/sentry/protocol/SentryId;",
        "setCurrentReplayId",
        "(Lio/sentry/protocol/SentryId;)V",
        "currentSegment",
        "",
        "getCurrentSegment",
        "()I",
        "setCurrentSegment",
        "(I)V",
        "isFlushed",
        "",
        "()Z",
        "setFlushed",
        "(Z)V",
        "replayCacheDir",
        "Ljava/io/File;",
        "getReplayCacheDir",
        "()Ljava/io/File;",
        "replayType",
        "Lio/sentry/SentryReplayEvent$ReplayType;",
        "getReplayType",
        "()Lio/sentry/SentryReplayEvent$ReplayType;",
        "setReplayType",
        "(Lio/sentry/SentryReplayEvent$ReplayType;)V",
        "segmentTimestamp",
        "Ljava/util/Date;",
        "getSegmentTimestamp",
        "()Ljava/util/Date;",
        "setSegmentTimestamp",
        "(Ljava/util/Date;)V",
        "captureReplay",
        "",
        "isTerminating",
        "onSegmentSent",
        "Lkotlin/Function1;",
        "convert",
        "flush",
        "onConfigurationChanged",
        "recorderConfig",
        "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "onScreenChanged",
        "screen",
        "",
        "onScreenshotRecorded",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "store",
        "Lkotlin/Function2;",
        "Lio/sentry/android/replay/ReplayCache;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "frameTimestamp",
        "Lkotlin/ExtensionFunctionType;",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "pause",
        "registerSegmentName",
        "segmentName",
        "registerTraceId",
        "traceId",
        "resume",
        "start",
        "segmentId",
        "replayId",
        "stop",
        "Companion",
        "ReplaySegment",
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
.field public static final Companion:Lio/sentry/android/replay/capture/CaptureStrategy$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->$$INSTANCE:Lio/sentry/android/replay/capture/CaptureStrategy$Companion;

    sput-object v0, Lio/sentry/android/replay/capture/CaptureStrategy;->Companion:Lio/sentry/android/replay/capture/CaptureStrategy$Companion;

    return-void
.end method


# virtual methods
.method public abstract captureReplay(ZLkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract convert()Lio/sentry/android/replay/capture/CaptureStrategy;
.end method

.method public abstract flush(Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract getCurrentReplayId()Lio/sentry/protocol/SentryId;
.end method

.method public abstract getCurrentSegment()I
.end method

.method public abstract getReplayCacheDir()Ljava/io/File;
.end method

.method public abstract getReplayType()Lio/sentry/SentryReplayEvent$ReplayType;
.end method

.method public abstract getSegmentTimestamp()Ljava/util/Date;
.end method

.method public abstract isFlushed()Z
.end method

.method public abstract onConfigurationChanged(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
.end method

.method public abstract onScreenChanged(Ljava/lang/String;)V
.end method

.method public abstract onScreenshotRecorded(Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)V
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
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract pause()V
.end method

.method public abstract registerSegmentName(Ljava/lang/String;)V
.end method

.method public abstract registerTraceId(Lio/sentry/protocol/SentryId;)V
.end method

.method public abstract resume()V
.end method

.method public abstract setCurrentReplayId(Lio/sentry/protocol/SentryId;)V
.end method

.method public abstract setCurrentSegment(I)V
.end method

.method public abstract setFlushed(Z)V
.end method

.method public abstract setReplayType(Lio/sentry/SentryReplayEvent$ReplayType;)V
.end method

.method public abstract setSegmentTimestamp(Ljava/util/Date;)V
.end method

.method public abstract start(ILio/sentry/protocol/SentryId;Lio/sentry/SentryReplayEvent$ReplayType;)V
.end method

.method public abstract stop()V
.end method
