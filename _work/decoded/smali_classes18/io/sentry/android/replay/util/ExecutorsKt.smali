.class public final Lio/sentry/android/replay/util/ExecutorsKt;
.super Ljava/lang/Object;
.source "Executors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a*\u0010\u0000\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00a8\u0006\t"
    }
    d2 = {
        "submitSafely",
        "Ljava/util/concurrent/Future;",
        "Lio/sentry/ISentryExecutorService;",
        "options",
        "Lio/sentry/SentryOptions;",
        "taskName",
        "",
        "task",
        "Ljava/lang/Runnable;",
        "sentry-android-replay_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$l_zh7Wpcz5NA0KVfWPO-M1U72IU(Ljava/lang/Runnable;Lio/sentry/SentryOptions;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/android/replay/util/ExecutorsKt;->submitSafely$lambda$0(Ljava/lang/Runnable;Lio/sentry/SentryOptions;Ljava/lang/String;)V

    return-void
.end method

.method public static final submitSafely(Lio/sentry/ISentryExecutorService;Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 5
    .param p0, "$this$submitSafely"    # Lio/sentry/ISentryExecutorService;
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "taskName"    # Ljava/lang/String;
    .param p3, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ISentryExecutorService;",
            "Lio/sentry/SentryOptions;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    nop

    .line 14
    :try_start_0
    new-instance v0, Lio/sentry/android/replay/util/ExecutorsKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p1, p2}, Lio/sentry/android/replay/util/ExecutorsKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Lio/sentry/SentryOptions;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to submit task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to executor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    const/4 v1, 0x0

    move-object v0, v1

    .line 24
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method private static final submitSafely$lambda$0(Ljava/lang/Runnable;Lio/sentry/SentryOptions;Ljava/lang/String;)V
    .locals 5
    .param p0, "$task"    # Ljava/lang/Runnable;
    .param p1, "$options"    # Lio/sentry/SentryOptions;
    .param p2, "$taskName"    # Ljava/lang/String;

    .line 15
    nop

    .line 16
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
