.class public final Lp/q1;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:Lca/a;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Lp/r1;

.field public p:I

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lp/n1;

.field public final synthetic s:Lp/r1;

.field public final synthetic t:La9/i;

.field public final synthetic u:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lp/n1;Lp/r1;Li9/e;Ljava/lang/Object;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lp/q1;->r:Lp/n1;

    iput-object p2, p0, Lp/q1;->s:Lp/r1;

    check-cast p3, La9/i;

    iput-object p3, p0, Lp/q1;->t:La9/i;

    iput-object p4, p0, Lp/q1;->u:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 6

    new-instance v0, Lp/q1;

    iget-object v3, p0, Lp/q1;->t:La9/i;

    iget-object v4, p0, Lp/q1;->u:Ljava/lang/Object;

    iget-object v1, p0, Lp/q1;->r:Lp/n1;

    iget-object v2, p0, Lp/q1;->s:Lp/r1;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lp/q1;-><init>(Lp/n1;Lp/r1;Li9/e;Ljava/lang/Object;Ly8/c;)V

    iput-object p1, v0, Lp/q1;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/q1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/q1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/q1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lp/q1;->p:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lp/q1;->m:Ljava/lang/Object;

    check-cast v0, Lp/r1;

    iget-object v1, p0, Lp/q1;->l:Lca/a;

    iget-object p0, p0, Lp/q1;->q:Ljava/lang/Object;

    check-cast p0, Lp/p1;

    :try_start_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lp/q1;->o:Lp/r1;

    iget-object v3, p0, Lp/q1;->n:Ljava/lang/Object;

    iget-object v5, p0, Lp/q1;->m:Ljava/lang/Object;

    check-cast v5, Li9/e;

    iget-object v6, p0, Lp/q1;->l:Lca/a;

    iget-object v7, p0, Lp/q1;->q:Ljava/lang/Object;

    check-cast v7, Lp/p1;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    move-object p1, v6

    move-object v6, v5

    move-object v5, p1

    move-object p1, v1

    move-object v1, v7

    goto :goto_0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lp/q1;->q:Ljava/lang/Object;

    check-cast p1, Lu9/t;

    new-instance v1, Lp/p1;

    invoke-interface {p1}, Lu9/t;->C()Ly8/h;

    move-result-object p1

    sget-object v5, Lu9/q;->m:Lu9/q;

    invoke-interface {p1, v5}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast p1, Lu9/v0;

    iget-object v5, p0, Lp/q1;->r:Lp/n1;

    invoke-direct {v1, v5, p1}, Lp/p1;-><init>(Lp/n1;Lu9/v0;)V

    iget-object p1, p0, Lp/q1;->s:Lp/r1;

    invoke-static {p1, v1}, Lp/r1;->a(Lp/r1;Lp/p1;)V

    iget-object v5, p1, Lp/r1;->b:Lca/c;

    iput-object v1, p0, Lp/q1;->q:Ljava/lang/Object;

    iput-object v5, p0, Lp/q1;->l:Lca/a;

    iget-object v6, p0, Lp/q1;->t:La9/i;

    iput-object v6, p0, Lp/q1;->m:Ljava/lang/Object;

    iget-object v7, p0, Lp/q1;->u:Ljava/lang/Object;

    iput-object v7, p0, Lp/q1;->n:Ljava/lang/Object;

    iput-object p1, p0, Lp/q1;->o:Lp/r1;

    iput v3, p0, Lp/q1;->p:I

    invoke-virtual {v5, p0}, Lca/c;->d(La9/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v7

    :goto_0
    :try_start_1
    iput-object v1, p0, Lp/q1;->q:Ljava/lang/Object;

    iput-object v5, p0, Lp/q1;->l:Lca/a;

    iput-object p1, p0, Lp/q1;->m:Ljava/lang/Object;

    iput-object v4, p0, Lp/q1;->n:Ljava/lang/Object;

    iput-object v4, p0, Lp/q1;->o:Lp/r1;

    iput v2, p0, Lp/q1;->p:I

    invoke-interface {v6, v3, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, p0

    move-object p0, v1

    move-object v1, v5

    :goto_2
    :try_start_2
    iget-object v0, v0, Lp/r1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_5
    invoke-virtual {v0, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v2, p0, :cond_5

    :goto_3
    check-cast v1, Lca/c;

    invoke-virtual {v1, v4}, Lca/c;->f(Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception p0

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v1

    move-object v1, v5

    :goto_4
    :try_start_3
    iget-object v0, v0, Lp/r1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_5
    invoke-virtual {v0, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_7

    goto :goto_5

    :cond_7
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_6
    check-cast v1, Lca/c;

    invoke-virtual {v1, v4}, Lca/c;->f(Ljava/lang/Object;)V

    throw p0
.end method
