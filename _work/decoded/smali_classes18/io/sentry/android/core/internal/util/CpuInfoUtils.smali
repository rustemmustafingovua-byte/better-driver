.class public final Lio/sentry/android/core/internal/util/CpuInfoUtils;
.super Ljava/lang/Object;
.source "CpuInfoUtils.java"


# static fields
.field static final CPUINFO_MAX_FREQ_PATH:Ljava/lang/String; = "cpufreq/cpuinfo_max_freq"

.field private static final SYSTEM_CPU_PATH:Ljava/lang/String; = "/sys/devices/system/cpu"

.field private static final instance:Lio/sentry/android/core/internal/util/CpuInfoUtils;


# instance fields
.field private final cpuMaxFrequenciesMhz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lio/sentry/android/core/internal/util/CpuInfoUtils;

    invoke-direct {v0}, Lio/sentry/android/core/internal/util/CpuInfoUtils;-><init>()V

    sput-object v0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->instance:Lio/sentry/android/core/internal/util/CpuInfoUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->cpuMaxFrequenciesMhz:Ljava/util/List;

    .line 25
    return-void
.end method

.method public static getInstance()Lio/sentry/android/core/internal/util/CpuInfoUtils;
    .locals 1

    .line 22
    sget-object v0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->instance:Lio/sentry/android/core/internal/util/CpuInfoUtils;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 86
    iget-object v0, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 87
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->cpuMaxFrequenciesMhz:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 89
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 86
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method getSystemCpuPath()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "/sys/devices/system/cpu"

    return-object v0
.end method

.method public readMaxFrequencies()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 42
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->cpuMaxFrequenciesMhz:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    iget-object v1, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->cpuMaxFrequenciesMhz:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 43
    :cond_0
    return-object v1

    .line 45
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->getSystemCpuPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 46
    .local v1, "cpuDirs":[Ljava/io/File;
    if-nez v1, :cond_3

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 47
    :cond_2
    return-object v2

    .line 50
    :cond_3
    :try_start_2
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 51
    .local v4, "cpuDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cpu[0-9]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 52
    :cond_4
    new-instance v5, Ljava/io/File;

    const-string v6, "cpufreq/cpuinfo_max_freq"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .local v5, "cpuMaxFreqFile":Ljava/io/File;
    :try_start_3
    invoke-static {v5}, Lio/sentry/util/FileUtils;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "content":Ljava/lang/String;
    if-nez v6, :cond_5

    goto :goto_1

    .line 58
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    .end local v6    # "content":Ljava/lang/String;
    .local v7, "khz":J
    nop

    .line 64
    :try_start_4
    iget-object v6, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->cpuMaxFrequenciesMhz:Ljava/util/List;

    const-wide/16 v9, 0x3e8

    div-long v9, v7, v9

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    .end local v7    # "khz":J
    :catch_0
    move-exception v6

    .line 62
    .local v6, "e":Ljava/io/IOException;
    goto :goto_1

    .line 59
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 60
    .local v6, "e":Ljava/lang/NumberFormatException;
    nop

    .line 50
    .end local v4    # "cpuDir":Ljava/io/File;
    .end local v5    # "cpuMaxFreqFile":Ljava/io/File;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :cond_6
    iget-object v2, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->cpuMaxFrequenciesMhz:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 66
    :cond_7
    return-object v2

    .line 41
    .end local v1    # "cpuDirs":[Ljava/io/File;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_8

    :try_start_5
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw v1
.end method

.method public setCpuMaxFrequencies(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p1, "frequencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 79
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->cpuMaxFrequenciesMhz:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 80
    iget-object v1, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->cpuMaxFrequenciesMhz:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 82
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 78
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method
