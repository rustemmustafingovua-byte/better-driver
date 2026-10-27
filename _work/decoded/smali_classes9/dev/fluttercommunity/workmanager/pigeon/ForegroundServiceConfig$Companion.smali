.class public final Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig$Companion;
.super Ljava/lang/Object;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
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
        "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig$Companion;",
        "",
        "<init>",
        "()V",
        "fromList",
        "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;",
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

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromList(Ljava/util/List;)Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
    .locals 8
    .param p1, "pigeonVar_list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;"
        }
    .end annotation

    const-string v0, "pigeonVar_list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 471
    .local v2, "notificationTitle":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 472
    .local v3, "notificationText":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 473
    .local v4, "notificationChannelId":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 474
    .local v5, "notificationChannelName":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Long;

    .line 475
    .local v6, "notificationId":Ljava/lang/Long;
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    .line 476
    .local v7, "foregroundServiceType":Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;
    new-instance v1, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    invoke-direct/range {v1 .. v7}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;)V

    return-object v1
.end method
