.class public final Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;
.super Ljava/lang/Object;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\tJ\u0014\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u0096\u0082\u0004J\n\u0010\r\u001a\u00020\u000eH\u0096\u0080\u0004J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\n\u0010\u0011\u001a\u00020\u0012H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;",
        "",
        "callbackHandle",
        "",
        "<init>",
        "(J)V",
        "getCallbackHandle",
        "()J",
        "toList",
        "",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "component1",
        "copy",
        "toString",
        "",
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
.field public static final Companion:Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest$Companion;


# instance fields
.field private final callbackHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;->Companion:Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest$Companion;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "callbackHandle"    # J

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-wide p1, p0, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;->callbackHandle:J

    .line 672
    return-void
.end method

.method public static synthetic copy$default(Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;JILjava/lang/Object;)Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;->callbackHandle:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;->copy(J)Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;->callbackHandle:J

    return-wide v0
.end method

.method public final copy(J)Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;
    .locals 1

    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;

    invoke-direct {v0, p1, p2}, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;-><init>(J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 688
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 691
    :cond_0
    if-ne p0, p1, :cond_1

    .line 692
    const/4 v0, 0x1

    return v0

    .line 694
    :cond_1
    move-object v0, p1

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;

    .line 695
    .local v0, "other":Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;
    sget-object v1, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-wide v2, p0, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;->callbackHandle:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v0, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;->callbackHandle:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 689
    .end local v0    # "other":Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getCallbackHandle()J
    .locals 2

    .line 673
    iget-wide v0, p0, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;->callbackHandle:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 699
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    .line 700
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-wide v3, p0, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;->callbackHandle:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 701
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public final toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 684
    iget-wide v0, p0, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;->callbackHandle:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 683
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitializeRequest(callbackHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;->callbackHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
