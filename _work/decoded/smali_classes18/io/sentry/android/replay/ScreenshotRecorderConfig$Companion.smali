.class public final Lio/sentry/android/replay/ScreenshotRecorderConfig$Companion;
.super Ljava/lang/Object;
.source "ScreenshotRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/ScreenshotRecorderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ\u000c\u0010\u000c\u001a\u00020\n*\u00020\nH\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lio/sentry/android/replay/ScreenshotRecorderConfig$Companion;",
        "",
        "()V",
        "fromSize",
        "Lio/sentry/android/replay/ScreenshotRecorderConfig;",
        "context",
        "Landroid/content/Context;",
        "sessionReplay",
        "Lio/sentry/SentryReplayOptions;",
        "windowWidth",
        "",
        "windowHeight",
        "adjustToBlockSize",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/android/replay/ScreenshotRecorderConfig$Companion;-><init>()V

    return-void
.end method

.method private final adjustToBlockSize(I)I
    .locals 3
    .param p1, "$this$adjustToBlockSize"    # I

    .line 180
    rem-int/lit8 v0, p1, 0x10

    .line 181
    .local v0, "remainder":I
    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 182
    sub-int v1, p1, v0

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 184
    :cond_0
    rsub-int/lit8 v1, v0, 0x10

    add-int/2addr v1, p1

    .line 181
    :goto_0
    return v1
.end method


# virtual methods
.method public final fromSize(Landroid/content/Context;Lio/sentry/SentryReplayOptions;II)Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionReplay"    # Lio/sentry/SentryReplayOptions;
    .param p3, "windowWidth"    # I
    .param p4, "windowHeight"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionReplay"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    nop

    .line 196
    int-to-float v0, p4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    .line 197
    invoke-virtual {p2}, Lio/sentry/SentryReplayOptions;->getQuality()Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    move-result-object v1

    iget v1, v1, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->sizeScale:F

    .line 196
    mul-float/2addr v0, v1

    .line 198
    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    .line 199
    invoke-direct {p0, v0}, Lio/sentry/android/replay/ScreenshotRecorderConfig$Companion;->adjustToBlockSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 203
    nop

    .line 200
    int-to-float v1, p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 201
    invoke-virtual {p2}, Lio/sentry/SentryReplayOptions;->getQuality()Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    move-result-object v2

    iget v2, v2, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->sizeScale:F

    .line 200
    mul-float/2addr v1, v2

    .line 202
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    .line 203
    invoke-direct {p0, v1}, Lio/sentry/android/replay/ScreenshotRecorderConfig$Companion;->adjustToBlockSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 196
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 195
    move v4, v1

    .local v4, "height":I
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 205
    .local v3, "width":I
    new-instance v2, Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 206
    nop

    .line 207
    nop

    .line 208
    int-to-float v0, v3

    int-to-float v1, p3

    div-float v5, v0, v1

    .line 209
    int-to-float v0, v4

    int-to-float v1, p4

    div-float v6, v0, v1

    .line 210
    invoke-virtual {p2}, Lio/sentry/SentryReplayOptions;->getFrameRate()I

    move-result v7

    .line 211
    invoke-virtual {p2}, Lio/sentry/SentryReplayOptions;->getQuality()Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    move-result-object v0

    iget v8, v0, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->bitRate:I

    .line 205
    invoke-direct/range {v2 .. v8}, Lio/sentry/android/replay/ScreenshotRecorderConfig;-><init>(IIFFII)V

    return-object v2
.end method
