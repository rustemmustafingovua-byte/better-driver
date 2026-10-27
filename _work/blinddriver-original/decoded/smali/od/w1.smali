.class public final synthetic Lod/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:Lr0/u0;

.field public final synthetic B:Lr0/u0;

.field public final synthetic C:Li9/c;

.field public final synthetic D:Lr0/u0;

.field public final synthetic E:Lr0/r2;

.field public final synthetic l:Z

.field public final synthetic m:Z

.field public final synthetic n:Z

.field public final synthetic o:Lua/nav/c;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Landroid/content/Context;

.field public final synthetic r:Lr0/u0;

.field public final synthetic s:Landroid/content/SharedPreferences;

.field public final synthetic t:Lr0/u0;

.field public final synthetic u:Lr0/u0;

.field public final synthetic v:Lr0/r2;

.field public final synthetic w:Lr0/u0;

.field public final synthetic x:Lr0/u0;

.field public final synthetic y:Lr0/u0;

.field public final synthetic z:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(ZZZLua/nav/c;Lr0/u0;Landroid/content/Context;Lr0/u0;Landroid/content/SharedPreferences;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Li9/c;Lr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lod/w1;->l:Z

    iput-boolean p2, p0, Lod/w1;->m:Z

    iput-boolean p3, p0, Lod/w1;->n:Z

    iput-object p4, p0, Lod/w1;->o:Lua/nav/c;

    iput-object p5, p0, Lod/w1;->p:Lr0/u0;

    iput-object p6, p0, Lod/w1;->q:Landroid/content/Context;

    iput-object p7, p0, Lod/w1;->r:Lr0/u0;

    iput-object p8, p0, Lod/w1;->s:Landroid/content/SharedPreferences;

    iput-object p9, p0, Lod/w1;->t:Lr0/u0;

    iput-object p10, p0, Lod/w1;->u:Lr0/u0;

    iput-object p11, p0, Lod/w1;->v:Lr0/r2;

    iput-object p12, p0, Lod/w1;->w:Lr0/u0;

    iput-object p13, p0, Lod/w1;->x:Lr0/u0;

    iput-object p14, p0, Lod/w1;->y:Lr0/u0;

    iput-object p15, p0, Lod/w1;->z:Lr0/u0;

    move-object/from16 p1, p16

    iput-object p1, p0, Lod/w1;->A:Lr0/u0;

    move-object/from16 p1, p17

    iput-object p1, p0, Lod/w1;->B:Lr0/u0;

    move-object/from16 p1, p18

    iput-object p1, p0, Lod/w1;->C:Li9/c;

    move-object/from16 p1, p19

    iput-object p1, p0, Lod/w1;->D:Lr0/u0;

    move-object/from16 p1, p20

    iput-object p1, p0, Lod/w1;->E:Lr0/r2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    check-cast v4, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v2, v10

    goto :goto_0

    :cond_0
    move v2, v11

    :goto_0
    and-int/2addr v1, v10

    invoke-virtual {v4, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v12, Lr0/m;->a:Lr0/e;

    if-ne v1, v12, :cond_1

    new-instance v1, Lb0/u;

    const/16 v2, 0x15

    iget-object v5, v0, Lod/w1;->p:Lr0/u0;

    invoke-direct {v1, v5, v2}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v4, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Li9/a;

    const/4 v2, 0x6

    invoke-static {v1, v4, v2}, Lod/m;->j(Li9/a;Lr0/q;I)V

    invoke-static {v4, v11}, Lod/m;->g(Lr0/q;I)V

    iget-boolean v1, v0, Lod/w1;->l:Z

    invoke-static {v1, v4, v11}, Lod/f;->b(ZLr0/q;I)V

    iget-boolean v5, v0, Lod/w1;->m:Z

    if-eqz v5, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v18, v1

    move v1, v11

    goto :goto_2

    :cond_3
    :goto_1
    move/from16 v18, v1

    move v1, v10

    :goto_2
    const/16 v6, 0xdc

    const/4 v7, 0x0

    invoke-static {v6, v2, v7}, Ln/d;->n(IILn/v;)Ln/n1;

    move-result-object v8

    invoke-static {v8}, Lm/v;->c(Ln/n1;)Lm/a0;

    move-result-object v8

    invoke-static {v6, v2, v7}, Ln/d;->n(IILn/v;)Ln/n1;

    move-result-object v9

    invoke-static {v9, v3}, Lm/v;->d(Ln/x;I)Lm/a0;

    move-result-object v9

    invoke-virtual {v8, v9}, Lm/a0;->a(Lm/a0;)Lm/a0;

    move-result-object v8

    invoke-static {v6, v2, v7}, Ln/d;->n(IILn/v;)Ln/n1;

    move-result-object v6

    invoke-static {v6}, Lm/v;->h(Ln/n1;)Lm/b0;

    move-result-object v6

    const/16 v9, 0xa0

    invoke-static {v9, v2, v7}, Ln/d;->n(IILn/v;)Ln/n1;

    move-result-object v2

    invoke-static {v2, v3}, Lm/v;->e(Ln/x;I)Lm/b0;

    move-result-object v2

    invoke-virtual {v6, v2}, Lm/b0;->a(Lm/b0;)Lm/b0;

    move-result-object v2

    new-instance v13, Lod/s1;

    iget-object v14, v0, Lod/w1;->o:Lua/nav/c;

    iget-object v15, v0, Lod/w1;->q:Landroid/content/Context;

    iget-object v3, v0, Lod/w1;->r:Lr0/u0;

    iget-object v6, v0, Lod/w1;->s:Landroid/content/SharedPreferences;

    iget-object v9, v0, Lod/w1;->t:Lr0/u0;

    iget-object v7, v0, Lod/w1;->u:Lr0/u0;

    iget-object v11, v0, Lod/w1;->v:Lr0/r2;

    iget-object v10, v0, Lod/w1;->w:Lr0/u0;

    move/from16 v28, v1

    iget-object v1, v0, Lod/w1;->x:Lr0/u0;

    move-object/from16 v23, v1

    iget-object v1, v0, Lod/w1;->y:Lr0/u0;

    move-object/from16 v24, v1

    iget-object v1, v0, Lod/w1;->z:Lr0/u0;

    move-object/from16 v25, v1

    iget-object v1, v0, Lod/w1;->A:Lr0/u0;

    move-object/from16 v26, v1

    iget-object v1, v0, Lod/w1;->B:Lr0/u0;

    move-object/from16 v27, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    move-object/from16 v22, v10

    move-object/from16 v21, v11

    invoke-direct/range {v13 .. v27}, Lod/s1;-><init>(Lua/nav/c;Landroid/content/Context;Lr0/u0;Landroid/content/SharedPreferences;ZLr0/u0;Lr0/u0;Lr0/r2;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    const v1, 0x4637ff1a

    invoke-static {v1, v13, v4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v6

    move-object v3, v8

    const v8, 0x30d80

    const/16 v9, 0x12

    move-object v7, v4

    move-object v4, v2

    const/4 v2, 0x0

    move v1, v5

    const/4 v5, 0x0

    move/from16 v29, v1

    move/from16 v1, v28

    const/4 v13, 0x0

    invoke-static/range {v1 .. v9}, Lm/l;->b(ZLf1/r;Lm/a0;Lm/b0;Ljava/lang/String;Lz0/d;Lr0/q;II)V

    invoke-interface/range {v27 .. v27}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/a0;

    iget-boolean v1, v1, Lad/a0;->a:Z

    sget-object v8, Lf1/o;->a:Lf1/o;

    if-eqz v1, :cond_9

    if-nez v18, :cond_9

    const v1, -0x4a77eb31

    invoke-virtual {v7, v1}, Lr0/q;->b0(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v8, v1}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v2

    sget-object v3, Lf1/c;->v:Lf1/i;

    sget-object v4, Lu/h;->a:Lu/n;

    const/16 v5, 0x30

    invoke-static {v4, v3, v7, v5}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v3

    iget-wide v4, v7, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v2, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v9, v7, Lr0/q;->S:Z

    if-eqz v9, :cond_4

    invoke-virtual {v7, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_3
    sget-object v9, Le2/g;->f:Le2/e;

    invoke-static {v9, v3, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v5, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Le2/g;->g:Le2/e;

    invoke-static {v7, v4, v5}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v4, Le2/g;->h:Le2/d;

    invoke-static {v7, v4}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v13, Le2/g;->d:Le2/e;

    invoke-static {v13, v2, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    float-to-double v10, v1

    const-wide/16 v16, 0x0

    cmpl-double v2, v10, v16

    if-lez v2, :cond_5

    goto :goto_4

    :cond_5
    const-string v2, "invalid weight; must be greater than zero"

    invoke-static {v2}, Lv/a;->a(Ljava/lang/String;)V

    :goto_4
    new-instance v2, Lu/j0;

    const/4 v10, 0x1

    invoke-direct {v2, v1, v10}, Lu/j0;-><init>(FZ)V

    sget-object v1, Lf1/c;->l:Lf1/j;

    const/4 v10, 0x0

    invoke-static {v1, v10}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v1

    iget-wide v10, v7, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v2, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v0, v7, Lr0/q;->S:Z

    if-eqz v0, :cond_6

    invoke-virtual {v7, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_5
    invoke-static {v9, v1, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v11, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v10, v7, v5, v7, v4}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v13, v2, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 v0, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x0

    invoke-static {v13, v7, v0, v10}, Lod/f;->e(Li9/e;Lr0/q;II)V

    invoke-virtual {v7, v10}, Lr0/q;->q(Z)V

    const/16 v0, 0x8

    int-to-float v0, v0

    invoke-static {v8, v0}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v7}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-interface/range {v19 .. v19}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd/n;

    iget-boolean v1, v0, Ldd/n;->l:Z

    invoke-virtual {v7, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v7, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_7

    if-ne v2, v12, :cond_8

    :cond_7
    new-instance v2, Lod/l2;

    const/4 v0, 0x3

    invoke-direct {v2, v14, v15, v0}, Lod/l2;-><init>(Lua/nav/c;Landroid/content/Context;I)V

    invoke-virtual {v7, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    check-cast v2, Lj9/l;

    check-cast v2, Li9/a;

    const/16 v5, 0x180

    const/4 v6, 0x0

    const/4 v3, 0x1

    move-object v4, v7

    invoke-static/range {v1 .. v6}, Lod/g3;->Q(ZLi9/a;ZLr0/q;II)V

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lr0/q;->q(Z)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lr0/q;->q(Z)V

    move-object/from16 v0, p0

    goto :goto_9

    :cond_9
    move-object/from16 v19, v10

    move-object/from16 v20, v11

    const v0, 0x47ebc5c2

    invoke-virtual {v7, v0}, Lr0/q;->b0(I)V

    invoke-interface/range {v27 .. v27}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/a0;

    iget-boolean v0, v0, Lad/a0;->a:Z

    if-nez v0, :cond_b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lod/w1;->n:Z

    if-nez v1, :cond_a

    const v1, 0x47ebcd38

    invoke-virtual {v7, v1}, Lr0/q;->b0(I)V

    new-instance v1, Lnd/b;

    iget-object v2, v0, Lod/w1;->C:Li9/c;

    iget-object v3, v0, Lod/w1;->D:Lr0/u0;

    move-object/from16 v10, v19

    move/from16 v4, v29

    invoke-direct {v1, v4, v2, v10, v3}, Lnd/b;-><init>(ZLi9/c;Lr0/u0;Lr0/u0;)V

    const v2, -0x7694239e

    invoke-static {v2, v1, v7}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v1

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lr0/q;->q(Z)V

    move-object v13, v1

    goto :goto_8

    :cond_a
    :goto_6
    const/4 v10, 0x0

    goto :goto_7

    :cond_b
    move-object/from16 v0, p0

    goto :goto_6

    :goto_7
    const v1, -0x4a7103d5

    invoke-virtual {v7, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v7, v10}, Lr0/q;->q(Z)V

    :goto_8
    invoke-static {v13, v7, v10, v10}, Lod/f;->e(Li9/e;Lr0/q;II)V

    invoke-virtual {v7, v10}, Lr0/q;->q(Z)V

    :goto_9
    invoke-interface/range {v20 .. v20}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    const v1, -0x4a7072a3

    invoke-virtual {v7, v1}, Lr0/q;->b0(I)V

    const/4 v1, 0x4

    int-to-float v1, v1

    invoke-static {v8, v1}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v7}, Lu/b;->e(Lf1/r;Lr0/q;)V

    iget-object v1, v14, Lua/nav/c;->c:Ldd/k0;

    iget-object v0, v0, Lod/w1;->E:Lr0/r2;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v7, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_c

    if-ne v3, v12, :cond_d

    :cond_c
    new-instance v3, Lod/d1;

    const/16 v2, 0xe

    invoke-direct {v3, v14, v2}, Lod/d1;-><init>(Lua/nav/c;I)V

    invoke-virtual {v7, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    move-object v2, v3

    check-cast v2, Li9/a;

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v12, :cond_e

    new-instance v3, Lb0/u;

    const/16 v4, 0x16

    move-object/from16 v11, v20

    invoke-direct {v3, v11, v4}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v7, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_e
    check-cast v3, Li9/a;

    const/4 v4, 0x0

    const/16 v6, 0xc08

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Lod/a0;->d(Ldd/k0;ZLi9/a;Li9/a;Lf1/r;Lr0/q;I)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lr0/q;->q(Z)V

    goto :goto_a

    :cond_f
    const/4 v0, 0x0

    const v1, -0x4a6dd2b0

    invoke-virtual {v7, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v7, v0}, Lr0/q;->q(Z)V

    goto :goto_a

    :cond_10
    move-object v7, v4

    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_a
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
