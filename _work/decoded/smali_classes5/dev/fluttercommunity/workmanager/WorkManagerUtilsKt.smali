.class public final Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;
.super Ljava/lang/Object;
.source "WorkManagerUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkManagerUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkManagerUtils.kt\ndev/fluttercommunity/workmanager/WorkManagerUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,320:1\n1#2:321\n1#2:339\n1586#3:322\n1661#3,3:323\n1915#3,2:326\n139#4,10:328\n221#4:338\n222#4:340\n149#4:341\n*S KotlinDebug\n*F\n+ 1 WorkManagerUtils.kt\ndev/fluttercommunity/workmanager/WorkManagerUtilsKt\n*L\n196#1:339\n114#1:322\n114#1:323,3\n154#1:326,2\n196#1:328,10\n196#1:338\n196#1:340\n196#1:341\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a}\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0016\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0018\u00010\u00172\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u001c\u001a\u00020\u00012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001f\u001a\u00020\u000b2\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0015H\u0000\u00a2\u0006\u0002\u0010#\u001a\u0014\u0010$\u001a\u00020%*\u00020&2\u0006\u0010\u001b\u001a\u00020\u0015H\u0000\u001a\u000c\u0010\'\u001a\u00020\u0003*\u00020(H\u0002\u001a\u000c\u0010)\u001a\u00020\u0007*\u00020*H\u0002\u001a\u000c\u0010+\u001a\u00020\u000f*\u00020,H\u0002\u001a\u000c\u0010-\u001a\u00020\u000b*\u00020.H\u0000\u001a\u0012\u0010/\u001a\u0002002\u0008\u0008\u0002\u00101\u001a\u000202H\u0000\u001a\u000c\u00103\u001a\u000204*\u000205H\u0002\u001a\u000c\u00106\u001a\u000207*\u000208H\u0002\u001a(\u00109\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00180\u0017*\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017H\u0002\u001a\u0010\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006>"
    }
    d2 = {
        "DEFAULT_INITIAL_DELAY_SECONDS",
        "",
        "defaultOneOffExistingWorkPolicy",
        "Landroidx/work/ExistingWorkPolicy;",
        "getDefaultOneOffExistingWorkPolicy",
        "()Landroidx/work/ExistingWorkPolicy;",
        "defaultPeriodExistingWorkPolicy",
        "Landroidx/work/ExistingPeriodicWorkPolicy;",
        "getDefaultPeriodExistingWorkPolicy",
        "()Landroidx/work/ExistingPeriodicWorkPolicy;",
        "defaultConstraints",
        "Landroidx/work/Constraints;",
        "getDefaultConstraints",
        "()Landroidx/work/Constraints;",
        "defaultOutOfQuotaPolicy",
        "Landroidx/work/OutOfQuotaPolicy;",
        "getDefaultOutOfQuotaPolicy",
        "()Landroidx/work/OutOfQuotaPolicy;",
        "createPeriodicWorkRequest",
        "Landroidx/work/PeriodicWorkRequest;",
        "taskName",
        "",
        "inputData",
        "",
        "",
        "foregroundServiceConfig",
        "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;",
        "uniqueName",
        "frequencySeconds",
        "flexIntervalSeconds",
        "initialDelaySeconds",
        "constraints",
        "backoffPolicy",
        "Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;",
        "tag",
        "(Ljava/lang/String;Ljava/util/Map;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Landroidx/work/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;)Landroidx/work/PeriodicWorkRequest;",
        "toWorkInfoData",
        "Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;",
        "Landroidx/work/WorkInfo;",
        "toAndroidWorkPolicy",
        "Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;",
        "toAndroidPeriodicWorkPolicy",
        "Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;",
        "toAndroidOutOfQuotaPolicy",
        "Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;",
        "toAndroidConstraints",
        "Ldev/fluttercommunity/workmanager/pigeon/Constraints;",
        "isContentUriTriggerSupported",
        "",
        "sdkInt",
        "",
        "toAndroidNetworkType",
        "Landroidx/work/NetworkType;",
        "Ldev/fluttercommunity/workmanager/pigeon/NetworkType;",
        "toAndroidBackoffPolicy",
        "Landroidx/work/BackoffPolicy;",
        "Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;",
        "filterNotNullKeys",
        "createOneOffWorkRequest",
        "Landroidx/work/OneTimeWorkRequest;",
        "request",
        "Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;",
        "workmanager_android_debug"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_DELAY_SECONDS:J

.field private static final defaultConstraints:Landroidx/work/Constraints;

.field private static final defaultOneOffExistingWorkPolicy:Landroidx/work/ExistingWorkPolicy;

.field private static final defaultOutOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

.field private static final defaultPeriodExistingWorkPolicy:Landroidx/work/ExistingPeriodicWorkPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    sput-object v0, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->defaultOneOffExistingWorkPolicy:Landroidx/work/ExistingWorkPolicy;

    .line 24
    sget-object v0, Landroidx/work/ExistingPeriodicWorkPolicy;->UPDATE:Landroidx/work/ExistingPeriodicWorkPolicy;

    sput-object v0, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->defaultPeriodExistingWorkPolicy:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 25
    sget-object v0, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    sput-object v0, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->defaultConstraints:Landroidx/work/Constraints;

    return-void
.end method

.method public static final synthetic access$filterNotNullKeys(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "$receiver"    # Ljava/util/Map;

    .line 1
    invoke-static {p0}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->filterNotNullKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$toAndroidPeriodicWorkPolicy(Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;)Landroidx/work/ExistingPeriodicWorkPolicy;
    .locals 1
    .param p0, "$receiver"    # Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    .line 1
    invoke-static {p0}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->toAndroidPeriodicWorkPolicy(Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;)Landroidx/work/ExistingPeriodicWorkPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$toAndroidWorkPolicy(Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;)Landroidx/work/ExistingWorkPolicy;
    .locals 1
    .param p0, "$receiver"    # Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

    .line 1
    invoke-static {p0}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->toAndroidWorkPolicy(Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;)Landroidx/work/ExistingWorkPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static final createOneOffWorkRequest(Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;)Landroidx/work/OneTimeWorkRequest;
    .locals 9
    .param p0, "request"    # Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;

    const-string v0, "request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Ldev/fluttercommunity/workmanager/BackgroundWorker;

    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 206
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->getTaskName()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->getInputData()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->filterNotNullKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 208
    :goto_0
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->getForegroundServiceConfig()Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    move-result-object v3

    .line 209
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->getUniqueName()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-static {v1, v2, v3, v4}, Ldev/fluttercommunity/workmanager/InputDataUtilsKt;->buildTaskInputData(Ljava/lang/String;Ljava/util/Map;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/String;)Landroidx/work/Data;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 212
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->getInitialDelaySeconds()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    .line 213
    :goto_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 211
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/OneTimeWorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 215
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->getConstraints()Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->toAndroidConstraints(Ldev/fluttercommunity/workmanager/pigeon/Constraints;)Landroidx/work/Constraints;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->defaultConstraints:Landroidx/work/Constraints;

    .line 214
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    .line 216
    move-object v1, v0

    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .local v1, "$this$createOneOffWorkRequest_u24lambda_u240":Landroidx/work/OneTimeWorkRequest$Builder;
    const/4 v2, 0x0

    .line 217
    .local v2, "$i$a$-apply-WorkManagerUtilsKt$createOneOffWorkRequest$builder$1":I
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->getBackoffPolicy()Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    move-result-object v3

    if-eqz v3, :cond_5

    .local v3, "backoffConfig":Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    const/4 v4, 0x0

    .line 218
    .local v4, "$i$a$-let-WorkManagerUtilsKt$createOneOffWorkRequest$builder$1$1":I
    invoke-virtual {v3}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->getBackoffPolicy()Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->getBackoffDelayMillis()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 219
    nop

    .line 220
    invoke-virtual {v3}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->getBackoffPolicy()Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    move-result-object v5

    invoke-static {v5}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->toAndroidBackoffPolicy(Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;)Landroidx/work/BackoffPolicy;

    move-result-object v5

    .line 221
    invoke-virtual {v3}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->getBackoffDelayMillis()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 222
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 219
    invoke-virtual {v1, v5, v6, v7, v8}, Landroidx/work/OneTimeWorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    .line 225
    :cond_4
    nop

    .line 217
    .end local v3    # "backoffConfig":Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    .end local v4    # "$i$a$-let-WorkManagerUtilsKt$createOneOffWorkRequest$builder$1$1":I
    nop

    .line 226
    :cond_5
    nop

    .line 216
    .end local v1    # "$this$createOneOffWorkRequest_u24lambda_u240":Landroidx/work/OneTimeWorkRequest$Builder;
    .end local v2    # "$i$a$-apply-WorkManagerUtilsKt$createOneOffWorkRequest$builder$1":I
    nop

    .line 226
    move-object v1, v0

    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .local v1, "$this$createOneOffWorkRequest_u24lambda_u241":Landroidx/work/OneTimeWorkRequest$Builder;
    const/4 v2, 0x0

    .line 227
    .local v2, "$i$a$-apply-WorkManagerUtilsKt$createOneOffWorkRequest$builder$2":I
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->getTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 321
    .local v3, "p0":Ljava/lang/String;
    const/4 v4, 0x0

    .line 227
    .local v4, "$i$a$-let-WorkManagerUtilsKt$createOneOffWorkRequest$builder$2$1":I
    invoke-virtual {v1, v3}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object v5

    check-cast v5, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 228
    .end local v3    # "p0":Ljava/lang/String;
    .end local v4    # "$i$a$-let-WorkManagerUtilsKt$createOneOffWorkRequest$builder$2$1":I
    :cond_6
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->getExpedited()Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 229
    nop

    .line 230
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->getOutOfQuotaPolicy()Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v3}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->toAndroidOutOfQuotaPolicy(Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v3

    if-nez v3, :cond_8

    .line 231
    :cond_7
    sget-object v3, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    .line 229
    :cond_8
    invoke-virtual {v1, v3}, Landroidx/work/OneTimeWorkRequest$Builder;->setExpedited(Landroidx/work/OutOfQuotaPolicy;)Landroidx/work/WorkRequest$Builder;

    .line 234
    :cond_9
    nop

    .line 226
    .end local v1    # "$this$createOneOffWorkRequest_u24lambda_u241":Landroidx/work/OneTimeWorkRequest$Builder;
    .end local v2    # "$i$a$-apply-WorkManagerUtilsKt$createOneOffWorkRequest$builder$2":I
    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 201
    nop

    .line 235
    .local v0, "builder":Landroidx/work/OneTimeWorkRequest$Builder;
    invoke-virtual {v0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v1

    check-cast v1, Landroidx/work/OneTimeWorkRequest;

    return-object v1
.end method

.method public static final createPeriodicWorkRequest(Ljava/lang/String;Ljava/util/Map;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Landroidx/work/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;)Landroidx/work/PeriodicWorkRequest;
    .locals 13
    .param p0, "taskName"    # Ljava/lang/String;
    .param p1, "inputData"    # Ljava/util/Map;
    .param p2, "foregroundServiceConfig"    # Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
    .param p3, "uniqueName"    # Ljava/lang/String;
    .param p4, "frequencySeconds"    # J
    .param p6, "flexIntervalSeconds"    # Ljava/lang/Long;
    .param p7, "initialDelaySeconds"    # Ljava/lang/Long;
    .param p8, "constraints"    # Landroidx/work/Constraints;
    .param p9, "backoffPolicy"    # Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    .param p10, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Landroidx/work/Constraints;",
            "Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/work/PeriodicWorkRequest;"
        }
    .end annotation

    move-object/from16 v0, p8

    const-string v1, "taskName"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "constraints"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    if-eqz p6, :cond_0

    .line 54
    new-instance v2, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 55
    const-class v3, Ldev/fluttercommunity/workmanager/BackgroundWorker;

    .line 56
    nop

    .line 57
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 58
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 59
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    move-wide/from16 v4, p4

    invoke-direct/range {v2 .. v9}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    .line 63
    :cond_0
    new-instance v2, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 64
    const-class v1, Ldev/fluttercommunity/workmanager/BackgroundWorker;

    .line 65
    nop

    .line 66
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    move-wide/from16 v4, p4

    invoke-direct {v2, v1, v4, v5, v3}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 52
    :goto_0
    nop

    .line 51
    nop

    .line 69
    .local v2, "builder":Landroidx/work/PeriodicWorkRequest$Builder;
    nop

    .line 70
    invoke-static/range {p0 .. p3}, Ldev/fluttercommunity/workmanager/InputDataUtilsKt;->buildTaskInputData(Ljava/lang/String;Ljava/util/Map;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/String;)Landroidx/work/Data;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/work/PeriodicWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object v1

    check-cast v1, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 72
    if-eqz p7, :cond_1

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x0

    .line 73
    :goto_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 71
    invoke-virtual {v1, v6, v7, v3}, Landroidx/work/PeriodicWorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object v1

    check-cast v1, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 74
    invoke-virtual {v1, v0}, Landroidx/work/PeriodicWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v1

    .line 75
    move-object v3, v1

    check-cast v3, Landroidx/work/PeriodicWorkRequest$Builder;

    .local v3, "$this$createPeriodicWorkRequest_u24lambda_u240":Landroidx/work/PeriodicWorkRequest$Builder;
    const/4 v6, 0x0

    .line 76
    .local v6, "$i$a$-apply-WorkManagerUtilsKt$createPeriodicWorkRequest$1":I
    if-eqz p9, :cond_3

    move-object/from16 v7, p9

    .local v7, "backoffConfig":Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    const/4 v8, 0x0

    .line 77
    .local v8, "$i$a$-let-WorkManagerUtilsKt$createPeriodicWorkRequest$1$1":I
    invoke-virtual {v7}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->getBackoffPolicy()Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->getBackoffDelayMillis()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 78
    nop

    .line 79
    invoke-virtual {v7}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->getBackoffPolicy()Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    move-result-object v9

    invoke-static {v9}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->toAndroidBackoffPolicy(Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;)Landroidx/work/BackoffPolicy;

    move-result-object v9

    .line 80
    invoke-virtual {v7}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->getBackoffDelayMillis()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 81
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 78
    invoke-virtual {v3, v9, v10, v11, v12}, Landroidx/work/PeriodicWorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    .line 84
    :cond_2
    nop

    .line 76
    .end local v7    # "backoffConfig":Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    .end local v8    # "$i$a$-let-WorkManagerUtilsKt$createPeriodicWorkRequest$1$1":I
    nop

    .line 85
    :cond_3
    nop

    .line 75
    .end local v3    # "$this$createPeriodicWorkRequest_u24lambda_u240":Landroidx/work/PeriodicWorkRequest$Builder;
    .end local v6    # "$i$a$-apply-WorkManagerUtilsKt$createPeriodicWorkRequest$1":I
    nop

    .line 85
    move-object v3, v1

    check-cast v3, Landroidx/work/PeriodicWorkRequest$Builder;

    .local v3, "$this$createPeriodicWorkRequest_u24lambda_u241":Landroidx/work/PeriodicWorkRequest$Builder;
    const/4 v6, 0x0

    .line 86
    .local v6, "$i$a$-apply-WorkManagerUtilsKt$createPeriodicWorkRequest$2":I
    if-eqz p10, :cond_4

    move-object/from16 v7, p10

    .line 321
    .local v7, "p0":Ljava/lang/String;
    const/4 v8, 0x0

    .line 86
    .local v8, "$i$a$-let-WorkManagerUtilsKt$createPeriodicWorkRequest$2$1":I
    invoke-virtual {v3, v7}, Landroidx/work/PeriodicWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object v9

    check-cast v9, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 88
    .end local v7    # "p0":Ljava/lang/String;
    .end local v8    # "$i$a$-let-WorkManagerUtilsKt$createPeriodicWorkRequest$2$1":I
    :cond_4
    nop

    .line 85
    .end local v3    # "$this$createPeriodicWorkRequest_u24lambda_u241":Landroidx/work/PeriodicWorkRequest$Builder;
    .end local v6    # "$i$a$-apply-WorkManagerUtilsKt$createPeriodicWorkRequest$2":I
    check-cast v1, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 88
    invoke-virtual {v1}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v1

    check-cast v1, Landroidx/work/PeriodicWorkRequest;

    .line 69
    return-object v1
.end method

.method public static synthetic createPeriodicWorkRequest$default(Ljava/lang/String;Ljava/util/Map;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Landroidx/work/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;ILjava/lang/Object;)Landroidx/work/PeriodicWorkRequest;
    .locals 1

    .line 39
    and-int/lit8 p12, p11, 0x4

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    .line 42
    move-object p2, v0

    .line 39
    :cond_0
    and-int/lit8 p11, p11, 0x8

    if-eqz p11, :cond_1

    .line 43
    move-object p3, v0

    .line 39
    :cond_1
    invoke-static/range {p0 .. p10}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->createPeriodicWorkRequest(Ljava/lang/String;Ljava/util/Map;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Landroidx/work/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;)Landroidx/work/PeriodicWorkRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final filterNotNullKeys(Ljava/util/Map;)Ljava/util/Map;
    .locals 15
    .param p0, "$this$filterNotNullKeys"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 195
    nop

    .line 196
    move-object v0, p0

    .local v0, "$this$mapNotNull$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 328
    .local v1, "$i$f$mapNotNull":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 337
    .local v4, "$i$f$mapNotNullTo":I
    move-object v5, v3

    .local v5, "$this$forEach$iv$iv$iv":Ljava/util/Map;
    const/4 v6, 0x0

    .line 338
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .local v8, "element$iv$iv$iv":Ljava/util/Map$Entry;
    move-object v9, v8

    .local v9, "element$iv$iv":Ljava/util/Map$Entry;
    const/4 v10, 0x0

    .line 337
    .local v10, "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    const/4 v11, 0x0

    .local v11, "$i$a$-mapNotNull-WorkManagerUtilsKt$filterNotNullKeys$1":I
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, "key":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 197
    .local v13, "value":Ljava/lang/Object;
    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    .line 337
    .end local v11    # "$i$a$-mapNotNull-WorkManagerUtilsKt$filterNotNullKeys$1":I
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/Object;
    :goto_1
    if-eqz v14, :cond_1

    .line 339
    .local v14, "it$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 337
    .local v11, "$i$a$-let-MapsKt___MapsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v2, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v9    # "element$iv$iv":Ljava/util/Map$Entry;
    .end local v10    # "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    .end local v11    # "$i$a$-let-MapsKt___MapsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v14    # "it$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v8    # "element$iv$iv$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 340
    :cond_2
    nop

    .line 341
    .end local v5    # "$this$forEach$iv$iv$iv":Ljava/util/Map;
    .end local v6    # "$i$f$forEach":I
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v4    # "$i$f$mapNotNullTo":I
    check-cast v2, Ljava/util/List;

    .line 328
    nop

    .end local v0    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v1    # "$i$f$mapNotNull":I
    check-cast v2, Ljava/lang/Iterable;

    .line 198
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final getDefaultConstraints()Landroidx/work/Constraints;
    .locals 1

    .line 25
    sget-object v0, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->defaultConstraints:Landroidx/work/Constraints;

    return-object v0
.end method

.method public static final getDefaultOneOffExistingWorkPolicy()Landroidx/work/ExistingWorkPolicy;
    .locals 1

    .line 23
    sget-object v0, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->defaultOneOffExistingWorkPolicy:Landroidx/work/ExistingWorkPolicy;

    return-object v0
.end method

.method public static final getDefaultOutOfQuotaPolicy()Landroidx/work/OutOfQuotaPolicy;
    .locals 1

    .line 26
    sget-object v0, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->defaultOutOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    return-object v0
.end method

.method public static final getDefaultPeriodExistingWorkPolicy()Landroidx/work/ExistingPeriodicWorkPolicy;
    .locals 1

    .line 24
    sget-object v0, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->defaultPeriodExistingWorkPolicy:Landroidx/work/ExistingPeriodicWorkPolicy;

    return-object v0
.end method

.method public static final isContentUriTriggerSupported(I)Z
    .locals 1
    .param p0, "sdkInt"    # I

    .line 169
    const/16 v0, 0x18

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic isContentUriTriggerSupported$default(IILjava/lang/Object;)Z
    .locals 0

    .line 169
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_0
    invoke-static {p0}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->isContentUriTriggerSupported(I)Z

    move-result p0

    return p0
.end method

.method private static final toAndroidBackoffPolicy(Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;)Landroidx/work/BackoffPolicy;
    .locals 2
    .param p0, "$this$toAndroidBackoffPolicy"    # Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    .line 188
    sget-object v0, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 190
    :pswitch_0
    sget-object v0, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    goto :goto_0

    .line 189
    :pswitch_1
    sget-object v0, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    .line 191
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final toAndroidConstraints(Ldev/fluttercommunity/workmanager/pigeon/Constraints;)Landroidx/work/Constraints;
    .locals 12
    .param p0, "$this$toAndroidConstraints"    # Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v0, Landroidx/work/Constraints$Builder;

    invoke-direct {v0}, Landroidx/work/Constraints$Builder;-><init>()V

    .line 145
    .local v0, "builder":Landroidx/work/Constraints$Builder;
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/Constraints;->getNetworkType()Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 321
    .local v1, "it":Ldev/fluttercommunity/workmanager/pigeon/NetworkType;
    const/4 v2, 0x0

    .line 145
    .local v2, "$i$a$-let-WorkManagerUtilsKt$toAndroidConstraints$1":I
    invoke-static {v1}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->toAndroidNetworkType(Ldev/fluttercommunity/workmanager/pigeon/NetworkType;)Landroidx/work/NetworkType;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    .line 146
    .end local v1    # "it":Ldev/fluttercommunity/workmanager/pigeon/NetworkType;
    .end local v2    # "$i$a$-let-WorkManagerUtilsKt$toAndroidConstraints$1":I
    :cond_0
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/Constraints;->getRequiresBatteryNotLow()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 321
    .local v1, "it":Z
    const/4 v2, 0x0

    .line 146
    .local v2, "$i$a$-let-WorkManagerUtilsKt$toAndroidConstraints$2":I
    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiresBatteryNotLow(Z)Landroidx/work/Constraints$Builder;

    .line 147
    .end local v1    # "it":Z
    .end local v2    # "$i$a$-let-WorkManagerUtilsKt$toAndroidConstraints$2":I
    :cond_1
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/Constraints;->getRequiresCharging()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 321
    .restart local v1    # "it":Z
    const/4 v2, 0x0

    .line 147
    .local v2, "$i$a$-let-WorkManagerUtilsKt$toAndroidConstraints$3":I
    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiresCharging(Z)Landroidx/work/Constraints$Builder;

    .line 148
    .end local v1    # "it":Z
    .end local v2    # "$i$a$-let-WorkManagerUtilsKt$toAndroidConstraints$3":I
    :cond_2
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/Constraints;->getRequiresDeviceIdle()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .restart local v1    # "it":Z
    const/4 v2, 0x0

    .line 149
    .local v2, "$i$a$-let-WorkManagerUtilsKt$toAndroidConstraints$4":I
    nop

    .line 150
    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiresDeviceIdle(Z)Landroidx/work/Constraints$Builder;

    .line 152
    nop

    .line 148
    .end local v1    # "it":Z
    .end local v2    # "$i$a$-let-WorkManagerUtilsKt$toAndroidConstraints$4":I
    nop

    .line 153
    :cond_3
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/Constraints;->getRequiresStorageNotLow()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 321
    .restart local v1    # "it":Z
    const/4 v2, 0x0

    .line 153
    .local v2, "$i$a$-let-WorkManagerUtilsKt$toAndroidConstraints$5":I
    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiresStorageNotLow(Z)Landroidx/work/Constraints$Builder;

    .line 154
    .end local v1    # "it":Z
    .end local v2    # "$i$a$-let-WorkManagerUtilsKt$toAndroidConstraints$5":I
    :cond_4
    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/Constraints;->getContentUriTriggers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 326
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;

    .local v5, "trigger":Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;
    const/4 v6, 0x0

    .line 155
    .local v6, "$i$a$-forEach-WorkManagerUtilsKt$toAndroidConstraints$6":I
    if-eqz v5, :cond_6

    move-object v7, v5

    .local v7, "it":Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;
    const/4 v8, 0x0

    .line 156
    .local v8, "$i$a$-let-WorkManagerUtilsKt$toAndroidConstraints$6$1":I
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v11, v9, v10}, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt;->isContentUriTriggerSupported$default(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 157
    invoke-virtual {v7}, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->getUri()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "parse(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->getTriggerForDescendants()Z

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroidx/work/Constraints$Builder;->addContentUriTrigger(Landroid/net/Uri;Z)Landroidx/work/Constraints$Builder;

    .line 159
    :cond_5
    nop

    .line 155
    .end local v7    # "it":Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;
    .end local v8    # "$i$a$-let-WorkManagerUtilsKt$toAndroidConstraints$6$1":I
    nop

    .line 160
    :cond_6
    nop

    .line 326
    .end local v5    # "trigger":Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;
    .end local v6    # "$i$a$-forEach-WorkManagerUtilsKt$toAndroidConstraints$6":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 327
    :cond_7
    nop

    .line 162
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    :cond_8
    invoke-virtual {v0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v1

    return-object v1
.end method

.method private static final toAndroidNetworkType(Ldev/fluttercommunity/workmanager/pigeon/NetworkType;)Landroidx/work/NetworkType;
    .locals 2
    .param p0, "$this$toAndroidNetworkType"    # Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    .line 172
    sget-object v0, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 179
    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 180
    sget-object v0, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    goto :goto_0

    .line 182
    :cond_0
    sget-object v0, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    goto :goto_0

    .line 177
    :pswitch_1
    sget-object v0, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    goto :goto_0

    .line 176
    :pswitch_2
    sget-object v0, Landroidx/work/NetworkType;->NOT_ROAMING:Landroidx/work/NetworkType;

    goto :goto_0

    .line 175
    :pswitch_3
    sget-object v0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    goto :goto_0

    .line 174
    :pswitch_4
    sget-object v0, Landroidx/work/NetworkType;->METERED:Landroidx/work/NetworkType;

    goto :goto_0

    .line 173
    :pswitch_5
    sget-object v0, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 185
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final toAndroidOutOfQuotaPolicy(Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;)Landroidx/work/OutOfQuotaPolicy;
    .locals 2
    .param p0, "$this$toAndroidOutOfQuotaPolicy"    # Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;

    .line 136
    sget-object v0, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 139
    :pswitch_0
    sget-object v0, Landroidx/work/OutOfQuotaPolicy;->DROP_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    goto :goto_0

    .line 138
    :pswitch_1
    sget-object v0, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    .line 140
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final toAndroidPeriodicWorkPolicy(Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;)Landroidx/work/ExistingPeriodicWorkPolicy;
    .locals 2
    .param p0, "$this$toAndroidPeriodicWorkPolicy"    # Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    .line 129
    sget-object v0, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 132
    :pswitch_0
    sget-object v0, Landroidx/work/ExistingPeriodicWorkPolicy;->UPDATE:Landroidx/work/ExistingPeriodicWorkPolicy;

    goto :goto_0

    .line 131
    :pswitch_1
    sget-object v0, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    goto :goto_0

    .line 130
    :pswitch_2
    sget-object v0, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 133
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final toAndroidWorkPolicy(Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;)Landroidx/work/ExistingWorkPolicy;
    .locals 2
    .param p0, "$this$toAndroidWorkPolicy"    # Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

    .line 121
    sget-object v0, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 125
    :pswitch_0
    sget-object v0, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    goto :goto_0

    .line 124
    :pswitch_1
    sget-object v0, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    goto :goto_0

    .line 123
    :pswitch_2
    sget-object v0, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    goto :goto_0

    .line 122
    :pswitch_3
    sget-object v0, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 126
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final toWorkInfoData(Landroidx/work/WorkInfo;Ljava/lang/String;)Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;
    .locals 12
    .param p0, "$this$toWorkInfoData"    # Landroidx/work/WorkInfo;
    .param p1, "uniqueName"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uniqueName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroidx/work/WorkInfo;->getState()Landroidx/work/WorkInfo$State;

    move-result-object v0

    sget-object v1, Ldev/fluttercommunity/workmanager/WorkManagerUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move-object v2, p1

    .end local p1    # "uniqueName":Ljava/lang/String;
    .local v2, "uniqueName":Ljava/lang/String;
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 107
    .end local v2    # "uniqueName":Ljava/lang/String;
    .restart local p1    # "uniqueName":Ljava/lang/String;
    :pswitch_0
    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/WorkState;->CANCELLED:Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    goto :goto_0

    .line 106
    :pswitch_1
    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/WorkState;->FAILED:Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    goto :goto_0

    .line 105
    :pswitch_2
    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/WorkState;->SUCCEEDED:Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    goto :goto_0

    .line 104
    :pswitch_3
    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/WorkState;->RUNNING:Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    goto :goto_0

    .line 103
    :pswitch_4
    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/WorkState;->SCHEDULED:Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    .line 101
    :goto_0
    move-object v3, v0

    .line 109
    .local v3, "workState":Ldev/fluttercommunity/workmanager/pigeon/WorkState;
    nop

    .line 110
    nop

    .line 111
    nop

    .line 112
    invoke-virtual {p0}, Landroidx/work/WorkInfo;->getPeriodicityInfo()Landroidx/work/WorkInfo$PeriodicityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    move v4, v0

    .line 113
    invoke-virtual {p0}, Landroidx/work/WorkInfo;->getOutputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "dev.fluttercommunity.workmanager.DART_TASK"

    invoke-virtual {v0, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-virtual {p0}, Landroidx/work/WorkInfo;->getTags()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 322
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v0

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 323
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 324
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .local v10, "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 114
    .local v11, "$i$a$-map-WorkManagerUtilsKt$toWorkInfoData$1":I
    nop

    .line 324
    .end local v10    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-map-WorkManagerUtilsKt$toWorkInfoData$1":I
    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 325
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    move-object v6, v2

    check-cast v6, Ljava/util/List;

    .line 322
    nop

    .line 115
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    nop

    .line 109
    new-instance v1, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;

    const/4 v7, 0x0

    move-object v2, p1

    .end local p1    # "uniqueName":Ljava/lang/String;
    .local v2, "uniqueName":Ljava/lang/String;
    invoke-direct/range {v1 .. v7}, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;-><init>(Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/WorkState;ZLjava/lang/String;Ljava/util/List;Ljava/lang/Long;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
