.class public final Lp/c;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:Z

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lr/p1;

.field public final synthetic p:J

.field public final synthetic q:Ls/i;

.field public final synthetic r:Lp/g;


# direct methods
.method public constructor <init>(Lr/p1;JLs/i;Lp/g;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lp/c;->o:Lr/p1;

    iput-wide p2, p0, Lp/c;->p:J

    iput-object p4, p0, Lp/c;->q:Ls/i;

    iput-object p5, p0, Lp/c;->r:Lp/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 7

    new-instance v0, Lp/c;

    iget-object v4, p0, Lp/c;->q:Ls/i;

    iget-object v5, p0, Lp/c;->r:Lp/g;

    iget-object v1, p0, Lp/c;->o:Lr/p1;

    iget-wide v2, p0, Lp/c;->p:J

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lp/c;-><init>(Lr/p1;JLs/i;Lp/g;Ly8/c;)V

    iput-object p1, v0, Lp/c;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/c;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/c;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lp/c;->m:I

    sget-object v3, Lt8/z;->a:Lt8/z;

    iget-object v5, v0, Lp/c;->r:Lp/g;

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    iget-object v4, v0, Lp/c;->q:Ls/i;

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v15, :cond_4

    if-eq v2, v14, :cond_3

    if-eq v2, v13, :cond_2

    if-eq v2, v12, :cond_1

    if-ne v2, v11, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v12, v6

    goto/16 :goto_7

    :cond_2
    iget-object v2, v0, Lp/c;->n:Ljava/lang/Object;

    check-cast v2, Ls/l;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v11, v4

    move-object v12, v6

    goto/16 :goto_4

    :cond_3
    iget-boolean v2, v0, Lp/c;->l:Z

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v11, v4

    move-object v12, v6

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lp/c;->n:Ljava/lang/Object;

    check-cast v2, Lu9/v0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v11, v4

    move-object v12, v6

    move-object/from16 v4, p1

    goto :goto_1

    :cond_5
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lp/c;->n:Ljava/lang/Object;

    check-cast v2, Lu9/t;

    move-object v7, v4

    new-instance v4, Lb0/m2;

    const/4 v9, 0x0

    const/4 v10, 0x4

    move-object/from16 v16, v6

    move-object v8, v7

    iget-wide v6, v0, Lp/c;->p:J

    move-object/from16 v17, v8

    iget-object v8, v0, Lp/c;->q:Ls/i;

    move-object/from16 v12, v16

    move-object/from16 v11, v17

    invoke-direct/range {v4 .. v10}, Lb0/m2;-><init>(Ljava/lang/Object;JLjava/lang/Object;Ly8/c;I)V

    invoke-static {v2, v12, v12, v4, v13}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v2

    iput-object v2, v0, Lp/c;->n:Ljava/lang/Object;

    iput v15, v0, Lp/c;->m:I

    iget-object v4, v0, Lp/c;->o:Lr/p1;

    invoke-virtual {v4, v0}, Lr/p1;->f(La9/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    goto :goto_6

    :cond_6
    :goto_1
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2}, Lu9/v0;->b()Z

    move-result v6

    if-eqz v6, :cond_a

    iput-object v12, v0, Lp/c;->n:Ljava/lang/Object;

    iput-boolean v4, v0, Lp/c;->l:Z

    iput v14, v0, Lp/c;->m:I

    invoke-interface {v2, v12}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    invoke-interface {v2, v0}, Lu9/v0;->e(La9/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto :goto_2

    :cond_7
    move-object v2, v3

    :goto_2
    if-ne v2, v1, :cond_8

    goto :goto_6

    :cond_8
    move v2, v4

    :goto_3
    if-eqz v2, :cond_c

    new-instance v2, Ls/k;

    iget-wide v6, v0, Lp/c;->p:J

    invoke-direct {v2, v6, v7}, Ls/k;-><init>(J)V

    new-instance v4, Ls/l;

    invoke-direct {v4, v2}, Ls/l;-><init>(Ls/k;)V

    iput-object v4, v0, Lp/c;->n:Ljava/lang/Object;

    iput v13, v0, Lp/c;->m:I

    invoke-virtual {v11, v2, v0}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9

    goto :goto_6

    :cond_9
    move-object v2, v4

    :goto_4
    iput-object v12, v0, Lp/c;->n:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v0, Lp/c;->m:I

    invoke-virtual {v11, v2, v0}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    goto :goto_6

    :cond_a
    iget-object v2, v5, Lp/g;->M:Ls/k;

    if-eqz v2, :cond_c

    if-eqz v4, :cond_b

    new-instance v4, Ls/l;

    invoke-direct {v4, v2}, Ls/l;-><init>(Ls/k;)V

    goto :goto_5

    :cond_b
    new-instance v4, Ls/j;

    invoke-direct {v4, v2}, Ls/j;-><init>(Ls/k;)V

    :goto_5
    iput-object v12, v0, Lp/c;->n:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, v0, Lp/c;->m:I

    invoke-virtual {v11, v4, v0}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    :goto_6
    return-object v1

    :cond_c
    :goto_7
    iput-object v12, v5, Lp/g;->M:Ls/k;

    return-object v3
.end method
