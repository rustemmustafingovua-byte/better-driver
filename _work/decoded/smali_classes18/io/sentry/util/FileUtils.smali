.class public final Lio/sentry/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDirectory(Ljava/io/File;)Z
    .locals 1
    .param p0, "directory"    # Ljava/io/File;

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static deleteRecursively(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 27
    const/4 v0, 0x1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 34
    .local v1, "children":[Ljava/io/File;
    if-nez v1, :cond_2

    return v0

    .line 35
    :cond_2
    array-length v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, v1, v3

    .line 36
    .local v4, "f":Ljava/io/File;
    invoke-static {v4}, Lio/sentry/util/FileUtils;->deleteRecursively(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_3

    return v2

    .line 35
    .end local v4    # "f":Ljava/io/File;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 28
    .end local v1    # "children":[Ljava/io/File;
    :cond_5
    :goto_1
    return v0
.end method

.method public static inputStreamToByteArray(Ljava/io/InputStream;J)[B
    .locals 11
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "maxLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 139
    .local v0, "inputStream":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 140
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x400

    :try_start_1
    new-array v2, v2, [B

    .line 142
    .local v2, "bytes":[B
    const/4 v3, 0x0

    .line 143
    .local v3, "offset":I
    const-wide/16 v4, 0x0

    .line 144
    .local v4, "totalLength":J
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "length":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 145
    int-to-long v8, v7

    add-long/2addr v4, v8

    .line 146
    cmp-long v6, v4, p1

    if-gtz v6, :cond_0

    .line 153
    invoke-virtual {v1, v2, v3, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 147
    :cond_0
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Reading input failed, because %d read bytes is bigger than the maximum allowed size of %d bytes."

    .line 151
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 148
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v1    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "maxLength":J
    throw v6

    .line 155
    .restart local v0    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "maxLength":J
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 155
    return-object v6

    .line 138
    .end local v2    # "bytes":[B
    .end local v3    # "offset":I
    .end local v4    # "totalLength":J
    .end local v7    # "length":I
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "inputStream":Ljava/io/BufferedInputStream;
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "maxLength":J
    :goto_1
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "maxLength":J
    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method

.method public static readBytesFromFile(Ljava/lang/String;J)[B
    .locals 5
    .param p0, "pathname"    # Ljava/lang/String;
    .param p1, "maxFileLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gtz v1, :cond_0

    .line 119
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 121
    .local v2, "inputStream":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v2, p1, p2}, Lio/sentry/util/FileUtils;->inputStreamToByteArray(Ljava/io/InputStream;J)[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 121
    return-object v3

    .line 119
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .end local p0    # "pathname":Ljava/lang/String;
    .end local p1    # "maxFileLength":J
    :goto_0
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v2    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local p0    # "pathname":Ljava/lang/String;
    .restart local p1    # "maxFileLength":J
    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    .line 112
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {p0, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 113
    const-string v3, "Reading file failed, because size located at \'%s\' with %d bytes is bigger than the maximum allowed size of %d bytes."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_1
    new-instance v1, Ljava/io/IOException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    .line 108
    const-string v3, "Reading the item %s failed, because can\'t read the file."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_2
    new-instance v1, Ljava/io/IOException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    .line 103
    const-string v3, "Reading path %s failed, because it\'s not a file."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_3
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "File \'%s\' doesn\'t exists"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readText(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, "contentBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 74
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_2

    .line 78
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    .end local v3    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 81
    .end local v1    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 70
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    .line 67
    .end local v0    # "contentBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "br":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method
