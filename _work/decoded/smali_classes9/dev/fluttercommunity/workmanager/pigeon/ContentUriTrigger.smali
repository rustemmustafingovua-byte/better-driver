.class public final Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;
.super Ljava/lang/Object;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\rJ\u0014\u0010\u000e\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0082\u0004J\n\u0010\u0010\u001a\u00020\u0011H\u0096\u0080\u0004J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\n\u0010\u0015\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;",
        "",
        "uri",
        "",
        "triggerForDescendants",
        "",
        "<init>",
        "(Ljava/lang/String;Z)V",
        "getUri",
        "()Ljava/lang/String;",
        "getTriggerForDescendants",
        "()Z",
        "toList",
        "",
        "equals",
        "other",
        "hashCode",
        "",
        "component1",
        "component2",
        "copy",
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
.field public static final Companion:Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger$Companion;


# instance fields
.field private final triggerForDescendants:Z

.field private final uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->Companion:Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "triggerForDescendants"    # Z

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    iput-object p1, p0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->uri:Ljava/lang/String;

    .line 598
    iput-boolean p2, p0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->triggerForDescendants:Z

    .line 591
    return-void
.end method

.method public static synthetic copy$default(Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;Ljava/lang/String;ZILjava/lang/Object;)Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->uri:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->triggerForDescendants:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->copy(Ljava/lang/String;Z)Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->triggerForDescendants:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Z)Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;

    invoke-direct {v0, p1, p2}, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 615
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

    .line 618
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 619
    return v1

    .line 621
    :cond_1
    move-object v2, p1

    check-cast v2, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;

    .line 622
    .local v2, "other":Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;
    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v4, p0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->uri:Ljava/lang/String;

    iget-object v5, v2, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-boolean v4, p0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->triggerForDescendants:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, v2, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->triggerForDescendants:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 616
    .end local v2    # "other":Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;
    :cond_3
    :goto_0
    return v0
.end method

.method public final getTriggerForDescendants()Z
    .locals 1

    .line 598
    iget-boolean v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->triggerForDescendants:Z

    return v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .line 596
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 626
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    .line 627
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 628
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->INSTANCE:Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;

    iget-boolean v3, p0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->triggerForDescendants:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 629
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

    .line 610
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->uri:Ljava/lang/String;

    .line 611
    iget-boolean v1, p0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->triggerForDescendants:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 610
    nop

    .line 609
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentUriTrigger(uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerForDescendants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->triggerForDescendants:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
