.class public final synthetic Lod/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lad/a0;Li9/c;Li9/a;Li9/a;Li9/a;Lf1/r;I)V
    .locals 0

    .line 1
    const/4 p7, 0x2

    iput p7, p0, Lod/z0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/z0;->n:Ljava/lang/Object;

    iput-object p2, p0, Lod/z0;->m:Ljava/lang/Object;

    iput-object p3, p0, Lod/z0;->r:Ljava/lang/Object;

    iput-object p4, p0, Lod/z0;->o:Ljava/lang/Object;

    iput-object p5, p0, Lod/z0;->p:Ljava/lang/Object;

    iput-object p6, p0, Lod/z0;->q:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Li9/a;Lu9/t;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 1

    .line 2
    const/4 v0, 0x4

    iput v0, p0, Lod/z0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/z0;->r:Ljava/lang/Object;

    iput-object p2, p0, Lod/z0;->n:Ljava/lang/Object;

    iput-object p3, p0, Lod/z0;->m:Ljava/lang/Object;

    iput-object p4, p0, Lod/z0;->o:Ljava/lang/Object;

    iput-object p5, p0, Lod/z0;->p:Ljava/lang/Object;

    iput-object p6, p0, Lod/z0;->q:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Li9/c;Li9/c;Li9/c;Li9/c;Li9/a;I)V
    .locals 0

    .line 3
    const/4 p7, 0x0

    iput p7, p0, Lod/z0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/z0;->n:Ljava/lang/Object;

    iput-object p2, p0, Lod/z0;->m:Ljava/lang/Object;

    iput-object p3, p0, Lod/z0;->o:Ljava/lang/Object;

    iput-object p4, p0, Lod/z0;->p:Ljava/lang/Object;

    iput-object p5, p0, Lod/z0;->q:Ljava/lang/Object;

    iput-object p6, p0, Lod/z0;->r:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lsc/q0;Lua/nav/c;Landroid/content/Context;Lf2/k2;Li9/f;Li9/c;)V
    .locals 1

    .line 4
    const/4 v0, 0x1

    iput v0, p0, Lod/z0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/z0;->n:Ljava/lang/Object;

    iput-object p2, p0, Lod/z0;->o:Ljava/lang/Object;

    iput-object p3, p0, Lod/z0;->p:Ljava/lang/Object;

    iput-object p4, p0, Lod/z0;->q:Ljava/lang/Object;

    iput-object p5, p0, Lod/z0;->r:Ljava/lang/Object;

    iput-object p6, p0, Lod/z0;->m:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lu9/t;Landroid/content/Context;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 1

    .line 5
    const/4 v0, 0x3

    iput v0, p0, Lod/z0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/z0;->n:Ljava/lang/Object;

    iput-object p2, p0, Lod/z0;->m:Ljava/lang/Object;

    iput-object p3, p0, Lod/z0;->o:Ljava/lang/Object;

    iput-object p4, p0, Lod/z0;->p:Ljava/lang/Object;

    iput-object p5, p0, Lod/z0;->q:Ljava/lang/Object;

    iput-object p6, p0, Lod/z0;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    iget v1, v0, Lod/z0;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lod/z0;->r:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Li9/a;

    iget-object v1, v0, Lod/z0;->n:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lu9/t;

    iget-object v1, v0, Lod/z0;->m:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lr0/u0;

    iget-object v1, v0, Lod/z0;->o:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lr0/u0;

    iget-object v1, v0, Lod/z0;->p:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lr0/u0;

    iget-object v0, v0, Lod/z0;->q:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lr0/u0;

    move-object/from16 v9, p1

    check-cast v9, Lr0/q;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    const/4 v3, 0x2

    const/4 v10, 0x1

    const/4 v12, 0x0

    if-eq v1, v3, :cond_0

    move v1, v10

    goto :goto_0

    :cond_0
    move v1, v12

    :goto_0
    and-int/2addr v0, v10

    invoke-virtual {v9, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x5cf8d0f0

    invoke-virtual {v9, v0}, Lr0/q;->b0(I)V

    sget-object v8, Lod/m;->R1:Lz0/d;

    const/high16 v10, 0x30000000

    const/16 v11, 0x1fe

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v11}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-virtual {v9, v12}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_1
    const v0, 0x42229c61

    invoke-virtual {v9, v0}, Lr0/q;->b0(I)V

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    move v11, v10

    goto :goto_1

    :cond_2
    move v11, v12

    :goto_1
    invoke-virtual {v9, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-ne v1, v0, :cond_4

    :cond_3
    new-instance v3, Lod/f1;

    invoke-direct/range {v3 .. v8}, Lod/f1;-><init>(Lu9/t;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V

    invoke-virtual {v9, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v1, v3

    :cond_4
    check-cast v1, Li9/a;

    sget-object v15, Lod/m;->S1:Lz0/d;

    const/high16 v17, 0x30000000

    const/16 v18, 0x1fa

    const/4 v10, 0x0

    move v0, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v9

    move-object v9, v1

    invoke-static/range {v9 .. v18}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    move-object/from16 v9, v16

    invoke-virtual {v9, v0}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Lr0/q;->W()V

    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lod/z0;->n:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lu9/t;

    iget-object v1, v0, Lod/z0;->m:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/content/Context;

    iget-object v1, v0, Lod/z0;->o:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lr0/u0;

    iget-object v1, v0, Lod/z0;->p:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lr0/u0;

    iget-object v1, v0, Lod/z0;->q:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lr0/u0;

    iget-object v0, v0, Lod/z0;->r:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lr0/u0;

    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v2, v9, :cond_6

    move v2, v10

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    and-int/2addr v1, v10

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_7

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v2, v1, :cond_8

    :cond_7
    new-instance v2, Lc1/a;

    const/4 v9, 0x3

    invoke-direct/range {v2 .. v9}, Lc1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    move-object v9, v2

    check-cast v9, Li9/a;

    sget-object v15, Lod/m;->s1:Lz0/d;

    const/high16 v17, 0x30000000

    const/16 v18, 0x1fe

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v9 .. v18}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_4

    :cond_9
    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lr0/q;->W()V

    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-object v1, v0, Lod/z0;->n:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lad/a0;

    iget-object v1, v0, Lod/z0;->m:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Li9/c;

    iget-object v1, v0, Lod/z0;->r:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Li9/a;

    iget-object v1, v0, Lod/z0;->o:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Li9/a;

    iget-object v1, v0, Lod/z0;->p:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Li9/a;

    iget-object v0, v0, Lod/z0;->q:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lf1/r;

    move-object/from16 v8, p1

    check-cast v8, Lr0/q;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xc01

    invoke-static {v0}, Lr0/r;->H(I)I

    move-result v9

    invoke-static/range {v2 .. v9}, Lod/e4;->k(Lad/a0;Li9/c;Li9/a;Li9/a;Li9/a;Lf1/r;Lr0/q;I)V

    :goto_5
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_2
    iget-object v1, v0, Lod/z0;->n:Ljava/lang/Object;

    check-cast v1, Lsc/q0;

    iget-object v2, v0, Lod/z0;->o:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lua/nav/c;

    iget-object v2, v0, Lod/z0;->p:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroid/content/Context;

    iget-object v2, v0, Lod/z0;->q:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lf2/k2;

    iget-object v2, v0, Lod/z0;->r:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Li9/f;

    iget-object v0, v0, Lod/z0;->m:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Li9/c;

    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eq v3, v11, :cond_a

    move v3, v9

    goto :goto_6

    :cond_a
    move v3, v10

    :goto_6
    and-int/2addr v2, v9

    invoke-virtual {v0, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-boolean v2, v1, Lsc/q0;->j:Z

    sget-object v3, Lf1/o;->a:Lf1/o;

    if-eqz v2, :cond_b

    const v1, -0xbe84e7d

    invoke-virtual {v0, v1}, Lr0/q;->b0(I)V

    const/16 v1, 0x12

    int-to-float v1, v1

    invoke-static {v3, v1}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v9

    int-to-float v12, v11

    const/16 v18, 0x186

    const/16 v19, 0x3a

    move v1, v10

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v0

    move v0, v1

    invoke-static/range {v9 .. v19}, Lo0/u2;->a(Lf1/r;JFJIFLr0/q;II)V

    move-object/from16 v2, v17

    invoke-virtual {v2, v0}, Lr0/q;->q(Z)V

    goto/16 :goto_e

    :cond_b
    move-object v2, v0

    move v0, v10

    iget-object v10, v1, Lsc/q0;->h:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xf

    const/4 v12, 0x0

    const/16 v13, 0x8

    sget-object v14, Lr0/m;->a:Lr0/e;

    if-lez v10, :cond_e

    const v1, -0xbe83fc1

    invoke-virtual {v2, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v2, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_c

    if-ne v4, v14, :cond_d

    :cond_c
    new-instance v4, Lod/d1;

    const/4 v1, 0x2

    invoke-direct {v4, v5, v1}, Lod/d1;-><init>(Lua/nav/c;I)V

    invoke-virtual {v2, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    check-cast v4, Li9/a;

    invoke-static {v3, v0, v12, v4, v11}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v1

    int-to-float v3, v13

    invoke-static {v1, v3}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v10

    const/16 v30, 0x0

    const v31, 0x1fffc

    const-string v9, "\u2715"

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x6

    move-object/from16 v28, v2

    invoke-static/range {v9 .. v31}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-virtual {v2, v0}, Lr0/q;->q(Z)V

    goto/16 :goto_e

    :cond_e
    const v10, -0xbe830a8

    invoke-virtual {v2, v10}, Lr0/q;->b0(I)V

    sget-object v10, Lf1/c;->v:Lf1/i;

    sget-object v15, Lu/h;->a:Lu/n;

    const/16 v9, 0x30

    invoke-static {v15, v10, v2, v9}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v9

    iget-wide v11, v2, Lr0/q;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v3, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v12

    sget-object v15, Le2/h;->b:Le2/g;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Le2/g;->b:Le2/f;

    invoke-virtual {v2}, Lr0/q;->e0()V

    iget-boolean v13, v2, Lr0/q;->S:Z

    if-eqz v13, :cond_f

    invoke-virtual {v2, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_7

    :cond_f
    invoke-virtual {v2}, Lr0/q;->o0()V

    :goto_7
    sget-object v13, Le2/g;->f:Le2/e;

    invoke-static {v13, v9, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v9, Le2/g;->e:Le2/e;

    invoke-static {v9, v11, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Le2/g;->g:Le2/e;

    invoke-static {v2, v9, v10}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v9, Le2/g;->h:Le2/d;

    invoke-static {v2, v9}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v9, Le2/g;->d:Le2/e;

    invoke-static {v9, v12, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v9, v5, Lua/nav/c;->B:Lua/nav/routing/b;

    invoke-virtual {v9}, Lua/nav/routing/b;->a()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_15

    const v9, -0x4baadc34

    invoke-virtual {v2, v9}, Lr0/q;->b0(I)V

    iget-object v1, v1, Lsc/q0;->i:Ljava/util/List;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_9

    :cond_10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/geocoding/Place;

    iget-object v9, v9, Lua/nav/geocoding/Place;->b:Ljava/lang/String;

    const-string v10, "\u041d\u0435\u0449\u043e\u0434\u0430\u0432\u043d\u043e"

    invoke-static {v9, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v1, "\u25b4"

    :goto_8
    move-object v9, v1

    goto :goto_a

    :cond_12
    :goto_9
    const-string v1, "\u25be"

    goto :goto_8

    :goto_a
    invoke-virtual {v2, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v1, :cond_13

    if-ne v10, v14, :cond_14

    :cond_13
    new-instance v10, Lod/d1;

    const/4 v1, 0x3

    invoke-direct {v10, v5, v1}, Lod/d1;-><init>(Lua/nav/c;I)V

    invoke-virtual {v2, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_14
    check-cast v10, Li9/a;

    const/16 v1, 0xf

    const/4 v11, 0x0

    invoke-static {v3, v0, v11, v10, v1}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v10

    const/16 v12, 0x8

    int-to-float v13, v12

    invoke-static {v10, v13}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v10

    const/16 v13, 0x14

    invoke-static {v13}, La/a;->k(I)J

    move-result-wide v15

    const/16 v30, 0x0

    const v31, 0x1fff4

    move-object v13, v11

    move/from16 v17, v12

    const-wide/16 v11, 0x0

    move-object/from16 v18, v14

    move-wide/from16 v34, v15

    move-object/from16 v16, v13

    move-wide/from16 v13, v34

    const/4 v15, 0x0

    move-object/from16 v19, v16

    const/16 v16, 0x0

    move/from16 v20, v17

    move-object/from16 v21, v18

    const-wide/16 v17, 0x0

    move-object/from16 v22, v19

    const/16 v19, 0x0

    move/from16 v23, v20

    move-object/from16 v24, v21

    const-wide/16 v20, 0x0

    move-object/from16 v25, v22

    const/16 v22, 0x0

    move/from16 v26, v23

    const/16 v23, 0x0

    move-object/from16 v27, v24

    const/16 v24, 0x0

    move-object/from16 v28, v25

    const/16 v25, 0x0

    move/from16 v29, v26

    const/16 v26, 0x0

    move-object/from16 v32, v27

    const/16 v27, 0x0

    move/from16 v33, v29

    const/16 v29, 0xc00

    move-object/from16 v1, v28

    move-object/from16 v28, v2

    move-object v2, v1

    move-object/from16 v1, v32

    invoke-static/range {v9 .. v31}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v28

    invoke-virtual {v10, v0}, Lr0/q;->q(Z)V

    goto :goto_b

    :cond_15
    move-object v10, v2

    move-object v1, v14

    const/4 v2, 0x0

    const v9, -0x4ba722b6

    invoke-virtual {v10, v9}, Lr0/q;->b0(I)V

    invoke-virtual {v10, v0}, Lr0/q;->q(Z)V

    :goto_b
    invoke-virtual {v10, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v10, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v9, v11

    invoke-virtual {v10, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v9, v11

    invoke-virtual {v10, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v9, v11

    invoke-virtual {v10, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v9, v11

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v9, :cond_16

    if-ne v11, v1, :cond_17

    :cond_16
    move-object v1, v3

    goto :goto_c

    :cond_17
    move-object v1, v3

    goto :goto_d

    :goto_c
    new-instance v3, Lod/f1;

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lod/f1;-><init>(Ljava/lang/Object;Lua/nav/c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v11, v3

    :goto_d
    check-cast v11, Li9/a;

    const/16 v3, 0xf

    invoke-static {v1, v0, v2, v11, v3}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v1

    const/16 v12, 0x8

    int-to-float v2, v12

    invoke-static {v1, v2}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    const/16 v30, 0x0

    const v31, 0x1fffc

    const-string v9, "\ud83d\udccb"

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x6

    move-object/from16 v28, v10

    move-object v10, v1

    invoke-static/range {v9 .. v31}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v2, v28

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lr0/q;->q(Z)V

    invoke-virtual {v2, v0}, Lr0/q;->q(Z)V

    goto :goto_e

    :cond_18
    move-object v2, v0

    invoke-virtual {v2}, Lr0/q;->W()V

    :goto_e
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_3
    iget-object v1, v0, Lod/z0;->n:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    iget-object v1, v0, Lod/z0;->m:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Li9/c;

    iget-object v1, v0, Lod/z0;->o:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Li9/c;

    iget-object v1, v0, Lod/z0;->p:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Li9/c;

    iget-object v1, v0, Lod/z0;->q:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Li9/c;

    iget-object v0, v0, Lod/z0;->r:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Li9/a;

    move-object/from16 v8, p1

    check-cast v8, Lr0/q;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x30181

    invoke-static {v0}, Lr0/r;->H(I)I

    move-result v9

    invoke-static/range {v2 .. v9}, Lod/g3;->S(Ljava/util/List;Li9/c;Li9/c;Li9/c;Li9/c;Li9/a;Lr0/q;I)V

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
