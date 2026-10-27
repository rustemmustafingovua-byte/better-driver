.class public final synthetic Lod/s4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic A:Lr0/u0;

.field public final synthetic B:Lr0/u0;

.field public final synthetic C:Lr0/u0;

.field public final synthetic D:Lr0/u0;

.field public final synthetic E:Lr0/u0;

.field public final synthetic F:Lr0/u0;

.field public final synthetic l:Z

.field public final synthetic m:Ljava/util/List;

.field public final synthetic n:Led/f;

.field public final synthetic o:Lua/nav/a;

.field public final synthetic p:Z

.field public final synthetic q:Lu9/t;

.field public final synthetic r:Landroid/content/Context;

.field public final synthetic s:Ljd/b;

.field public final synthetic t:Lr0/u0;

.field public final synthetic u:Ljava/io/File;

.field public final synthetic v:Lr0/u0;

.field public final synthetic w:Lr0/u0;

.field public final synthetic x:Lr0/u0;

.field public final synthetic y:Lr0/u0;

.field public final synthetic z:Lr0/a1;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/List;Led/f;Lua/nav/a;ZLu9/t;Landroid/content/Context;Ljd/b;Lr0/u0;Ljava/io/File;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/a1;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lod/s4;->l:Z

    iput-object p2, p0, Lod/s4;->m:Ljava/util/List;

    iput-object p3, p0, Lod/s4;->n:Led/f;

    iput-object p4, p0, Lod/s4;->o:Lua/nav/a;

    iput-boolean p5, p0, Lod/s4;->p:Z

    iput-object p6, p0, Lod/s4;->q:Lu9/t;

    iput-object p7, p0, Lod/s4;->r:Landroid/content/Context;

    iput-object p8, p0, Lod/s4;->s:Ljd/b;

    iput-object p9, p0, Lod/s4;->t:Lr0/u0;

    iput-object p10, p0, Lod/s4;->u:Ljava/io/File;

    iput-object p11, p0, Lod/s4;->v:Lr0/u0;

    iput-object p12, p0, Lod/s4;->w:Lr0/u0;

    iput-object p13, p0, Lod/s4;->x:Lr0/u0;

    iput-object p14, p0, Lod/s4;->y:Lr0/u0;

    iput-object p15, p0, Lod/s4;->z:Lr0/a1;

    move-object/from16 p1, p16

    iput-object p1, p0, Lod/s4;->A:Lr0/u0;

    move-object/from16 p1, p17

    iput-object p1, p0, Lod/s4;->B:Lr0/u0;

    move-object/from16 p1, p18

    iput-object p1, p0, Lod/s4;->C:Lr0/u0;

    move-object/from16 p1, p19

    iput-object p1, p0, Lod/s4;->D:Lr0/u0;

    move-object/from16 p1, p20

    iput-object p1, p0, Lod/s4;->E:Lr0/u0;

    move-object/from16 p1, p21

    iput-object p1, p0, Lod/s4;->F:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lw/b;

    move-object/from16 v10, p2

    check-cast v10, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "$this$item"

    invoke-static {v1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v2, 0x11

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    and-int/2addr v2, v4

    invoke-virtual {v10, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0x8

    int-to-float v1, v1

    invoke-static {v1}, Lu/h;->g(F)Lu/f;

    move-result-object v2

    sget-object v3, Lf1/c;->x:Lf1/h;

    const/4 v6, 0x6

    invoke-static {v2, v3, v10, v6}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v2

    iget-wide v6, v10, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v10}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    sget-object v7, Lf1/o;->a:Lf1/o;

    invoke-static {v7, v10}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v8

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v10}, Lr0/q;->e0()V

    iget-boolean v11, v10, Lr0/q;->S:Z

    if-eqz v11, :cond_1

    invoke-virtual {v10, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v10}, Lr0/q;->o0()V

    :goto_1
    sget-object v9, Le2/g;->f:Le2/e;

    invoke-static {v9, v2, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v6, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Le2/g;->g:Le2/e;

    invoke-static {v10, v2, v3}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {v10, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v8, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v2, v0, Lod/s4;->w:Lr0/u0;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lod/m5;

    sget-object v6, Lod/k5;->a:Lod/k5;

    invoke-static {v3, v6}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, v0, Lod/s4;->r:Landroid/content/Context;

    sget-object v11, Lr0/m;->a:Lr0/e;

    if-eqz v6, :cond_2

    const v1, -0x5c4f9b6f

    invoke-virtual {v10, v1}, Lr0/q;->b0(I)V

    const/16 v23, 0x0

    const v24, 0x1fffe

    move-object/from16 v17, v2

    const-string v2, "\u0413\u043e\u0442\u0443\u044e \u0444\u0430\u0439\u043b\u0438\u2026"

    const/4 v3, 0x0

    move v1, v4

    move v6, v5

    const-wide/16 v4, 0x0

    move v12, v6

    move-object v13, v7

    const-wide/16 v6, 0x0

    move v14, v8

    const/4 v8, 0x0

    move-object/from16 v16, v9

    const/4 v9, 0x0

    move-object/from16 v21, v10

    move-object v15, v11

    const-wide/16 v10, 0x0

    move/from16 v18, v12

    const/4 v12, 0x0

    move-object/from16 v20, v13

    move/from16 v19, v14

    const-wide/16 v13, 0x0

    move-object/from16 v22, v15

    const/4 v15, 0x0

    move-object/from16 v25, v16

    const/16 v16, 0x0

    move-object/from16 v26, v17

    const/16 v17, 0x0

    move/from16 v27, v18

    const/16 v18, 0x0

    move/from16 v28, v19

    const/16 v19, 0x0

    move-object/from16 v29, v20

    const/16 v20, 0x0

    move-object/from16 v30, v22

    const/16 v22, 0x6

    move/from16 v1, v28

    move-object/from16 v0, v29

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-static {v0, v1}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v10, 0x6

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v9, v21

    invoke-static/range {v2 .. v10}, Lo0/u2;->c(Lf1/r;JJIFLr0/q;I)V

    move-object v10, v9

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    move-object/from16 v2, p0

    :goto_2
    move-object/from16 v1, v25

    goto/16 :goto_6

    :cond_2
    move/from16 v27, v1

    move-object/from16 v26, v2

    move v2, v4

    move-object v0, v7

    move v1, v8

    move-object/from16 v25, v9

    move-object/from16 v30, v11

    instance-of v4, v3, Lod/l5;

    if-eqz v4, :cond_5

    const v4, -0x5c4dc958

    invoke-virtual {v10, v4}, Lr0/q;->b0(I)V

    move-object v4, v3

    check-cast v4, Lod/l5;

    iget v5, v4, Lod/l5;->a:F

    const/16 v6, 0x64

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const-string v6, "\u041d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u043d\u044f: "

    const-string v7, " %"

    invoke-static {v5, v6, v7}, Lm/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v23, 0x0

    const v24, 0x1fffe

    move-object v6, v3

    const/4 v3, 0x0

    move v8, v2

    move-object v7, v4

    move-object v2, v5

    const-wide/16 v4, 0x0

    move-object v9, v6

    move-object v11, v7

    const-wide/16 v6, 0x0

    move v12, v8

    const/4 v8, 0x0

    move-object v13, v9

    const/4 v9, 0x0

    move-object/from16 v21, v10

    move-object v14, v11

    const-wide/16 v10, 0x0

    move v15, v12

    const/4 v12, 0x0

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    const-wide/16 v13, 0x0

    move/from16 v18, v15

    const/4 v15, 0x0

    move-object/from16 v19, v16

    const/16 v16, 0x0

    move-object/from16 v20, v17

    const/16 v17, 0x0

    move/from16 v22, v18

    const/16 v18, 0x0

    move-object/from16 v27, v19

    const/16 v19, 0x0

    move-object/from16 v28, v20

    const/16 v20, 0x0

    move/from16 v29, v22

    const/16 v22, 0x0

    move-object/from16 p3, v0

    move-object/from16 v1, v27

    move-object/from16 v0, v28

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    invoke-virtual {v10, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v13, v30

    if-nez v1, :cond_3

    if-ne v2, v13, :cond_4

    :cond_3
    new-instance v2, Lod/x4;

    const/4 v1, 0x0

    invoke-direct {v2, v1, v0}, Lod/x4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v2, Li9/a;

    move-object/from16 v0, p3

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v0, v14}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v3

    move-object/from16 v21, v10

    const/4 v10, 0x0

    const/16 v12, 0x30

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v11, v21

    invoke-static/range {v2 .. v12}, Lo0/u2;->b(Li9/a;Lf1/r;JJIFLi9/c;Lr0/q;I)V

    move-object v10, v11

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    move-object/from16 v2, p0

    move-object/from16 v30, v13

    goto/16 :goto_2

    :cond_5
    move-object v1, v3

    move-object/from16 v13, v30

    instance-of v2, v1, Lod/h5;

    if-eqz v2, :cond_9

    const v2, -0x5c4a7ba0

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    const-wide v2, 0xff2e7d32L

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v4

    sget-object v8, Lt2/k;->q:Lt2/k;

    const/16 v23, 0x0

    const v24, 0x1ffda

    const-string v2, "\u041d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e \u2713"

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v21, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v30, v13

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v22, 0x30186

    move-object/from16 v28, v1

    move-object/from16 v1, v30

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    move-object/from16 v3, v28

    check-cast v3, Lod/h5;

    iget-object v2, v3, Lod/h5;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    const v2, -0x5c4812e6

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    move-object/from16 v15, v25

    goto/16 :goto_4

    :cond_6
    const v3, -0x5c4812e5

    invoke-virtual {v10, v3}, Lr0/q;->b0(I)V

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->l:Lp2/m0;

    sget-object v4, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/u0;

    iget-wide v5, v5, Lo0/u0;->s:J

    const/16 v23, 0x0

    const v24, 0xfffa

    move-object v7, v2

    const-string v2, "\u041d\u043e\u043c\u0435\u0440 (\u0437\u0430 \u043d\u0438\u043c \u043c\u043e\u0436\u043d\u0430 \u043f\u043e\u043f\u0440\u043e\u0441\u0438\u0442\u0438 \u0432\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u0434\u0430\u043d\u0456):"

    move-object/from16 v20, v3

    const/4 v3, 0x0

    move-wide v8, v5

    move-object v5, v7

    const-wide/16 v6, 0x0

    move-object v11, v4

    move-wide/from16 v36, v8

    move-object v9, v5

    move-wide/from16 v4, v36

    const/4 v8, 0x0

    move-object v12, v9

    const/4 v9, 0x0

    move-object/from16 v21, v10

    move-object v13, v11

    const-wide/16 v10, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    move-object/from16 v16, v13

    move-object v15, v14

    const-wide/16 v13, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move-object/from16 v19, v17

    const/16 v17, 0x0

    move-object/from16 v22, v18

    const/16 v18, 0x0

    move-object/from16 v28, v19

    const/16 v19, 0x0

    move-object/from16 v29, v22

    const/16 v22, 0x6

    move-object/from16 v30, v1

    move-object/from16 v1, v29

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    invoke-static/range {v27 .. v27}, La0/e;->a(F)La0/d;

    move-result-object v3

    invoke-virtual {v10, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v4, v1, Lo0/u0;->c:J

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v0, v14}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v1

    move-object/from16 v15, v25

    invoke-virtual {v10, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v12, v28

    invoke-virtual {v10, v12}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_7

    move-object/from16 v2, v30

    if-ne v6, v2, :cond_8

    goto :goto_3

    :cond_7
    move-object/from16 v2, v30

    :goto_3
    new-instance v6, Lnd/t;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v15, v12}, Lnd/t;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    check-cast v6, Li9/a;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v9, v8, v6, v7}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v1

    new-instance v6, Lnd/e;

    const/16 v7, 0x8

    invoke-direct {v6, v12, v7}, Lnd/e;-><init>(Ljava/lang/String;I)V

    const v7, 0x67510d0e

    invoke-static {v7, v6, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v11

    const/high16 v13, 0xc00000

    const/16 v14, 0x78

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v21, v10

    const/4 v10, 0x0

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    move-object/from16 v12, v21

    invoke-static/range {v2 .. v14}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move-object v10, v12

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    :goto_4
    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    move-object/from16 v2, p0

    move-object/from16 v30, v1

    move-object v1, v15

    goto/16 :goto_6

    :cond_9
    move-object v15, v13

    move-object v13, v1

    move-object v1, v15

    move-object/from16 v15, v25

    instance-of v2, v13, Lod/i5;

    if-eqz v2, :cond_a

    const v2, -0x3485f404    # -1.6387068E7f

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    move-object v3, v13

    check-cast v3, Lod/i5;

    iget-object v2, v3, Lod/i5;->a:Ljava/lang/String;

    sget-object v3, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/u0;

    iget-wide v4, v3, Lo0/u0;->w:J

    const/16 v23, 0x0

    const v24, 0x1fffa

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v21, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v25, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v30, v1

    move-object/from16 v1, v25

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    :goto_5
    move-object/from16 v2, p0

    goto :goto_6

    :cond_a
    move-object/from16 v30, v1

    move-object v1, v15

    const/4 v12, 0x0

    sget-object v2, Lod/j5;->a:Lod/j5;

    invoke-static {v13, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const v2, -0x3485e915    # -1.6389867E7f

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    goto :goto_5

    :goto_6
    iget-boolean v13, v2, Lod/s4;->l:Z

    iget-object v14, v2, Lod/s4;->m:Ljava/util/List;

    iget-object v3, v2, Lod/s4;->n:Led/f;

    if-nez v13, :cond_b

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v3, Led/f;->a:Ljava/lang/String;

    invoke-static {v4}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x1

    :goto_7
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_b
    const/4 v4, 0x0

    goto :goto_7

    :goto_8
    invoke-static {v0, v5}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v6

    iget-object v12, v2, Lod/s4;->o:Lua/nav/a;

    invoke-virtual {v10, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v10, v13}, Lr0/q;->h(Z)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v10, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    iget-boolean v15, v2, Lod/s4;->p:Z

    invoke-virtual {v10, v15}, Lr0/q;->h(Z)Z

    move-result v7

    or-int/2addr v5, v7

    iget-object v7, v2, Lod/s4;->q:Lu9/t;

    invoke-virtual {v10, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-virtual {v10, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    iget-object v8, v2, Lod/s4;->s:Ljd/b;

    invoke-virtual {v10, v8}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v5, v9

    iget-object v9, v2, Lod/s4;->t:Lr0/u0;

    invoke-virtual {v10, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v5, v11

    iget-object v11, v2, Lod/s4;->u:Ljava/io/File;

    invoke-virtual {v10, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    or-int v5, v5, v16

    move-object/from16 v16, v1

    iget-object v1, v2, Lod/s4;->v:Lr0/u0;

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v17

    or-int v5, v5, v17

    invoke-virtual {v10, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v17

    or-int v5, v5, v17

    move-object/from16 v17, v1

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v3

    iget-object v3, v2, Lod/s4;->y:Lr0/u0;

    move-object/from16 v19, v3

    iget-object v3, v2, Lod/s4;->z:Lr0/a1;

    if-nez v5, :cond_d

    move-object/from16 v5, v30

    if-ne v1, v5, :cond_c

    :goto_9
    move-object/from16 v23, v11

    goto :goto_a

    :cond_c
    move-object v11, v1

    move-object/from16 v26, v3

    move v1, v13

    move v3, v15

    move-object/from16 v25, v19

    move-object/from16 v14, v24

    move-object v13, v7

    move-object v15, v12

    goto :goto_b

    :cond_d
    move-object/from16 v5, v30

    goto :goto_9

    :goto_a
    new-instance v11, Lod/u4;

    iget-object v1, v2, Lod/s4;->x:Lr0/u0;

    move-object/from16 v18, v1

    iget-object v1, v2, Lod/s4;->A:Lr0/u0;

    move-object/from16 v27, v1

    iget-object v1, v2, Lod/s4;->B:Lr0/u0;

    move-object/from16 v28, v1

    iget-object v1, v2, Lod/s4;->C:Lr0/u0;

    move-object/from16 v20, v26

    move-object/from16 v26, v17

    move-object/from16 v17, v20

    move-object/from16 v29, v1

    move-object/from16 v20, v3

    move-object/from16 v22, v8

    move-object/from16 v25, v9

    move-object/from16 v21, v16

    move-object/from16 v16, v7

    invoke-direct/range {v11 .. v29}, Lod/u4;-><init>(Lua/nav/a;ZLjava/util/List;ZLu9/t;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/a1;Landroid/content/Context;Ljd/b;Ljava/io/File;Led/f;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V

    move v1, v13

    move v3, v15

    move-object/from16 v13, v16

    move-object/from16 v25, v19

    move-object/from16 v26, v20

    move-object/from16 v16, v21

    move-object/from16 v14, v24

    move-object v15, v12

    invoke-virtual {v10, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_b
    check-cast v11, Li9/a;

    new-instance v7, Lod/y4;

    invoke-direct {v7, v1, v3}, Lod/y4;-><init>(ZZ)V

    const v3, 0x19280577    # 8.6865E-24f

    invoke-static {v3, v7, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v3

    const v12, 0x30000030

    move-object v7, v13

    const/16 v13, 0x1f8

    move-object/from16 v30, v5

    const/4 v5, 0x0

    move-object/from16 v21, v10

    move-object v10, v3

    move-object v3, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object/from16 v17, v9

    const/4 v9, 0x0

    move-object v2, v11

    move-object/from16 v32, v16

    move-object/from16 v31, v17

    move-object/from16 v11, v21

    move-object/from16 v33, v30

    invoke-static/range {v2 .. v13}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v10, v11

    iget-object v2, v14, Led/f;->a:Ljava/lang/String;

    invoke-static {v2}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const v2, -0x5c2f9d23

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    sget-object v2, Led/f;->Companion:Led/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "not_configured"

    invoke-static {v2}, Led/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->l:Lp2/m0;

    sget-object v4, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/u0;

    iget-wide v4, v4, Lo0/u0;->w:J

    const/16 v23, 0x0

    const v24, 0xfffa

    move-object/from16 v20, v3

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v21, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v19, v18

    const/16 v18, 0x0

    move-object/from16 v22, v19

    const/16 v19, 0x0

    move-object/from16 v27, v22

    const/16 v22, 0x0

    move/from16 v28, v1

    move-object/from16 v1, v27

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    const/4 v12, 0x0

    :goto_c
    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    move-object/from16 v2, p0

    goto :goto_d

    :cond_e
    move/from16 v28, v1

    move-object v1, v15

    const/4 v12, 0x0

    const v2, -0x5c2dc425

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    goto :goto_c

    :goto_d
    iget-object v3, v2, Lod/s4;->D:Lr0/u0;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    if-nez v28, :cond_f

    const/4 v4, 0x1

    :goto_e
    move-object/from16 v17, v3

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_f
    const/4 v4, 0x0

    goto :goto_e

    :goto_f
    invoke-static {v0, v14}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v3

    invoke-virtual {v10, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v13, v31

    invoke-virtual {v10, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    move-object/from16 v15, v32

    invoke-virtual {v10, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_11

    move-object/from16 v5, v33

    if-ne v6, v5, :cond_10

    goto :goto_10

    :cond_10
    move-object/from16 v1, v17

    move-object/from16 v19, v25

    move-object/from16 v15, v26

    goto :goto_11

    :cond_11
    move-object/from16 v5, v33

    :goto_10
    new-instance v11, Lc1/a;

    const/16 v18, 0x2

    move-object v12, v1

    move-object/from16 v16, v15

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    invoke-direct/range {v11 .. v18}, Lc1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v19, v14

    move-object/from16 v1, v17

    invoke-virtual {v10, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v6, v11

    :goto_11
    check-cast v6, Li9/a;

    sget-object v9, Lod/m;->V:Lz0/d;

    const v11, 0x30000030

    const/16 v12, 0x1f8

    move-object/from16 v30, v5

    const/4 v5, 0x0

    move-object v2, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v12}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-static/range {v19 .. v19}, Lod/m;->q(Lr0/u0;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v15}, Lr0/a1;->g()F

    move-result v2

    float-to-int v2, v2

    const-string v3, "\u0427\u0435\u0440\u0435\u0437 \u0441\u0438\u0441\u0442\u0435\u043c\u0443 \u0442\u0435\u0436 \u0456\u0434\u0435 \u043e\u0431\u0440\u0456\u0437\u0430\u043d\u0438\u0439 \u0444\u0430\u0439\u043b (\u0440\u0430\u0434\u0456\u0443\u0441 "

    const-string v4, " \u043c)."

    invoke-static {v2, v3, v4}, Lm/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_12
    const-string v2, "\u041e\u0431\u0440\u0456\u0437\u0430\u043d\u043d\u044f \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e: \u0444\u0430\u0439\u043b \u043f\u0456\u0434\u0435 \u0437 \u043f\u043e\u0432\u043d\u0438\u043c \u0442\u0440\u0435\u043a\u043e\u043c."

    invoke-static {v2}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_12
    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/h5;

    iget-object v4, v4, Lo0/h5;->l:Lp2/m0;

    sget-object v5, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/u0;

    iget-wide v6, v6, Lo0/u0;->s:J

    const/16 v23, 0x0

    const v24, 0xfffa

    move-object v8, v3

    const/4 v3, 0x0

    move-object/from16 v20, v4

    move-object v9, v5

    move-wide v4, v6

    const-wide/16 v6, 0x0

    move-object v11, v8

    const/4 v8, 0x0

    move-object v12, v9

    const/4 v9, 0x0

    move-object/from16 v21, v10

    move-object v13, v11

    const-wide/16 v10, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    move-object v15, v13

    move-object/from16 v16, v14

    const-wide/16 v13, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move-object/from16 v19, v17

    const/16 v17, 0x0

    move-object/from16 v22, v18

    const/16 v18, 0x0

    move-object/from16 v25, v19

    const/16 v19, 0x0

    move-object/from16 v26, v22

    const/16 v22, 0x0

    move-object/from16 p3, v1

    move-object/from16 v34, v25

    move-object/from16 v35, v26

    move-object/from16 v1, v30

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    invoke-interface/range {p3 .. p3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v13, 0x1

    if-le v2, v13, :cond_13

    if-nez v28, :cond_13

    move v4, v13

    :goto_13
    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_14

    :cond_13
    const/4 v4, 0x0

    goto :goto_13

    :goto_14
    invoke-static {v0, v14}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v3

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_14

    new-instance v0, Lod/p4;

    const/4 v1, 0x4

    move-object/from16 v14, p0

    iget-object v2, v14, Lod/s4;->E:Lr0/u0;

    invoke-direct {v0, v2, v1}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v10, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_15

    :cond_14
    move-object/from16 v14, p0

    :goto_15
    move-object v2, v0

    check-cast v2, Li9/a;

    sget-object v9, Lod/m;->W:Lz0/d;

    const v11, 0x30000036

    const/16 v12, 0x1f8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v12}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    iget-object v0, v14, Lod/s4;->F:Lr0/u0;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_15

    const v0, -0x5c1eb296

    invoke-virtual {v10, v0}, Lr0/q;->b0(I)V

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    move v1, v13

    goto :goto_16

    :cond_15
    const v0, -0x5c1eb295

    invoke-virtual {v10, v0}, Lr0/q;->b0(I)V

    move-object/from16 v15, v34

    invoke-virtual {v10, v15}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    move-object/from16 v12, v35

    invoke-virtual {v10, v12}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v4, v1, Lo0/u0;->s:J

    const/16 v23, 0x0

    const v24, 0xfffa

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v21, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move/from16 v29, v13

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v20, v0

    move/from16 v1, v29

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    :goto_16
    invoke-virtual {v10, v1}, Lr0/q;->q(Z)V

    goto :goto_17

    :cond_16
    const v0, -0x3486b35c    # -1.6338084E7f

    invoke-virtual {v10, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_17
    invoke-virtual {v10}, Lr0/q;->W()V

    :goto_17
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
