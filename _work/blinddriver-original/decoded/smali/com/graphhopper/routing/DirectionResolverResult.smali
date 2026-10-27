.class public Lcom/graphhopper/routing/DirectionResolverResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IMPOSSIBLE:Lcom/graphhopper/routing/DirectionResolverResult;

.field private static final UNRESTRICTED:Lcom/graphhopper/routing/DirectionResolverResult;


# instance fields
.field private final inEdgeLeft:I

.field private final inEdgeRight:I

.field private final outEdgeLeft:I

.field private final outEdgeRight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/graphhopper/routing/DirectionResolverResult;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/graphhopper/routing/DirectionResolverResult;-><init>(IIII)V

    sput-object v0, Lcom/graphhopper/routing/DirectionResolverResult;->UNRESTRICTED:Lcom/graphhopper/routing/DirectionResolverResult;

    new-instance v0, Lcom/graphhopper/routing/DirectionResolverResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/graphhopper/routing/DirectionResolverResult;-><init>(IIII)V

    sput-object v0, Lcom/graphhopper/routing/DirectionResolverResult;->IMPOSSIBLE:Lcom/graphhopper/routing/DirectionResolverResult;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/graphhopper/routing/DirectionResolverResult;->inEdgeRight:I

    iput p2, p0, Lcom/graphhopper/routing/DirectionResolverResult;->outEdgeRight:I

    iput p3, p0, Lcom/graphhopper/routing/DirectionResolverResult;->inEdgeLeft:I

    iput p4, p0, Lcom/graphhopper/routing/DirectionResolverResult;->outEdgeLeft:I

    return-void
.end method

.method public static getInEdge(Lcom/graphhopper/routing/DirectionResolverResult;Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "any"

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown value for \'curbside : "

    const-string v1, "\'. allowed: left, right, any"

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/graphhopper/routing/DirectionResolverResult;->getInEdgeRight()I

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/graphhopper/routing/DirectionResolverResult;->getInEdgeLeft()I

    move-result p0

    return p0

    :pswitch_2
    const/4 p0, -0x2

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x179ec -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getOutEdge(Lcom/graphhopper/routing/DirectionResolverResult;Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "any"

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown value for curbside : \'"

    const-string v1, "\'. allowed: left, right, any"

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/graphhopper/routing/DirectionResolverResult;->getOutEdgeRight()I

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/graphhopper/routing/DirectionResolverResult;->getOutEdgeLeft()I

    move-result p0

    return p0

    :pswitch_2
    const/4 p0, -0x2

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x179ec -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static impossible()Lcom/graphhopper/routing/DirectionResolverResult;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/DirectionResolverResult;->IMPOSSIBLE:Lcom/graphhopper/routing/DirectionResolverResult;

    return-object v0
.end method

.method public static onlyLeft(II)Lcom/graphhopper/routing/DirectionResolverResult;
    .locals 2

    new-instance v0, Lcom/graphhopper/routing/DirectionResolverResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, p0, p1}, Lcom/graphhopper/routing/DirectionResolverResult;-><init>(IIII)V

    return-object v0
.end method

.method public static onlyRight(II)Lcom/graphhopper/routing/DirectionResolverResult;
    .locals 2

    new-instance v0, Lcom/graphhopper/routing/DirectionResolverResult;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/graphhopper/routing/DirectionResolverResult;-><init>(IIII)V

    return-object v0
.end method

.method private pretty(I)Ljava/lang/String;
    .locals 0

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    const-string p0, "NO_EDGE"

    return-object p0

    :cond_0
    const/4 p0, -0x2

    if-ne p1, p0, :cond_1

    const-string p0, "ANY_EDGE"

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static restricted(IIII)Lcom/graphhopper/routing/DirectionResolverResult;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/DirectionResolverResult;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/graphhopper/routing/DirectionResolverResult;-><init>(IIII)V

    return-object v0
.end method

.method public static unrestricted()Lcom/graphhopper/routing/DirectionResolverResult;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/DirectionResolverResult;->UNRESTRICTED:Lcom/graphhopper/routing/DirectionResolverResult;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/graphhopper/routing/DirectionResolverResult;

    iget v2, p0, Lcom/graphhopper/routing/DirectionResolverResult;->inEdgeRight:I

    iget v3, p1, Lcom/graphhopper/routing/DirectionResolverResult;->inEdgeRight:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/graphhopper/routing/DirectionResolverResult;->outEdgeRight:I

    iget v3, p1, Lcom/graphhopper/routing/DirectionResolverResult;->outEdgeRight:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/graphhopper/routing/DirectionResolverResult;->inEdgeLeft:I

    iget v3, p1, Lcom/graphhopper/routing/DirectionResolverResult;->inEdgeLeft:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/graphhopper/routing/DirectionResolverResult;->outEdgeLeft:I

    iget p1, p1, Lcom/graphhopper/routing/DirectionResolverResult;->outEdgeLeft:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getInEdgeLeft()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/DirectionResolverResult;->inEdgeLeft:I

    return p0
.end method

.method public getInEdgeRight()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/DirectionResolverResult;->inEdgeRight:I

    return p0
.end method

.method public getOutEdgeLeft()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/DirectionResolverResult;->outEdgeLeft:I

    return p0
.end method

.method public getOutEdgeRight()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/DirectionResolverResult;->outEdgeRight:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/graphhopper/routing/DirectionResolverResult;->inEdgeRight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/graphhopper/routing/DirectionResolverResult;->outEdgeRight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/graphhopper/routing/DirectionResolverResult;->inEdgeLeft:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/graphhopper/routing/DirectionResolverResult;->outEdgeLeft:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isImpossible()Z
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/DirectionResolverResult;->IMPOSSIBLE:Lcom/graphhopper/routing/DirectionResolverResult;

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/DirectionResolverResult;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRestricted()Z
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/DirectionResolverResult;->UNRESTRICTED:Lcom/graphhopper/routing/DirectionResolverResult;

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/DirectionResolverResult;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/graphhopper/routing/DirectionResolverResult;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "unrestricted"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/routing/DirectionResolverResult;->isImpossible()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "impossible"

    return-object p0

    :cond_1
    iget v0, p0, Lcom/graphhopper/routing/DirectionResolverResult;->inEdgeRight:I

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/DirectionResolverResult;->pretty(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/graphhopper/routing/DirectionResolverResult;->outEdgeRight:I

    invoke-direct {p0, v1}, Lcom/graphhopper/routing/DirectionResolverResult;->pretty(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/graphhopper/routing/DirectionResolverResult;->inEdgeLeft:I

    invoke-direct {p0, v2}, Lcom/graphhopper/routing/DirectionResolverResult;->pretty(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/graphhopper/routing/DirectionResolverResult;->outEdgeLeft:I

    invoke-direct {p0, v3}, Lcom/graphhopper/routing/DirectionResolverResult;->pretty(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, ", out-edge-right: "

    const-string v4, ", in-edge-left: "

    const-string v5, "in-edge-right: "

    invoke-static {v5, v0, v3, v1, v4}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", out-edge-left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
