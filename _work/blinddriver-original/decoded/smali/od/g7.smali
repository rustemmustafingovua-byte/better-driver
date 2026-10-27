.class public final synthetic Lod/g7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lu9/t;

.field public final synthetic n:Landroid/content/Context;

.field public final synthetic o:Li9/a;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Lr0/u0;

.field public final synthetic s:Lr0/u0;

.field public final synthetic t:Lr0/u0;

.field public final synthetic u:Lr0/u0;

.field public final synthetic v:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lu9/t;Landroid/content/Context;Li9/a;Ljava/util/List;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;I)V
    .locals 0

    iput p11, p0, Lod/g7;->l:I

    iput-object p1, p0, Lod/g7;->m:Lu9/t;

    iput-object p2, p0, Lod/g7;->n:Landroid/content/Context;

    iput-object p3, p0, Lod/g7;->o:Li9/a;

    iput-object p4, p0, Lod/g7;->p:Ljava/lang/Object;

    iput-object p5, p0, Lod/g7;->q:Lr0/u0;

    iput-object p6, p0, Lod/g7;->r:Lr0/u0;

    iput-object p7, p0, Lod/g7;->s:Lr0/u0;

    iput-object p8, p0, Lod/g7;->t:Lr0/u0;

    iput-object p9, p0, Lod/g7;->u:Lr0/u0;

    iput-object p10, p0, Lod/g7;->v:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lod/g7;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v9, p1

    check-cast v9, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v12, 0x1

    if-eq v2, v3, :cond_0

    move v2, v12

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/2addr v1, v12

    invoke-virtual {v9, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lu/h;->a:Lu/n;

    sget-object v2, Lf1/c;->u:Lf1/i;

    invoke-static {v1, v2, v9, v4}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v1

    iget-wide v2, v9, Lr0/q;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v9}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    sget-object v5, Lf1/o;->a:Lf1/o;

    invoke-static {v5, v9}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    invoke-virtual {v9}, Lr0/q;->e0()V

    iget-boolean v7, v9, Lr0/q;->S:Z

    if-eqz v7, :cond_1

    invoke-virtual {v9, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Lr0/q;->o0()V

    :goto_1
    sget-object v6, Le2/g;->f:Le2/e;

    invoke-static {v6, v1, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v3, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Le2/g;->g:Le2/e;

    invoke-static {v9, v1, v2}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v1, Le2/g;->h:Le2/d;

    invoke-static {v9, v1}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v5, v9}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v14, v0, Lod/g7;->m:Lu9/t;

    invoke-virtual {v9, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, Lod/g7;->n:Landroid/content/Context;

    invoke-virtual {v9, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    iget-object v3, v0, Lod/g7;->o:Li9/a;

    invoke-virtual {v9, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    iget-object v15, v0, Lod/g7;->q:Lr0/u0;

    if-nez v1, :cond_3

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v5, v1, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v18, v3

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v13, Lod/h7;

    const/16 v22, 0x0

    iget-object v1, v0, Lod/g7;->r:Lr0/u0;

    iget-object v5, v0, Lod/g7;->s:Lr0/u0;

    iget-object v6, v0, Lod/g7;->t:Lr0/u0;

    iget-object v7, v0, Lod/g7;->u:Lr0/u0;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v13 .. v22}, Lod/h7;-><init>(Lu9/t;Lr0/u0;Lr0/u0;Landroid/content/Context;Li9/a;Lr0/u0;Lr0/u0;Lr0/u0;I)V

    invoke-virtual {v9, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v5, v13

    :goto_3
    move-object v2, v5

    check-cast v2, Li9/a;

    invoke-interface {v15}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lod/g7;->v:Lr0/u0;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/net/PricesDto;

    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lua/nav/net/PricesDto;->b:Z

    if-ne v1, v12, :cond_4

    iget-object v0, v0, Lod/g7;->p:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move v4, v12

    :cond_4
    sget-object v8, Lod/m;->K1:Lz0/d;

    const/high16 v10, 0x30000000

    const/16 v11, 0x1fa

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v11}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    sget-object v8, Lod/m;->L1:Lz0/d;

    const/16 v11, 0x1fe

    const/4 v4, 0x0

    move-object/from16 v2, v18

    invoke-static/range {v2 .. v11}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-virtual {v9, v12}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Lr0/q;->W()V

    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v8, p1

    check-cast v8, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_6

    move v2, v5

    goto :goto_5

    :cond_6
    move v2, v4

    :goto_5
    and-int/2addr v1, v5

    invoke-virtual {v8, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v10, v0, Lod/g7;->m:Lu9/t;

    invoke-virtual {v8, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    iget-object v13, v0, Lod/g7;->n:Landroid/content/Context;

    invoke-virtual {v8, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v14, v0, Lod/g7;->o:Li9/a;

    invoke-virtual {v8, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    iget-object v11, v0, Lod/g7;->q:Lr0/u0;

    if-nez v1, :cond_7

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v2, v1, :cond_8

    :cond_7
    new-instance v9, Lod/h7;

    const/16 v18, 0x1

    iget-object v12, v0, Lod/g7;->r:Lr0/u0;

    iget-object v15, v0, Lod/g7;->s:Lr0/u0;

    iget-object v1, v0, Lod/g7;->t:Lr0/u0;

    iget-object v2, v0, Lod/g7;->u:Lr0/u0;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v9 .. v18}, Lod/h7;-><init>(Lu9/t;Lr0/u0;Lr0/u0;Landroid/content/Context;Li9/a;Lr0/u0;Lr0/u0;Lr0/u0;I)V

    invoke-virtual {v8, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v2, v9

    :cond_8
    move-object v1, v2

    check-cast v1, Li9/a;

    invoke-interface {v11}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lod/g7;->v:Lr0/u0;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/net/PricesDto;

    if-eqz v2, :cond_9

    iget-boolean v2, v2, Lua/nav/net/PricesDto;->b:Z

    if-ne v2, v5, :cond_9

    iget-object v0, v0, Lod/g7;->p:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    move v3, v5

    goto :goto_6

    :cond_9
    move v3, v4

    :goto_6
    sget-object v7, Lod/m;->J1:Lz0/d;

    const/high16 v9, 0x30000000

    const/16 v10, 0x1fa

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v10}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_7

    :cond_a
    invoke-virtual {v8}, Lr0/q;->W()V

    :goto_7
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
