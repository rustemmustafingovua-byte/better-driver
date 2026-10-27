.class public final Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest$Companion;
.super Ljava/lang/Object;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest$Companion;",
        "",
        "<init>",
        "()V",
        "fromList",
        "Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;",
        "pigeonVar_list",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromList(Ljava/util/List;)Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;
    .locals 16
    .param p1, "pigeonVar_list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "pigeonVar_list"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 807
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 808
    .local v4, "uniqueName":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 809
    .local v5, "taskName":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 810
    .local v6, "frequencySeconds":J
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/Long;

    .line 811
    .local v8, "flexIntervalSeconds":Ljava/lang/Long;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/Map;

    .line 812
    .local v9, "inputData":Ljava/util/Map;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/Long;

    .line 813
    .local v10, "initialDelaySeconds":Ljava/lang/Long;
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    .line 814
    .local v11, "constraints":Ldev/fluttercommunity/workmanager/pigeon/Constraints;
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    .line 815
    .local v12, "backoffPolicy":Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    .line 816
    .local v13, "tag":Ljava/lang/String;
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    .line 817
    .local v14, "existingWorkPolicy":Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    .line 818
    .local v15, "foregroundServiceConfig":Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
    new-instance v3, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;

    invoke-direct/range {v3 .. v15}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;)V

    return-object v3
.end method
