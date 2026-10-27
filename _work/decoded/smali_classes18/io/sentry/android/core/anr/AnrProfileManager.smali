.class public Lio/sentry/android/core/anr/AnrProfileManager;
.super Ljava/lang/Object;
.source "AnrProfileManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final MAX_NUM_STACKTRACES:I = 0x78


# instance fields
.field private final queue:Lio/sentry/cache/tape/ObjectQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/cache/tape/ObjectQueue<",
            "Lio/sentry/android/core/anr/AnrStackTrace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 3
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 31
    new-instance v0, Ljava/io/File;

    .line 34
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cacheDirPath is required"

    invoke-static {v1, v2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "anr_profile"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/anr/AnrProfileManager;-><init>(Lio/sentry/SentryOptions;Ljava/io/File;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Ljava/io/File;)V
    .locals 5
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "file"    # Ljava/io/File;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 41
    .local v0, "logger":Lio/sentry/ILogger;
    const/4 v1, 0x0

    .line 44
    .local v1, "queueFile":Lio/sentry/cache/tape/QueueFile;
    const/16 v2, 0x78

    :try_start_0
    new-instance v3, Lio/sentry/cache/tape/QueueFile$Builder;

    invoke-direct {v3, p2}, Lio/sentry/cache/tape/QueueFile$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v2}, Lio/sentry/cache/tape/QueueFile$Builder;->size(I)Lio/sentry/cache/tape/QueueFile$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/cache/tape/QueueFile$Builder;->build()Lio/sentry/cache/tape/QueueFile;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "queueFile":Lio/sentry/cache/tape/QueueFile;
    .local v2, "queueFile":Lio/sentry/cache/tape/QueueFile;
    move-object v1, v2

    goto :goto_0

    .line 45
    .end local v2    # "queueFile":Lio/sentry/cache/tape/QueueFile;
    .restart local v1    # "queueFile":Lio/sentry/cache/tape/QueueFile;
    :catch_0
    move-exception v3

    .line 47
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    new-instance v4, Lio/sentry/cache/tape/QueueFile$Builder;

    invoke-direct {v4, p2}, Lio/sentry/cache/tape/QueueFile$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v2}, Lio/sentry/cache/tape/QueueFile$Builder;->size(I)Lio/sentry/cache/tape/QueueFile$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/cache/tape/QueueFile$Builder;->build()Lio/sentry/cache/tape/QueueFile;

    move-result-object v2

    move-object v1, v2

    .line 54
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 48
    .restart local v3    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Could not delete file"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "logger":Lio/sentry/ILogger;
    .end local v1    # "queueFile":Lio/sentry/cache/tape/QueueFile;
    .end local p1    # "options":Lio/sentry/SentryOptions;
    .end local p2    # "file":Ljava/io/File;
    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "logger":Lio/sentry/ILogger;
    .restart local v1    # "queueFile":Lio/sentry/cache/tape/QueueFile;
    .restart local p1    # "options":Lio/sentry/SentryOptions;
    .restart local p2    # "file":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 53
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to create stacktrace queue"

    invoke-interface {v0, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    if-nez v1, :cond_1

    .line 57
    invoke-static {}, Lio/sentry/cache/tape/ObjectQueue;->createEmpty()Lio/sentry/cache/tape/ObjectQueue;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/android/core/anr/AnrProfileManager;->queue:Lio/sentry/cache/tape/ObjectQueue;

    goto :goto_2

    .line 59
    :cond_1
    new-instance v2, Lio/sentry/android/core/anr/AnrProfileManager$1;

    invoke-direct {v2, p0}, Lio/sentry/android/core/anr/AnrProfileManager$1;-><init>(Lio/sentry/android/core/anr/AnrProfileManager;)V

    .line 60
    invoke-static {v1, v2}, Lio/sentry/cache/tape/ObjectQueue;->create(Lio/sentry/cache/tape/QueueFile;Lio/sentry/cache/tape/ObjectQueue$Converter;)Lio/sentry/cache/tape/ObjectQueue;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/android/core/anr/AnrProfileManager;->queue:Lio/sentry/cache/tape/ObjectQueue;

    .line 84
    :goto_2
    return-void
.end method


# virtual methods
.method public add(Lio/sentry/android/core/anr/AnrStackTrace;)V
    .locals 1
    .param p1, "trace"    # Lio/sentry/android/core/anr/AnrStackTrace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfileManager;->queue:Lio/sentry/cache/tape/ObjectQueue;

    invoke-virtual {v0, p1}, Lio/sentry/cache/tape/ObjectQueue;->add(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfileManager;->queue:Lio/sentry/cache/tape/ObjectQueue;

    invoke-virtual {v0}, Lio/sentry/cache/tape/ObjectQueue;->clear()V

    .line 88
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lio/sentry/android/core/anr/AnrProfileManager;->queue:Lio/sentry/cache/tape/ObjectQueue;

    invoke-virtual {v0}, Lio/sentry/cache/tape/ObjectQueue;->close()V

    .line 102
    return-void
.end method

.method public load()Lio/sentry/android/core/anr/AnrProfile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v0, Lio/sentry/android/core/anr/AnrProfile;

    iget-object v1, p0, Lio/sentry/android/core/anr/AnrProfileManager;->queue:Lio/sentry/cache/tape/ObjectQueue;

    invoke-virtual {v1}, Lio/sentry/cache/tape/ObjectQueue;->asList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/android/core/anr/AnrProfile;-><init>(Ljava/util/List;)V

    return-object v0
.end method
