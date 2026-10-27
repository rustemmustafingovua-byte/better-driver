.class Lio/flutter/embedding/engine/image/MediaMetadataReader$1;
.super Landroid/media/MediaDataSource;
.source "MediaMetadataReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/image/MediaMetadataReader;->getMediaExtractor([B)Landroid/media/MediaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 25
    iput-object p1, p0, Lio/flutter/embedding/engine/image/MediaMetadataReader$1;->val$bytes:[B

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lio/flutter/embedding/engine/image/MediaMetadataReader$1;->val$bytes:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 4
    .param p1, "position"    # J
    .param p3, "buffer"    # [B
    .param p4, "offset"    # I
    .param p5, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lio/flutter/embedding/engine/image/MediaMetadataReader$1;->val$bytes:[B

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 34
    const/4 v0, -0x1

    return v0

    .line 36
    :cond_0
    int-to-long v0, p5

    add-long/2addr v0, p1

    iget-object v2, p0, Lio/flutter/embedding/engine/image/MediaMetadataReader$1;->val$bytes:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 37
    iget-object v0, p0, Lio/flutter/embedding/engine/image/MediaMetadataReader$1;->val$bytes:[B

    array-length v0, v0

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int p5, v0

    .line 39
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/engine/image/MediaMetadataReader$1;->val$bytes:[B

    long-to-int v1, p1

    invoke-static {v0, v1, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    return p5
.end method
