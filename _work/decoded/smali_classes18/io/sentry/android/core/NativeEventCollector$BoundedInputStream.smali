.class final Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;
.super Ljava/io/InputStream;
.source "NativeEventCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/NativeEventCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BoundedInputStream"
.end annotation


# instance fields
.field private final inner:Ljava/io/InputStream;

.field private remaining:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "inner"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .line 491
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 492
    iput-object p1, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->inner:Ljava/io/InputStream;

    .line 493
    int-to-long v0, p2

    iput-wide v0, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->remaining:J

    .line 494
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->inner:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget-wide v1, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->remaining:J

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->inner:Ljava/io/InputStream;

    iget-wide v1, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->remaining:J

    invoke-static {v0, v1, v2}, Lio/sentry/android/core/NativeEventCollector;->access$000(Ljava/io/InputStream;J)V

    .line 543
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->remaining:J

    .line 544
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    iget-wide v0, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    .line 499
    return v1

    .line 501
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->inner:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 502
    .local v0, "result":I
    if-eq v0, v1, :cond_1

    .line 503
    iget-wide v1, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->remaining:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->remaining:J

    .line 505
    :cond_1
    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    iget-wide v0, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 511
    const/4 v0, -0x1

    return v0

    .line 513
    :cond_0
    iget-wide v0, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->remaining:J

    long-to-int v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 514
    .local v0, "toRead":I
    iget-object v1, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->inner:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 515
    .local v1, "result":I
    if-lez v1, :cond_1

    .line 516
    iget-wide v2, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->remaining:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->remaining:J

    .line 518
    :cond_1
    return v1
.end method

.method public skip(J)J
    .locals 6
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    iget-wide v0, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->remaining:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 524
    .local v0, "toSkip":J
    iget-object v2, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->inner:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 525
    .local v2, "skipped":J
    iget-wide v4, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->remaining:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lio/sentry/android/core/NativeEventCollector$BoundedInputStream;->remaining:J

    .line 526
    return-wide v2
.end method
