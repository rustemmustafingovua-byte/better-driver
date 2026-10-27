.class public final synthetic Ln/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;ILi9/c;Li9/a;Li9/a;Lf1/r;I)V
    .locals 0

    .line 1
    const/4 p7, 0x1

    iput p7, p0, Ln/j1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/j1;->n:Ljava/lang/Object;

    iput p2, p0, Ln/j1;->m:I

    iput-object p3, p0, Ln/j1;->o:Ljava/lang/Object;

    iput-object p4, p0, Ln/j1;->p:Ljava/lang/Object;

    iput-object p5, p0, Ln/j1;->q:Ljava/lang/Object;

    iput-object p6, p0, Ln/j1;->r:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILi9/c;Li9/a;Li9/a;Li9/a;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Ln/j1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/j1;->n:Ljava/lang/Object;

    iput p2, p0, Ln/j1;->m:I

    iput-object p3, p0, Ln/j1;->o:Ljava/lang/Object;

    iput-object p4, p0, Ln/j1;->p:Ljava/lang/Object;

    iput-object p5, p0, Ln/j1;->q:Ljava/lang/Object;

    iput-object p6, p0, Ln/j1;->r:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ln/h1;Ln/d1;Ljava/lang/Object;Ljava/lang/Object;Ln/x;I)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Ln/j1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/j1;->n:Ljava/lang/Object;

    iput-object p2, p0, Ln/j1;->o:Ljava/lang/Object;

    iput-object p3, p0, Ln/j1;->p:Ljava/lang/Object;

    iput-object p4, p0, Ln/j1;->q:Ljava/lang/Object;

    iput-object p5, p0, Ln/j1;->r:Ljava/lang/Object;

    iput p6, p0, Ln/j1;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Ln/j1;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Ln/j1;->n:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Ln/j1;->o:Ljava/lang/Object;

    check-cast v2, Li9/c;

    iget-object v3, v0, Ln/j1;->p:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Li9/a;

    iget-object v3, v0, Ln/j1;->q:Ljava/lang/Object;

    check-cast v3, Li9/a;

    iget-object v5, v0, Ln/j1;->r:Ljava/lang/Object;

    move-object/from16 v16, v5

    check-cast v16, Li9/a;

    move-object/from16 v13, p1

    check-cast v13, Lr0/q;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v6, v5, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v6, v7, :cond_0

    move v6, v9

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    and-int/2addr v5, v9

    invoke-virtual {v13, v5, v6}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0xa

    int-to-float v5, v5

    sget-object v6, Lf1/o;->a:Lf1/o;

    invoke-static {v6, v5}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v7

    sget-object v10, Lu/h;->c:Lu/c;

    sget-object v11, Lf1/c;->x:Lf1/h;

    invoke-static {v10, v11, v13, v8}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v10

    iget-wide v11, v13, Lr0/q;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v13}, Lr0/q;->m()Lr0/j1;

    move-result-object v12

    invoke-static {v7, v13}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v7

    sget-object v14, Le2/h;->b:Le2/g;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Le2/g;->b:Le2/f;

    invoke-virtual {v13}, Lr0/q;->e0()V

    iget-boolean v15, v13, Lr0/q;->S:Z

    if-eqz v15, :cond_1

    invoke-virtual {v13, v14}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v13}, Lr0/q;->o0()V

    :goto_1
    sget-object v15, Le2/g;->f:Le2/e;

    invoke-static {v15, v10, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v10, Le2/g;->e:Le2/e;

    invoke-static {v10, v12, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Le2/g;->g:Le2/e;

    invoke-static {v13, v11, v12}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v11, Le2/g;->h:Le2/d;

    invoke-static {v13, v11}, Lr0/r;->A(Lr0/q;Li9/c;)V

    move/from16 p1, v5

    sget-object v5, Le2/g;->d:Le2/e;

    invoke-static {v5, v7, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v13, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    iget v0, v0, Ln/j1;->m:I

    invoke-virtual {v13, v0}, Lr0/q;->e(I)Z

    move-result v17

    or-int v7, v7, v17

    invoke-virtual {v13, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v17

    or-int v7, v7, v17

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_2

    sget-object v7, Lr0/m;->a:Lr0/e;

    if-ne v8, v7, :cond_3

    :cond_2
    new-instance v8, Lb0/j3;

    const/4 v7, 0x1

    invoke-direct {v8, v0, v7, v1, v2}, Lb0/j3;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v8}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v8, Li9/c;

    move-object v0, v15

    const/4 v15, 0x0

    move-object v1, v5

    const/4 v5, 0x0

    move-object v2, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v17, v14

    move-object v14, v13

    move-object v13, v8

    const/4 v8, 0x0

    move/from16 v18, v9

    const/4 v9, 0x0

    move-object/from16 v19, v10

    const/4 v10, 0x0

    move-object/from16 v20, v11

    const/4 v11, 0x0

    move-object/from16 v21, v12

    const/4 v12, 0x0

    move-object/from16 v18, v2

    move-object v2, v0

    move-object/from16 v0, v18

    move-object/from16 v22, v1

    move-object/from16 v18, v4

    move-object/from16 v1, v17

    move-object/from16 v4, v21

    move-object/from16 v17, v3

    move-object/from16 v3, v19

    invoke-static/range {v5 .. v15}, Lb6/g;->c(Lf1/r;Lw/p;Lu/s0;Lu/e;Lf1/i;Lr/k;ZLp/j;Li9/c;Lr0/q;I)V

    const/4 v5, 0x4

    int-to-float v5, v5

    invoke-static {v0, v5}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v5

    invoke-static {v5, v14}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v0, v5}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v5

    sget-object v6, Lu/h;->a:Lu/n;

    sget-object v7, Lf1/c;->u:Lf1/i;

    const/4 v8, 0x0

    invoke-static {v6, v7, v14, v8}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v6

    iget-wide v7, v14, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v14}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v5, v14}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    invoke-virtual {v14}, Lr0/q;->e0()V

    iget-boolean v9, v14, Lr0/q;->S:Z

    if-eqz v9, :cond_4

    invoke-virtual {v14, v1}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v14}, Lr0/q;->o0()V

    :goto_2
    invoke-static {v2, v6, v14}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v8, v14}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v1, v20

    invoke-static {v7, v14, v4, v14, v1}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v1, v22

    invoke-static {v1, v5, v14}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/16 v1, 0x8

    int-to-float v1, v1

    new-instance v11, Lu/s0;

    move/from16 v2, p1

    invoke-direct {v11, v1, v2, v1, v2}, Lu/s0;-><init>(FFFF)V

    const/high16 v1, 0x3fc00000    # 1.5f

    sget-object v2, Lu/z0;->a:Lu/z0;

    invoke-virtual {v2, v0, v1}, Lu/z0;->a(Lf1/r;F)Lf1/r;

    move-result-object v5

    sget-object v12, Lod/m;->P:Lz0/d;

    move-object v13, v14

    const/high16 v14, 0x30c00000

    const/16 v15, 0x17c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, v18

    invoke-static/range {v4 .. v15}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v14, v13

    const/4 v1, 0x6

    int-to-float v1, v1

    invoke-static {v0, v1}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v3

    invoke-static {v3, v14}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v2, v0, v3}, Lu/z0;->a(Lf1/r;F)Lf1/r;

    move-result-object v6

    sget-object v12, Lod/m;->Q:Lz0/d;

    const/high16 v14, 0x30c00000

    const/4 v7, 0x0

    move-object/from16 v5, v17

    invoke-static/range {v5 .. v15}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v14, v13

    invoke-static {v0, v1}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v14}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v2, v0, v1}, Lu/z0;->a(Lf1/r;F)Lf1/r;

    move-result-object v7

    sget-object v13, Lod/m;->R:Lz0/d;

    const/high16 v15, 0x30c00000

    move-object/from16 v6, v16

    const/16 v16, 0x17c

    const/4 v8, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    invoke-static/range {v6 .. v16}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Lr0/q;->q(Z)V

    invoke-virtual {v14, v0}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_5
    move-object v14, v13

    invoke-virtual {v14}, Lr0/q;->W()V

    :goto_3
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Ln/j1;->n:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    iget-object v1, v0, Ln/j1;->o:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Li9/c;

    iget-object v1, v0, Ln/j1;->p:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Li9/a;

    iget-object v1, v0, Ln/j1;->q:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Li9/a;

    iget-object v1, v0, Ln/j1;->r:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lf1/r;

    move-object/from16 v8, p1

    check-cast v8, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x30001

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v9

    iget v3, v0, Ln/j1;->m:I

    invoke-static/range {v2 .. v9}, Lod/e4;->p(Ljava/util/List;ILi9/c;Li9/a;Li9/a;Lf1/r;Lr0/q;I)V

    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-object v1, v0, Ln/j1;->n:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ln/h1;

    iget-object v1, v0, Ln/j1;->o:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ln/d1;

    iget-object v1, v0, Ln/j1;->r:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ln/x;

    move-object/from16 v7, p1

    check-cast v7, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    iget v1, v0, Ln/j1;->m:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v8

    iget-object v4, v0, Ln/j1;->p:Ljava/lang/Object;

    iget-object v5, v0, Ln/j1;->q:Ljava/lang/Object;

    invoke-static/range {v2 .. v8}, Ln/m1;->a(Ln/h1;Ln/d1;Ljava/lang/Object;Ljava/lang/Object;Ln/x;Lr0/q;I)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
