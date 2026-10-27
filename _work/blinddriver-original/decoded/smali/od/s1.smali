.class public final synthetic Lod/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:Lua/nav/c;

.field public final synthetic m:Landroid/content/Context;

.field public final synthetic n:Lr0/u0;

.field public final synthetic o:Landroid/content/SharedPreferences;

.field public final synthetic p:Z

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Lr0/u0;

.field public final synthetic s:Lr0/r2;

.field public final synthetic t:Lr0/u0;

.field public final synthetic u:Lr0/u0;

.field public final synthetic v:Lr0/u0;

.field public final synthetic w:Lr0/u0;

.field public final synthetic x:Lr0/u0;

.field public final synthetic y:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lua/nav/c;Landroid/content/Context;Lr0/u0;Landroid/content/SharedPreferences;ZLr0/u0;Lr0/u0;Lr0/r2;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/s1;->l:Lua/nav/c;

    iput-object p2, p0, Lod/s1;->m:Landroid/content/Context;

    iput-object p3, p0, Lod/s1;->n:Lr0/u0;

    iput-object p4, p0, Lod/s1;->o:Landroid/content/SharedPreferences;

    iput-boolean p5, p0, Lod/s1;->p:Z

    iput-object p6, p0, Lod/s1;->q:Lr0/u0;

    iput-object p7, p0, Lod/s1;->r:Lr0/u0;

    iput-object p8, p0, Lod/s1;->s:Lr0/r2;

    iput-object p9, p0, Lod/s1;->t:Lr0/u0;

    iput-object p10, p0, Lod/s1;->u:Lr0/u0;

    iput-object p11, p0, Lod/s1;->v:Lr0/u0;

    iput-object p12, p0, Lod/s1;->w:Lr0/u0;

    iput-object p13, p0, Lod/s1;->x:Lr0/u0;

    iput-object p14, p0, Lod/s1;->y:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lm/m;

    move-object/from16 v12, p2

    check-cast v12, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "$this$AnimatedVisibility"

    invoke-static {v1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v2, 0x11

    const/16 v3, 0x10

    const/4 v15, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    move v1, v15

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    and-int/2addr v2, v15

    invoke-virtual {v12, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lf1/c;->v:Lf1/i;

    sget-object v2, Lu/h;->a:Lu/n;

    const/16 v3, 0x30

    invoke-static {v2, v1, v12, v3}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v1

    iget-wide v2, v12, Lr0/q;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v12}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    sget-object v5, Lf1/o;->a:Lf1/o;

    invoke-static {v5, v12}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v6

    sget-object v7, Le2/h;->b:Le2/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Le2/g;->b:Le2/f;

    invoke-virtual {v12}, Lr0/q;->e0()V

    iget-boolean v8, v12, Lr0/q;->S:Z

    if-eqz v8, :cond_1

    invoke-virtual {v12, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Lr0/q;->o0()V

    :goto_1
    sget-object v7, Le2/g;->f:Le2/e;

    invoke-static {v7, v1, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v3, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Le2/g;->g:Le2/e;

    invoke-static {v12, v1, v2}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v1, Le2/g;->h:Le2/d;

    invoke-static {v12, v1}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v6, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v1, v0, Lod/s1;->q:Lr0/u0;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd/n;

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Lr0/m;->a:Lr0/e;

    if-ne v3, v6, :cond_2

    new-instance v3, Lb0/u;

    const/16 v7, 0xc

    iget-object v8, v0, Lod/s1;->r:Lr0/u0;

    invoke-direct {v3, v8, v7}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v12, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v3, Li9/a;

    const/4 v7, 0x0

    const/16 v8, 0xf

    invoke-static {v5, v4, v7, v3, v8}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v3

    invoke-static {v2, v3, v12, v4}, Lod/a0;->e(Ldd/n;Lf1/r;Lr0/q;I)V

    const/16 v2, 0x8

    int-to-float v2, v2

    invoke-static {v5, v2}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v3

    invoke-static {v3, v12}, Lu/b;->e(Lf1/r;Lr0/q;)V

    iget-object v3, v0, Lod/s1;->s:Lr0/r2;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/u2;

    iget-object v9, v0, Lod/s1;->l:Lua/nav/c;

    invoke-virtual {v12, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v10

    iget-object v11, v0, Lod/s1;->m:Landroid/content/Context;

    invoke-virtual {v12, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v10, v13

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    if-nez v10, :cond_3

    if-ne v13, v6, :cond_4

    :cond_3
    new-instance v13, Lod/e1;

    const/4 v10, 0x0

    invoke-direct {v13, v9, v11, v10}, Lod/e1;-><init>(Lua/nav/c;Landroid/content/Context;I)V

    invoke-virtual {v12, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v13, Li9/a;

    invoke-static {v3, v13, v12, v4}, Lod/g3;->W(Lad/u2;Li9/a;Lr0/q;I)V

    invoke-static {v5, v2}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v3

    invoke-static {v3, v12}, Lu/b;->e(Lf1/r;Lr0/q;)V

    iget-object v3, v0, Lod/s1;->n:Lr0/u0;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v12, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v12, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    iget-object v15, v0, Lod/s1;->u:Lr0/u0;

    if-nez v13, :cond_6

    if-ne v14, v6, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v18, v3

    move-object/from16 v20, v15

    move-object v15, v9

    goto :goto_3

    :cond_6
    :goto_2
    new-instance v16, Lh5/m;

    const/16 v21, 0x3

    iget-object v13, v0, Lod/s1;->t:Lr0/u0;

    move-object/from16 v18, v3

    move-object/from16 v17, v9

    move-object/from16 v19, v13

    move-object/from16 v20, v15

    invoke-direct/range {v16 .. v21}, Lh5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    invoke-virtual {v12, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_3
    check-cast v14, Li9/a;

    invoke-static {v10, v14, v12, v4}, Lod/g3;->P(ZLi9/a;Lr0/q;I)V

    invoke-static {v5, v2}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v3

    invoke-static {v3, v12}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const-wide v9, 0xff455a64L

    invoke-static {v9, v10}, Lm1/v;->d(J)J

    move-result-wide v9

    sget-object v3, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v12, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/q3;

    iget-object v3, v3, Lo0/q3;->c:La0/d;

    sget v13, Lod/g3;->d:F

    invoke-static {v5, v13}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v13

    iget-object v14, v0, Lod/s1;->o:Landroid/content/SharedPreferences;

    invoke-virtual {v12, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v12, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    iget-object v7, v0, Lod/s1;->v:Lr0/u0;

    if-nez v16, :cond_7

    if-ne v4, v6, :cond_8

    :cond_7
    new-instance v4, Lb0/c3;

    const/4 v8, 0x4

    invoke-direct {v4, v14, v11, v7, v8}, Lb0/c3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    check-cast v4, Li9/a;

    move-object/from16 p2, v1

    move/from16 v16, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v8, 0xf

    invoke-static {v13, v2, v1, v4, v8}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v1

    new-instance v4, Lo0/k;

    const/4 v8, 0x2

    invoke-direct {v4, v7, v8}, Lo0/k;-><init>(Lr0/u0;I)V

    const v7, 0x4280ebbb

    invoke-static {v7, v4, v12}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v4

    const v13, 0xc00180

    move-object/from16 v17, v14

    const/16 v14, 0x78

    move-object v8, v6

    const-wide/16 v6, 0x0

    move-object/from16 v19, v8

    const/4 v8, 0x0

    move-object/from16 v21, v5

    move-object/from16 v25, v11

    move-object v11, v4

    move-wide v4, v9

    move-object/from16 v10, v25

    const/4 v9, 0x0

    move-object/from16 v22, v10

    const/4 v10, 0x0

    move-object v2, v1

    move/from16 v1, v16

    move-object/from16 v0, v17

    move-object/from16 v24, v19

    move-object/from16 v23, v22

    move-object/from16 v17, v15

    move-object/from16 v15, v21

    invoke-static/range {v2 .. v14}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    invoke-static {v15, v1}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v12}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-virtual {v12, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v3, v17

    invoke-virtual {v12, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    move-object/from16 v4, v18

    invoke-virtual {v12, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v13, p0

    iget-object v6, v13, Lod/s1;->w:Lr0/u0;

    move-object/from16 v14, v24

    if-nez v2, :cond_a

    if-ne v5, v14, :cond_9

    goto :goto_4

    :cond_9
    move-object v0, v3

    move-object/from16 v19, v6

    goto :goto_5

    :cond_a
    :goto_4
    new-instance v16, Lod/f1;

    const/16 v22, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v20

    move-object/from16 v20, v4

    invoke-direct/range {v16 .. v22}, Lod/f1;-><init>(Ljava/lang/Object;Lua/nav/c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v5, v16

    move-object/from16 v0, v18

    invoke-virtual {v12, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_5
    move-object v4, v5

    check-cast v4, Li9/a;

    invoke-interface/range {v19 .. v19}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v13, Lod/s1;->x:Lr0/u0;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsc/q0;

    iget-object v2, v2, Lsc/q0;->g:Lsc/d;

    if-nez v2, :cond_b

    const/4 v3, 0x1

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    :goto_6
    const/4 v10, 0x6

    const/16 v11, 0x30

    const-string v2, "3D"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v5, v4

    move-object v9, v12

    invoke-static/range {v2 .. v11}, Lod/g3;->d(Ljava/lang/String;ZLi9/a;Li9/a;JLm1/p;Lr0/q;II)V

    iget-boolean v2, v13, Lod/s1;->p:Z

    if-eqz v2, :cond_e

    iget-object v2, v13, Lod/s1;->y:Lr0/u0;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/a0;

    iget-boolean v2, v2, Lad/a0;->a:Z

    if-eqz v2, :cond_e

    const v2, 0x15ba259c

    invoke-virtual {v12, v2}, Lr0/q;->b0(I)V

    invoke-static {v15, v1}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v12}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-interface/range {p2 .. p2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd/n;

    iget-boolean v2, v1, Ldd/n;->l:Z

    invoke-virtual {v12, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v10, v23

    invoke-virtual {v12, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v12}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_c

    if-ne v3, v14, :cond_d

    :cond_c
    new-instance v3, Lod/l2;

    const/4 v1, 0x2

    invoke-direct {v3, v0, v10, v1}, Lod/l2;-><init>(Lua/nav/c;Landroid/content/Context;I)V

    invoke-virtual {v12, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    check-cast v3, Lj9/l;

    check-cast v3, Li9/a;

    const/16 v6, 0x180

    const/4 v7, 0x0

    const/4 v4, 0x1

    move-object v5, v12

    invoke-static/range {v2 .. v7}, Lod/g3;->Q(ZLi9/a;ZLr0/q;II)V

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lr0/q;->q(Z)V

    :goto_7
    const/4 v0, 0x1

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    const v0, 0x15bc422c

    invoke-virtual {v12, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v12, v2}, Lr0/q;->q(Z)V

    goto :goto_7

    :goto_8
    invoke-virtual {v12, v0}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_f
    invoke-virtual {v12}, Lr0/q;->W()V

    :goto_9
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
