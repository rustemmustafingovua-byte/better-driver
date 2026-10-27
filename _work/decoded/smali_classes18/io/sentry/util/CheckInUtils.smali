.class public final Lio/sentry/util/CheckInUtils;
.super Ljava/lang/Object;
.source "CheckInUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isIgnored(Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .param p1, "slug"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 123
    .local p0, "ignoredSlugs":Ljava/util/List;, "Ljava/util/List<Lio/sentry/FilterString;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 127
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/FilterString;

    .line 128
    .local v2, "ignoredSlug":Lio/sentry/FilterString;
    invoke-virtual {v2}, Lio/sentry/FilterString;->getFilterString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    return v3

    .line 131
    .end local v2    # "ignoredSlug":Lio/sentry/FilterString;
    :cond_1
    goto :goto_0

    .line 133
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/FilterString;

    .line 135
    .restart local v2    # "ignoredSlug":Lio/sentry/FilterString;
    :try_start_0
    invoke-virtual {v2, p1}, Lio/sentry/FilterString;->matches(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 136
    return v3

    .line 140
    :cond_3
    goto :goto_2

    .line 138
    :catchall_0
    move-exception v4

    .line 141
    .end local v2    # "ignoredSlug":Lio/sentry/FilterString;
    :goto_2
    goto :goto_1

    .line 143
    :cond_4
    return v0

    .line 124
    :cond_5
    :goto_3
    return v0
.end method

.method public static withCheckIn(Ljava/lang/String;Lio/sentry/MonitorConfig;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .param p0, "monitorSlug"    # Ljava/lang/String;
    .param p1, "monitorConfig"    # Lio/sentry/MonitorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/sentry/MonitorConfig;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TU;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lio/sentry/util/CheckInUtils;->withCheckIn(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MonitorConfig;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static withCheckIn(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MonitorConfig;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 11
    .param p0, "monitorSlug"    # Ljava/lang/String;
    .param p1, "environment"    # Ljava/lang/String;
    .param p2, "monitorConfig"    # Lio/sentry/MonitorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/sentry/MonitorConfig;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    .local p3, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TU;>;"
    nop

    .line 39
    const-string v0, "CheckInUtils"

    invoke-static {v0}, Lio/sentry/Sentry;->forkedScopes(Ljava/lang/String;)Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->makeCurrent()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 40
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v1

    .line 41
    .local v1, "scopes":Lio/sentry/IScopes;
    nop

    .line 42
    invoke-interface {v1}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getMonotonicTicker()Lio/sentry/time/MonotonicTicker;

    move-result-object v2

    invoke-static {v2}, Lio/sentry/time/Stopwatch;->started(Lio/sentry/time/MonotonicTicker;)Lio/sentry/time/Stopwatch;

    move-result-object v2

    .line 43
    .local v2, "stopwatch":Lio/sentry/time/Stopwatch;
    const/4 v3, 0x0

    .line 45
    .local v3, "didError":Z
    invoke-static {v1}, Lio/sentry/util/TracingUtils;->startNewTrace(Lio/sentry/IScopes;)V

    .line 47
    new-instance v4, Lio/sentry/CheckIn;

    sget-object v5, Lio/sentry/CheckInStatus;->IN_PROGRESS:Lio/sentry/CheckInStatus;

    invoke-direct {v4, p0, v5}, Lio/sentry/CheckIn;-><init>(Ljava/lang/String;Lio/sentry/CheckInStatus;)V

    .line 48
    .local v4, "inProgressCheckIn":Lio/sentry/CheckIn;
    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {v4, p2}, Lio/sentry/CheckIn;->setMonitorConfig(Lio/sentry/MonitorConfig;)V

    .line 51
    :cond_0
    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {v4, p1}, Lio/sentry/CheckIn;->setEnvironment(Ljava/lang/String;)V

    .line 54
    :cond_1
    invoke-interface {v1, v4}, Lio/sentry/IScopes;->captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 56
    .local v5, "checkInId":Lio/sentry/protocol/SentryId;
    :try_start_1
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    if-eqz v3, :cond_2

    :try_start_2
    sget-object v7, Lio/sentry/CheckInStatus;->ERROR:Lio/sentry/CheckInStatus;

    goto :goto_0

    :cond_2
    sget-object v7, Lio/sentry/CheckInStatus;->OK:Lio/sentry/CheckInStatus;

    .line 62
    .local v7, "status":Lio/sentry/CheckInStatus;
    :goto_0
    new-instance v8, Lio/sentry/CheckIn;

    invoke-direct {v8, v5, p0, v7}, Lio/sentry/CheckIn;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Lio/sentry/CheckInStatus;)V

    .line 63
    .local v8, "checkIn":Lio/sentry/CheckIn;
    if-eqz p1, :cond_3

    .line 64
    invoke-virtual {v8, p1}, Lio/sentry/CheckIn;->setEnvironment(Ljava/lang/String;)V

    .line 66
    :cond_3
    invoke-virtual {v2}, Lio/sentry/time/Stopwatch;->elapsedNanos()J

    move-result-wide v9

    invoke-static {v9, v10}, Lio/sentry/DateUtils;->nanosToSeconds(J)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/sentry/CheckIn;->setDuration(Ljava/lang/Double;)V

    .line 67
    invoke-interface {v1, v8}, Lio/sentry/IScopes;->captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 69
    nop

    .end local v7    # "status":Lio/sentry/CheckInStatus;
    .end local v8    # "checkIn":Lio/sentry/CheckIn;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 56
    :cond_4
    return-object v6

    .line 57
    :catchall_0
    move-exception v6

    .line 58
    .local v6, "t":Ljava/lang/Throwable;
    const/4 v3, 0x1

    .line 59
    nop

    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .end local v1    # "scopes":Lio/sentry/IScopes;
    .end local v2    # "stopwatch":Lio/sentry/time/Stopwatch;
    .end local v3    # "didError":Z
    .end local v4    # "inProgressCheckIn":Lio/sentry/CheckIn;
    .end local v5    # "checkInId":Lio/sentry/protocol/SentryId;
    .end local p0    # "monitorSlug":Ljava/lang/String;
    .end local p1    # "environment":Ljava/lang/String;
    .end local p2    # "monitorConfig":Lio/sentry/MonitorConfig;
    .end local p3    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TU;>;"
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v1    # "scopes":Lio/sentry/IScopes;
    .restart local v2    # "stopwatch":Lio/sentry/time/Stopwatch;
    .restart local v3    # "didError":Z
    .restart local v4    # "inProgressCheckIn":Lio/sentry/CheckIn;
    .restart local v5    # "checkInId":Lio/sentry/protocol/SentryId;
    .restart local p0    # "monitorSlug":Ljava/lang/String;
    .restart local p1    # "environment":Ljava/lang/String;
    .restart local p2    # "monitorConfig":Lio/sentry/MonitorConfig;
    .restart local p3    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TU;>;"
    :catchall_1
    move-exception v6

    if-eqz v3, :cond_5

    :try_start_4
    sget-object v7, Lio/sentry/CheckInStatus;->ERROR:Lio/sentry/CheckInStatus;

    goto :goto_1

    :cond_5
    sget-object v7, Lio/sentry/CheckInStatus;->OK:Lio/sentry/CheckInStatus;

    .line 62
    .restart local v7    # "status":Lio/sentry/CheckInStatus;
    :goto_1
    new-instance v8, Lio/sentry/CheckIn;

    invoke-direct {v8, v5, p0, v7}, Lio/sentry/CheckIn;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Lio/sentry/CheckInStatus;)V

    .line 63
    .restart local v8    # "checkIn":Lio/sentry/CheckIn;
    if-eqz p1, :cond_6

    .line 64
    invoke-virtual {v8, p1}, Lio/sentry/CheckIn;->setEnvironment(Ljava/lang/String;)V

    .line 66
    :cond_6
    invoke-virtual {v2}, Lio/sentry/time/Stopwatch;->elapsedNanos()J

    move-result-wide v9

    invoke-static {v9, v10}, Lio/sentry/DateUtils;->nanosToSeconds(J)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/sentry/CheckIn;->setDuration(Ljava/lang/Double;)V

    .line 67
    invoke-interface {v1, v8}, Lio/sentry/IScopes;->captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;

    .line 68
    nop

    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .end local v7    # "status":Lio/sentry/CheckInStatus;
    .end local v8    # "checkIn":Lio/sentry/CheckIn;
    .end local p0    # "monitorSlug":Ljava/lang/String;
    .end local p1    # "environment":Ljava/lang/String;
    .end local p2    # "monitorConfig":Lio/sentry/MonitorConfig;
    .end local p3    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TU;>;"
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 38
    .end local v1    # "scopes":Lio/sentry/IScopes;
    .end local v2    # "stopwatch":Lio/sentry/time/Stopwatch;
    .end local v3    # "didError":Z
    .end local v4    # "inProgressCheckIn":Lio/sentry/CheckIn;
    .end local v5    # "checkInId":Lio/sentry/protocol/SentryId;
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local p0    # "monitorSlug":Ljava/lang/String;
    .restart local p1    # "environment":Ljava/lang/String;
    .restart local p2    # "monitorConfig":Lio/sentry/MonitorConfig;
    .restart local p3    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TU;>;"
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_7

    :try_start_5
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v1
.end method

.method public static withCheckIn(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .param p0, "monitorSlug"    # Ljava/lang/String;
    .param p1, "environment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TU;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lio/sentry/util/CheckInUtils;->withCheckIn(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MonitorConfig;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static withCheckIn(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .param p0, "monitorSlug"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TU;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Lio/sentry/util/CheckInUtils;->withCheckIn(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MonitorConfig;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
