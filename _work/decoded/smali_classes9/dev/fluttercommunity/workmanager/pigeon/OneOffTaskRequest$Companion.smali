.class public final Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest$Companion;
.super Ljava/lang/Object;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;
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
        "Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest$Companion;",
        "",
        "<init>",
        "()V",
        "fromList",
        "Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;",
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

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromList(Ljava/util/List;)Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;
    .locals 14
    .param p1, "pigeonVar_list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;"
        }
    .end annotation

    const-string v0, "pigeonVar_list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 733
    .local v3, "uniqueName":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 734
    .local v4, "taskName":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    .line 735
    .local v5, "inputData":Ljava/util/Map;
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Long;

    .line 736
    .local v6, "initialDelaySeconds":Ljava/lang/Long;
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    .line 737
    .local v7, "constraints":Ldev/fluttercommunity/workmanager/pigeon/Constraints;
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    .line 738
    .local v8, "backoffPolicy":Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 739
    .local v9, "tag":Ljava/lang/String;
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

    .line 740
    .local v10, "existingWorkPolicy":Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;

    .line 741
    .local v11, "outOfQuotaPolicy":Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    .line 742
    .local v12, "foregroundServiceConfig":Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/Boolean;

    .line 743
    .local v13, "expedited":Ljava/lang/Boolean;
    new-instance v2, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;

    invoke-direct/range {v2 .. v13}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/Constraints;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/Boolean;)V

    return-object v2
.end method
