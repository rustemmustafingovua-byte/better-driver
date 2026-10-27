.class Lcom/graphhopper/storage/TurnCostStorage$Itr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/TurnCostStorage$Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/storage/TurnCostStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Itr"
.end annotation


# instance fields
.field private final edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

.field private final intsRef:Lcom/graphhopper/storage/IntsRef;

.field final synthetic this$0:Lcom/graphhopper/storage/TurnCostStorage;

.field private turnCostIndex:I

.field private viaNode:I


# direct methods
.method private constructor <init>(Lcom/graphhopper/storage/TurnCostStorage;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->this$0:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->viaNode:I

    .line 4
    iput p1, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->turnCostIndex:I

    .line 5
    new-instance p1, Lcom/graphhopper/storage/IntsRef;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/graphhopper/storage/IntsRef;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->intsRef:Lcom/graphhopper/storage/IntsRef;

    .line 6
    new-instance v0, Lcom/graphhopper/routing/ev/IntsRefEdgeIntAccess;

    invoke-direct {v0, p1}, Lcom/graphhopper/routing/ev/IntsRefEdgeIntAccess;-><init>(Lcom/graphhopper/storage/IntsRef;)V

    iput-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/graphhopper/storage/TurnCostStorage;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/graphhopper/storage/TurnCostStorage$Itr;-><init>(Lcom/graphhopper/storage/TurnCostStorage;)V

    return-void
.end method

.method private nextNode()Z
    .locals 3

    iget v0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->viaNode:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->viaNode:I

    iget-object v2, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->this$0:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-static {v2}, Lcom/graphhopper/storage/TurnCostStorage;->a(Lcom/graphhopper/storage/TurnCostStorage;)Lcom/graphhopper/storage/BaseGraph;

    move-result-object v2

    invoke-virtual {v2}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->this$0:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-static {v0}, Lcom/graphhopper/storage/TurnCostStorage;->a(Lcom/graphhopper/storage/TurnCostStorage;)Lcom/graphhopper/storage/BaseGraph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v0

    iget v2, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->viaNode:I

    invoke-interface {v0, v2}, Lcom/graphhopper/storage/NodeAccess;->getTurnCostIndex(I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->turnCostIndex:I

    return v1
.end method

.method private nextTci()Z
    .locals 7

    iget v0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->turnCostIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->this$0:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-static {v0}, Lcom/graphhopper/storage/TurnCostStorage;->b(Lcom/graphhopper/storage/TurnCostStorage;)Lcom/graphhopper/storage/DataAccess;

    move-result-object v0

    invoke-direct {p0}, Lcom/graphhopper/storage/TurnCostStorage$Itr;->turnCostPtr()J

    move-result-wide v3

    const-wide/16 v5, 0xc

    add-long/2addr v3, v5

    invoke-interface {v0, v3, v4}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->turnCostIndex:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private turnCostPtr()J
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->this$0:Lcom/graphhopper/storage/TurnCostStorage;

    iget p0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->turnCostIndex:I

    invoke-static {v0, p0}, Lcom/graphhopper/storage/TurnCostStorage;->c(Lcom/graphhopper/storage/TurnCostStorage;I)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->intsRef:Lcom/graphhopper/storage/IntsRef;

    iget-object v0, v0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    iget-object v1, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->this$0:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-static {v1}, Lcom/graphhopper/storage/TurnCostStorage;->b(Lcom/graphhopper/storage/TurnCostStorage;)Lcom/graphhopper/storage/DataAccess;

    move-result-object v1

    invoke-direct {p0}, Lcom/graphhopper/storage/TurnCostStorage$Itr;->turnCostPtr()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    invoke-interface {v1, v2, v3}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v0, -0x1

    iget-object p0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v2, v0, p0}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->getBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Z

    move-result p0

    return p0
.end method

.method public getCost(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->intsRef:Lcom/graphhopper/storage/IntsRef;

    iget-object v0, v0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    iget-object v1, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->this$0:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-static {v1}, Lcom/graphhopper/storage/TurnCostStorage;->b(Lcom/graphhopper/storage/TurnCostStorage;)Lcom/graphhopper/storage/DataAccess;

    move-result-object v1

    invoke-direct {p0}, Lcom/graphhopper/storage/TurnCostStorage$Itr;->turnCostPtr()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    invoke-interface {v1, v2, v3}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v0, -0x1

    iget-object p0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v2, v0, p0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getFromEdge()I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->this$0:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-static {v0}, Lcom/graphhopper/storage/TurnCostStorage;->b(Lcom/graphhopper/storage/TurnCostStorage;)Lcom/graphhopper/storage/DataAccess;

    move-result-object v0

    invoke-direct {p0}, Lcom/graphhopper/storage/TurnCostStorage$Itr;->turnCostPtr()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0
.end method

.method public getToEdge()I
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->this$0:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-static {v0}, Lcom/graphhopper/storage/TurnCostStorage;->b(Lcom/graphhopper/storage/TurnCostStorage;)Lcom/graphhopper/storage/DataAccess;

    move-result-object v0

    invoke-direct {p0}, Lcom/graphhopper/storage/TurnCostStorage$Itr;->turnCostPtr()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0
.end method

.method public getViaNode()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->viaNode:I

    return p0
.end method

.method public next()Z
    .locals 4

    invoke-direct {p0}, Lcom/graphhopper/storage/TurnCostStorage$Itr;->nextTci()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->turnCostIndex:I

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/graphhopper/storage/TurnCostStorage$Itr;->turnCostIndex:I

    if-ne v3, v0, :cond_0

    invoke-direct {p0}, Lcom/graphhopper/storage/TurnCostStorage$Itr;->nextNode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method
