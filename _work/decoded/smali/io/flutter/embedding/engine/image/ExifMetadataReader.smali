.class Lio/flutter/embedding/engine/image/ExifMetadataReader;
.super Ljava/lang/Object;
.source "ExifMetadataReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifMetadataReader"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read([BLio/flutter/embedding/engine/image/Metadata;)V
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "metadata"    # Lio/flutter/embedding/engine/image/Metadata;

    .line 31
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 33
    .local v1, "exifInterface":Landroidx/exifinterface/media/ExifInterface;
    const-string v2, "Orientation"

    .line 34
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Lio/flutter/embedding/engine/image/Metadata;->orientation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .end local v1    # "exifInterface":Landroidx/exifinterface/media/ExifInterface;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 39
    .end local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 31
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "bytes":[B
    .end local p1    # "metadata":Lio/flutter/embedding/engine/image/Metadata;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 37
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "bytes":[B
    .restart local p1    # "metadata":Lio/flutter/embedding/engine/image/Metadata;
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ExifMetadataReader"

    const-string v2, "Failed to read EXIF metadata"

    invoke-static {v1, v2, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method
