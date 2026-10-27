.class public final synthetic Lb0/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Li9/e;Lz0/d;Lu/s0;I)V
    .locals 0

    .line 1
    const/4 p4, 0x4

    iput p4, p0, Lb0/k0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/k0;->m:Ljava/lang/Object;

    iput-object p2, p0, Lb0/k0;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb0/k0;->o:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lf1/r;II)V
    .locals 0

    .line 2
    iput p5, p0, Lb0/k0;->l:I

    iput-object p1, p0, Lb0/k0;->o:Ljava/lang/Object;

    iput-object p2, p0, Lb0/k0;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb0/k0;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, Lb0/k0;->l:I

    iput-object p1, p0, Lb0/k0;->m:Ljava/lang/Object;

    iput-object p2, p0, Lb0/k0;->o:Ljava/lang/Object;

    iput-object p3, p0, Lb0/k0;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lt8/e;II)V
    .locals 0

    .line 4
    iput p5, p0, Lb0/k0;->l:I

    iput-object p1, p0, Lb0/k0;->m:Ljava/lang/Object;

    iput-object p2, p0, Lb0/k0;->o:Ljava/lang/Object;

    iput-object p3, p0, Lb0/k0;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lb0/k0;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lb0/k0;->m:Ljava/lang/Object;

    check-cast v1, Lf1/r;

    iget-object v2, v0, Lb0/k0;->o:Ljava/lang/Object;

    check-cast v2, Lf1/j;

    iget-object v0, v0, Lb0/k0;->n:Ljava/lang/Object;

    check-cast v0, Lz0/d;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xc37

    invoke-static {v4}, Lr0/r;->H(I)I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lu/b;->a(Lf1/r;Lf1/j;Lz0/d;Lr0/q;I)V

    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lb0/k0;->m:Ljava/lang/Object;

    check-cast v1, Lj9/w;

    iget-object v2, v0, Lb0/k0;->o:Ljava/lang/Object;

    check-cast v2, Lr/n2;

    iget-object v0, v0, Lb0/k0;->n:Ljava/lang/Object;

    check-cast v0, Lr/l2;

    move-object/from16 v3, p1

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v1, Lj9/w;->l:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lr/n2;->d(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lr/n2;->h(F)J

    move-result-wide v3

    iget-object v0, v0, Lr/l2;->a:Lr/n2;

    iget-object v5, v0, Lr/n2;->k:Lr/s1;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v3, v4, v6}, Lr/n2;->c(Lr/s1;JI)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lr/n2;->g(J)F

    move-result v0

    invoke-virtual {v2, v0}, Lr/n2;->d(F)F

    move-result v0

    iget v2, v1, Lj9/w;->l:F

    add-float/2addr v2, v0

    iput v2, v1, Lj9/w;->l:F

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lb0/k0;->m:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    iget-object v2, v0, Lb0/k0;->o:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    iget-object v0, v0, Lb0/k0;->n:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    move-object/from16 v10, p1

    check-cast v10, Lr0/q;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v3, v6

    invoke-virtual {v10, v3, v4}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v10, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-ne v4, v3, :cond_2

    :cond_1
    new-instance v4, Lb0/c3;

    const/16 v3, 0xc

    invoke-direct {v4, v1, v2, v0, v3}, Lb0/c3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    move-object v3, v4

    check-cast v3, Li9/a;

    sget-object v9, Lod/m;->Y1:Lz0/d;

    const/high16 v11, 0x30000000

    const/16 v12, 0x1fe

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v12}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Lr0/q;->W()V

    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_2
    iget-object v1, v0, Lb0/k0;->o:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lb0/k0;->n:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Lb0/k0;->m:Ljava/lang/Object;

    check-cast v0, Lf1/r;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x7

    invoke-static {v4}, Lr0/r;->H(I)I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lod/m;->u(Ljava/lang/String;Ljava/lang/String;Lf1/r;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, v0, Lb0/k0;->m:Ljava/lang/Object;

    check-cast v1, Lld/j;

    iget-object v2, v0, Lb0/k0;->o:Ljava/lang/Object;

    check-cast v2, Lua/nav/stats/CongestionCell;

    iget-object v0, v0, Lb0/k0;->n:Ljava/lang/Object;

    check-cast v0, Li9/a;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x181

    invoke-static {v4}, Lr0/r;->H(I)I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lod/m;->d(Lld/j;Lua/nav/stats/CongestionCell;Li9/a;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, v0, Lb0/k0;->o:Ljava/lang/Object;

    check-cast v1, Lad/a0;

    iget-object v2, v0, Lb0/k0;->n:Ljava/lang/Object;

    check-cast v2, Li9/c;

    iget-object v0, v0, Lb0/k0;->m:Ljava/lang/Object;

    check-cast v0, Lf1/r;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x181

    invoke-static {v4}, Lr0/r;->H(I)I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lod/e4;->i(Lad/a0;Li9/c;Lf1/r;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, v0, Lb0/k0;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lb0/k0;->o:Ljava/lang/Object;

    check-cast v2, Li9/a;

    iget-object v0, v0, Lb0/k0;->n:Ljava/lang/Object;

    check-cast v0, Li9/a;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x31

    invoke-static {v4}, Lr0/r;->H(I)I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lod/g3;->c(Ljava/lang/String;Li9/a;Li9/a;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, v0, Lb0/k0;->m:Ljava/lang/Object;

    check-cast v1, Li9/a;

    iget-object v2, v0, Lb0/k0;->o:Ljava/lang/Object;

    check-cast v2, Li9/c;

    iget-object v0, v0, Lb0/k0;->n:Ljava/lang/Object;

    check-cast v0, Li9/a;

    move-object/from16 v10, p1

    check-cast v10, Lr0/q;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v13, 0x1

    if-eq v4, v5, :cond_4

    move v4, v13

    goto :goto_3

    :cond_4
    move v4, v6

    :goto_3
    and-int/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lu/h;->c:Lu/c;

    sget-object v4, Lf1/c;->x:Lf1/h;

    invoke-static {v3, v4, v10, v6}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    iget-wide v4, v10, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v10}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    sget-object v14, Lf1/o;->a:Lf1/o;

    invoke-static {v14, v10}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v6

    sget-object v7, Le2/h;->b:Le2/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Le2/g;->b:Le2/f;

    invoke-virtual {v10}, Lr0/q;->e0()V

    iget-boolean v8, v10, Lr0/q;->S:Z

    if-eqz v8, :cond_5

    invoke-virtual {v10, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v10}, Lr0/q;->o0()V

    :goto_4
    sget-object v7, Le2/g;->f:Le2/e;

    invoke-static {v7, v3, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v5, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Le2/g;->g:Le2/e;

    invoke-static {v10, v3, v4}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v3, Le2/g;->h:Le2/d;

    invoke-static {v10, v3}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v6, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v10, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    sget-object v15, Lr0/m;->a:Lr0/e;

    if-nez v3, :cond_6

    if-ne v4, v15, :cond_7

    :cond_6
    new-instance v4, Lod/x0;

    const/4 v3, 0x0

    invoke-direct {v4, v1, v2, v3}, Lod/x0;-><init>(Li9/a;Li9/c;I)V

    invoke-virtual {v10, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    move-object v3, v4

    check-cast v3, Li9/a;

    const/high16 v4, 0x3f800000    # 1.0f

    move v5, v4

    invoke-static {v14, v5}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v4

    sget-object v9, Lod/m;->v:Lz0/d;

    const v11, 0x30000030

    const/16 v12, 0x1fc

    move v6, v5

    const/4 v5, 0x0

    move v7, v6

    const/4 v6, 0x0

    move v8, v7

    const/4 v7, 0x0

    move/from16 v16, v8

    const/4 v8, 0x0

    move/from16 v13, v16

    invoke-static/range {v3 .. v12}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v10, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_8

    if-ne v4, v15, :cond_9

    :cond_8
    new-instance v4, Lod/x0;

    const/4 v3, 0x1

    invoke-direct {v4, v1, v2, v3}, Lod/x0;-><init>(Li9/a;Li9/c;I)V

    invoke-virtual {v10, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    move-object v3, v4

    check-cast v3, Li9/a;

    invoke-static {v14, v13}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v4

    sget-object v9, Lod/m;->w:Lz0/d;

    const v11, 0x30000030

    const/16 v12, 0x1fc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v12}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v10, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_a

    if-ne v3, v15, :cond_b

    :cond_a
    new-instance v3, Lb0/n;

    const/16 v2, 0xf

    invoke-direct {v3, v2, v1, v0}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b
    check-cast v3, Li9/a;

    invoke-static {v14, v13}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v4

    sget-object v9, Lod/m;->x:Lz0/d;

    const v11, 0x30000030

    const/16 v12, 0x1fc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v12}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_c
    invoke-virtual {v10}, Lr0/q;->W()V

    :goto_5
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_7
    iget-object v1, v0, Lb0/k0;->m:Ljava/lang/Object;

    check-cast v1, Li9/e;

    iget-object v2, v0, Lb0/k0;->n:Ljava/lang/Object;

    check-cast v2, Lz0/d;

    iget-object v0, v0, Lb0/k0;->o:Ljava/lang/Object;

    check-cast v0, Lu/s0;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-static {v4}, Lr0/r;->H(I)I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lo0/m3;->b(Li9/e;Lz0/d;Lu/s0;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, v0, Lb0/k0;->o:Ljava/lang/Object;

    check-cast v1, Li9/a;

    iget-object v2, v0, Lb0/k0;->n:Ljava/lang/Object;

    check-cast v2, Li9/a;

    iget-object v0, v0, Lb0/k0;->m:Ljava/lang/Object;

    check-cast v0, Lf1/r;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x37

    invoke-static {v4}, Lr0/r;->H(I)I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lnd/h0;->n(Li9/a;Li9/a;Lf1/r;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, v0, Lb0/k0;->m:Ljava/lang/Object;

    check-cast v1, Lj9/u;

    iget-object v2, v0, Lb0/k0;->o:Ljava/lang/Object;

    check-cast v2, Lj9/x;

    iget-object v0, v0, Lb0/k0;->n:Ljava/lang/Object;

    check-cast v0, Lhd/e;

    move-object/from16 v3, p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v5, v1, Lj9/u;->l:Z

    if-nez v5, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v2, Lj9/x;->l:J

    :cond_d
    const/4 v2, 0x1

    iput-boolean v2, v1, Lj9/u;->l:Z

    iget-object v1, v0, Lhd/e;->c:Lp2/x;

    invoke-virtual {v1, v3, v4}, Lp2/x;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lhd/e;->f:Lx9/l0;

    new-instance v1, Lhd/m;

    sget-object v2, Lhd/l;->r:Lhd/l;

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lhd/m;-><init>(Lhd/l;Ljava/lang/Integer;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, v0, Lb0/k0;->m:Ljava/lang/Object;

    check-cast v1, Lf1/r;

    iget-object v2, v0, Lb0/k0;->o:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    iget-object v0, v0, Lb0/k0;->n:Ljava/lang/Object;

    check-cast v0, Lz0/d;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v5, v4, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_e

    move v5, v8

    goto :goto_6

    :cond_e
    move v5, v7

    :goto_6
    and-int/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lr0/m;->a:Lr0/e;

    if-ne v4, v5, :cond_f

    new-instance v4, Lb0/y;

    const/4 v5, 0x3

    invoke-direct {v4, v2, v5}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v3, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_f
    check-cast v4, Li9/c;

    invoke-static {v1, v4}, Lc2/x;->m(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v1

    sget-object v2, Lf1/c;->l:Lf1/j;

    invoke-static {v2, v8}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v2

    iget-wide v4, v3, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v3}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v1, v3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    invoke-virtual {v3}, Lr0/q;->e0()V

    iget-boolean v9, v3, Lr0/q;->S:Z

    if-eqz v9, :cond_10

    invoke-virtual {v3, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_7

    :cond_10
    invoke-virtual {v3}, Lr0/q;->o0()V

    :goto_7
    sget-object v6, Le2/g;->f:Le2/e;

    invoke-static {v6, v2, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v5, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Le2/g;->g:Le2/e;

    invoke-static {v3, v2, v4}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {v3, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v1, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v8}, Lr0/q;->q(Z)V

    goto :goto_8

    :cond_11
    invoke-virtual {v3}, Lr0/q;->W()V

    :goto_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_b
    iget-object v1, v0, Lb0/k0;->m:Ljava/lang/Object;

    check-cast v1, Lf1/r;

    iget-object v2, v0, Lb0/k0;->o:Ljava/lang/Object;

    check-cast v2, Lm0/v1;

    iget-object v0, v0, Lb0/k0;->n:Ljava/lang/Object;

    check-cast v0, Lz0/d;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x181

    invoke-static {v4}, Lr0/r;->H(I)I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lb0/n1;->h(Lf1/r;Lm0/v1;Lz0/d;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
