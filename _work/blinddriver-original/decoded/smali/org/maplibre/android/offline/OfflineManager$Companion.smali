.class public final Lorg/maplibre/android/offline/OfflineManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/offline/OfflineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj9/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/maplibre/android/offline/OfflineManager$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$copyTempDatabaseFile(Lorg/maplibre/android/offline/OfflineManager$Companion;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/offline/OfflineManager$Companion;->copyTempDatabaseFile(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private final copyTempDatabaseFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to copy database file for merge."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    :goto_1
    move-object p0, p1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    :goto_2
    move-object p0, p1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    move-object v2, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    move-object v2, v1

    goto :goto_2

    :goto_3
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unable to copy database file for merge. %s"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_3
    throw p0
.end method


# virtual methods
.method public final declared-synchronized getInstance(Landroid/content/Context;)Lorg/maplibre/android/offline/OfflineManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lorg/maplibre/android/offline/OfflineManager;->access$getInstance$cp()Lorg/maplibre/android/offline/OfflineManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/maplibre/android/offline/OfflineManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/maplibre/android/offline/OfflineManager;-><init>(Landroid/content/Context;Lj9/g;)V

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineManager;->access$setInstance$cp(Lorg/maplibre/android/offline/OfflineManager;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lorg/maplibre/android/offline/OfflineManager;->access$getInstance$cp()Lorg/maplibre/android/offline/OfflineManager;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
