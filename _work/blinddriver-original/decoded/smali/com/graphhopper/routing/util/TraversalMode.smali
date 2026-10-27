.class public final enum Lcom/graphhopper/routing/util/TraversalMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/util/TraversalMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/util/TraversalMode;

.field public static final enum EDGE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

.field public static final enum NODE_BASED:Lcom/graphhopper/routing/util/TraversalMode;


# instance fields
.field private final edgeBased:Z


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/util/TraversalMode;
    .locals 2

    sget-object v0, Lcom/graphhopper/routing/util/TraversalMode;->NODE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    sget-object v1, Lcom/graphhopper/routing/util/TraversalMode;->EDGE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    filled-new-array {v0, v1}, [Lcom/graphhopper/routing/util/TraversalMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/util/TraversalMode;

    const-string v1, "NODE_BASED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/graphhopper/routing/util/TraversalMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/graphhopper/routing/util/TraversalMode;->NODE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    new-instance v0, Lcom/graphhopper/routing/util/TraversalMode;

    const-string v1, "EDGE_BASED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/graphhopper/routing/util/TraversalMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/graphhopper/routing/util/TraversalMode;->EDGE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-static {}, Lcom/graphhopper/routing/util/TraversalMode;->$values()[Lcom/graphhopper/routing/util/TraversalMode;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/TraversalMode;->$VALUES:[Lcom/graphhopper/routing/util/TraversalMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/graphhopper/routing/util/TraversalMode;->edgeBased:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/util/TraversalMode;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/util/TraversalMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/util/TraversalMode;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/util/TraversalMode;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/util/TraversalMode;->$VALUES:[Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/util/TraversalMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/util/TraversalMode;

    return-object v0
.end method


# virtual methods
.method public final createTraversalId(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;Z)I
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/graphhopper/routing/util/TraversalMode;->edgeBased:Z

    if-eqz p0, :cond_2

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyFirst()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyLast()I

    move-result p0

    :goto_0
    if-eqz p2, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->isShortcut()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getBaseNode()I

    move-result p2

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getAdjNode()I

    move-result p1

    if-eq p2, p1, :cond_1

    .line 7
    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->reverseEdgeKey(I)I

    move-result p0

    :cond_1
    return p0

    .line 8
    :cond_2
    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getAdjNode()I

    move-result p0

    return p0
.end method

.method public final createTraversalId(Lcom/graphhopper/util/EdgeIteratorState;Z)I
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/graphhopper/routing/util/TraversalMode;->edgeBased:Z

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getReverseEdgeKey()I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdgeKey()I

    move-result p0

    return p0

    .line 3
    :cond_1
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result p0

    return p0
.end method

.method public isEdgeBased()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/routing/util/TraversalMode;->edgeBased:Z

    return p0
.end method
