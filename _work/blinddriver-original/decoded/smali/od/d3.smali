.class public final Lod/d3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/g;


# instance fields
.field public final synthetic l:Ljava/util/List;

.field public final synthetic m:Lua/nav/c;

.field public final synthetic n:Lf2/k2;

.field public final synthetic o:Li9/f;


# direct methods
.method public constructor <init>(Ljava/util/List;Lua/nav/c;Lf2/k2;Li9/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/d3;->l:Ljava/util/List;

    iput-object p2, p0, Lod/d3;->m:Lua/nav/c;

    iput-object p3, p0, Lod/d3;->n:Lf2/k2;

    iput-object p4, p0, Lod/d3;->o:Li9/f;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

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

    if-nez v4, :cond_1

    invoke-virtual {v8, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/lit8 v3, v3, 0x30

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

    const/16 v4, 0x92

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    move v3, v6

    :goto_3
    and-int/2addr v1, v5

    invoke-virtual {v8, v1, v3}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lod/d3;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lua/nav/geocoding/Place;

    const v1, 0x42bcfcef

    invoke-virtual {v8, v1}, Lr0/q;->b0(I)V

    sget-object v1, Lf1/o;->a:Lf1/o;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-virtual {v8, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    iget-object v10, v0, Lod/d3;->m:Lua/nav/c;

    invoke-virtual {v8, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-nez v2, :cond_5

    if-ne v3, v4, :cond_6

    :cond_5
    new-instance v3, Lod/x2;

    const/4 v2, 0x1

    invoke-direct {v3, v2, v11, v10}, Lod/x2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v3, Li9/a;

    invoke-virtual {v8, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v8, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v2, v7

    iget-object v12, v0, Lod/d3;->n:Lf2/k2;

    invoke-virtual {v8, v12}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v2, v7

    iget-object v13, v0, Lod/d3;->o:Li9/f;

    invoke-virtual {v8, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v2

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_8

    if-ne v2, v4, :cond_7

    goto :goto_4

    :cond_7
    move-object v0, v11

    goto :goto_5

    :cond_8
    :goto_4
    new-instance v9, Lod/w2;

    const/4 v14, 0x1

    invoke-direct/range {v9 .. v14}, Lod/w2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v0, v11

    invoke-virtual {v8, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v2, v9

    :goto_5
    check-cast v2, Li9/a;

    invoke-static {v1, v3, v2}, Lp/o;->m(Lf1/r;Li9/a;Li9/a;)Lf1/r;

    move-result-object v1

    const/16 v2, 0xc

    int-to-float v2, v2

    const/16 v3, 0x8

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v1

    sget-object v2, Lu/h;->c:Lu/c;

    sget-object v3, Lf1/c;->x:Lf1/h;

    invoke-static {v2, v3, v8, v6}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v2

    iget-wide v3, v8, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v1, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v7, Le2/h;->b:Le2/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Le2/g;->b:Le2/f;

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v9, v8, Lr0/q;->S:Z

    if-eqz v9, :cond_9

    invoke-virtual {v8, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_6

    :cond_9
    invoke-virtual {v8}, Lr0/q;->o0()V

    :goto_6
    sget-object v7, Le2/g;->f:Le2/e;

    invoke-static {v7, v2, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v4, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Le2/g;->g:Le2/e;

    invoke-static {v8, v2, v3}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {v8, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v1, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v3, v0, Lua/nav/geocoding/Place;->a:Ljava/lang/String;

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v8, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->j:Lp2/m0;

    const/16 v24, 0x0

    const v25, 0xfffe

    const/4 v4, 0x0

    move v7, v5

    move v9, v6

    const-wide/16 v5, 0x0

    move v10, v7

    move-object/from16 v22, v8

    const-wide/16 v7, 0x0

    move v11, v9

    const/4 v9, 0x0

    move v12, v10

    const/4 v10, 0x0

    move v14, v11

    move v13, v12

    const-wide/16 v11, 0x0

    move v15, v13

    const/4 v13, 0x0

    move/from16 v17, v14

    move/from16 v16, v15

    const-wide/16 v14, 0x0

    move/from16 v18, v16

    const/16 v16, 0x0

    move/from16 v19, v17

    const/16 v17, 0x0

    move/from16 v20, v18

    const/16 v18, 0x0

    move/from16 v21, v19

    const/16 v19, 0x0

    move/from16 v23, v20

    const/16 v20, 0x0

    move/from16 v26, v23

    const/16 v23, 0x0

    move/from16 v27, v21

    move-object/from16 v21, v2

    move/from16 v2, v27

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v22

    iget-object v3, v0, Lua/nav/geocoding/Place;->b:Ljava/lang/String;

    invoke-static {v3}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const v3, -0x46a78fd1

    invoke-virtual {v8, v3}, Lr0/q;->b0(I)V

    iget-object v3, v0, Lua/nav/geocoding/Place;->b:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    const/16 v24, 0x0

    const v25, 0xfffe

    const/4 v4, 0x0

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

    const/16 v23, 0x0

    move-object/from16 v21, v0

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v22

    :goto_7
    invoke-virtual {v8, v2}, Lr0/q;->q(Z)V

    const/4 v12, 0x1

    goto :goto_8

    :cond_a
    const v0, 0x71b676ef

    invoke-virtual {v8, v0}, Lr0/q;->b0(I)V

    goto :goto_7

    :goto_8
    invoke-virtual {v8, v12}, Lr0/q;->q(Z)V

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lo0/z2;->e(FIJLf1/r;Lr0/q;)V

    invoke-virtual {v8, v2}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_b
    invoke-virtual {v8}, Lr0/q;->W()V

    :goto_9
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
