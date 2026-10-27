.class Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;
.implements Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/ch/CHPreparationGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrigEdgeIteratorImpl"
.end annotation


# instance fields
.field private endEdge:I

.field private final graph:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;

.field private index:I

.field private node:I

.field private final reverse:Z


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->graph:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;

    iput-boolean p2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->reverse:Z

    return-void
.end method

.method private hasAccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->reverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->graph:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;

    invoke-static {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;->c(Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;)Lcom/carrotsearch/hppc/x;

    move-result-object v0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->index:I

    invoke-virtual {v0, p0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->graph:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;

    invoke-static {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;->a(Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;)Lcom/carrotsearch/hppc/x;

    move-result-object v0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->index:I

    invoke-virtual {v0, p0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p0

    :goto_0
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAdjNode()I
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->graph:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;

    invoke-static {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;->a(Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;)Lcom/carrotsearch/hppc/x;

    move-result-object v0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->index:I

    invoke-virtual {v0, p0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getBaseNode()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->node:I

    return p0
.end method

.method public getOrigEdgeKeyFirst()I
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->graph:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;

    invoke-static {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;->c(Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;)Lcom/carrotsearch/hppc/x;

    move-result-object v0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->index:I

    invoke-virtual {v0, p0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getOrigEdgeKeyLast()I
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->getOrigEdgeKeyFirst()I

    move-result p0

    return p0
.end method

.method public next()Z
    .locals 3

    :cond_0
    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->index:I

    iget v2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->endEdge:I

    if-lt v0, v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->hasAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method public setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeIterator;
    .locals 1

    iput p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->node:I

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->graph:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;

    invoke-static {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;->b(Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;)Lcom/carrotsearch/hppc/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->index:I

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->graph:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;

    invoke-static {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;->b(Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;)Lcom/carrotsearch/hppc/x;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p1

    iput p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->endEdge:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->getBaseNode()I

    move-result v0

    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->getAdjNode()I

    move-result v1

    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;->getOrigEdgeKeyFirst()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
