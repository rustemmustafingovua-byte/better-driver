.class public final synthetic Lod/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lsc/q0;

.field public final synthetic n:Lua/nav/c;

.field public final synthetic o:Lua/nav/routing/Favorites;

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:D

.field public final synthetic s:Li9/a;

.field public final synthetic t:Li9/a;

.field public final synthetic u:Li9/a;

.field public final synthetic v:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lsc/q0;Lua/nav/c;Landroid/content/Context;Lua/nav/routing/Favorites;DILi9/a;ILi9/a;Li9/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lod/l1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/l1;->m:Lsc/q0;

    iput-object p2, p0, Lod/l1;->n:Lua/nav/c;

    iput-object p3, p0, Lod/l1;->v:Landroid/content/Context;

    iput-object p4, p0, Lod/l1;->o:Lua/nav/routing/Favorites;

    iput-wide p5, p0, Lod/l1;->r:D

    iput p7, p0, Lod/l1;->p:I

    iput-object p8, p0, Lod/l1;->s:Li9/a;

    iput p9, p0, Lod/l1;->q:I

    iput-object p10, p0, Lod/l1;->t:Li9/a;

    iput-object p11, p0, Lod/l1;->u:Li9/a;

    return-void
.end method

.method public synthetic constructor <init>(Lsc/q0;Lua/nav/c;Lua/nav/routing/Favorites;IIDLi9/a;Li9/a;Li9/a;Landroid/content/Context;I)V
    .locals 0

    .line 2
    const/4 p12, 0x1

    iput p12, p0, Lod/l1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/l1;->m:Lsc/q0;

    iput-object p2, p0, Lod/l1;->n:Lua/nav/c;

    iput-object p3, p0, Lod/l1;->o:Lua/nav/routing/Favorites;

    iput p4, p0, Lod/l1;->p:I

    iput p5, p0, Lod/l1;->q:I

    iput-wide p6, p0, Lod/l1;->r:D

    iput-object p8, p0, Lod/l1;->s:Li9/a;

    iput-object p9, p0, Lod/l1;->t:Li9/a;

    iput-object p10, p0, Lod/l1;->u:Li9/a;

    iput-object p11, p0, Lod/l1;->v:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 61

    move-object/from16 v0, p0

    iget v1, v0, Lod/l1;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v13, p1

    check-cast v13, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x6d80249

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v14

    iget-object v2, v0, Lod/l1;->m:Lsc/q0;

    iget-object v3, v0, Lod/l1;->n:Lua/nav/c;

    iget-object v4, v0, Lod/l1;->o:Lua/nav/routing/Favorites;

    iget v5, v0, Lod/l1;->p:I

    iget v6, v0, Lod/l1;->q:I

    iget-wide v7, v0, Lod/l1;->r:D

    iget-object v9, v0, Lod/l1;->s:Li9/a;

    iget-object v10, v0, Lod/l1;->t:Li9/a;

    iget-object v11, v0, Lod/l1;->u:Li9/a;

    iget-object v12, v0, Lod/l1;->v:Landroid/content/Context;

    invoke-static/range {v2 .. v14}, Lod/g3;->b(Lsc/q0;Lua/nav/c;Lua/nav/routing/Favorites;IIDLi9/a;Li9/a;Li9/a;Landroid/content/Context;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v8, p1

    check-cast v8, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v12, Lf1/c;->v:Lf1/i;

    and-int/lit8 v2, v1, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x2

    if-eq v2, v15, :cond_0

    move v2, v13

    goto :goto_0

    :cond_0
    move v2, v14

    :goto_0
    and-int/2addr v1, v13

    invoke-virtual {v8, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_34

    const/16 v1, 0x8

    int-to-float v1, v1

    const/4 v2, 0x4

    int-to-float v2, v2

    sget-object v3, Lf1/o;->a:Lf1/o;

    invoke-static {v3, v1, v2}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v4

    sget-object v5, Lu/h;->c:Lu/c;

    sget-object v6, Lf1/c;->x:Lf1/h;

    invoke-static {v5, v6, v8, v14}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v5

    iget-wide v6, v8, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v4, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v10, v8, Lr0/q;->S:Z

    if-eqz v10, :cond_1

    invoke-virtual {v8, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lr0/q;->o0()V

    :goto_1
    sget-object v10, Le2/g;->f:Le2/e;

    invoke-static {v10, v5, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v5, Le2/g;->e:Le2/e;

    invoke-static {v5, v7, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Le2/g;->g:Le2/e;

    invoke-static {v8, v6, v7}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v6, Le2/g;->h:Le2/d;

    invoke-static {v8, v6}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v11, Le2/g;->d:Le2/e;

    invoke-static {v11, v4, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-wide v24, 0xff2e7d32L

    move/from16 v18, v2

    move-object/from16 v16, v3

    invoke-static/range {v24 .. v25}, Lm1/v;->d(J)J

    move-result-wide v2

    iget-object v4, v0, Lod/l1;->m:Lsc/q0;

    iget-object v14, v4, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    move-object/from16 v17, v14

    iget-boolean v14, v4, Lsc/q0;->o:Z

    move/from16 v19, v14

    iget-object v14, v4, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    move-object/from16 v20, v14

    iget-object v14, v4, Lsc/q0;->e:Ljava/util/List;

    move-object/from16 v21, v5

    iget-object v5, v4, Lsc/q0;->b:Ljava/lang/String;

    move-object/from16 v22, v14

    iget-object v14, v0, Lod/l1;->n:Lua/nav/c;

    invoke-virtual {v8, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v23

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    sget-object v15, Lr0/m;->a:Lr0/e;

    if-nez v23, :cond_3

    if-ne v13, v15, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v23, v1

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v13, Lod/d1;

    move/from16 v23, v1

    const/4 v1, 0x4

    invoke-direct {v13, v14, v1}, Lod/d1;-><init>(Lua/nav/c;I)V

    invoke-virtual {v8, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_3
    check-cast v13, Li9/a;

    invoke-virtual {v8, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v27, v1

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v27, :cond_5

    if-ne v1, v15, :cond_4

    goto :goto_4

    :cond_4
    move-wide/from16 v27, v2

    goto :goto_5

    :cond_5
    :goto_4
    new-instance v1, Lod/d1;

    move-wide/from16 v27, v2

    const/4 v2, 0x6

    invoke-direct {v1, v14, v2}, Lod/d1;-><init>(Lua/nav/c;I)V

    invoke-virtual {v8, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_5
    check-cast v1, Li9/a;

    invoke-virtual {v8, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v0, Lod/l1;->v:Landroid/content/Context;

    invoke-virtual {v8, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v29

    or-int v2, v2, v29

    move-object/from16 v29, v1

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v2, :cond_6

    if-ne v1, v15, :cond_7

    :cond_6
    new-instance v1, Lod/m1;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v3, v2}, Lod/m1;-><init>(Lua/nav/c;Landroid/content/Context;I)V

    invoke-virtual {v8, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v1, Li9/c;

    invoke-virtual {v8, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v8, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v30

    or-int v2, v2, v30

    move-object/from16 v30, v1

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v2, :cond_8

    if-ne v1, v15, :cond_9

    :cond_8
    new-instance v1, Lod/e1;

    const/4 v2, 0x3

    invoke-direct {v1, v14, v3, v2}, Lod/e1;-><init>(Lua/nav/c;Landroid/content/Context;I)V

    invoke-virtual {v8, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    check-cast v1, Li9/a;

    move-object v2, v11

    const/16 v11, 0x36

    move-object/from16 v31, v9

    move-object v9, v1

    const-string v1, "A"

    move-object/from16 v33, v2

    move-object/from16 v35, v3

    move-object/from16 v34, v4

    move-object/from16 v32, v6

    move-object v6, v13

    move-object/from16 v0, v16

    move-object/from16 v4, v17

    move-wide/from16 v2, v27

    move-object/from16 v13, v31

    move-object/from16 v16, v14

    move-object/from16 v17, v15

    move/from16 v27, v18

    move-object/from16 v15, v21

    move-object/from16 v18, v7

    move-object v14, v10

    move-object/from16 v7, v29

    move-object v10, v8

    move-object/from16 v8, v30

    invoke-static/range {v1 .. v11}, Lod/g3;->a(Ljava/lang/String;JLua/nav/routing/GeoPoint;Ljava/lang/String;Li9/a;Li9/a;Li9/c;Li9/a;Lr0/q;I)V

    move-object v8, v10

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/16 v3, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    if-nez v1, :cond_f

    const v1, -0x2283ad46

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    const/4 v1, 0x2

    int-to-float v9, v1

    const/4 v10, 0x1

    invoke-static {v0, v5, v9, v10}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v9

    sget-object v11, Lu/h;->a:Lu/n;

    invoke-static {v11, v12, v8, v3}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v11

    iget-wide v1, v8, Lr0/q;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v2

    invoke-static {v9, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v9

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v3, v8, Lr0/q;->S:Z

    if-eqz v3, :cond_a

    invoke-virtual {v8, v13}, Lr0/q;->l(Li9/a;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v8}, Lr0/q;->o0()V

    :goto_6
    invoke-static {v14, v11, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v15, v2, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v2, v18

    move-object/from16 v3, v32

    invoke-static {v1, v8, v2, v8, v3}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v2, v33

    invoke-static {v2, v9, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Lcd/d;->U0:Lcd/c;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v8, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->k:Lp2/m0;

    move-object/from16 v9, v22

    const/16 v22, 0x0

    move/from16 v11, v23

    const v23, 0xfffe

    move v13, v2

    const/4 v2, 0x0

    move-object v14, v4

    move/from16 v15, v19

    move-object/from16 v19, v3

    const-wide/16 v3, 0x0

    move/from16 v18, v5

    move/from16 v28, v6

    const-wide/16 v5, 0x0

    move-object/from16 v29, v7

    const/4 v7, 0x0

    move-object/from16 v30, v20

    move-object/from16 v20, v8

    const/4 v8, 0x0

    move-object/from16 v31, v9

    move/from16 v32, v10

    const-wide/16 v9, 0x0

    move/from16 v33, v11

    const/4 v11, 0x0

    move-object/from16 v36, v12

    move/from16 v37, v13

    const-wide/16 v12, 0x0

    move-object/from16 v38, v14

    const/4 v14, 0x0

    move/from16 v39, v15

    const/4 v15, 0x0

    move-object/from16 v40, v16

    const/16 v16, 0x0

    move-object/from16 v41, v17

    const/16 v17, 0x0

    move/from16 v42, v18

    const/16 v18, 0x0

    const/16 v43, 0x30

    const/16 v21, 0x0

    move-object/from16 p1, v0

    move/from16 v0, v28

    move-object/from16 v48, v30

    move/from16 v46, v33

    move-object/from16 v45, v36

    move-object/from16 v47, v38

    move-object/from16 v50, v41

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v20

    const v1, -0x14bd0de0

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    invoke-interface/range {v31 .. v31}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v15, v1, 0x1

    if-ltz v1, :cond_d

    check-cast v2, Lua/nav/routing/GeoPoint;

    const-wide v2, 0xff616161L

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v3

    sget-object v2, La0/e;->a:La0/d;

    int-to-float v5, v0

    const/16 v20, 0x0

    const/16 v21, 0xe

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p1

    move/from16 v17, v5

    invoke-static/range {v16 .. v21}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v5

    move-object/from16 v6, v40

    invoke-virtual {v8, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v8, v1}, Lr0/q;->e(I)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_b

    move-object/from16 v7, v50

    if-ne v9, v7, :cond_c

    goto :goto_8

    :cond_b
    move-object/from16 v7, v50

    :goto_8
    new-instance v9, Lm0/d0;

    const/4 v10, 0x1

    invoke-direct {v9, v1, v10, v6}, Lm0/d0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v8, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_c
    check-cast v9, Li9/a;

    const/16 v10, 0xf

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v5, v12, v11, v9, v10}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v5

    new-instance v9, Lod/n1;

    const/4 v11, 0x0

    invoke-direct {v9, v1, v11}, Lod/n1;-><init>(II)V

    const v1, -0x603b114e

    invoke-static {v1, v9, v8}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v1

    move v13, v12

    const v12, 0xc00180

    move/from16 v44, v13

    const/16 v13, 0x78

    move-object/from16 v40, v6

    move/from16 v49, v10

    move-object v10, v1

    move-object v1, v5

    const-wide/16 v5, 0x0

    move-object/from16 v17, v7

    const/4 v7, 0x0

    move-object/from16 v20, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 p1, v14

    move/from16 p2, v15

    move-object/from16 v14, v17

    move-object/from16 v11, v20

    move-object/from16 v0, v40

    move/from16 v15, v44

    invoke-static/range {v1 .. v13}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move/from16 v1, p2

    move-object v8, v11

    move-object/from16 v50, v14

    const/4 v0, 0x6

    move-object/from16 v14, p1

    move-object/from16 p1, v16

    goto/16 :goto_7

    :cond_d
    invoke-static {}, Lg5/f;->P()V

    const/16 v29, 0x0

    throw v29

    :cond_e
    move-object/from16 v16, p1

    move-object/from16 v0, v40

    move-object/from16 v14, v50

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lr0/q;->q(Z)V

    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lr0/q;->q(Z)V

    invoke-virtual {v8, v15}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_f
    move-object/from16 v14, v16

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v47, v4

    move-object/from16 v45, v12

    move-object/from16 v14, v17

    move/from16 v39, v19

    move-object/from16 v48, v20

    move/from16 v46, v23

    const/4 v12, 0x1

    const/4 v15, 0x0

    const v1, -0x227a0582

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v15}, Lr0/q;->q(Z)V

    :goto_9
    const-wide v17, 0xffc62828L

    invoke-static/range {v17 .. v18}, Lm1/v;->d(J)J

    move-result-wide v2

    move-object/from16 v1, v34

    iget-object v4, v1, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    iget-object v5, v1, Lsc/q0;->d:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_10

    if-ne v6, v14, :cond_11

    :cond_10
    new-instance v6, Lod/d1;

    const/4 v1, 0x7

    invoke-direct {v6, v0, v1}, Lod/d1;-><init>(Lua/nav/c;I)V

    invoke-virtual {v8, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_11
    check-cast v6, Li9/a;

    invoke-virtual {v8, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v1, :cond_12

    if-ne v7, v14, :cond_13

    :cond_12
    new-instance v7, Lod/d1;

    const/16 v1, 0x8

    invoke-direct {v7, v0, v1}, Lod/d1;-><init>(Lua/nav/c;I)V

    invoke-virtual {v8, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_13
    check-cast v7, Li9/a;

    invoke-virtual {v8, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v13, v35

    invoke-virtual {v8, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-nez v1, :cond_14

    if-ne v9, v14, :cond_15

    :cond_14
    new-instance v9, Lod/m1;

    const/4 v1, 0x1

    invoke-direct {v9, v0, v13, v1}, Lod/m1;-><init>(Lua/nav/c;Landroid/content/Context;I)V

    invoke-virtual {v8, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_15
    check-cast v9, Li9/c;

    invoke-virtual {v8, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v8, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v1, v10

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v1, :cond_16

    if-ne v10, v14, :cond_17

    :cond_16
    new-instance v10, Lod/e1;

    const/4 v1, 0x4

    invoke-direct {v10, v0, v13, v1}, Lod/e1;-><init>(Lua/nav/c;Landroid/content/Context;I)V

    invoke-virtual {v8, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_17
    check-cast v10, Li9/a;

    const/16 v11, 0x36

    const-string v1, "B"

    move-object/from16 v59, v10

    move-object v10, v8

    move-object v8, v9

    move-object/from16 v9, v59

    invoke-static/range {v1 .. v11}, Lod/g3;->a(Ljava/lang/String;JLua/nav/routing/GeoPoint;Ljava/lang/String;Li9/a;Li9/a;Li9/c;Li9/a;Lr0/q;I)V

    move-object/from16 v11, p0

    move-object v8, v10

    iget-object v1, v11, Lod/l1;->o:Lua/nav/routing/Favorites;

    move-object/from16 v4, v47

    if-eqz v4, :cond_19

    iget-object v2, v1, Lua/nav/routing/Favorites;->a:Lua/nav/routing/Favorite;

    if-eqz v2, :cond_18

    iget-object v7, v2, Lua/nav/routing/Favorite;->a:Lua/nav/routing/GeoPoint;

    goto :goto_a

    :cond_18
    const/4 v7, 0x0

    :goto_a
    invoke-static {v7, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static/range {v24 .. v25}, Lm1/v;->d(J)J

    move-result-wide v2

    new-instance v7, Lm1/p;

    invoke-direct {v7, v2, v3}, Lm1/p;-><init>(J)V

    move-object/from16 v2, v48

    goto :goto_c

    :cond_19
    move-object/from16 v2, v48

    if-eqz v2, :cond_1b

    iget-object v3, v1, Lua/nav/routing/Favorites;->a:Lua/nav/routing/Favorite;

    if-eqz v3, :cond_1a

    iget-object v7, v3, Lua/nav/routing/Favorite;->a:Lua/nav/routing/GeoPoint;

    goto :goto_b

    :cond_1a
    const/4 v7, 0x0

    :goto_b
    invoke-static {v7, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static/range {v17 .. v18}, Lm1/v;->d(J)J

    move-result-wide v5

    new-instance v7, Lm1/p;

    invoke-direct {v7, v5, v6}, Lm1/p;-><init>(J)V

    goto :goto_c

    :cond_1b
    const/4 v7, 0x0

    :goto_c
    if-eqz v4, :cond_1d

    iget-object v3, v1, Lua/nav/routing/Favorites;->b:Lua/nav/routing/Favorite;

    if-eqz v3, :cond_1c

    iget-object v3, v3, Lua/nav/routing/Favorite;->a:Lua/nav/routing/GeoPoint;

    goto :goto_d

    :cond_1c
    const/4 v3, 0x0

    :goto_d
    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-static/range {v24 .. v25}, Lm1/v;->d(J)J

    move-result-wide v2

    new-instance v4, Lm1/p;

    invoke-direct {v4, v2, v3}, Lm1/p;-><init>(J)V

    :goto_e
    move-object/from16 v22, v4

    const/4 v2, 0x2

    goto :goto_10

    :cond_1d
    if-eqz v2, :cond_1f

    iget-object v3, v1, Lua/nav/routing/Favorites;->b:Lua/nav/routing/Favorite;

    if-eqz v3, :cond_1e

    iget-object v3, v3, Lua/nav/routing/Favorite;->a:Lua/nav/routing/GeoPoint;

    goto :goto_f

    :cond_1e
    const/4 v3, 0x0

    :goto_f
    invoke-static {v3, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static/range {v17 .. v18}, Lm1/v;->d(J)J

    move-result-wide v2

    new-instance v4, Lm1/p;

    invoke-direct {v4, v2, v3}, Lm1/p;-><init>(J)V

    goto :goto_e

    :cond_1f
    const/4 v2, 0x2

    const/16 v22, 0x0

    :goto_10
    int-to-float v4, v2

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v4

    invoke-static/range {v16 .. v21}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v3

    move/from16 v24, v18

    sget-object v4, Lu/h;->a:Lu/n;

    move-object/from16 v5, v45

    const/16 v6, 0x30

    invoke-static {v4, v5, v8, v6}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v9

    move-object/from16 p1, v7

    iget-wide v6, v8, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v3, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    sget-object v10, Le2/h;->b:Le2/g;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Le2/g;->b:Le2/f;

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v2, v8, Lr0/q;->S:Z

    if-eqz v2, :cond_20

    invoke-virtual {v8, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_11

    :cond_20
    invoke-virtual {v8}, Lr0/q;->o0()V

    :goto_11
    sget-object v2, Le2/g;->f:Le2/e;

    invoke-static {v2, v9, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v9, Le2/g;->e:Le2/e;

    invoke-static {v9, v7, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Le2/g;->g:Le2/e;

    invoke-static {v8, v6, v7}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v6, Le2/g;->h:Le2/d;

    invoke-static {v8, v6}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v15, Le2/g;->d:Le2/e;

    invoke-static {v15, v3, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v3, v1, Lua/nav/routing/Favorites;->a:Lua/nav/routing/Favorite;

    if-eqz v3, :cond_21

    move-object v3, v2

    move v2, v12

    goto :goto_12

    :cond_21
    move-object v3, v2

    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v8, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v17

    invoke-virtual {v8, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v18

    or-int v17, v17, v18

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v12

    if-nez v17, :cond_23

    if-ne v12, v14, :cond_22

    goto :goto_13

    :cond_22
    move-object/from16 v17, v1

    goto :goto_14

    :cond_23
    :goto_13
    new-instance v12, Lod/e1;

    move-object/from16 v17, v1

    const/4 v1, 0x1

    invoke-direct {v12, v0, v13, v1}, Lod/e1;-><init>(Lua/nav/c;Landroid/content/Context;I)V

    invoke-virtual {v8, v12}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_14
    check-cast v12, Li9/a;

    invoke-virtual {v8, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v18, v1

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v18, :cond_25

    if-ne v1, v14, :cond_24

    goto :goto_15

    :cond_24
    move/from16 v18, v2

    goto :goto_16

    :cond_25
    :goto_15
    new-instance v1, Lnd/p;

    move/from16 v18, v2

    const/4 v2, 0x2

    invoke-direct {v1, v13, v2}, Lnd/p;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_16
    check-cast v1, Li9/a;

    sget-object v2, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v8, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v1

    move-object/from16 v1, v19

    check-cast v1, Lo0/u0;

    move-object/from16 v19, v2

    iget-wide v1, v1, Lo0/u0;->a:J

    move-object/from16 v23, v9

    const/4 v9, 0x6

    move-object/from16 v25, v10

    const/4 v10, 0x0

    move-object/from16 v45, v5

    move-wide/from16 v59, v1

    move-object v2, v6

    move-wide/from16 v5, v59

    const-string v1, "\ud83c\udfe0"

    move-object/from16 v11, v16

    move-object/from16 v16, v15

    move-object v15, v11

    move-object/from16 v55, v2

    move-object/from16 v52, v3

    move-object/from16 v54, v7

    move-object v3, v12

    move-object/from16 v11, v17

    move/from16 v2, v18

    move-object/from16 v12, v19

    move-object/from16 v53, v23

    move-object/from16 v51, v25

    move-object/from16 v7, p1

    move-object/from16 p1, v4

    move-object/from16 v4, v20

    invoke-static/range {v1 .. v10}, Lod/g3;->d(Ljava/lang/String;ZLi9/a;Li9/a;JLm1/p;Lr0/q;II)V

    const/4 v1, 0x6

    int-to-float v1, v1

    invoke-static {v15, v1}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v8}, Lu/b;->e(Lf1/r;Lr0/q;)V

    iget-object v2, v11, Lua/nav/routing/Favorites;->b:Lua/nav/routing/Favorite;

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    goto :goto_17

    :cond_26
    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v8, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v8, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_27

    if-ne v4, v14, :cond_28

    :cond_27
    new-instance v4, Lod/e1;

    const/4 v3, 0x2

    invoke-direct {v4, v0, v13, v3}, Lod/e1;-><init>(Lua/nav/c;Landroid/content/Context;I)V

    invoke-virtual {v8, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_28
    move-object v3, v4

    check-cast v3, Li9/a;

    invoke-virtual {v8, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_29

    if-ne v5, v14, :cond_2a

    :cond_29
    new-instance v5, Lnd/p;

    const/4 v4, 0x3

    invoke-direct {v5, v13, v4}, Lnd/p;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2a
    move-object v4, v5

    check-cast v4, Li9/a;

    invoke-virtual {v8, v12}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/u0;

    iget-wide v5, v5, Lo0/u0;->a:J

    const/4 v9, 0x6

    const/4 v10, 0x0

    move v7, v1

    const-string v1, "\ud83d\udcbc"

    move v11, v7

    move-object/from16 v7, v22

    invoke-static/range {v1 .. v10}, Lod/g3;->d(Ljava/lang/String;ZLi9/a;Li9/a;JLm1/p;Lr0/q;II)V

    invoke-static {v15, v11}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v8}, Lu/b;->e(Lf1/r;Lr0/q;)V

    move-object/from16 v12, p0

    iget v1, v12, Lod/l1;->p:I

    if-lez v1, :cond_2b

    const/4 v2, 0x1

    goto :goto_18

    :cond_2b
    const/4 v2, 0x0

    :goto_18
    const/4 v9, 0x6

    const/16 v10, 0x30

    const-string v1, "\ud83d\uddfa"

    iget-object v3, v12, Lod/l1;->s:Li9/a;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v3

    invoke-static/range {v1 .. v10}, Lod/g3;->d(Ljava/lang/String;ZLi9/a;Li9/a;JLm1/p;Lr0/q;II)V

    invoke-static {v15, v11}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v8}, Lu/b;->e(Lf1/r;Lr0/q;)V

    iget v1, v12, Lod/l1;->q:I

    if-lez v1, :cond_2c

    const/4 v2, 0x1

    goto :goto_19

    :cond_2c
    const/4 v2, 0x0

    :goto_19
    const/4 v9, 0x6

    const/16 v10, 0x30

    const-string v1, "\ud83d\udccd"

    iget-object v3, v12, Lod/l1;->t:Li9/a;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v3

    invoke-static/range {v1 .. v10}, Lod/g3;->d(Ljava/lang/String;ZLi9/a;Li9/a;JLm1/p;Lr0/q;II)V

    const/high16 v1, 0x3f800000    # 1.0f

    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2d

    goto :goto_1a

    :cond_2d
    const-string v2, "invalid weight; must be greater than zero"

    invoke-static {v2}, Lv/a;->a(Ljava/lang/String;)V

    :goto_1a
    new-instance v2, Lu/j0;

    const/4 v10, 0x1

    invoke-direct {v2, v1, v10}, Lu/j0;-><init>(FZ)V

    invoke-static {v2, v8}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-virtual {v8, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_2e

    if-ne v2, v14, :cond_2f

    :cond_2e
    new-instance v2, Lod/d1;

    const/4 v1, 0x5

    invoke-direct {v2, v0, v1}, Lod/d1;-><init>(Lua/nav/c;I)V

    invoke-virtual {v8, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2f
    check-cast v2, Li9/a;

    const/16 v0, 0xf

    const/4 v1, 0x0

    const/4 v13, 0x0

    invoke-static {v15, v13, v1, v2, v0}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v11, v1, v2}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v2

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v8, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->h:Lp2/m0;

    const/16 v22, 0x0

    const v23, 0xfffc

    move-object/from16 v19, v1

    const-string v1, "\u21c5"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v20, v8

    const/4 v8, 0x0

    move/from16 v32, v10

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move/from16 v44, v13

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move-object/from16 v21, v17

    const/16 v17, 0x0

    move-object/from16 v25, v18

    const/16 v18, 0x0

    move-object/from16 v26, v21

    const/16 v21, 0x6

    move-object/from16 v57, p1

    move-object/from16 p2, v0

    move-object/from16 v58, v25

    move/from16 v0, v32

    move-object/from16 v56, v45

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v20

    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    const-wide v1, 0x4072c00000000000L    # 300.0

    move-object/from16 v11, p0

    iget-wide v3, v11, Lod/l1;->r:D

    cmpl-double v1, v3, v1

    if-gez v1, :cond_30

    if-eqz v39, :cond_31

    :cond_30
    const/4 v12, 0x0

    goto :goto_1b

    :cond_31
    const v1, -0x22462202

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lr0/q;->q(Z)V

    move v10, v0

    goto/16 :goto_20

    :goto_1b
    const v1, -0x224ebb7e

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v26

    move/from16 v18, v27

    invoke-static/range {v16 .. v21}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v1

    move-object/from16 v15, v16

    move-object/from16 v5, v56

    move-object/from16 v2, v57

    const/16 v6, 0x30

    invoke-static {v2, v5, v8, v6}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v2

    iget-wide v9, v8, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v1, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v9, v8, Lr0/q;->S:Z

    if-eqz v9, :cond_32

    move-object/from16 v9, v51

    invoke-virtual {v8, v9}, Lr0/q;->l(Li9/a;)V

    :goto_1c
    move-object/from16 v9, v52

    goto :goto_1d

    :cond_32
    invoke-virtual {v8}, Lr0/q;->o0()V

    goto :goto_1c

    :goto_1d
    invoke-static {v9, v2, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v2, v53

    invoke-static {v2, v7, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v2, v54

    move-object/from16 v7, v55

    invoke-static {v5, v8, v2, v8, v7}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v2, v58

    invoke-static {v2, v1, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    if-eqz v39, :cond_33

    const v1, -0x33c60972    # -4.874911E7f

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    const/16 v1, 0x10

    int-to-float v1, v1

    invoke-static {v15, v1}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v1

    const/16 v10, 0x186

    const/16 v11, 0x3a

    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v20, v8

    const/4 v8, 0x0

    move-object/from16 v9, v20

    move/from16 v4, v24

    invoke-static/range {v1 .. v11}, Lo0/u2;->a(Lf1/r;JFJIFLr0/q;II)V

    move-object v8, v9

    move/from16 v11, v46

    invoke-static {v15, v11}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v8}, Lu/b;->e(Lf1/r;Lr0/q;)V

    sget-object v1, Lcd/d;->l0:Lcd/c;

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v8, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->l:Lp2/m0;

    const/16 v22, 0x0

    const v23, 0xfffe

    move-object/from16 v19, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v20, v8

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move/from16 v44, v12

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move/from16 v0, v44

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v20

    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    :goto_1e
    const/4 v10, 0x1

    goto :goto_1f

    :cond_33
    move v0, v12

    const v1, -0x33c20844    # -4.9798896E7f

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    sget-object v1, Lcd/j;->a:Lcd/j;

    invoke-virtual {v1, v3, v4}, Lcd/j;->b(D)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcd/d;->k0:Lcd/c;

    invoke-virtual {v2, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v11, Lod/l1;->u:Li9/a;

    invoke-static {v1, v2, v2, v8, v6}, Lod/g3;->c(Ljava/lang/String;Li9/a;Li9/a;Lr0/q;I)V

    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    goto :goto_1e

    :goto_1f
    invoke-virtual {v8, v10}, Lr0/q;->q(Z)V

    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    :goto_20
    invoke-virtual {v8, v10}, Lr0/q;->q(Z)V

    goto :goto_21

    :cond_34
    invoke-virtual {v8}, Lr0/q;->W()V

    :goto_21
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
