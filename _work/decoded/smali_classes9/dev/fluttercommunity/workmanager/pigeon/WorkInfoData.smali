.class public final Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;
.super Ljava/lang/Object;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0008\u0018\u0000 (2\u00020\u0001:\u0001(BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0012\u0008\u0002\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\nJ\u0014\u0010\u001b\u001a\u00020\u00072\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u0096\u0082\u0004J\n\u0010\u001d\u001a\u00020\u001eH\u0096\u0080\u0004J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0013\u0010#\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\nH\u00c6\u0003J\u0010\u0010$\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018JX\u0010%\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0012\u0008\u0002\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00c6\u0001\u00a2\u0006\u0002\u0010&J\n\u0010\'\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0013R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010R\u001b\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006)"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;",
        "",
        "uniqueName",
        "",
        "state",
        "Ldev/fluttercommunity/workmanager/pigeon/WorkState;",
        "isPeriodic",
        "",
        "taskName",
        "tags",
        "",
        "lastFinishedAtMillis",
        "",
        "<init>",
        "(Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/WorkState;ZLjava/lang/String;Ljava/util/List;Ljava/lang/Long;)V",
        "getUniqueName",
        "()Ljava/lang/String;",
        "getState",
        "()Ldev/fluttercommunity/workmanager/pigeon/WorkState;",
        "()Z",
        "getTaskName",
        "getTags",
        "()Ljava/util/List;",
        "getLastFinishedAtMillis",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "toList",
        "equals",
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
        "(Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/WorkState;ZLjava/lang/String;Ljava/util/List;Ljava/lang/Long;)Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;",
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
.field public static final Companion:Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData$Companion;


# instance fields
.field private final isPeriodic:Z

.field private final lastFinishedAtMillis:Ljava/lang/Long;

.field private final state:Ldev/fluttercommunity/workmanager/pigeon/WorkState;

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final taskName:Ljava/lang/String;

.field private final uniqueName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->Companion:Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/WorkState;ZLjava/lang/String;Ljava/util/List;Ljava/lang/Long;)V
    .locals 1
    .param p1, "uniqueName"    # Ljava/lang/String;
    .param p2, "state"    # Ldev/fluttercommunity/workmanager/pigeon/WorkState;
    .param p3, "isPeriodic"    # Z
    .param p4, "taskName"    # Ljava/lang/String;
    .param p5, "tags"    # Ljava/util/List;
    .param p6, "lastFinishedAtMillis"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldev/fluttercommunity/workmanager/pigeon/WorkState;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const-string v0, "uniqueName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    iput-object p1, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->uniqueName:Ljava/lang/String;

    .line 1033
    iput-object p2, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->state:Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    .line 1035
    iput-boolean p3, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->isPeriodic:Z

    .line 1037
    iput-object p4, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->taskName:Ljava/lang/String;

    .line 1039
    iput-object p5, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->tags:Ljava/util/List;

    .line 1045
    iput-object p6, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->lastFinishedAtMillis:Ljava/lang/Long;

    .line 1029
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/WorkState;ZLjava/lang/String;Ljava/util/List;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1029
    and-int/lit8 p8, p7, 0x8

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    .line 1037
    move-object p4, v0

    .line 1029
    :cond_0
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1

    .line 1039
    move-object p5, v0

    .line 1029
    :cond_1
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_2

    .line 1045
    move-object p7, v0

    goto :goto_0

    .line 1029
    :cond_2
    move-object p7, p6

    :goto_0
    move-object p6, p5

    move-object p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;-><init>(Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/WorkState;ZLjava/lang/String;Ljava/util/List;Ljava/lang/Long;)V

    .line 1046
    return-void
.end method

.method public static synthetic copy$default(Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/WorkState;ZLjava/lang/String;Ljava/util/List;Ljava/lang/Long;ILjava/lang/Object;)Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->uniqueName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->state:Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-boolean p3, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->isPeriodic:Z

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->taskName:Ljava/lang/String;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->tags:Ljava/util/List;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->lastFinishedAtMillis:Ljava/lang/Long;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->copy(Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/WorkState;ZLjava/lang/String;Ljava/util/List;Ljava/lang/Long;)Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->uniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ldev/fluttercommunity/workmanager/pigeon/WorkState;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->state:Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->isPeriodic:Z

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->lastFinishedAtMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/WorkState;ZLjava/lang/String;Ljava/util/List;Ljava/lang/Long;)Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldev/fluttercommunity/workmanager/pigeon/WorkState;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")",
            "Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;"
        }
    .end annotation

    const-string v0, "uniqueName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;-><init>(Ljava/lang/String;Ldev/fluttercommunity/workmanager/pigeon/WorkState;ZLjava/lang/String;Ljava/util/List;Ljava/lang/Long;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 1070
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

    .line 1073
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 1074
    return v1

    .line 1076
    :cond_1
    move-object v2, p1

    check-cast v2, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;

    .line 1077
    .local v2, "other":Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;
    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->uniqueName:Ljava/lang/String;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->state:Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->state:Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-boolean v4, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->isPeriodic:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, v2, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->isPeriodic:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->taskName:Ljava/lang/String;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->taskName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->tags:Ljava/util/List;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->tags:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->lastFinishedAtMillis:Ljava/lang/Long;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->lastFinishedAtMillis:Ljava/lang/Long;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 1071
    .end local v2    # "other":Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;
    :cond_3
    :goto_0
    return v0
.end method

.method public final getLastFinishedAtMillis()Ljava/lang/Long;
    .locals 1

    .line 1045
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->lastFinishedAtMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getState()Ldev/fluttercommunity/workmanager/pigeon/WorkState;
    .locals 1

    .line 1033
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->state:Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    return-object v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final getTaskName()Ljava/lang/String;
    .locals 1

    .line 1037
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniqueName()Ljava/lang/String;
    .locals 1

    .line 1031
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->uniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1081
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    .line 1082
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->uniqueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1083
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->state:Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1084
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-boolean v3, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->isPeriodic:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1085
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->taskName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1086
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->tags:Ljava/util/List;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1087
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->lastFinishedAtMillis:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1088
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public final isPeriodic()Z
    .locals 1

    .line 1035
    iget-boolean v0, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->isPeriodic:Z

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

    .line 1061
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->uniqueName:Ljava/lang/String;

    .line 1062
    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->state:Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    .line 1061
    nop

    .line 1063
    iget-boolean v2, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->isPeriodic:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1061
    nop

    .line 1064
    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->taskName:Ljava/lang/String;

    .line 1061
    nop

    .line 1065
    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->tags:Ljava/util/List;

    .line 1061
    nop

    .line 1066
    iget-object v5, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->lastFinishedAtMillis:Ljava/lang/Long;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 1061
    nop

    .line 1060
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkInfoData(uniqueName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->state:Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPeriodic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->isPeriodic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taskName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->taskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastFinishedAtMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->lastFinishedAtMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
