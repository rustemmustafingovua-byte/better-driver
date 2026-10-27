.class public final Lio/sentry/SentryCrashLastRunState;
.super Ljava/lang/Object;
.source "SentryCrashLastRunState.java"


# static fields
.field private static final INSTANCE:Lio/sentry/SentryCrashLastRunState;


# instance fields
.field private crashedLastRun:Ljava/lang/Boolean;

.field private final crashedLastRunLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private readCrashedLastRun:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lio/sentry/SentryCrashLastRunState;

    invoke-direct {v0}, Lio/sentry/SentryCrashLastRunState;-><init>()V

    sput-object v0, Lio/sentry/SentryCrashLastRunState;->INSTANCE:Lio/sentry/SentryCrashLastRunState;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryCrashLastRunState;->crashedLastRunLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 22
    return-void
.end method

.method public static getInstance()Lio/sentry/SentryCrashLastRunState;
    .locals 1

    .line 25
    sget-object v0, Lio/sentry/SentryCrashLastRunState;->INSTANCE:Lio/sentry/SentryCrashLastRunState;

    return-object v0
.end method


# virtual methods
.method public isCrashedLastRun(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 5
    .param p1, "cacheDirPath"    # Ljava/lang/String;
    .param p2, "deleteFile"    # Z

    .line 30
    iget-object v0, p0, Lio/sentry/SentryCrashLastRunState;->crashedLastRunLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 31
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/SentryCrashLastRunState;->readCrashedLastRun:Z

    if-eqz v1, :cond_1

    .line 32
    iget-object v1, p0, Lio/sentry/SentryCrashLastRunState;->crashedLastRun:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 32
    :cond_0
    return-object v1

    .line 35
    :cond_1
    if-nez p1, :cond_3

    .line 36
    nop

    .line 62
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 36
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 38
    :cond_3
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lio/sentry/SentryCrashLastRunState;->readCrashedLastRun:Z

    .line 40
    new-instance v1, Ljava/io/File;

    const-string v2, "last_crash"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .local v1, "javaMarker":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, ".sentry-native/last_crash"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .local v2, "nativeMarker":Ljava/io/File;
    const/4 v3, 0x0

    .line 44
    .local v3, "exists":Z
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 45
    const/4 v3, 0x1

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 48
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 49
    const/4 v3, 0x1

    .line 52
    if-eqz p2, :cond_5

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :cond_5
    :goto_0
    goto :goto_1

    .line 56
    :catchall_0
    move-exception v4

    .line 61
    :goto_1
    :try_start_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/SentryCrashLastRunState;->crashedLastRun:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    .end local v1    # "javaMarker":Ljava/io/File;
    .end local v2    # "nativeMarker":Ljava/io/File;
    .end local v3    # "exists":Z
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 64
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_6
    iget-object v0, p0, Lio/sentry/SentryCrashLastRunState;->crashedLastRun:Ljava/lang/Boolean;

    return-object v0

    .line 30
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_7

    :try_start_4
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v1
.end method

.method public reset()V
    .locals 3

    .line 79
    iget-object v0, p0, Lio/sentry/SentryCrashLastRunState;->crashedLastRunLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 80
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lio/sentry/SentryCrashLastRunState;->readCrashedLastRun:Z

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/SentryCrashLastRunState;->crashedLastRun:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 83
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 79
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

.method public setCrashedLastRun(Z)V
    .locals 3
    .param p1, "crashedLastRun"    # Z

    .line 68
    iget-object v0, p0, Lio/sentry/SentryCrashLastRunState;->crashedLastRunLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 69
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/SentryCrashLastRunState;->readCrashedLastRun:Z

    if-nez v1, :cond_0

    .line 70
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/SentryCrashLastRunState;->crashedLastRun:Ljava/lang/Boolean;

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/sentry/SentryCrashLastRunState;->readCrashedLastRun:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 75
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 68
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method
