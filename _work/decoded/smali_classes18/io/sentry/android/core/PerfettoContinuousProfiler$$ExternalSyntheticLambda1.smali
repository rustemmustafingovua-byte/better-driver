.class public final synthetic Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/PerfettoContinuousProfiler;

.field public final synthetic f$1:Lio/sentry/protocol/SentryId;

.field public final synthetic f$2:Lio/sentry/protocol/SentryId;

.field public final synthetic f$3:Lio/sentry/android/core/internal/profiling/ChunkRecord;

.field public final synthetic f$4:Ljava/util/Map;

.field public final synthetic f$5:Lio/sentry/SentryDate;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Lio/sentry/IScopes;

.field public final synthetic f$8:Lio/sentry/SentryOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/PerfettoContinuousProfiler;Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Lio/sentry/android/core/internal/profiling/ChunkRecord;Ljava/util/Map;Lio/sentry/SentryDate;ZLio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/core/PerfettoContinuousProfiler;

    iput-object p2, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$1:Lio/sentry/protocol/SentryId;

    iput-object p3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$2:Lio/sentry/protocol/SentryId;

    iput-object p4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$3:Lio/sentry/android/core/internal/profiling/ChunkRecord;

    iput-object p5, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$4:Ljava/util/Map;

    iput-object p6, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$5:Lio/sentry/SentryDate;

    iput-boolean p7, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$6:Z

    iput-object p8, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$7:Lio/sentry/IScopes;

    iput-object p9, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$8:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/core/PerfettoContinuousProfiler;

    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$1:Lio/sentry/protocol/SentryId;

    iget-object v2, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$2:Lio/sentry/protocol/SentryId;

    iget-object v3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$3:Lio/sentry/android/core/internal/profiling/ChunkRecord;

    iget-object v4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$4:Ljava/util/Map;

    iget-object v5, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$5:Lio/sentry/SentryDate;

    iget-boolean v6, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$6:Z

    iget-object v7, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$7:Lio/sentry/IScopes;

    iget-object v8, p0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;->f$8:Lio/sentry/SentryOptions;

    move-object v9, p1

    check-cast v9, Ljava/io/File;

    invoke-virtual/range {v0 .. v9}, Lio/sentry/android/core/PerfettoContinuousProfiler;->lambda$stopInternal$1$io-sentry-android-core-PerfettoContinuousProfiler(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Lio/sentry/android/core/internal/profiling/ChunkRecord;Ljava/util/Map;Lio/sentry/SentryDate;ZLio/sentry/IScopes;Lio/sentry/SentryOptions;Ljava/io/File;)V

    return-void
.end method
