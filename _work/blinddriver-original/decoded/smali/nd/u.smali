.class public final synthetic Lnd/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lnd/i0;

.field public final synthetic m:Ljava/util/List;

.field public final synthetic n:Li9/c;

.field public final synthetic o:Li9/a;

.field public final synthetic p:Lr0/b1;

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Lr0/u0;

.field public final synthetic s:Lr0/a1;

.field public final synthetic t:Lnd/j0;

.field public final synthetic u:Li9/a;

.field public final synthetic v:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lnd/i0;Ljava/util/ArrayList;Li9/c;Li9/a;Lr0/b1;Lr0/u0;Lr0/u0;Lr0/a1;Lnd/j0;Li9/a;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/u;->l:Lnd/i0;

    iput-object p2, p0, Lnd/u;->m:Ljava/util/List;

    iput-object p3, p0, Lnd/u;->n:Li9/c;

    iput-object p4, p0, Lnd/u;->o:Li9/a;

    iput-object p5, p0, Lnd/u;->p:Lr0/b1;

    iput-object p6, p0, Lnd/u;->q:Lr0/u0;

    iput-object p7, p0, Lnd/u;->r:Lr0/u0;

    iput-object p8, p0, Lnd/u;->s:Lr0/a1;

    iput-object p9, p0, Lnd/u;->t:Lnd/j0;

    iput-object p10, p0, Lnd/u;->u:Li9/a;

    iput-object p11, p0, Lnd/u;->v:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    check-cast v4, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lf1/c;->p:Lf1/j;

    and-int/lit8 v3, v1, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v5, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    and-int/2addr v1, v7

    invoke-virtual {v4, v1, v3}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lu/b1;->c:Lu/v;

    sget-object v3, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v4, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/u0;

    iget-wide v8, v3, Lo0/u0;->n:J

    sget-object v3, Lm1/v;->b:Lm1/e0;

    invoke-static {v1, v8, v9, v3}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v5

    invoke-static {v5}, Lu/b;->u(Lf1/r;)Lf1/r;

    move-result-object v5

    invoke-static {v5}, Lu/b;->l(Lf1/r;)Lf1/r;

    move-result-object v5

    const-wide v8, 0xff101114L

    invoke-static {v8, v9}, Lm1/v;->d(J)J

    move-result-wide v8

    invoke-static {v5, v8, v9, v3}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v3

    sget-object v5, Lf1/c;->l:Lf1/j;

    invoke-static {v5, v6}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v5

    iget-wide v8, v4, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v4}, Lr0/q;->m()Lr0/j1;

    move-result-object v9

    invoke-static {v3, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    sget-object v10, Le2/h;->b:Le2/g;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Le2/g;->b:Le2/f;

    invoke-virtual {v4}, Lr0/q;->e0()V

    iget-boolean v11, v4, Lr0/q;->S:Z

    if-eqz v11, :cond_1

    invoke-virtual {v4, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_1
    sget-object v11, Le2/g;->f:Le2/e;

    invoke-static {v11, v5, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v5, Le2/g;->e:Le2/e;

    invoke-static {v5, v9, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Le2/g;->g:Le2/e;

    invoke-static {v4, v8, v9}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v8, Le2/g;->h:Le2/d;

    invoke-static {v4, v8}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v12, Le2/g;->d:Le2/e;

    invoke-static {v12, v3, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v14, v0, Lnd/u;->l:Lnd/i0;

    iget-object v3, v14, Lnd/i0;->a:Lnd/m;

    sget-object v13, Lnd/m;->o:Lnd/m;

    iget-object v15, v0, Lnd/u;->m:Ljava/util/List;

    iget-object v7, v0, Lnd/u;->n:Li9/c;

    iget-object v6, v0, Lnd/u;->o:Li9/a;

    move-object/from16 v21, v6

    iget-object v6, v0, Lnd/u;->p:Lr0/b1;

    move-object/from16 v16, v14

    sget-object v14, Lr0/m;->a:Lr0/e;

    if-ne v3, v13, :cond_5

    const v0, 0x7a6209a

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    const/16 v0, 0xe

    int-to-float v0, v0

    invoke-static {v1, v0}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v2

    move-object v3, v14

    iget-wide v13, v4, Lr0/q;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v4}, Lr0/q;->m()Lr0/j1;

    move-result-object v13

    invoke-static {v0, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    invoke-virtual {v4}, Lr0/q;->e0()V

    iget-boolean v14, v4, Lr0/q;->S:Z

    if-eqz v14, :cond_2

    invoke-virtual {v4, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_2
    invoke-static {v11, v2, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v5, v13, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v1, v4, v9, v4, v8}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v12, v0, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v6}, Lr0/b1;->g()I

    move-result v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v4, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_3

    if-ne v5, v3, :cond_4

    :cond_3
    new-instance v5, Lnd/n;

    const/4 v2, 0x1

    invoke-direct {v5, v7, v6, v2}, Lnd/n;-><init>(Li9/c;Lr0/b1;I)V

    invoke-virtual {v4, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    move-object v2, v5

    check-cast v2, Li9/a;

    const/4 v5, 0x0

    move-object/from16 v3, v21

    invoke-static/range {v0 .. v5}, Lnd/h0;->l(IILi9/a;Li9/a;Lr0/q;I)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lr0/q;->q(Z)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lr0/q;->q(Z)V

    :goto_3
    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    move-object v3, v14

    const v5, 0x7aa8a2a

    invoke-virtual {v4, v5}, Lr0/q;->b0(I)V

    invoke-static {v1}, Lj1/g;->c(Lf1/r;)Lf1/r;

    move-result-object v1

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    iget-object v8, v0, Lnd/u;->q:Lr0/u0;

    iget-object v9, v0, Lnd/u;->r:Lr0/u0;

    if-ne v5, v3, :cond_6

    new-instance v5, Lnd/d0;

    const/4 v3, 0x0

    invoke-direct {v5, v8, v9, v3}, Lnd/d0;-><init>(Lr0/u0;Lr0/u0;I)V

    invoke-virtual {v4, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v5, Li9/c;

    invoke-static {v1, v5}, Lc2/x;->m(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v1

    new-instance v13, Lnd/e0;

    move-object/from16 v19, v15

    iget-object v15, v0, Lnd/u;->s:Lr0/a1;

    iget-object v3, v0, Lnd/u;->t:Lnd/j0;

    iget-object v5, v0, Lnd/u;->u:Li9/a;

    iget-object v0, v0, Lnd/u;->v:Lr0/u0;

    move-object/from16 v24, v0

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v20, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v14, v16

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v24}, Lnd/e0;-><init>(Lnd/i0;Lr0/a1;Lnd/j0;Lr0/u0;Lr0/u0;Ljava/util/List;Li9/c;Li9/a;Li9/a;Lr0/b1;Lr0/u0;)V

    const v0, 0x12841d84

    invoke-static {v0, v13, v4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const/16 v3, 0xc36

    invoke-static {v1, v2, v0, v4, v3}, Lu/b;->a(Lf1/r;Lf1/j;Lz0/d;Lr0/q;I)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lr0/q;->q(Z)V

    goto :goto_3

    :goto_4
    invoke-virtual {v4, v0}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Lr0/q;->W()V

    :goto_5
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
