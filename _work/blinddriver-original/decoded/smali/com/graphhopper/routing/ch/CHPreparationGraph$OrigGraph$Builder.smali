.class Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final fromNodes:Lcom/carrotsearch/hppc/x;

.field private final keysAndBwdFlags:Lcom/carrotsearch/hppc/x;

.field private maxFrom:I

.field private maxTo:I

.field private final toNodesAndFwdFlags:Lcom/carrotsearch/hppc/x;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/carrotsearch/hppc/x;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->fromNodes:Lcom/carrotsearch/hppc/x;

    new-instance v0, Lcom/carrotsearch/hppc/x;

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->toNodesAndFwdFlags:Lcom/carrotsearch/hppc/x;

    new-instance v0, Lcom/carrotsearch/hppc/x;

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->keysAndBwdFlags:Lcom/carrotsearch/hppc/x;

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->maxFrom:I

    iput v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->maxTo:I

    return-void
.end method

.method private buildFirstEdgesByNode()Lcom/carrotsearch/hppc/x;
    .locals 6

    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->maxFrom:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->fromNodes:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/graphhopper/util/ArrayUtil;->zero(I)Lcom/carrotsearch/hppc/x;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, v3, v2}, Lcom/carrotsearch/hppc/x;->set(II)I

    return-object v0

    :cond_0
    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    :goto_1
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->fromNodes:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v5, v4}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v5

    if-ge v5, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3, v4}, Lcom/carrotsearch/hppc/x;->set(II)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1, v2}, Lcom/carrotsearch/hppc/x;->set(II)I

    return-object v0
.end method

.method private static getIntWithFlag(IZ)I
    .locals 2

    if-ltz p0, :cond_1

    shl-int/lit8 p0, p0, 0x1

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Maximum node or edge key exceeded: "

    const-string v1, ", max: 2147483647"

    invoke-static {p0, v0, v1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addEdge(IIIZZ)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->fromNodes:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v0, p1}, Lcom/carrotsearch/hppc/x;->add(I)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->toNodesAndFwdFlags:Lcom/carrotsearch/hppc/x;

    invoke-static {p2, p4}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->getIntWithFlag(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/carrotsearch/hppc/x;->add(I)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->keysAndBwdFlags:Lcom/carrotsearch/hppc/x;

    const/4 v1, 0x0

    invoke-static {p3, v1}, Lcom/graphhopper/util/GHUtility;->createEdgeKey(IZ)I

    move-result v1

    invoke-static {v1, p5}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->getIntWithFlag(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/carrotsearch/hppc/x;->add(I)V

    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->maxFrom:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->maxFrom:I

    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->maxTo:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->maxTo:I

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->fromNodes:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v0, p2}, Lcom/carrotsearch/hppc/x;->add(I)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->toNodesAndFwdFlags:Lcom/carrotsearch/hppc/x;

    invoke-static {p1, p5}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->getIntWithFlag(IZ)I

    move-result p5

    invoke-virtual {v0, p5}, Lcom/carrotsearch/hppc/x;->add(I)V

    iget-object p5, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->keysAndBwdFlags:Lcom/carrotsearch/hppc/x;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/graphhopper/util/GHUtility;->createEdgeKey(IZ)I

    move-result p3

    invoke-static {p3, p4}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->getIntWithFlag(IZ)I

    move-result p3

    invoke-virtual {p5, p3}, Lcom/carrotsearch/hppc/x;->add(I)V

    iget p3, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->maxFrom:I

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->maxFrom:I

    iget p2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->maxTo:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->maxTo:I

    return-void
.end method

.method public build()Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->fromNodes:Lcom/carrotsearch/hppc/x;

    iget v1, v0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    new-instance v2, Lq5/a;

    iget-object v0, v0, Lcom/carrotsearch/hppc/x;->buffer:[I

    invoke-direct {v2, v0}, Lq5/a;-><init>([I)V

    invoke-static {v1, v2}, Lc6/o;->U(ILq5/b;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->fromNodes:Lcom/carrotsearch/hppc/x;

    invoke-static {v1, v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->b(Lcom/carrotsearch/hppc/x;[I)V

    iget-object v1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->toNodesAndFwdFlags:Lcom/carrotsearch/hppc/x;

    invoke-static {v1, v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->b(Lcom/carrotsearch/hppc/x;[I)V

    iget-object v1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->keysAndBwdFlags:Lcom/carrotsearch/hppc/x;

    invoke-static {v1, v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->b(Lcom/carrotsearch/hppc/x;[I)V

    new-instance v0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->buildFirstEdgesByNode()Lcom/carrotsearch/hppc/x;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->toNodesAndFwdFlags:Lcom/carrotsearch/hppc/x;

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->keysAndBwdFlags:Lcom/carrotsearch/hppc/x;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;-><init>(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;I)V

    return-object v0
.end method
