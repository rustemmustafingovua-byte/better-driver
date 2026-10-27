.class public Lcom/graphhopper/routing/util/parsers/RestrictionSetter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;,
        Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;
    }
.end annotation


# static fields
.field private static final EMPTY_SET:Lcom/carrotsearch/hppc/r0;


# instance fields
.field private final baseGraph:Lcom/graphhopper/storage/BaseGraph;

.field private final turnRestrictionEncs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/ev/BooleanEncodedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [I

    new-instance v2, Lcom/carrotsearch/hppc/c0;

    invoke-direct {v2, v0, v0}, Lcom/carrotsearch/hppc/c0;-><init>(II)V

    invoke-virtual {v2, v1}, Lcom/carrotsearch/hppc/c0;->addAll([I)I

    sput-object v2, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->EMPTY_SET:Lcom/carrotsearch/hppc/r0;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/ev/BooleanEncodedValue;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->turnRestrictionEncs:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->lambda$setRestrictions$1(IIII)V

    return-void
.end method

.method public static synthetic b(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;)Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->convertToInternal(Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;)Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;Lcom/carrotsearch/hppc/r0;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->lambda$setRestrictions$4(Lcom/carrotsearch/hppc/r0;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;I)V

    return-void
.end method

.method private containsAnotherRestriction(Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;Lcom/carrotsearch/hppc/o0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;",
            "Lcom/carrotsearch/hppc/o0;",
            ")Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->b(Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;)Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/a;

    iget v0, v0, Ln5/a;->b:I

    invoke-interface {p2, v0}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->b(Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;)Lcom/carrotsearch/hppc/x;

    move-result-object v1

    invoke-static {p1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->b(Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;)Lcom/carrotsearch/hppc/x;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->isSubsetOf(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Equal restrictions should have already been filtered out here!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private convertToInternal(Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;)Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;
    .locals 5

    iget-object v0, p1, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;->edges:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v2

    invoke-static {p1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;->a(Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v1

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdgeKey()I

    move-result v1

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0, v3}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v0

    invoke-static {p1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;->a(Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getReverseEdgeKey()I

    move-result p0

    new-instance v0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;

    invoke-static {p1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;->a(Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p1}, Lcom/carrotsearch/hppc/x;->from([I)Lcom/carrotsearch/hppc/x;

    move-result-object p1

    filled-new-array {v1, p0}, [I

    move-result-object p0

    invoke-static {p0}, Lcom/carrotsearch/hppc/x;->from([I)Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;-><init>(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)V

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->findNodesAndEdgeKeys(Lcom/graphhopper/storage/BaseGraph;Lcom/carrotsearch/hppc/x;)Lcom/graphhopper/reader/osm/Pair;

    move-result-object p0

    iget-object p1, p0, Lcom/graphhopper/reader/osm/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/carrotsearch/hppc/x;

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/carrotsearch/hppc/x;->remove(I)I

    new-instance p1, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;

    iget-object v0, p0, Lcom/graphhopper/reader/osm/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/carrotsearch/hppc/x;

    iget-object p0, p0, Lcom/graphhopper/reader/osm/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/carrotsearch/hppc/x;

    invoke-direct {p1, v0, p0}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;-><init>(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid restriction, there must be at least two edges"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static copyEncBits(Lcom/carrotsearch/hppc/j;)Lcom/carrotsearch/hppc/j;
    .locals 3

    new-instance v0, Lcom/carrotsearch/hppc/j;

    iget-object v1, p0, Lcom/carrotsearch/hppc/j;->l:[J

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iget p0, p0, Lcom/carrotsearch/hppc/j;->m:I

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/carrotsearch/hppc/j;->l:[J

    iput p0, v0, Lcom/carrotsearch/hppc/j;->m:I

    return-object v0
.end method

.method public static createViaEdgeRestriction(Lcom/carrotsearch/hppc/x;)Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;
    .locals 3

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;-><init>(Lcom/carrotsearch/hppc/x;II)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p0

    const-string v1, "Via-edge restrictions must have at least three edges, but got: "

    invoke-static {p0, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createViaNodeRestriction(III)Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;

    filled-new-array {p0, p2}, [I

    move-result-object p0

    invoke-static {p0}, Lcom/carrotsearch/hppc/x;->from([I)Lcom/carrotsearch/hppc/x;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {v0, p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;-><init>(Lcom/carrotsearch/hppc/x;II)V

    return-object v0
.end method

.method public static synthetic d(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;Lcom/graphhopper/routing/ev/BooleanEncodedValue;ILcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->lambda$setRestrictions$3(Lcom/graphhopper/routing/ev/BooleanEncodedValue;ILcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;I)V

    return-void
.end method

.method private disableRedundantRestrictions(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;",
            ">;",
            "Ljava/util/List<",
            "Lcom/carrotsearch/hppc/j;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->turnRestrictionEncs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move v3, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/carrotsearch/hppc/j;

    invoke-virtual {v4, v1}, Lcom/carrotsearch/hppc/j;->g(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/carrotsearch/hppc/j;

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Lcom/carrotsearch/hppc/j;->f(J)V

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/carrotsearch/hppc/p0;

    invoke-direct {v2}, Lcom/carrotsearch/hppc/p0;-><init>()V

    move v3, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/carrotsearch/hppc/j;

    invoke-virtual {v4, v1}, Lcom/carrotsearch/hppc/j;->g(I)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_5

    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;

    invoke-static {v4}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->b(Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;)Lcom/carrotsearch/hppc/x;

    move-result-object v5

    invoke-virtual {v5}, Lcom/carrotsearch/hppc/x;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln5/a;

    iget v7, v6, Ln5/a;->b:I

    invoke-virtual {v2, v7}, Lcom/carrotsearch/hppc/n0;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v6, Ln5/a;->b:I

    invoke-virtual {v2, v7, v6, v8}, Lcom/carrotsearch/hppc/n0;->indexInsert(IILjava/lang/Object;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v2, v7}, Lcom/carrotsearch/hppc/n0;->indexGet(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move v3, v0

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/carrotsearch/hppc/j;

    invoke-virtual {v4, v1}, Lcom/carrotsearch/hppc/j;->g(I)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_7

    :cond_7
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;

    invoke-direct {p0, v4, v2}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->containsAnotherRestriction(Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;Lcom/carrotsearch/hppc/o0;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/carrotsearch/hppc/j;

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Lcom/carrotsearch/hppc/j;->f(J)V

    :cond_8
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public static synthetic e(Lcom/graphhopper/storage/BaseGraph;I)Lcom/graphhopper/util/PointList;
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->lambda$edgesToLocationString$6(Lcom/graphhopper/storage/BaseGraph;I)Lcom/graphhopper/util/PointList;

    move-result-object p0

    return-object p0
.end method

.method private static edgesToLocationString(Lcom/graphhopper/storage/BaseGraph;Lcom/carrotsearch/hppc/x;)Ljava/lang/String;
    .locals 2

    iget-object v0, p1, Lcom/carrotsearch/hppc/x;->buffer:[I

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p1

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->stream([III)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lcom/graphhopper/routing/util/parsers/f;

    invoke-direct {v0, p0}, Lcom/graphhopper/routing/util/parsers/f;-><init>(Lcom/graphhopper/storage/BaseGraph;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lwa/h;->w(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;Lcom/graphhopper/util/EdgeIteratorState;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->lambda$setRestrictions$0(Lcom/graphhopper/util/EdgeIteratorState;I)V

    return-void
.end method

.method private findEdgeChain(Lcom/graphhopper/storage/BaseGraph;Lcom/carrotsearch/hppc/x;ILcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Lcom/carrotsearch/hppc/x;",
            "I",
            "Lcom/carrotsearch/hppc/x;",
            "Lcom/carrotsearch/hppc/x;",
            "Ljava/util/List<",
            "Lcom/graphhopper/reader/osm/Pair<",
            "Lcom/carrotsearch/hppc/x;",
            "Lcom/carrotsearch/hppc/x;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    if-ne p3, v0, :cond_0

    new-instance p0, Lcom/graphhopper/reader/osm/Pair;

    new-instance p1, Lcom/carrotsearch/hppc/x;

    invoke-direct {p1, p4}, Lcom/carrotsearch/hppc/x;-><init>(Lcom/carrotsearch/hppc/x;)V

    new-instance p2, Lcom/carrotsearch/hppc/x;

    invoke-direct {p2, p5}, Lcom/carrotsearch/hppc/x;-><init>(Lcom/carrotsearch/hppc/x;)V

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/reader/osm/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p2, p3}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    if-eqz p3, :cond_1

    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v1

    invoke-virtual {p4}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p4, v2}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v1

    invoke-virtual {p4, v1}, Lcom/carrotsearch/hppc/x;->add(I)V

    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdgeKey()I

    move-result v1

    invoke-virtual {p5, v1}, Lcom/carrotsearch/hppc/x;->add(I)V

    add-int/lit8 v5, p3, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->findEdgeChain(Lcom/graphhopper/storage/BaseGraph;Lcom/carrotsearch/hppc/x;ILcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Ljava/util/List;)V

    iget v1, p4, Lcom/carrotsearch/hppc/x;->elementsCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p4, Lcom/carrotsearch/hppc/x;->elementsCount:I

    iget v1, p5, Lcom/carrotsearch/hppc/x;->elementsCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p5, Lcom/carrotsearch/hppc/x;->elementsCount:I

    :cond_2
    if-eqz p3, :cond_4

    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v1

    invoke-virtual {p4}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p4, v2}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_0
    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v1

    invoke-virtual {p4, v1}, Lcom/carrotsearch/hppc/x;->add(I)V

    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getReverseEdgeKey()I

    move-result v0

    invoke-virtual {p5, v0}, Lcom/carrotsearch/hppc/x;->add(I)V

    add-int/lit8 p3, p3, 0x1

    invoke-direct/range {p0 .. p6}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->findEdgeChain(Lcom/graphhopper/storage/BaseGraph;Lcom/carrotsearch/hppc/x;ILcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Ljava/util/List;)V

    iget p0, p4, Lcom/carrotsearch/hppc/x;->elementsCount:I

    add-int/lit8 p0, p0, -0x1

    iput p0, p4, Lcom/carrotsearch/hppc/x;->elementsCount:I

    iget p0, p5, Lcom/carrotsearch/hppc/x;->elementsCount:I

    add-int/lit8 p0, p0, -0x1

    iput p0, p5, Lcom/carrotsearch/hppc/x;->elementsCount:I

    return-void
.end method

.method private findNodesAndEdgeKeys(Lcom/graphhopper/storage/BaseGraph;Lcom/carrotsearch/hppc/x;)Lcom/graphhopper/reader/osm/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Lcom/carrotsearch/hppc/x;",
            ")",
            "Lcom/graphhopper/reader/osm/Pair<",
            "Lcom/carrotsearch/hppc/x;",
            "Lcom/carrotsearch/hppc/x;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    new-array v0, v7, [I

    invoke-static {v0}, Lcom/carrotsearch/hppc/x;->from([I)Lcom/carrotsearch/hppc/x;

    move-result-object v4

    new-array v0, v7, [I

    invoke-static {v0}, Lcom/carrotsearch/hppc/x;->from([I)Lcom/carrotsearch/hppc/x;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->findEdgeChain(Lcom/graphhopper/storage/BaseGraph;Lcom/carrotsearch/hppc/x;ILcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Ljava/util/List;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const-string p1, " "

    if-nez p0, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p2, 0x1

    if-gt p0, p2, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/reader/osm/Pair;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->edgesToLocationString(Lcom/graphhopper/storage/BaseGraph;Lcom/carrotsearch/hppc/x;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ambiguous edge restriction: "

    invoke-static {v1, p2, p1, v0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->edgesToLocationString(Lcom/graphhopper/storage/BaseGraph;Lcom/carrotsearch/hppc/x;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnected edges: "

    invoke-static {v1, p2, p1, v0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic g(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;Lcom/graphhopper/routing/ev/BooleanEncodedValue;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->lambda$setRestrictions$5(Lcom/graphhopper/routing/ev/BooleanEncodedValue;III)V

    return-void
.end method

.method private static isSubsetOf(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v3

    sub-int/2addr v1, v3

    if-gt v0, v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v3

    add-int v4, v0, v1

    invoke-virtual {p1, v4}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v2
.end method

.method private static synthetic lambda$edgesToLocationString$6(Lcom/graphhopper/storage/BaseGraph;I)Lcom/graphhopper/util/PointList;
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setRestrictions$0(Lcom/graphhopper/util/EdgeIteratorState;I)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->turnRestrictionEncs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-direct {p0, v1, p1, p2}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->restrictTurnsBetweenEdges(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setRestrictions$1(IIII)V
    .locals 1

    invoke-static {p1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result p1

    if-eq p4, p1, :cond_0

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->turnRestrictionEncs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->restrictTurn(Lcom/graphhopper/routing/ev/BooleanEncodedValue;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$setRestrictions$2(Lcom/carrotsearch/hppc/o0;JI)V
    .locals 3

    sget-object v0, Lcom/graphhopper/util/BitUtil;->LITTLE:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {v0, p2, p3}, Lcom/graphhopper/util/BitUtil;->getIntLow(J)I

    move-result v1

    invoke-virtual {v0, p2, p3}, Lcom/graphhopper/util/BitUtil;->getIntHigh(J)I

    move-result p2

    invoke-static {p2}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result p3

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0, p2}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorStateForKey(I)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p2

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result p2

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->turnRestrictionEncs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-direct {p0, v2, v1, p2, p3}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->restrictTurn(Lcom/graphhopper/routing/ev/BooleanEncodedValue;III)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p3}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carrotsearch/hppc/r0;

    new-instance p3, Lcom/graphhopper/routing/util/parsers/e;

    invoke-direct {p3, p0, p4, v1, p2}, Lcom/graphhopper/routing/util/parsers/e;-><init>(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;III)V

    invoke-interface {p1, p3}, Lcom/carrotsearch/hppc/z;->forEach(Lp5/c;)Lp5/c;

    return-void
.end method

.method private synthetic lambda$setRestrictions$3(Lcom/graphhopper/routing/ev/BooleanEncodedValue;ILcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;I)V
    .locals 1

    invoke-virtual {p3}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->getViaNodes()Lcom/carrotsearch/hppc/x;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->restrictTurn(Lcom/graphhopper/routing/ev/BooleanEncodedValue;III)V

    return-void
.end method

.method private synthetic lambda$setRestrictions$4(Lcom/carrotsearch/hppc/r0;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;I)V
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/util/parsers/d;

    invoke-direct {v0, p0, p2, p4, p3}, Lcom/graphhopper/routing/util/parsers/d;-><init>(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;Lcom/graphhopper/routing/ev/BooleanEncodedValue;ILcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;)V

    invoke-interface {p1, v0}, Lcom/carrotsearch/hppc/z;->forEach(Lp5/c;)Lp5/c;

    return-void
.end method

.method private synthetic lambda$setRestrictions$5(Lcom/graphhopper/routing/ev/BooleanEncodedValue;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->restrictTurn(Lcom/graphhopper/routing/ev/BooleanEncodedValue;III)V

    return-void
.end method

.method private restrictTurn(Lcom/graphhopper/routing/ev/BooleanEncodedValue;III)V
    .locals 6

    if-ltz p2, :cond_0

    if-ltz p4, :cond_0

    if-ltz p3, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getTurnCostStorage()Lcom/graphhopper/storage/TurnCostStorage;

    move-result-object v0

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/storage/TurnCostStorage;->set(Lcom/graphhopper/routing/ev/BooleanEncodedValue;IIIZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "from/toEdge and viaNode must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private restrictTurnsBetweenEdges(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;I)V
    .locals 2

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v0

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->restrictTurn(Lcom/graphhopper/routing/ev/BooleanEncodedValue;III)V

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v0

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->restrictTurn(Lcom/graphhopper/routing/ev/BooleanEncodedValue;III)V

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v0

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->restrictTurn(Lcom/graphhopper/routing/ev/BooleanEncodedValue;III)V

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v0

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result p2

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->restrictTurn(Lcom/graphhopper/routing/ev/BooleanEncodedValue;III)V

    return-void
.end method


# virtual methods
.method public setRestrictions(Ljava/util/List;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;",
            ">;",
            "Ljava/util/List<",
            "Lcom/carrotsearch/hppc/j;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_11

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/graphhopper/i;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0}, Lcom/graphhopper/i;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v2}, Lwa/h;->w(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->disableRedundantRestrictions(Ljava/util/List;Ljava/util/List;)V

    new-instance v3, Lcom/carrotsearch/hppc/y0;

    invoke-direct {v3}, Lcom/carrotsearch/hppc/y0;-><init>()V

    new-instance v4, Lcom/carrotsearch/hppc/p0;

    invoke-direct {v4}, Lcom/carrotsearch/hppc/p0;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x3

    const-wide/16 v10, 0x1

    const/4 v12, 0x1

    if-ge v6, v7, :cond_7

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/carrotsearch/hppc/j;

    invoke-virtual {v7}, Lcom/carrotsearch/hppc/j;->a()J

    move-result-wide v13

    cmp-long v7, v13, v10

    if-gez v7, :cond_1

    :cond_0
    :goto_1
    move/from16 v18, v6

    goto/16 :goto_6

    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;

    invoke-virtual {v7}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->getEdgeKeys()Lcom/carrotsearch/hppc/x;

    move-result-object v10

    invoke-virtual {v10}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v10

    if-ge v10, v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->getFromEdge()I

    move-result v9

    move v10, v12

    :goto_2
    invoke-virtual {v7}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->getEdgeKeys()Lcom/carrotsearch/hppc/x;

    move-result-object v11

    invoke-virtual {v11}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v11

    sub-int/2addr v11, v12

    if-ge v10, v11, :cond_0

    invoke-virtual {v7}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->getEdgeKeys()Lcom/carrotsearch/hppc/x;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v11

    sget-object v13, Lcom/graphhopper/util/BitUtil;->LITTLE:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {v13, v9, v11}, Lcom/graphhopper/util/BitUtil;->toLong(II)J

    move-result-wide v13

    invoke-virtual {v3, v13, v14}, Lcom/carrotsearch/hppc/y0;->g(J)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v3, v13, v14}, Lcom/carrotsearch/hppc/y0;->j(J)I

    move-result v9

    move/from16 v18, v6

    move/from16 v17, v12

    goto :goto_5

    :cond_3
    invoke-static {v11}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v9

    iget-object v15, v0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v15, v9, v12}, Lcom/graphhopper/storage/BaseGraph;->copyEdge(IZ)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v15

    invoke-interface {v15}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v5

    invoke-interface {v4, v9}, Lcom/carrotsearch/hppc/k0;->containsKey(I)Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v4, v9}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v12

    move-object/from16 v12, v16

    check-cast v12, Lcom/carrotsearch/hppc/r0;

    new-instance v8, Lb0/b3;

    move/from16 v18, v6

    const/4 v6, 0x5

    invoke-direct {v8, v6, v0, v15}, Lb0/b3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v12, v8}, Lcom/carrotsearch/hppc/z;->forEach(Lp5/c;)Lp5/c;

    invoke-interface {v12, v5}, Lcom/carrotsearch/hppc/r0;->add(I)Z

    goto :goto_3

    :cond_4
    move/from16 v18, v6

    move/from16 v17, v12

    new-instance v6, Lcom/carrotsearch/hppc/q0;

    const/4 v8, 0x4

    invoke-direct {v6, v8}, Lcom/carrotsearch/hppc/q0;-><init>(I)V

    invoke-interface {v6, v5}, Lcom/carrotsearch/hppc/r0;->add(I)Z

    invoke-interface {v4, v9, v6}, Lcom/carrotsearch/hppc/o0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v5, v0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->turnRestrictionEncs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-direct {v0, v6, v15, v9}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->restrictTurnsBetweenEdges(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;I)V

    goto :goto_4

    :cond_5
    invoke-interface {v15}, Lcom/graphhopper/util/EdgeIteratorState;->getEdgeKey()I

    move-result v5

    iget-object v6, v0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v6, v11}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorStateForKey(I)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v6

    sget-object v8, Lcom/graphhopper/util/EdgeIteratorState;->REVERSE_STATE:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v6, v8}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v5}, Lcom/graphhopper/util/GHUtility;->reverseEdgeKey(I)I

    move-result v5

    :cond_6
    move v9, v5

    invoke-virtual {v3, v9, v13, v14}, Lcom/carrotsearch/hppc/y0;->o(IJ)I

    :goto_5
    invoke-static {v7}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->a(Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;)Lcom/carrotsearch/hppc/x;

    move-result-object v5

    invoke-virtual {v5, v10, v9}, Lcom/carrotsearch/hppc/x;->set(II)I

    invoke-static {v9}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v9

    add-int/lit8 v10, v10, 0x1

    move/from16 v12, v17

    move/from16 v6, v18

    goto/16 :goto_2

    :goto_6
    add-int/lit8 v6, v18, 0x1

    goto/16 :goto_0

    :cond_7
    move/from16 v17, v12

    iget-object v5, v3, Lcom/carrotsearch/hppc/y0;->l:[J

    iget-object v6, v3, Lcom/carrotsearch/hppc/y0;->m:[I

    iget-boolean v7, v3, Lcom/carrotsearch/hppc/y0;->q:Z

    const-wide/16 v12, 0x0

    if-eqz v7, :cond_8

    iget v7, v3, Lcom/carrotsearch/hppc/y0;->o:I

    add-int/lit8 v7, v7, 0x1

    aget v7, v6, v7

    invoke-direct {v0, v4, v12, v13, v7}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->lambda$setRestrictions$2(Lcom/carrotsearch/hppc/o0;JI)V

    :cond_8
    iget v3, v3, Lcom/carrotsearch/hppc/y0;->o:I

    const/4 v7, 0x0

    :goto_7
    if-gt v7, v3, :cond_a

    aget-wide v14, v5, v7

    cmp-long v8, v14, v12

    if-eqz v8, :cond_9

    aget v8, v6, v7

    invoke-direct {v0, v4, v14, v15, v8}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->lambda$setRestrictions$2(Lcom/carrotsearch/hppc/o0;JI)V

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_10

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/carrotsearch/hppc/j;

    invoke-virtual {v5}, Lcom/carrotsearch/hppc/j;->a()J

    move-result-wide v5

    cmp-long v5, v5, v10

    if-gez v5, :cond_b

    const/4 v8, 0x4

    goto/16 :goto_b

    :cond_b
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;

    invoke-virtual {v5}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->getEdgeKeys()Lcom/carrotsearch/hppc/x;

    move-result-object v6

    invoke-virtual {v6}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v6

    if-ge v6, v9, :cond_d

    invoke-virtual {v5}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->getFromEdge()I

    move-result v6

    new-instance v7, Lcom/carrotsearch/hppc/q0;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lcom/carrotsearch/hppc/q0;-><init>(I)V

    invoke-interface {v4, v6, v7}, Lcom/carrotsearch/hppc/o0;->getOrDefault(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/carrotsearch/hppc/r0;

    invoke-virtual {v5}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->getFromEdge()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/carrotsearch/hppc/r0;->add(I)Z

    invoke-virtual {v5}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->getToEdge()I

    move-result v7

    new-instance v12, Lcom/carrotsearch/hppc/q0;

    invoke-direct {v12, v8}, Lcom/carrotsearch/hppc/q0;-><init>(I)V

    invoke-interface {v4, v7, v12}, Lcom/carrotsearch/hppc/o0;->getOrDefault(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/carrotsearch/hppc/r0;

    invoke-virtual {v5}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->getToEdge()I

    move-result v12

    invoke-interface {v7, v12}, Lcom/carrotsearch/hppc/r0;->add(I)Z

    const/4 v12, 0x0

    :goto_9
    iget-object v13, v0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->turnRestrictionEncs:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_f

    iget-object v13, v0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->turnRestrictionEncs:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/carrotsearch/hppc/j;

    invoke-virtual {v14, v12}, Lcom/carrotsearch/hppc/j;->g(I)Z

    move-result v14

    if-eqz v14, :cond_c

    new-instance v14, Lcom/graphhopper/routing/util/parsers/b;

    invoke-direct {v14, v0, v7, v13, v5}, Lcom/graphhopper/routing/util/parsers/b;-><init>(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;Lcom/carrotsearch/hppc/r0;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;)V

    invoke-interface {v6, v14}, Lcom/carrotsearch/hppc/z;->forEach(Lp5/c;)Lp5/c;

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_d
    const/4 v8, 0x4

    invoke-virtual {v5}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->getActualEdgeKeys()Lcom/carrotsearch/hppc/x;

    move-result-object v6

    invoke-virtual {v5}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->getActualEdgeKeys()Lcom/carrotsearch/hppc/x;

    move-result-object v7

    invoke-virtual {v7}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v6

    invoke-static {v6}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v7

    iget-object v12, v0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v12, v6}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorStateForKey(I)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v6

    invoke-interface {v6}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v6

    const/4 v12, 0x0

    :goto_a
    iget-object v13, v0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->turnRestrictionEncs:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_f

    iget-object v13, v0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->turnRestrictionEncs:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/carrotsearch/hppc/j;

    invoke-virtual {v14, v12}, Lcom/carrotsearch/hppc/j;->g(I)Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-virtual {v5}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->getToEdge()I

    move-result v14

    invoke-direct {v0, v13, v7, v6, v14}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->restrictTurn(Lcom/graphhopper/routing/ev/BooleanEncodedValue;III)V

    invoke-virtual {v5}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->getToEdge()I

    move-result v14

    sget-object v15, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->EMPTY_SET:Lcom/carrotsearch/hppc/r0;

    invoke-interface {v4, v14, v15}, Lcom/carrotsearch/hppc/o0;->getOrDefault(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/carrotsearch/hppc/r0;

    new-instance v15, Lcom/graphhopper/routing/util/parsers/c;

    invoke-direct {v15, v0, v13, v7, v6}, Lcom/graphhopper/routing/util/parsers/c;-><init>(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;Lcom/graphhopper/routing/ev/BooleanEncodedValue;II)V

    invoke-interface {v14, v15}, Lcom/carrotsearch/hppc/z;->forEach(Lp5/c;)Lp5/c;

    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_f
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_10
    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "There must be as many encBits as restrictions. Got: "

    const-string v4, " and "

    invoke-static {v3, v1, v4, v2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
