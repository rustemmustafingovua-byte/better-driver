.class public final synthetic Lb0/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/DirectedEdgeFilter;
.implements Lcom/graphhopper/routing/util/EdgeFilter;
.implements Lp5/c;
.implements Lcom/graphhopper/routing/weighting/custom/NameValidator;
.implements Lcom/graphhopper/storage/index/LocationIndexTree$EdgeCheck;
.implements Lq5/b;
.implements Lr0/c2;
.implements Lg3/j;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb0/b3;->l:I

    iput-object p2, p0, Lb0/b3;->m:Ljava/lang/Object;

    iput-object p3, p0, Lb0/b3;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Li9/a;)V
    .locals 1

    .line 2
    const/16 v0, 0xb

    iput v0, p0, Lb0/b3;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/b3;->m:Ljava/lang/Object;

    check-cast p2, Lj9/o;

    iput-object p2, p0, Lb0/b3;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 1

    iget-object v0, p0, Lb0/b3;->m:Ljava/lang/Object;

    check-cast v0, [I

    iget-object p0, p0, Lb0/b3;->n:Ljava/lang/Object;

    check-cast p0, [I

    invoke-static {v0, p0, p1, p2}, Lcom/graphhopper/util/ArrayUtil;->a([I[III)I

    move-result p0

    return p0
.end method

.method public accept(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 1

    .line 1
    iget v0, p0, Lb0/b3;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb0/b3;->m:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/routing/lm/LandmarkStorage;

    iget-object p0, p0, Lb0/b3;->n:Ljava/lang/Object;

    check-cast p0, Lb0/b3;

    invoke-static {v0, p0, p1}, Lcom/graphhopper/routing/lm/LandmarkStorage;->b(Lcom/graphhopper/routing/lm/LandmarkStorage;Lb0/b3;Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lb0/b3;->m:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iget-object p0, p0, Lb0/b3;->n:Ljava/lang/Object;

    check-cast p0, Lcom/carrotsearch/hppc/c0;

    invoke-static {v0, p0, p1}, Lcom/graphhopper/routing/lm/LandmarkStorage;->a(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/carrotsearch/hppc/c0;Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Lcom/graphhopper/util/EdgeIteratorState;Z)Z
    .locals 1

    .line 2
    iget v0, p0, Lb0/b3;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb0/b3;->m:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/routing/querygraph/QueryGraph;

    iget-object p0, p0, Lb0/b3;->n:Ljava/lang/Object;

    check-cast p0, Lcom/graphhopper/routing/util/DirectedEdgeFilter;

    invoke-static {v0, p0, p1, p2}, Lcom/graphhopper/routing/ViaRouting;->a(Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/routing/util/DirectedEdgeFilter;Lcom/graphhopper/util/EdgeIteratorState;Z)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lb0/b3;->m:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/routing/Router$Solver;

    iget-object p0, p0, Lb0/b3;->n:Ljava/lang/Object;

    check-cast p0, Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-static {v0, p0, p1, p2}, Lcom/graphhopper/routing/Router$Solver;->a(Lcom/graphhopper/routing/Router$Solver;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public apply(I)V
    .locals 1

    iget-object v0, p0, Lb0/b3;->m:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

    iget-object p0, p0, Lb0/b3;->n:Ljava/lang/Object;

    check-cast p0, Lcom/graphhopper/util/EdgeIteratorState;

    invoke-static {v0, p0, p1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->f(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;Lcom/graphhopper/util/EdgeIteratorState;I)V

    return-void
.end method

.method public b()Z
    .locals 7

    iget-object v0, p0, Lb0/b3;->m:Ljava/lang/Object;

    check-cast v0, Lx/o0;

    iget-object p0, p0, Lb0/b3;->n:Ljava/lang/Object;

    check-cast p0, Lx/c;

    iget-boolean v1, v0, Lx/o0;->q:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lx/o0;->j()V

    iget-wide v1, v0, Lx/o0;->o:J

    iget-wide v3, p0, Lx/c;->a:J

    invoke-static {v1, v2, v3, v4}, Lx/c;->a(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lx/c;->a:J

    iget-wide v3, v0, Lx/o0;->n:J

    iget-wide v5, p0, Lx/c;->b:J

    add-long/2addr v1, v5

    invoke-virtual {v0, v3, v4, v1, v2}, Lx/o0;->i(JJ)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, v0, Lx/o0;->q:Z

    :cond_0
    iget-boolean p0, v0, Lx/o0;->q:Z

    return p0
.end method

.method public c(Lg3/i;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lb0/b3;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb0/b3;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lb0/b3;->n:Ljava/lang/Object;

    check-cast p0, Lj9/o;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v2, Lx4/n;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lx4/n;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    iget-object v3, p1, Lg3/i;->c:Lg3/n;

    if-eqz v3, :cond_0

    sget-object v4, Lx4/k;->l:Lx4/k;

    invoke-virtual {v3, v2, v4}, Lg3/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    new-instance v2, Landroidx/fragment/app/e;

    invoke-direct {v2, v1, p1, p0}, Landroidx/fragment/app/e;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lg3/i;Li9/a;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lb0/b3;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lb0/b3;->n:Ljava/lang/Object;

    check-cast p0, Lh5/m;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v2, Lx4/n;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lx4/n;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    iget-object v3, p1, Lg3/i;->c:Lg3/n;

    if-eqz v3, :cond_1

    sget-object v4, Lx4/k;->l:Lx4/k;

    invoke-virtual {v3, v2, v4}, Lg3/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    new-instance v2, Landroidx/fragment/app/e;

    const/16 v3, 0x13

    invoke-direct {v2, v1, p1, p0, v3}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p0, "setForegroundAsync"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public check(IDILcom/graphhopper/storage/index/Snap$Position;)V
    .locals 8

    iget-object v0, p0, Lb0/b3;->m:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/graphhopper/storage/index/Snap;

    iget-object p0, p0, Lb0/b3;->n:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lcom/graphhopper/util/EdgeIteratorState;

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/graphhopper/storage/index/LocationIndexTree;->b(Lcom/graphhopper/storage/index/Snap;Lcom/graphhopper/util/EdgeIteratorState;IDILcom/graphhopper/storage/index/Snap$Position;)V

    return-void
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lb0/b3;->m:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/routing/weighting/custom/NameValidator;

    iget-object p0, p0, Lb0/b3;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-static {v0, p0, p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->d(Lcom/graphhopper/routing/weighting/custom/NameValidator;Ljava/util/LinkedHashSet;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
