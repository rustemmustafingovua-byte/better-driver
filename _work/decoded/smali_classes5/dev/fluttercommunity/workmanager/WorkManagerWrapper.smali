.class public final Ldev/fluttercommunity/workmanager/WorkManagerWrapper;
.super Ljava/lang/Object;
.source "WorkManagerUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000fJ\u001a\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00120\u00112\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0015J\u0006\u0010\u001a\u001a\u00020\u0017R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/WorkManagerWrapper;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "workManager",
        "Landroidx/work/WorkManager;",
        "enqueueOneOffTask",
        "",
        "request",
        "Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;",
        "enqueuePeriodicTask",
        "Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;",
        "getWorkInfoByUniqueName",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "",
        "Landroidx/work/WorkInfo;",
        "uniqueWorkName",
        "",
        "cancelByUniqueName",
        "Landroidx/work/Operation;",
        "cancelByTag",
        "tag",
        "cancelAll",
        "workmanager_android_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final workManager:Landroidx/work/WorkManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->context:Landroid/content/Context;

    .line 241
    sget-object v0, Landroidx/work/WorkManager;->Companion:Landroidx/work/WorkManager$Companion;

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroidx/work/WorkManager$Companion;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->workManager:Landroidx/work/WorkManager;

    .line 238
    return-void
.end method


# virtual methods
.method public final cancelAll()Landroidx/work/Operation;
    .locals 1

    .line 318
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->workManager:Landroidx/work/WorkManager;

    invoke-virtual {v0}, Landroidx/work/WorkManager;->cancelAllWork()Landroidx/work/Operation;

    move-result-object v0

    return-object v0
.end method

.method public final cancelByTag(Ljava/lang/String;)Landroidx/work/Operation;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->workManager:Landroidx/work/WorkManager;

    invoke-virtual {v0, p1}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    move-result-object v0

    return-object v0
.end method

.method public final cancelByUniqueName(Ljava/lang/String;)Landroidx/work/Operation;
    .locals 1
    .param p1, "uniqueWorkName"    # Ljava/lang/String;

    const-string v0, "uniqueWorkName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->workManager:Landroidx/work/WorkManager;

    invoke-virtual {v0, p1}, Landroidx/work/WorkManager;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    move-result-object v0

    return-object v0
.end method

.method public final enqueueOneOffTask(Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;)V
    .locals 14
    .param p1, "request"    # Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    nop

    .line 245
    :try_start_0
    invoke-virtual {p1}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->getExpedited()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->context:Landroid/content/Context;

    .line 253
    const-string v1, "android.permission.FOREGROUND_SERVICE_SHORT_SERVICE"

    .line 254
    const-string v2, "expedited work (setExpedited)"

    .line 255
    const-string v3, "FOREGROUND_SERVICE_SHORT_SERVICE is declared by the plugin by default; keep it if you use expedited work (see the workmanager_android README, issue #725)."

    .line 249
    invoke-static {v0, v1, v2, v3}, Ldev/fluttercommunity/workmanager/ForegroundServiceUtilsKt;->requireForegroundServicePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    invoke-static {p1}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->createOneOffWorkRequest(Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;)Landroidx/work/OneTimeWorkRequest;

    move-result-object v0

    .line 261
    .local v0, "oneOffTaskRequest":Landroidx/work/OneTimeWorkRequest;
    iget-object v1, p0, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->workManager:Landroidx/work/WorkManager;

    .line 262
    invoke-virtual {p1}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->getUniqueName()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-virtual {p1}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->getExistingWorkPolicy()Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->access$toAndroidWorkPolicy(Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;)Landroidx/work/ExistingWorkPolicy;

    move-result-object v3

    if-nez v3, :cond_2

    .line 264
    :cond_1
    invoke-static {}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->getDefaultOneOffExistingWorkPolicy()Landroidx/work/ExistingWorkPolicy;

    move-result-object v3

    .line 265
    :cond_2
    nop

    .line 261
    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Operation;

    .line 269
    new-instance v4, Ldev/fluttercommunity/workmanager/TaskDebugInfo;

    .line 270
    invoke-virtual {p1}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->getTaskName()Ljava/lang/String;

    move-result-object v5

    .line 271
    invoke-virtual {p1}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->getUniqueName()Ljava/lang/String;

    move-result-object v6

    .line 272
    invoke-virtual {p1}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->getInputData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->access$filterNotNullKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 269
    const/16 v12, 0x30

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Ldev/fluttercommunity/workmanager/TaskDebugInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JLjava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 268
    move-object v7, v4

    .line 275
    .local v7, "taskInfo":Ldev/fluttercommunity/workmanager/TaskDebugInfo;
    sget-object v5, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->Companion:Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;

    iget-object v6, p0, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->context:Landroid/content/Context;

    sget-object v8, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->SCHEDULED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;->onTaskStatusUpdate$workmanager_android_debug$default(Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;Ldev/fluttercommunity/workmanager/TaskResult;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v0    # "oneOffTaskRequest":Landroidx/work/OneTimeWorkRequest;
    .end local v7    # "taskInfo":Ldev/fluttercommunity/workmanager/TaskDebugInfo;
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method

.method public final enqueuePeriodicTask(Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;)V
    .locals 25
    .param p1, "request"    # Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;

    move-object/from16 v0, p0

    const-string v1, "request"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->getTaskName()Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {v2}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->getInputData()Ljava/util/Map;

    move-result-object v1

    const/4 v14, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->access$filterNotNullKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v14

    .line 286
    :goto_0
    invoke-virtual {v2}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->getForegroundServiceConfig()Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    move-result-object v5

    .line 287
    invoke-virtual {v2}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->getUniqueName()Ljava/lang/String;

    move-result-object v6

    .line 288
    invoke-virtual {v2}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->getFrequencySeconds()J

    move-result-wide v7

    .line 289
    invoke-virtual {v2}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->getFlexIntervalSeconds()Ljava/lang/Long;

    move-result-object v9

    .line 290
    invoke-virtual {v2}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->getInitialDelaySeconds()Ljava/lang/Long;

    move-result-object v10

    .line 291
    invoke-virtual {v2}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->getConstraints()Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->toAndroidConstraints(Ldev/fluttercommunity/workmanager/pigeon/Constraints;)Landroidx/work/Constraints;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    invoke-static {}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->getDefaultConstraints()Landroidx/work/Constraints;

    move-result-object v1

    :cond_2
    move-object v11, v1

    .line 292
    invoke-virtual {v2}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->getBackoffPolicy()Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    move-result-object v12

    .line 293
    invoke-virtual {v2}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->getTag()Ljava/lang/String;

    move-result-object v13

    .line 283
    invoke-static/range {v3 .. v13}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->createPeriodicWorkRequest(Ljava/lang/String;Ljava/util/Map;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Landroidx/work/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;)Landroidx/work/PeriodicWorkRequest;

    move-result-object v1

    .line 282
    nop

    .line 295
    .local v1, "periodicTaskRequest":Landroidx/work/PeriodicWorkRequest;
    iget-object v3, v0, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->workManager:Landroidx/work/WorkManager;

    .line 296
    invoke-virtual {v2}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->getUniqueName()Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-virtual {v2}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->getExistingWorkPolicy()Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v5}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->access$toAndroidPeriodicWorkPolicy(Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;)Landroidx/work/ExistingPeriodicWorkPolicy;

    move-result-object v5

    if-nez v5, :cond_4

    .line 298
    :cond_3
    invoke-static {}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->getDefaultPeriodExistingWorkPolicy()Landroidx/work/ExistingPeriodicWorkPolicy;

    move-result-object v5

    .line 299
    :cond_4
    nop

    .line 295
    invoke-virtual {v3, v4, v5, v1}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    .line 303
    new-instance v15, Ldev/fluttercommunity/workmanager/TaskDebugInfo;

    .line 304
    invoke-virtual {v2}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->getTaskName()Ljava/lang/String;

    move-result-object v16

    .line 305
    invoke-virtual {v2}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->getUniqueName()Ljava/lang/String;

    move-result-object v17

    .line 306
    invoke-virtual {v2}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->getInputData()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v3}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->access$filterNotNullKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    :cond_5
    move-object/from16 v18, v14

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 303
    const/16 v23, 0x30

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v24}, Ldev/fluttercommunity/workmanager/TaskDebugInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JLjava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 302
    move-object v5, v15

    .line 309
    .local v5, "taskInfo":Ldev/fluttercommunity/workmanager/TaskDebugInfo;
    sget-object v3, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;->Companion:Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;

    iget-object v4, v0, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->context:Landroid/content/Context;

    sget-object v6, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->SCHEDULED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;->onTaskStatusUpdate$workmanager_android_debug$default(Ldev/fluttercommunity/workmanager/WorkmanagerDebug$Companion;Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;Ldev/fluttercommunity/workmanager/TaskResult;ILjava/lang/Object;)V

    .line 310
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 239
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getWorkInfoByUniqueName(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "uniqueWorkName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "uniqueWorkName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/WorkManagerWrapper;->workManager:Landroidx/work/WorkManager;

    invoke-virtual {v0, p1}, Landroidx/work/WorkManager;->getWorkInfosForUniqueWork(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
