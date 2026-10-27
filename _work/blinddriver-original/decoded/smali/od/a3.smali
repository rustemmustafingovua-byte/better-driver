.class public final Lod/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/g;


# instance fields
.field public final synthetic l:Ljava/util/List;

.field public final synthetic m:F

.field public final synthetic n:Li9/c;

.field public final synthetic o:Lr0/u0;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Li9/c;

.field public final synthetic r:F

.field public final synthetic s:Li9/c;

.field public final synthetic t:Li9/c;

.field public final synthetic u:Ld1/v;


# direct methods
.method public constructor <init>(Ljava/util/List;FLi9/c;Lr0/u0;Lr0/u0;Li9/c;FLi9/c;Li9/c;Ld1/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/a3;->l:Ljava/util/List;

    iput p2, p0, Lod/a3;->m:F

    iput-object p3, p0, Lod/a3;->n:Li9/c;

    iput-object p4, p0, Lod/a3;->o:Lr0/u0;

    iput-object p5, p0, Lod/a3;->p:Lr0/u0;

    iput-object p6, p0, Lod/a3;->q:Li9/c;

    iput p7, p0, Lod/a3;->r:F

    iput-object p8, p0, Lod/a3;->s:Li9/c;

    iput-object p9, p0, Lod/a3;->t:Li9/c;

    iput-object p10, p0, Lod/a3;->u:Ld1/v;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lw/b;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object/from16 v8, p3

    check-cast v8, Lr0/q;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x6

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-virtual {v8, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const/16 v4, 0x30

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    invoke-virtual {v8, v2}, Lr0/q;->e(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit16 v3, v1, 0x93

    const/16 v6, 0x92

    const/4 v7, 0x0

    const/4 v9, 0x1

    if-eq v3, v6, :cond_4

    move v3, v9

    goto :goto_3

    :cond_4
    move v3, v7

    :goto_3
    and-int/2addr v1, v9

    invoke-virtual {v8, v1, v3}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lod/a3;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lua/nav/routing/SavedAddress;

    const v1, -0xea2fb52

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    iget-object v1, v0, Lod/a3;->o:Lr0/u0;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_5

    move v1, v9

    goto :goto_4

    :cond_5
    move v1, v7

    :goto_4
    sget-object v2, Lf1/c;->v:Lf1/i;

    sget-object v3, Lf1/o;->a:Lf1/o;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v6}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v10

    iget v11, v0, Lod/a3;->m:F

    invoke-static {v10, v11}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v10

    invoke-virtual {v8, v1}, Lr0/q;->h(Z)Z

    move-result v11

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lr0/m;->a:Lr0/e;

    if-nez v11, :cond_6

    if-ne v13, v14, :cond_7

    :cond_6
    new-instance v13, Lod/t2;

    iget-object v11, v0, Lod/a3;->p:Lr0/u0;

    invoke-direct {v13, v11, v1}, Lod/t2;-><init>(Lr0/u0;Z)V

    invoke-virtual {v8, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v13, Li9/c;

    invoke-static {v10, v13}, Lm1/v;->o(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v1

    iget-object v10, v0, Lod/a3;->n:Li9/c;

    invoke-virtual {v8, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v8, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v11, v13

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_8

    if-ne v13, v14, :cond_9

    :cond_8
    new-instance v13, Lod/u2;

    const/4 v11, 0x0

    invoke-direct {v13, v10, v12, v11}, Lod/u2;-><init>(Li9/c;Lua/nav/routing/SavedAddress;I)V

    invoke-virtual {v8, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    check-cast v13, Li9/a;

    const/4 v10, 0x0

    const/16 v11, 0xf

    invoke-static {v1, v7, v10, v13, v11}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v1

    sget-object v13, Lu/h;->a:Lu/n;

    invoke-static {v13, v2, v8, v4}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v2

    iget-wide v6, v8, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v1, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v7, Le2/h;->b:Le2/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Le2/g;->b:Le2/f;

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v13, v8, Lr0/q;->S:Z

    if-eqz v13, :cond_a

    invoke-virtual {v8, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v8}, Lr0/q;->o0()V

    :goto_5
    sget-object v13, Le2/g;->f:Le2/e;

    invoke-static {v13, v2, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v6, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Le2/g;->g:Le2/e;

    invoke-static {v8, v4, v6}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v4, Le2/g;->h:Le2/d;

    invoke-static {v8, v4}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v15, Le2/g;->d:Le2/e;

    invoke-static {v15, v1, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v8, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Lo0/h5;

    iget-object v9, v9, Lo0/h5;->g:Lp2/m0;

    const/16 v10, 0xa

    int-to-float v10, v10

    move-object/from16 v17, v6

    const/4 v6, 0x0

    invoke-static {v3, v10, v6, v5}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v10

    iget-wide v5, v12, Lua/nav/routing/SavedAddress;->a:J

    move-wide/from16 v20, v5

    iget-object v5, v12, Lua/nav/routing/SavedAddress;->c:Ljava/lang/String;

    iget-object v6, v12, Lua/nav/routing/SavedAddress;->d:Ljava/lang/String;

    move-object/from16 v22, v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    iget-object v11, v0, Lod/a3;->q:Li9/c;

    invoke-virtual {v8, v11}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    or-int v11, v16, v11

    move-object/from16 v21, v4

    iget v4, v0, Lod/a3;->r:F

    invoke-virtual {v8, v4}, Lr0/q;->d(F)Z

    move-result v4

    or-int/2addr v4, v11

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v4, :cond_b

    if-ne v11, v14, :cond_c

    :cond_b
    move-object v4, v10

    goto :goto_6

    :cond_c
    move-object v4, v10

    move-object/from16 v24, v13

    move-object/from16 v28, v14

    move-object/from16 v23, v15

    goto :goto_7

    :goto_6
    new-instance v10, Lod/z2;

    move-object v11, v15

    iget-object v15, v0, Lod/a3;->q:Li9/c;

    move-object/from16 v16, v4

    iget v4, v0, Lod/a3;->r:F

    move-object/from16 v23, v11

    iget-object v11, v0, Lod/a3;->u:Ld1/v;

    move-object/from16 v24, v13

    iget-object v13, v0, Lod/a3;->o:Lr0/u0;

    move-object/from16 v25, v14

    iget-object v14, v0, Lod/a3;->p:Lr0/u0;

    move-object/from16 v28, v16

    move/from16 v16, v4

    move-object/from16 v4, v28

    move-object/from16 v28, v25

    invoke-direct/range {v10 .. v16}, Lod/z2;-><init>(Ld1/v;Lua/nav/routing/SavedAddress;Lr0/u0;Lr0/u0;Li9/c;F)V

    invoke-virtual {v8, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v11, v10

    :goto_7
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v4, v3, v11}, Ly1/g0;->a(Lf1/r;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lf1/r;

    move-result-object v4

    move-object/from16 v3, v24

    const/16 v24, 0x0

    const v25, 0xfffc

    move-object v10, v3

    const-string v3, "\u283f"

    move-object v11, v5

    move-object v13, v6

    const-wide/16 v5, 0x0

    move-object v14, v7

    move-object/from16 v15, v22

    move-object/from16 v22, v8

    const-wide/16 v7, 0x0

    move-object/from16 v16, v21

    move-object/from16 v21, v9

    const/4 v9, 0x0

    move-object/from16 v20, v10

    const/4 v10, 0x0

    move-object/from16 v30, v11

    move-object/from16 v29, v12

    const-wide/16 v11, 0x0

    move-object/from16 v31, v13

    const/4 v13, 0x0

    move-object/from16 v32, v14

    move-object/from16 v33, v15

    const-wide/16 v14, 0x0

    move-object/from16 v34, v16

    const/16 v16, 0x0

    move-object/from16 v35, v17

    const/16 v17, 0x0

    const/16 v36, 0x2

    const/16 v18, 0x0

    const/16 v37, 0x0

    const/16 v19, 0x0

    move-object/from16 v38, v20

    const/16 v20, 0x0

    move-object/from16 v39, v23

    const/16 v23, 0x6

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 v40, v29

    move-object/from16 v0, v32

    move-object/from16 v46, v33

    move-object/from16 v42, v34

    move-object/from16 v41, v35

    move-object/from16 v43, v39

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v22

    float-to-double v3, v2

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_d

    goto :goto_8

    :cond_d
    const-string v3, "invalid weight; must be greater than zero"

    invoke-static {v3}, Lv/a;->a(Ljava/lang/String;)V

    :goto_8
    new-instance v3, Lu/j0;

    invoke-direct {v3, v2, v1}, Lu/j0;-><init>(FZ)V

    sget-object v2, Lu/h;->d:Lu/d;

    sget-object v4, Lf1/c;->x:Lf1/h;

    const/4 v5, 0x6

    invoke-static {v2, v4, v8, v5}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v2

    iget-wide v4, v8, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v3, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v6, v8, Lr0/q;->S:Z

    if-eqz v6, :cond_e

    invoke-virtual {v8, v0}, Lr0/q;->l(Li9/a;)V

    :goto_9
    move-object/from16 v10, v38

    goto :goto_a

    :cond_e
    invoke-virtual {v8}, Lr0/q;->o0()V

    goto :goto_9

    :goto_a
    invoke-static {v10, v2, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v0, p2

    invoke-static {v0, v5, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v0, v41

    move-object/from16 v2, v42

    invoke-static {v4, v8, v0, v8, v2}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v11, v43

    invoke-static {v11, v3, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static/range {v31 .. v31}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object/from16 v5, v30

    goto :goto_b

    :cond_f
    move-object/from16 v5, v31

    :goto_b
    invoke-static {v5}, Lzc/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->j:Lp2/m0;

    const/16 v24, 0xc30

    const v25, 0xd7fe

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v22, v8

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v2

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v22

    invoke-static/range {v31 .. v31}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const v2, -0x327345af

    invoke-virtual {v8, v2}, Lr0/q;->b0(I)V

    invoke-static/range {v30 .. v30}, Lzc/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->l:Lp2/m0;

    const/16 v24, 0xc30

    const v25, 0xd7fe

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v22, v8

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v2

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v22

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v8, v2}, Lr0/q;->q(Z)V

    goto :goto_d

    :cond_10
    const/4 v2, 0x0

    const v3, -0x32713823

    invoke-virtual {v8, v3}, Lr0/q;->b0(I)V

    goto :goto_c

    :goto_d
    invoke-virtual {v8, v1}, Lr0/q;->q(Z)V

    move-object/from16 v3, p0

    iget-object v4, v3, Lod/a3;->s:Li9/c;

    invoke-virtual {v8, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v6, v40

    invoke-virtual {v8, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_11

    move-object/from16 v5, v28

    if-ne v7, v5, :cond_12

    goto :goto_e

    :cond_11
    move-object/from16 v5, v28

    :goto_e
    new-instance v7, Lod/u2;

    const/4 v9, 0x1

    invoke-direct {v7, v4, v6, v9}, Lod/u2;-><init>(Li9/c;Lua/nav/routing/SavedAddress;I)V

    invoke-virtual {v8, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_12
    check-cast v7, Li9/a;

    move-object/from16 v10, v46

    const/16 v4, 0xf

    const/4 v9, 0x0

    invoke-static {v10, v2, v9, v7, v4}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v7

    const/16 v11, 0x8

    int-to-float v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v7, v11, v12, v13}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v7

    invoke-virtual {v8, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo0/h5;

    iget-object v14, v14, Lo0/h5;->h:Lp2/m0;

    const/16 v24, 0x0

    const v25, 0xfffc

    const-string v3, "\u270e"

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    const-wide/16 v5, 0x0

    move/from16 v20, v4

    move-object v4, v7

    move-object/from16 v22, v8

    const-wide/16 v7, 0x0

    move-object/from16 v27, v9

    const/4 v9, 0x0

    move-object v15, v10

    const/4 v10, 0x0

    move/from16 v16, v11

    move/from16 v44, v12

    const-wide/16 v11, 0x0

    move/from16 v45, v13

    const/4 v13, 0x0

    move-object/from16 v21, v14

    move-object/from16 v46, v15

    const-wide/16 v14, 0x0

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v23, v19

    const/16 v19, 0x0

    move/from16 v26, v20

    const/16 v20, 0x0

    move/from16 v30, v23

    const/16 v23, 0x6

    move-object/from16 v1, p0

    move-object/from16 v26, v0

    move-object/from16 v0, v28

    move-object/from16 v2, v29

    move-object/from16 v47, v46

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v22

    iget-object v1, v1, Lod/a3;->t:Li9/c;

    invoke-virtual {v8, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v8, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_13

    if-ne v4, v0, :cond_14

    :cond_13
    new-instance v4, Lod/u2;

    const/4 v0, 0x2

    invoke-direct {v4, v1, v2, v0}, Lod/u2;-><init>(Li9/c;Lua/nav/routing/SavedAddress;I)V

    invoke-virtual {v8, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_14
    check-cast v4, Li9/a;

    move-object/from16 v15, v47

    const/16 v0, 0xf

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-static {v15, v2, v9, v4, v0}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v0

    move/from16 v1, v30

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v0, v1, v12, v13}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->h:Lp2/m0;

    const/16 v24, 0x0

    const v25, 0xfffc

    const-string v3, "\u2715"

    const-wide/16 v5, 0x0

    move-object/from16 v22, v8

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x6

    move-object/from16 v21, v0

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v22

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lr0/q;->q(Z)V

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lo0/z2;->e(FIJLf1/r;Lr0/q;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lr0/q;->q(Z)V

    goto :goto_f

    :cond_15
    invoke-virtual {v8}, Lr0/q;->W()V

    :goto_f
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
