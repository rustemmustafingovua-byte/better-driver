.class public final Lio/sentry/android/core/internal/profiling/ChunkRecord;
.super Ljava/lang/Object;
.source "ChunkRecord.java"


# instance fields
.field private volatile endTimestamp:Lio/sentry/SentryDate;

.field private final profilerId:Lio/sentry/protocol/SentryId;

.field private recordingState:Lio/sentry/profiling/ProfileRecordingState;

.field private final startTimestamp:Lio/sentry/SentryDate;


# direct methods
.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SentryDate;)V
    .locals 1
    .param p1, "profilerId"    # Lio/sentry/protocol/SentryId;
    .param p2, "startTimestamp"    # Lio/sentry/SentryDate;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/internal/profiling/ChunkRecord;->endTimestamp:Lio/sentry/SentryDate;

    .line 25
    sget-object v0, Lio/sentry/profiling/ProfileRecordingState;->UNKNOWN:Lio/sentry/profiling/ProfileRecordingState;

    iput-object v0, p0, Lio/sentry/android/core/internal/profiling/ChunkRecord;->recordingState:Lio/sentry/profiling/ProfileRecordingState;

    .line 28
    iput-object p1, p0, Lio/sentry/android/core/internal/profiling/ChunkRecord;->profilerId:Lio/sentry/protocol/SentryId;

    .line 29
    iput-object p2, p0, Lio/sentry/android/core/internal/profiling/ChunkRecord;->startTimestamp:Lio/sentry/SentryDate;

    .line 30
    return-void
.end method


# virtual methods
.method public getProfilerId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/sentry/android/core/internal/profiling/ChunkRecord;->profilerId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public declared-synchronized getRecordingState()Lio/sentry/profiling/ProfileRecordingState;
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/internal/profiling/ChunkRecord;->recordingState:Lio/sentry/profiling/ProfileRecordingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 53
    .end local p0    # "this":Lio/sentry/android/core/internal/profiling/ChunkRecord;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getStartTimestamp()Lio/sentry/SentryDate;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/sentry/android/core/internal/profiling/ChunkRecord;->startTimestamp:Lio/sentry/SentryDate;

    return-object v0
.end method

.method public hasEnded()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lio/sentry/android/core/internal/profiling/ChunkRecord;->endTimestamp:Lio/sentry/SentryDate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public overlaps(Lio/sentry/SentryDate;Lio/sentry/SentryDate;)Z
    .locals 3
    .param p1, "startTime"    # Lio/sentry/SentryDate;
    .param p2, "endTime"    # Lio/sentry/SentryDate;

    .line 71
    iget-object v0, p0, Lio/sentry/android/core/internal/profiling/ChunkRecord;->startTimestamp:Lio/sentry/SentryDate;

    invoke-virtual {p2, v0}, Lio/sentry/SentryDate;->isBefore(Lio/sentry/SentryDate;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    return v1

    .line 75
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/internal/profiling/ChunkRecord;->endTimestamp:Lio/sentry/SentryDate;

    .line 76
    .local v0, "endTimestamp":Lio/sentry/SentryDate;
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lio/sentry/SentryDate;->isAfter(Lio/sentry/SentryDate;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setEndTimestamp(Lio/sentry/SentryDate;)V
    .locals 0
    .param p1, "endTimestamp"    # Lio/sentry/SentryDate;

    .line 34
    iput-object p1, p0, Lio/sentry/android/core/internal/profiling/ChunkRecord;->endTimestamp:Lio/sentry/SentryDate;

    .line 35
    return-void
.end method

.method public declared-synchronized setRecordingState(Lio/sentry/profiling/ProfileRecordingState;)V
    .locals 2
    .param p1, "recordingState"    # Lio/sentry/profiling/ProfileRecordingState;

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/internal/profiling/ChunkRecord;->recordingState:Lio/sentry/profiling/ProfileRecordingState;

    sget-object v1, Lio/sentry/profiling/ProfileRecordingState;->NOT_RECORDED:Lio/sentry/profiling/ProfileRecordingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 47
    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :try_start_1
    iput-object p1, p0, Lio/sentry/android/core/internal/profiling/ChunkRecord;->recordingState:Lio/sentry/profiling/ProfileRecordingState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 45
    .end local p0    # "this":Lio/sentry/android/core/internal/profiling/ChunkRecord;
    .end local p1    # "recordingState":Lio/sentry/profiling/ProfileRecordingState;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
