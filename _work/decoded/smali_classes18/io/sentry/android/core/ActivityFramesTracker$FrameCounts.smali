.class final Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
.super Ljava/lang/Object;
.source "ActivityFramesTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/ActivityFramesTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameCounts"
.end annotation


# instance fields
.field private final frozenFrames:I

.field private final slowFrames:I

.field private final totalFrames:I


# direct methods
.method private constructor <init>(III)V
    .locals 0
    .param p1, "totalFrames"    # I
    .param p2, "slowFrames"    # I
    .param p3, "frozenFrames"    # I

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput p1, p0, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->totalFrames:I

    .line 259
    iput p2, p0, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->slowFrames:I

    .line 260
    iput p3, p0, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->frozenFrames:I

    .line 261
    return-void
.end method

.method synthetic constructor <init>(IIILio/sentry/android/core/ActivityFramesTracker$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lio/sentry/android/core/ActivityFramesTracker$1;

    .line 252
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;-><init>(III)V

    return-void
.end method

.method static synthetic access$100(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    .line 252
    iget v0, p0, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->totalFrames:I

    return v0
.end method

.method static synthetic access$200(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    .line 252
    iget v0, p0, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->slowFrames:I

    return v0
.end method

.method static synthetic access$300(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    .line 252
    iget v0, p0, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->frozenFrames:I

    return v0
.end method
