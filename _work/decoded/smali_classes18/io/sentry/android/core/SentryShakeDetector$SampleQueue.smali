.class Lio/sentry/android/core/SentryShakeDetector$SampleQueue;
.super Ljava/lang/Object;
.source "SentryShakeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SentryShakeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SampleQueue"
.end annotation


# static fields
.field private static final MAX_WINDOW_SIZE_NS:J = 0x1dcd6500L

.field private static final MIN_QUEUE_SIZE:I = 0x4

.field private static final MIN_WINDOW_SIZE_NS:J = 0xee6b280L


# instance fields
.field private acceleratingCount:I

.field private newest:Lio/sentry/android/core/SentryShakeDetector$Sample;

.field private oldest:Lio/sentry/android/core/SentryShakeDetector$Sample;

.field private final pool:Lio/sentry/android/core/SentryShakeDetector$SamplePool;

.field private sampleCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Lio/sentry/android/core/SentryShakeDetector$SamplePool;

    invoke-direct {v0}, Lio/sentry/android/core/SentryShakeDetector$SamplePool;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->pool:Lio/sentry/android/core/SentryShakeDetector$SamplePool;

    return-void
.end method

.method private purge(J)V
    .locals 4
    .param p1, "cutoff"    # J

    .line 206
    nop

    :goto_0
    iget v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->sampleCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->oldest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->oldest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    iget-wide v0, v0, Lio/sentry/android/core/SentryShakeDetector$Sample;->timestamp:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 207
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->oldest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 208
    .local v0, "removed":Lio/sentry/android/core/SentryShakeDetector$Sample;
    iget-boolean v1, v0, Lio/sentry/android/core/SentryShakeDetector$Sample;->accelerating:Z

    if-eqz v1, :cond_0

    .line 209
    iget v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->acceleratingCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->acceleratingCount:I

    .line 211
    :cond_0
    iget v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->sampleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->sampleCount:I

    .line 212
    iget-object v1, v0, Lio/sentry/android/core/SentryShakeDetector$Sample;->next:Lio/sentry/android/core/SentryShakeDetector$Sample;

    iput-object v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->oldest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 213
    iget-object v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->oldest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    if-nez v1, :cond_1

    .line 214
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->newest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 216
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->pool:Lio/sentry/android/core/SentryShakeDetector$SamplePool;

    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryShakeDetector$SamplePool;->release(Lio/sentry/android/core/SentryShakeDetector$Sample;)V

    .line 217
    .end local v0    # "removed":Lio/sentry/android/core/SentryShakeDetector$Sample;
    goto :goto_0

    .line 218
    :cond_2
    return-void
.end method


# virtual methods
.method add(JZ)V
    .locals 2
    .param p1, "timestamp"    # J
    .param p3, "accelerating"    # Z

    .line 174
    const-wide/32 v0, 0x1dcd6500

    sub-long v0, p1, v0

    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->purge(J)V

    .line 176
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->pool:Lio/sentry/android/core/SentryShakeDetector$SamplePool;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryShakeDetector$SamplePool;->acquire()Lio/sentry/android/core/SentryShakeDetector$Sample;

    move-result-object v0

    .line 177
    .local v0, "added":Lio/sentry/android/core/SentryShakeDetector$Sample;
    iput-wide p1, v0, Lio/sentry/android/core/SentryShakeDetector$Sample;->timestamp:J

    .line 178
    iput-boolean p3, v0, Lio/sentry/android/core/SentryShakeDetector$Sample;->accelerating:Z

    .line 179
    const/4 v1, 0x0

    iput-object v1, v0, Lio/sentry/android/core/SentryShakeDetector$Sample;->next:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 180
    iget-object v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->newest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->newest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    iput-object v0, v1, Lio/sentry/android/core/SentryShakeDetector$Sample;->next:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 183
    :cond_0
    iput-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->newest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 184
    iget-object v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->oldest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    if-nez v1, :cond_1

    .line 185
    iput-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->oldest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 188
    :cond_1
    iget v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->sampleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->sampleCount:I

    .line 189
    if-eqz p3, :cond_2

    .line 190
    iget v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->acceleratingCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->acceleratingCount:I

    .line 192
    :cond_2
    return-void
.end method

.method clear()V
    .locals 2

    .line 195
    nop

    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->oldest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->oldest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 197
    .local v0, "removed":Lio/sentry/android/core/SentryShakeDetector$Sample;
    iget-object v1, v0, Lio/sentry/android/core/SentryShakeDetector$Sample;->next:Lio/sentry/android/core/SentryShakeDetector$Sample;

    iput-object v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->oldest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 198
    iget-object v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->pool:Lio/sentry/android/core/SentryShakeDetector$SamplePool;

    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryShakeDetector$SamplePool;->release(Lio/sentry/android/core/SentryShakeDetector$Sample;)V

    .line 199
    .end local v0    # "removed":Lio/sentry/android/core/SentryShakeDetector$Sample;
    goto :goto_0

    .line 200
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->newest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->sampleCount:I

    .line 202
    iput v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->acceleratingCount:I

    .line 203
    return-void
.end method

.method isShaking()Z
    .locals 4

    .line 221
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->newest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->oldest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    if-eqz v0, :cond_0

    iget v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->sampleCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->newest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    iget-wide v0, v0, Lio/sentry/android/core/SentryShakeDetector$Sample;->timestamp:J

    iget-object v2, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->oldest:Lio/sentry/android/core/SentryShakeDetector$Sample;

    iget-wide v2, v2, Lio/sentry/android/core/SentryShakeDetector$Sample;->timestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xee6b280

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->acceleratingCount:I

    iget v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->sampleCount:I

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    iget v3, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->sampleCount:I

    shr-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
