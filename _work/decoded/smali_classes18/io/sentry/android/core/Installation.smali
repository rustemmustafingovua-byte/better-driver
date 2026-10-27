.class final Lio/sentry/android/core/Installation;
.super Ljava/lang/Object;
.source "Installation.java"


# static fields
.field static final INSTALLATION:Ljava/lang/String; = "INSTALLATION"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field static deviceId:Ljava/lang/String;

.field protected static final staticLock:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lio/sentry/android/core/Installation;->deviceId:Ljava/lang/String;

    .line 22
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/Installation;->UTF_8:Ljava/nio/charset/Charset;

    .line 24
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    sput-object v0, Lio/sentry/android/core/Installation;->staticLock:Lio/sentry/util/AutoClosableReentrantLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static id(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 38
    sget-object v0, Lio/sentry/android/core/Installation;->staticLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 39
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    sget-object v1, Lio/sentry/android/core/Installation;->deviceId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 40
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "INSTALLATION"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    .local v1, "installation":Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    invoke-static {v1}, Lio/sentry/android/core/Installation;->writeInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lio/sentry/android/core/Installation;->deviceId:Ljava/lang/String;

    .line 44
    sget-object v2, Lio/sentry/android/core/Installation;->deviceId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 44
    :cond_0
    return-object v2

    .line 46
    :cond_1
    :try_start_2
    invoke-static {v1}, Lio/sentry/android/core/Installation;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lio/sentry/android/core/Installation;->deviceId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .end local p0    # "context":Landroid/content/Context;
    throw v3

    .line 51
    .end local v1    # "installation":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    :goto_0
    sget-object v1, Lio/sentry/android/core/Installation;->deviceId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 51
    :cond_3
    return-object v1

    .line 38
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_4
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .local v0, "f":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    .line 59
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 60
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lio/sentry/android/core/Installation;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 60
    return-object v2

    .line 57
    .end local v1    # "bytes":[B
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method static writeInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 68
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {}, Lio/sentry/SentryUUID;->generateSentryId()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "id":Ljava/lang/String;
    sget-object v2, Lio/sentry/android/core/Installation;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 70
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    nop

    .line 72
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 71
    return-object v1

    .line 67
    .end local v1    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method
