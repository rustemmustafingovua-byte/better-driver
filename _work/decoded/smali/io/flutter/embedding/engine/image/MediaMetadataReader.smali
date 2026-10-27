.class Lio/flutter/embedding/engine/image/MediaMetadataReader;
.super Ljava/lang/Object;
.source "MediaMetadataReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaMetadataReader"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMediaExtractor([B)Landroid/media/MediaExtractor;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    new-instance v0, Lio/flutter/embedding/engine/image/MediaMetadataReader$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/image/MediaMetadataReader$1;-><init>([B)V

    .line 48
    .local v0, "dataSource":Landroid/media/MediaDataSource;
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 49
    .local v1, "extractor":Landroid/media/MediaExtractor;
    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 50
    return-object v1
.end method

.method static read([BLio/flutter/embedding/engine/image/Metadata;)V
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "metadata"    # Lio/flutter/embedding/engine/image/Metadata;

    .line 62
    :try_start_0
    invoke-static {p0}, Lio/flutter/embedding/engine/image/MediaMetadataReader;->getMediaExtractor([B)Landroid/media/MediaExtractor;

    move-result-object v0

    .line 63
    .local v0, "extractor":Landroid/media/MediaExtractor;
    invoke-static {p0, p1, v0}, Lio/flutter/embedding/engine/image/MediaMetadataReader;->read([BLio/flutter/embedding/engine/image/Metadata;Landroid/media/MediaExtractor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "extractor":Landroid/media/MediaExtractor;
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MediaMetadataReader"

    const-string v2, "Failed to decode HEIF image using MediaExtractor"

    invoke-static {v1, v2, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static read([BLio/flutter/embedding/engine/image/Metadata;Landroid/media/MediaExtractor;)V
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "metadata"    # Lio/flutter/embedding/engine/image/Metadata;
    .param p2, "extractor"    # Landroid/media/MediaExtractor;

    .line 71
    const-string v0, "rotation-degrees"

    const/4 v1, 0x0

    .line 73
    .local v1, "rotation":I
    :try_start_0
    invoke-virtual {p2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    .line 74
    .local v2, "trackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 75
    invoke-virtual {p2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 77
    .local v4, "format":Landroid/media/MediaFormat;
    const-string v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "mime":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v6, "image/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 79
    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 83
    :cond_0
    iget v0, p1, Lio/flutter/embedding/engine/image/Metadata;->originalWidth:I

    .line 84
    .local v0, "finalWidth":I
    iget v6, p1, Lio/flutter/embedding/engine/image/Metadata;->originalHeight:I

    .line 85
    .local v6, "finalHeight":I
    const/16 v7, 0x5a

    if-eq v1, v7, :cond_1

    const/16 v7, 0x10e

    if-ne v1, v7, :cond_2

    .line 86
    :cond_1
    iget v7, p1, Lio/flutter/embedding/engine/image/Metadata;->originalWidth:I

    move v6, v7

    .line 87
    iget v7, p1, Lio/flutter/embedding/engine/image/Metadata;->originalHeight:I

    move v0, v7

    .line 89
    :cond_2
    iput v6, p1, Lio/flutter/embedding/engine/image/Metadata;->height:I

    .line 90
    iput v0, p1, Lio/flutter/embedding/engine/image/Metadata;->width:I

    .line 91
    iput v1, p1, Lio/flutter/embedding/engine/image/Metadata;->rotation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_1

    .line 74
    .end local v0    # "finalWidth":I
    .end local v4    # "format":Landroid/media/MediaFormat;
    .end local v5    # "mime":Ljava/lang/String;
    .end local v6    # "finalHeight":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v2    # "trackCount":I
    .end local v3    # "i":I
    :cond_4
    :goto_1
    goto :goto_2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MediaMetadataReader"

    const-string v3, "Failed to decode HEIF image using MediaExtractor"

    invoke-static {v2, v3, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
