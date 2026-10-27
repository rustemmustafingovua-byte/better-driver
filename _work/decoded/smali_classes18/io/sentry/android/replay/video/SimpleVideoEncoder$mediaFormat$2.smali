.class final Lio/sentry/android/replay/video/SimpleVideoEncoder$mediaFormat$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SimpleVideoEncoder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/video/SimpleVideoEncoder;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/video/MuxerConfig;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/media/MediaFormat;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/media/MediaFormat;",
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
.field final synthetic this$0:Lio/sentry/android/replay/video/SimpleVideoEncoder;


# direct methods
.method constructor <init>(Lio/sentry/android/replay/video/SimpleVideoEncoder;)V
    .locals 1

    iput-object p1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder$mediaFormat$2;->this$0:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/media/MediaFormat;
    .locals 6

    .line 89
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder$mediaFormat$2;->this$0:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    invoke-virtual {v0}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->getMuxerConfig()Lio/sentry/android/replay/video/MuxerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/video/MuxerConfig;->getBitRate()I

    move-result v0

    .line 91
    .local v0, "bitRate":I
    nop

    .line 93
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder$mediaFormat$2;->this$0:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    invoke-virtual {v1}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->getMediaCodec$sentry_android_replay_release()Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder$mediaFormat$2;->this$0:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    invoke-virtual {v2}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->getMuxerConfig()Lio/sentry/android/replay/video/MuxerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/replay/video/MuxerConfig;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    .line 92
    nop

    .line 95
    .local v1, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    iget-object v2, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder$mediaFormat$2;->this$0:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    invoke-virtual {v2}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 97
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoder doesn\'t support the provided bitRate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", the value will be clamped to the closest one"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 96
    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-virtual {v2, v3}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    const-string v3, "clamp(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .end local v1    # "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder$mediaFormat$2;->this$0:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    invoke-virtual {v2}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Could not retrieve MediaCodec info"

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder$mediaFormat$2;->this$0:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    invoke-virtual {v1}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->getMuxerConfig()Lio/sentry/android/replay/video/MuxerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/replay/video/MuxerConfig;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder$mediaFormat$2;->this$0:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    invoke-virtual {v2}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->getMuxerConfig()Lio/sentry/android/replay/video/MuxerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/replay/video/MuxerConfig;->getRecordingWidth()I

    move-result v2

    .line 136
    iget-object v3, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder$mediaFormat$2;->this$0:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    invoke-virtual {v3}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->getMuxerConfig()Lio/sentry/android/replay/video/MuxerConfig;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/replay/video/MuxerConfig;->getRecordingHeight()I

    move-result v3

    .line 133
    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "createVideoFormat(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    nop

    .line 149
    .local v1, "format":Landroid/media/MediaFormat;
    nop

    .line 150
    nop

    .line 151
    nop

    .line 149
    const-string v2, "color-format"

    const v3, 0x7f000789

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 153
    const-string v2, "bitrate"

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 154
    iget-object v2, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder$mediaFormat$2;->this$0:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    invoke-virtual {v2}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->getMuxerConfig()Lio/sentry/android/replay/video/MuxerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/replay/video/MuxerConfig;->getFrameRate()I

    move-result v2

    int-to-float v2, v2

    const-string v3, "frame-rate"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 155
    nop

    .line 156
    nop

    .line 157
    nop

    .line 155
    const-string v2, "i-frame-interval"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 161
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lio/sentry/android/replay/video/SimpleVideoEncoder$mediaFormat$2;->invoke()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method
