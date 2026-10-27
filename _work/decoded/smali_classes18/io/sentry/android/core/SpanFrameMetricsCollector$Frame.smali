.class Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;
.super Ljava/lang/Object;
.source "SpanFrameMetricsCollector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SpanFrameMetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Frame"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;",
        ">;"
    }
.end annotation


# instance fields
.field private final delayNanos:J

.field private final durationNanos:J

.field private final endNanos:J

.field private final expectedDurationNanos:J

.field private final isFrozen:Z

.field private final isSlow:Z

.field private final startNanos:J


# direct methods
.method constructor <init>(J)V
    .locals 13
    .param p1, "timestampNanos"    # J

    .line 339
    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-wide v3, p1

    move-object v0, p0

    move-wide v1, p1

    .end local p1    # "timestampNanos":J
    .local v1, "timestampNanos":J
    invoke-direct/range {v0 .. v12}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;-><init>(JJJJZZJ)V

    .line 340
    return-void
.end method

.method constructor <init>(JJJJZZJ)V
    .locals 0
    .param p1, "startNanos"    # J
    .param p3, "endNanos"    # J
    .param p5, "durationNanos"    # J
    .param p7, "delayNanos"    # J
    .param p9, "isSlow"    # Z
    .param p10, "isFrozen"    # Z
    .param p11, "expectedFrameDurationNanos"    # J

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-wide p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->startNanos:J

    .line 351
    iput-wide p3, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->endNanos:J

    .line 352
    iput-wide p5, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->durationNanos:J

    .line 353
    iput-wide p7, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->delayNanos:J

    .line 354
    iput-boolean p9, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->isSlow:Z

    .line 355
    iput-boolean p10, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->isFrozen:Z

    .line 356
    iput-wide p11, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->expectedDurationNanos:J

    .line 357
    return-void
.end method

.method static synthetic access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J
    .locals 2
    .param p0, "x0"    # Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    .line 329
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->startNanos:J

    return-wide v0
.end method

.method static synthetic access$100(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J
    .locals 2
    .param p0, "x0"    # Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    .line 329
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->endNanos:J

    return-wide v0
.end method

.method static synthetic access$200(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J
    .locals 2
    .param p0, "x0"    # Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    .line 329
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->durationNanos:J

    return-wide v0
.end method

.method static synthetic access$300(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J
    .locals 2
    .param p0, "x0"    # Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    .line 329
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->delayNanos:J

    return-wide v0
.end method

.method static synthetic access$400(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)Z
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    .line 329
    iget-boolean v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->isSlow:Z

    return v0
.end method

.method static synthetic access$500(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)Z
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    .line 329
    iget-boolean v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->isFrozen:Z

    return v0
.end method

.method static synthetic access$600(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J
    .locals 2
    .param p0, "x0"    # Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    .line 329
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->expectedDurationNanos:J

    return-wide v0
.end method


# virtual methods
.method public compareTo(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)I
    .locals 4
    .param p1, "o"    # Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    .line 361
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->endNanos:J

    iget-wide v2, p1, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->endNanos:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 329
    check-cast p1, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    invoke-virtual {p0, p1}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->compareTo(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)I

    move-result p1

    return p1
.end method
