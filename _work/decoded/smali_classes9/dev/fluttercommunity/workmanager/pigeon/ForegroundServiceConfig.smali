.class public final Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
.super Ljava/lang/Object;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0008\u0018\u0000 \'2\u00020\u0001:\u0001\'BO\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0018J\u0014\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u0096\u0082\u0004J\n\u0010\u001c\u001a\u00020\u001dH\u0096\u0080\u0004J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\u000b\u0010#\u001a\u0004\u0018\u00010\nH\u00c6\u0003JV\u0010$\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u00c6\u0001\u00a2\u0006\u0002\u0010%J\n\u0010&\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006("
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;",
        "",
        "notificationTitle",
        "",
        "notificationText",
        "notificationChannelId",
        "notificationChannelName",
        "notificationId",
        "",
        "foregroundServiceType",
        "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;)V",
        "getNotificationTitle",
        "()Ljava/lang/String;",
        "getNotificationText",
        "getNotificationChannelId",
        "getNotificationChannelName",
        "getNotificationId",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getForegroundServiceType",
        "()Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;",
        "toList",
        "",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;)Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;",
        "toString",
        "Companion",
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


# static fields
.field public static final Companion:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig$Companion;


# instance fields
.field private final foregroundServiceType:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

.field private final notificationChannelId:Ljava/lang/String;

.field private final notificationChannelName:Ljava/lang/String;

.field private final notificationId:Ljava/lang/Long;

.field private final notificationText:Ljava/lang/String;

.field private final notificationTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->Companion:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;)V
    .locals 0
    .param p1, "notificationTitle"    # Ljava/lang/String;
    .param p2, "notificationText"    # Ljava/lang/String;
    .param p3, "notificationChannelId"    # Ljava/lang/String;
    .param p4, "notificationChannelName"    # Ljava/lang/String;
    .param p5, "notificationId"    # Ljava/lang/Long;
    .param p6, "foregroundServiceType"    # Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p1, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationTitle:Ljava/lang/String;

    .line 451
    iput-object p2, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationText:Ljava/lang/String;

    .line 456
    iput-object p3, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelId:Ljava/lang/String;

    .line 458
    iput-object p4, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelName:Ljava/lang/String;

    .line 460
    iput-object p5, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationId:Ljava/lang/Long;

    .line 465
    iput-object p6, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->foregroundServiceType:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    .line 447
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 447
    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    .line 449
    move-object p1, v0

    .line 447
    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 451
    move-object p2, v0

    .line 447
    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 456
    move-object p3, v0

    .line 447
    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 458
    move-object p4, v0

    .line 447
    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 460
    move-object p5, v0

    .line 447
    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 465
    move-object p7, v0

    goto :goto_0

    .line 447
    :cond_5
    move-object p7, p6

    :goto_0
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;)V

    .line 466
    return-void
.end method

.method public static synthetic copy$default(Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;ILjava/lang/Object;)Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationTitle:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationText:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelId:Ljava/lang/String;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelName:Ljava/lang/String;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationId:Ljava/lang/Long;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->foregroundServiceType:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;)Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationText:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component6()Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->foregroundServiceType:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;)Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
    .locals 7

    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 490
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 494
    return v1

    .line 496
    :cond_1
    move-object v2, p1

    check-cast v2, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    .line 497
    .local v2, "other":Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationTitle:Ljava/lang/String;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationText:Ljava/lang/String;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationText:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelId:Ljava/lang/String;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelName:Ljava/lang/String;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationId:Ljava/lang/Long;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationId:Ljava/lang/Long;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->foregroundServiceType:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->foregroundServiceType:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 491
    .end local v2    # "other":Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;
    :cond_3
    :goto_0
    return v0
.end method

.method public final getForegroundServiceType()Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;
    .locals 1

    .line 465
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->foregroundServiceType:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    return-object v0
.end method

.method public final getNotificationChannelId()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotificationChannelName()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotificationId()Ljava/lang/Long;
    .locals 1

    .line 460
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getNotificationText()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationText:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotificationTitle()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 501
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    .line 502
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 503
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 504
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 505
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 506
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 507
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->foregroundServiceType:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 508
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public final toList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationTitle:Ljava/lang/String;

    .line 482
    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationText:Ljava/lang/String;

    .line 481
    nop

    .line 483
    iget-object v2, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelId:Ljava/lang/String;

    .line 481
    nop

    .line 484
    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelName:Ljava/lang/String;

    .line 481
    nop

    .line 485
    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationId:Ljava/lang/Long;

    .line 481
    nop

    .line 486
    iget-object v5, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->foregroundServiceType:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 481
    nop

    .line 480
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForegroundServiceConfig(notificationTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notificationText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notificationChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notificationChannelName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notificationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->notificationId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", foregroundServiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->foregroundServiceType:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
