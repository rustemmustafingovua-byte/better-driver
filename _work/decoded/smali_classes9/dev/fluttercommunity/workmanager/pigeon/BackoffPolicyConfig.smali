.class public final Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
.super Ljava/lang/Object;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u001f\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000eJ\u0014\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0082\u0004J\n\u0010\u0012\u001a\u00020\u0013H\u0096\u0080\u0004J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ&\u0010\u0016\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0017J\n\u0010\u0018\u001a\u00020\u0019H\u00d6\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001b"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;",
        "",
        "backoffPolicy",
        "Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;",
        "backoffDelayMillis",
        "",
        "<init>",
        "(Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;Ljava/lang/Long;)V",
        "getBackoffPolicy",
        "()Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;",
        "getBackoffDelayMillis",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "toList",
        "",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "component1",
        "component2",
        "copy",
        "(Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;Ljava/lang/Long;)Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;",
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
.field public static final Companion:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig$Companion;


# instance fields
.field private final backoffDelayMillis:Ljava/lang/Long;

.field private final backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->Companion:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;-><init>(Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;Ljava/lang/Long;)V
    .locals 0
    .param p1, "backoffPolicy"    # Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;
    .param p2, "backoffDelayMillis"    # Ljava/lang/Long;

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-object p1, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    .line 636
    iput-object p2, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffDelayMillis:Ljava/lang/Long;

    .line 634
    return-void
.end method

.method public synthetic constructor <init>(Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 634
    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 635
    move-object p1, v0

    .line 634
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 636
    move-object p2, v0

    .line 634
    :cond_1
    invoke-direct {p0, p1, p2}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;-><init>(Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;Ljava/lang/Long;)V

    .line 637
    return-void
.end method

.method public static synthetic copy$default(Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;Ljava/lang/Long;ILjava/lang/Object;)Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffDelayMillis:Ljava/lang/Long;

    :cond_1
    invoke-virtual {p0, p1, p2}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->copy(Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;Ljava/lang/Long;)Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    return-object v0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffDelayMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;Ljava/lang/Long;)Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    .locals 1

    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    invoke-direct {v0, p1, p2}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;-><init>(Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;Ljava/lang/Long;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 653
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

    .line 656
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 657
    return v1

    .line 659
    :cond_1
    move-object v2, p1

    check-cast v2, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    .line 660
    .local v2, "other":Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffDelayMillis:Ljava/lang/Long;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffDelayMillis:Ljava/lang/Long;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 654
    .end local v2    # "other":Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;
    :cond_3
    :goto_0
    return v0
.end method

.method public final getBackoffDelayMillis()Ljava/lang/Long;
    .locals 1

    .line 636
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffDelayMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getBackoffPolicy()Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;
    .locals 1

    .line 635
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 664
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    .line 665
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 666
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffDelayMillis:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 667
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
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

    .line 648
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    .line 649
    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffDelayMillis:Ljava/lang/Long;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 648
    nop

    .line 647
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackoffPolicyConfig(backoffPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffPolicy:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backoffDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->backoffDelayMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
