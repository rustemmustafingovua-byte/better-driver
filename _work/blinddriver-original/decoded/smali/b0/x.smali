.class public final synthetic Lb0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lb0/x;->l:I

    iput-object p3, p0, Lb0/x;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Lb0/x;->l:I

    iput-object p2, p0, Lb0/x;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 52

    move-object/from16 v0, p0

    iget v2, v0, Lb0/x;->l:I

    packed-switch v2, :pswitch_data_0

    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lkd/j;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x9

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v2, v1}, Lod/v6;->E(Lkd/j;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lad/r2;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x9

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v2, v1}, Lod/v6;->I(Lad/r2;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lhd/e;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x9

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v2, v1}, Lod/v6;->r(Lhd/e;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_2
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lvc/f;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x9

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v2, v1}, Lod/v6;->b(Lvc/f;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_3
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lod/i0;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v2, v1}, Lod/v6;->h(Lod/i0;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_4
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Ljd/b;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x9

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v2, v1}, Lod/v6;->l(Ljd/b;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_5
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lod/j0;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x9

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v2, v1}, Lod/v6;->j(Lod/j0;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_6
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lwc/b;

    move-object/from16 v7, p1

    check-cast v7, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/2addr v1, v5

    invoke-virtual {v7, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lf1/c;->v:Lf1/i;

    const/16 v2, 0xa

    int-to-float v2, v2

    const/4 v3, 0x6

    int-to-float v3, v3

    sget-object v6, Lf1/o;->a:Lf1/o;

    invoke-static {v6, v2, v3}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v2

    sget-object v3, Lu/h;->a:Lu/n;

    const/16 v8, 0x30

    invoke-static {v3, v1, v7, v8}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v1

    iget-wide v8, v7, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v2, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v10, v7, Lr0/q;->S:Z

    if-eqz v10, :cond_1

    invoke-virtual {v7, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lr0/q;->o0()V

    :goto_1
    sget-object v10, Le2/g;->f:Le2/e;

    invoke-static {v10, v1, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v8, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v8, Le2/g;->g:Le2/e;

    invoke-static {v7, v3, v8}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v3, Le2/g;->h:Le2/d;

    invoke-static {v7, v3}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v11, Le2/g;->d:Le2/e;

    invoke-static {v11, v2, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/16 v2, 0x18

    invoke-static {v2}, La/a;->k(I)J

    move-result-wide v12

    const/16 v22, 0x0

    const v23, 0x1fff6

    move-object v2, v1

    const-string v1, "\ud83d\udcf7"

    move-object v14, v2

    const/4 v2, 0x0

    move-object v15, v3

    move/from16 v16, v4

    const-wide/16 v3, 0x0

    move-object/from16 v20, v7

    const/4 v7, 0x0

    move-object/from16 v17, v8

    const/4 v8, 0x0

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    const-wide/16 v9, 0x0

    move-object/from16 v21, v11

    const/4 v11, 0x0

    move/from16 v24, v5

    move-object/from16 v25, v6

    move-wide v5, v12

    const-wide/16 v12, 0x0

    move-object/from16 v26, v14

    const/4 v14, 0x0

    move-object/from16 v27, v15

    const/4 v15, 0x0

    move/from16 v28, v16

    const/16 v16, 0x0

    move-object/from16 v29, v17

    const/16 v17, 0x0

    move-object/from16 v30, v18

    const/16 v18, 0x0

    move-object/from16 v31, v19

    const/16 v19, 0x0

    move-object/from16 v32, v21

    const/16 v21, 0xc06

    move-object/from16 p0, v0

    move-object/from16 v0, v25

    move-object/from16 v34, v26

    move-object/from16 v36, v27

    move-object/from16 v35, v29

    move-object/from16 v33, v31

    move-object/from16 v37, v32

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v7, v20

    const/16 v1, 0x8

    int-to-float v1, v1

    invoke-static {v0, v1}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v7}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/high16 v0, 0x3f800000    # 1.0f

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "invalid weight; must be greater than zero"

    invoke-static {v1}, Lv/a;->a(Ljava/lang/String;)V

    :goto_2
    new-instance v1, Lu/j0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lu/j0;-><init>(FZ)V

    sget-object v0, Lu/h;->c:Lu/c;

    sget-object v2, Lf1/c;->x:Lf1/h;

    const/4 v3, 0x0

    invoke-static {v0, v2, v7, v3}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v0

    iget-wide v2, v7, Lr0/q;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v7}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    invoke-static {v1, v7}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v7}, Lr0/q;->e0()V

    iget-boolean v4, v7, Lr0/q;->S:Z

    if-eqz v4, :cond_3

    move-object/from16 v4, v30

    invoke-virtual {v7, v4}, Lr0/q;->l(Li9/a;)V

    :goto_3
    move-object/from16 v4, v33

    goto :goto_4

    :cond_3
    invoke-virtual {v7}, Lr0/q;->o0()V

    goto :goto_3

    :goto_4
    invoke-static {v4, v0, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v14, v34

    invoke-static {v14, v3, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v0, v35

    move-object/from16 v15, v36

    invoke-static {v2, v7, v0, v7, v15}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v0, v37

    invoke-static {v0, v1, v7}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v0, p0

    iget-wide v1, v0, Lwc/b;->b:D

    iget-object v3, v0, Lwc/b;->a:Lua/nav/cameras/SpeedCamera;

    sget-object v4, Lcd/j;->a:Lcd/j;

    invoke-virtual {v4, v1, v2}, Lcd/j;->b(D)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcd/d;->K:Lcd/c;

    invoke-virtual {v2, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    sget-wide v3, Lm1/p;->c:J

    sget-object v5, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v7, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/h5;

    iget-object v6, v6, Lo0/h5;->h:Lp2/m0;

    const/16 v22, 0x0

    const v23, 0xfffa

    move-object v8, v2

    const/4 v2, 0x0

    move-object v9, v5

    move-object/from16 v19, v6

    const-wide/16 v5, 0x0

    move-object/from16 v20, v7

    const/4 v7, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move-object v12, v9

    move-object v11, v10

    const-wide/16 v9, 0x0

    move-object v13, v11

    const/4 v11, 0x0

    move-object v15, v12

    move-object v14, v13

    const-wide/16 v12, 0x0

    move-object/from16 v16, v14

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

    const/16 v21, 0x180

    move-object/from16 v0, v25

    move-object/from16 v38, v26

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v7, v20

    iget-object v1, v0, Lua/nav/cameras/SpeedCamera;->e:Ljava/lang/String;

    const-wide v2, 0xffcfd8dcL

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v3

    move-object/from16 v15, v38

    invoke-virtual {v7, v15}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->l:Lp2/m0;

    const/16 v22, 0xc00

    const v23, 0xdffa

    move-object/from16 v19, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v7, v20

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lr0/q;->q(Z)V

    iget-object v0, v0, Lua/nav/cameras/SpeedCamera;->d:Ljava/lang/Integer;

    if-nez v0, :cond_4

    const v0, 0x1385ed9f

    invoke-virtual {v7, v0}, Lr0/q;->b0(I)V

    :goto_5
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lr0/q;->q(Z)V

    const/4 v2, 0x1

    goto :goto_6

    :cond_4
    const v1, 0x1385eda0

    invoke-virtual {v7, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lwc/b;->c:F

    iget v5, v0, Lwc/b;->d:F

    const/4 v8, 0x0

    const/16 v9, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lod/e4;->q(Ljava/lang/Integer;FLf1/r;FFZLr0/q;II)V

    goto :goto_5

    :goto_6
    invoke-virtual {v7, v2}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_5
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_7
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_7
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/routing/Route;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v3, v1, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_6

    move v3, v5

    goto :goto_8

    :cond_6
    move v3, v6

    :goto_8
    and-int/2addr v1, v5

    invoke-virtual {v2, v1, v3}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x8

    int-to-float v1, v1

    sget-object v3, Lf1/o;->a:Lf1/o;

    invoke-static {v3, v1}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    sget-object v3, Lu/h;->c:Lu/c;

    sget-object v4, Lf1/c;->x:Lf1/h;

    invoke-static {v3, v4, v2, v6}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    iget-wide v7, v2, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v1, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v8, Le2/h;->b:Le2/g;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Le2/g;->b:Le2/f;

    invoke-virtual {v2}, Lr0/q;->e0()V

    iget-boolean v9, v2, Lr0/q;->S:Z

    if-eqz v9, :cond_7

    invoke-virtual {v2, v8}, Lr0/q;->l(Li9/a;)V

    goto :goto_9

    :cond_7
    invoke-virtual {v2}, Lr0/q;->o0()V

    :goto_9
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v3, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v7, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Le2/g;->g:Le2/e;

    invoke-static {v2, v3, v4}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v3, Le2/g;->h:Le2/d;

    invoke-static {v2, v3}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v1, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v0}, Lod/m;->J(Lua/nav/routing/Route;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v2, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/h5;

    iget-object v4, v4, Lo0/h5;->h:Lp2/m0;

    const/16 v22, 0x0

    const v23, 0xfffe

    move-object/from16 v20, v2

    const/4 v2, 0x0

    move-object v7, v3

    move-object/from16 v19, v4

    const-wide/16 v3, 0x0

    move v8, v5

    move v9, v6

    const-wide/16 v5, 0x0

    move-object v10, v7

    const/4 v7, 0x0

    move v11, v8

    const/4 v8, 0x0

    move v13, v9

    move-object v12, v10

    const-wide/16 v9, 0x0

    move v14, v11

    const/4 v11, 0x0

    move-object v15, v12

    move/from16 v16, v13

    const-wide/16 v12, 0x0

    move/from16 v17, v14

    const/4 v14, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move/from16 v21, v16

    const/16 v16, 0x0

    move/from16 v24, v17

    const/16 v17, 0x0

    move-object/from16 v25, v18

    const/16 v18, 0x0

    move/from16 v26, v21

    const/16 v21, 0x0

    move-object/from16 v39, v25

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    iget-wide v2, v0, Lua/nav/routing/Route;->b:D

    sget-object v4, Lcd/j;->a:Lcd/j;

    invoke-virtual {v4, v2, v3}, Lcd/j;->b(D)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v39

    invoke-virtual {v1, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/h5;

    iget-object v4, v4, Lo0/h5;->l:Lp2/m0;

    move-object v1, v2

    const/4 v2, 0x0

    move-object v15, v3

    move-object/from16 v19, v4

    const-wide/16 v3, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move-object/from16 v39, v18

    const/16 v18, 0x0

    move-object/from16 v40, v39

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    iget-object v2, v0, Lua/nav/routing/Route;->g:Ljava/lang/String;

    invoke-static {v2}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const v2, 0x61158600

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    iget-object v0, v0, Lua/nav/routing/Route;->g:Ljava/lang/String;

    move-object/from16 v15, v40

    invoke-virtual {v1, v15}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->l:Lp2/m0;

    const/16 v22, 0xc00

    const v23, 0xdffe

    move-object/from16 v19, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v1

    move-object v1, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    const/4 v13, 0x0

    :goto_a
    invoke-virtual {v1, v13}, Lr0/q;->q(Z)V

    const/4 v14, 0x1

    goto :goto_b

    :cond_8
    const/4 v13, 0x0

    const v0, 0x61169809

    invoke-virtual {v1, v0}, Lr0/q;->b0(I)V

    goto :goto_a

    :goto_b
    invoke-virtual {v1, v14}, Lr0/q;->q(Z)V

    goto :goto_c

    :cond_9
    move-object v1, v2

    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_c
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_8
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lad/a0;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v3, v1, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_a

    move v3, v5

    goto :goto_d

    :cond_a
    move v3, v6

    :goto_d
    and-int/2addr v1, v5

    invoke-virtual {v2, v1, v3}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0xa

    int-to-float v1, v1

    const/4 v3, 0x6

    int-to-float v3, v3

    sget-object v4, Lf1/o;->a:Lf1/o;

    invoke-static {v4, v1, v3}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v1

    sget-object v3, Lu/h;->c:Lu/c;

    sget-object v7, Lf1/c;->x:Lf1/h;

    invoke-static {v3, v7, v2, v6}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    iget-wide v7, v2, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v1, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v2}, Lr0/q;->e0()V

    iget-boolean v10, v2, Lr0/q;->S:Z

    if-eqz v10, :cond_b

    invoke-virtual {v2, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_e

    :cond_b
    invoke-virtual {v2}, Lr0/q;->o0()V

    :goto_e
    sget-object v10, Le2/g;->f:Le2/e;

    invoke-static {v10, v3, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v8, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Le2/g;->g:Le2/e;

    invoke-static {v2, v7, v8}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v7, Le2/g;->h:Le2/d;

    invoke-static {v2, v7}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v11, Le2/g;->d:Le2/e;

    invoke-static {v11, v1, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-boolean v1, v0, Lad/a0;->n:Z

    iget-object v12, v0, Lad/a0;->f:Lua/nav/routing/Step;

    sget-object v13, Lcd/j;->a:Lcd/j;

    if-eqz v1, :cond_c

    const v1, -0x16f0fd98

    invoke-virtual {v2, v1}, Lr0/q;->b0(I)V

    iget-wide v14, v0, Lad/a0;->o:D

    invoke-virtual {v13, v14, v15}, Lcd/j;->b(D)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v14, Lcd/d;->S:Lcd/c;

    invoke-virtual {v14, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v3

    move-object v15, v4

    sget-wide v3, Lm1/p;->c:J

    sget-object v5, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v2, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->k:Lp2/m0;

    const/16 v22, 0x0

    const v23, 0xfffa

    move-object/from16 v20, v2

    const/4 v2, 0x0

    move-object/from16 v19, v5

    move/from16 v16, v6

    const-wide/16 v5, 0x0

    move-object/from16 v17, v7

    const/4 v7, 0x0

    move-object/from16 v18, v8

    const/4 v8, 0x0

    move-object/from16 v21, v9

    move-object/from16 v24, v10

    const-wide/16 v9, 0x0

    move-object/from16 v25, v11

    const/4 v11, 0x0

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    const-wide/16 v12, 0x0

    move-object/from16 v28, v14

    const/4 v14, 0x0

    move-object/from16 v29, v15

    const/4 v15, 0x0

    move/from16 v30, v16

    const/16 v16, 0x0

    move-object/from16 v31, v17

    const/16 v17, 0x0

    move-object/from16 v32, v18

    const/16 v18, 0x0

    move-object/from16 v33, v21

    const/16 v21, 0x180

    move-object/from16 v34, v0

    move-object/from16 v41, v24

    move-object/from16 v45, v25

    move-object/from16 v46, v26

    move-object/from16 v47, v27

    move-object/from16 v42, v28

    move-object/from16 v49, v29

    move/from16 v0, v30

    move-object/from16 v44, v31

    move-object/from16 v43, v32

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lr0/q;->q(Z)V

    goto :goto_f

    :cond_c
    move-object/from16 v34, v0

    move-object v1, v2

    move-object/from16 v42, v3

    move-object/from16 v49, v4

    move v0, v6

    move-object/from16 v44, v7

    move-object/from16 v43, v8

    move-object/from16 v33, v9

    move-object/from16 v41, v10

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object/from16 v47, v13

    const v2, -0x16eed204

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v1, v0}, Lr0/q;->q(Z)V

    :goto_f
    sget-object v2, Lf1/c;->v:Lf1/i;

    sget-object v3, Lu/h;->a:Lu/n;

    const/16 v4, 0x30

    invoke-static {v3, v2, v1, v4}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v2

    iget-wide v5, v1, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    move-object/from16 v15, v49

    invoke-static {v15, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v6

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v7, v1, Lr0/q;->S:Z

    if-eqz v7, :cond_d

    move-object/from16 v7, v33

    invoke-virtual {v1, v7}, Lr0/q;->l(Li9/a;)V

    :goto_10
    move-object/from16 v7, v41

    goto :goto_11

    :cond_d
    invoke-virtual {v1}, Lr0/q;->o0()V

    goto :goto_10

    :goto_11
    invoke-static {v7, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v14, v42

    invoke-static {v14, v5, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v2, v43

    move-object/from16 v5, v44

    invoke-static {v3, v1, v2, v1, v5}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v2, v45

    invoke-static {v2, v6, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    int-to-float v2, v4

    invoke-static {v15, v2}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    move-object/from16 v3, v46

    invoke-static {v3, v2, v1, v4}, Lod/e4;->f(Lua/nav/routing/Step;Lf1/r;Lr0/q;I)V

    move-object/from16 v2, v34

    iget-wide v4, v2, Lad/a0;->h:D

    move-object/from16 v6, v47

    invoke-virtual {v6, v4, v5}, Lcd/j;->b(D)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v1

    move-object v1, v4

    sget-wide v3, Lm1/p;->c:J

    const/16 v5, 0x18

    invoke-static {v5}, La/a;->k(I)J

    move-result-wide v5

    sget-object v7, Lt2/k;->q:Lt2/k;

    const/16 v8, 0x1a

    invoke-static {v8}, La/a;->k(I)J

    move-result-wide v12

    const/16 v8, 0x58

    int-to-float v8, v8

    invoke-static {v15, v8}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v8

    const/16 v22, 0x6

    const v23, 0x1fbd0

    move-object v2, v8

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v21, 0x30db0

    move-object/from16 v0, v34

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    const-string v24, ""

    if-eqz v46, :cond_e

    invoke-virtual/range {v46 .. v46}, Lua/nav/routing/Step;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    :cond_e
    move-object/from16 v2, v24

    :cond_f
    sget-object v5, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/h5;

    iget-object v6, v6, Lo0/h5;->k:Lp2/m0;

    const/16 v7, 0x11

    invoke-static {v7}, La/a;->k(I)J

    move-result-wide v12

    const/high16 v7, 0x3f800000    # 1.0f

    float-to-double v8, v7

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_10

    :goto_12
    move-object/from16 v20, v1

    move-object v1, v2

    goto :goto_13

    :cond_10
    const-string v8, "invalid weight; must be greater than zero"

    invoke-static {v8}, Lv/a;->a(Ljava/lang/String;)V

    goto :goto_12

    :goto_13
    new-instance v2, Lu/j0;

    const/4 v8, 0x1

    invoke-direct {v2, v7, v8}, Lu/j0;-><init>(FZ)V

    const/16 v22, 0xc06

    const v23, 0xdbf8

    move-object v7, v5

    move-object/from16 v19, v6

    const-wide/16 v5, 0x0

    move-object v9, v7

    const/4 v7, 0x0

    move/from16 v48, v8

    const/4 v8, 0x0

    move-object v11, v9

    const-wide/16 v9, 0x0

    move-object v14, v11

    const/4 v11, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x3

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v21, v18

    const/16 v18, 0x0

    move-object/from16 v25, v21

    const/16 v21, 0x180

    move-object/from16 v34, v0

    move-object/from16 v50, v25

    move/from16 v0, v48

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lr0/q;->q(Z)V

    move-object/from16 v2, v34

    iget-object v2, v2, Lad/a0;->i:Lua/nav/routing/Step;

    if-nez v2, :cond_11

    const v2, -0x16e6dcdc

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lr0/q;->q(Z)V

    goto/16 :goto_14

    :cond_11
    const/4 v3, 0x0

    const v4, -0x16e6dcdb

    invoke-virtual {v1, v4}, Lr0/q;->b0(I)V

    sget-object v4, Lcd/d;->T:Lcd/c;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lod/e4;->s(Lua/nav/routing/Step;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lod/e4;->t(Lua/nav/routing/Step;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_12

    move-object/from16 v5, v24

    :cond_12
    invoke-virtual {v2}, Lua/nav/routing/Step;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0xffbbdefbL

    invoke-static {v3, v4}, Lm1/v;->d(J)J

    move-result-wide v3

    move-object/from16 v14, v50

    invoke-virtual {v1, v14}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->l:Lp2/m0;

    const/16 v22, 0xc00

    const v23, 0xdffa

    move-object/from16 v20, v1

    move-object v1, v2

    const/4 v2, 0x0

    move-object/from16 v19, v5

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x180

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lr0/q;->q(Z)V

    :goto_14
    invoke-virtual {v1, v0}, Lr0/q;->q(Z)V

    goto :goto_15

    :cond_13
    move-object v1, v2

    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_15
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_9
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v2, v1}, Lod/g3;->e(Lua/nav/c;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_a
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lad/u2;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v3, v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_14

    move v3, v5

    goto :goto_16

    :cond_14
    move v3, v4

    :goto_16
    and-int/2addr v1, v5

    invoke-virtual {v2, v1, v3}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lf1/c;->p:Lf1/j;

    sget-object v3, Lf1/o;->a:Lf1/o;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v3, v7}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v3

    const/4 v7, 0x4

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static {v3, v8, v7, v5}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v3

    invoke-static {v1, v4}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v1

    iget-wide v7, v2, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v2}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v3, v2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    sget-object v8, Le2/h;->b:Le2/g;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Le2/g;->b:Le2/f;

    invoke-virtual {v2}, Lr0/q;->e0()V

    iget-boolean v9, v2, Lr0/q;->S:Z

    if-eqz v9, :cond_15

    invoke-virtual {v2, v8}, Lr0/q;->l(Li9/a;)V

    goto :goto_17

    :cond_15
    invoke-virtual {v2}, Lr0/q;->o0()V

    :goto_17
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v1, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v7, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Le2/g;->g:Le2/e;

    invoke-static {v2, v1, v4}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v1, Le2/g;->h:Le2/d;

    invoke-static {v2, v1}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v3, v2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "\ud83d\udd0a"

    if-eqz v0, :cond_17

    if-eq v0, v5, :cond_17

    if-ne v0, v6, :cond_16

    const-string v1, "\ud83d\udd07"

    goto :goto_18

    :cond_16
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_17
    :goto_18
    sget-wide v3, Lm1/p;->c:J

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v2, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->h:Lp2/m0;

    const/16 v22, 0x0

    const v23, 0xfffa

    move-object/from16 v20, v2

    const/4 v2, 0x0

    move v7, v5

    const-wide/16 v5, 0x0

    move v8, v7

    const/4 v7, 0x0

    move v9, v8

    const/4 v8, 0x0

    move v11, v9

    const-wide/16 v9, 0x0

    move v12, v11

    const/4 v11, 0x0

    move v14, v12

    const-wide/16 v12, 0x0

    move v15, v14

    const/4 v14, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    const/16 v21, 0x180

    move/from16 v51, v19

    move-object/from16 v19, v0

    move/from16 v0, v51

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lr0/q;->q(Z)V

    goto :goto_19

    :cond_18
    move-object v1, v2

    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_19
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_b
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/support/DevMessage;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v2, v1}, Lod/m;->h(Lua/nav/support/DevMessage;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_c
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lo0/h3;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x7

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lo0/h3;->a(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_d
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Ll1/c;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v2, v1}, Lnd/h0;->k(Ll1/c;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_e
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lnd/h;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x47

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v2, v1}, Lnd/h0;->i(Lnd/h;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_f
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Ln/e0;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ln/e0;->a(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_10
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lc2/u;

    move-object/from16 v2, p1

    check-cast v2, Lm0/q;

    move-object/from16 v1, p2

    check-cast v1, Lm0/q;

    invoke-virtual {v2}, Lm0/q;->c()Lc2/u;

    move-result-object v2

    invoke-virtual {v1}, Lm0/q;->c()Lc2/u;

    move-result-object v1

    const-wide/16 v3, 0x0

    const-wide v5, 0xffffffffL

    const/16 v7, 0x20

    if-eqz v2, :cond_19

    invoke-interface {v0, v2, v3, v4}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide v8

    shr-long v10, v8, v7

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    invoke-interface {v2}, Lc2/u;->o()J

    move-result-wide v11

    shr-long/2addr v11, v7

    long-to-int v11, v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    and-long v11, v8, v5

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    invoke-interface {v2}, Lc2/u;->o()J

    move-result-wide v12

    and-long/2addr v12, v5

    long-to-int v2, v12

    int-to-float v2, v2

    add-float/2addr v11, v2

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v12, v2

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v10, v2

    shl-long/2addr v12, v7

    and-long/2addr v10, v5

    or-long/2addr v10, v12

    goto :goto_1a

    :cond_19
    move-wide v8, v3

    move-wide v10, v8

    :goto_1a
    if-eqz v1, :cond_1a

    invoke-interface {v0, v1, v3, v4}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide v3

    shr-long v12, v3, v7

    long-to-int v0, v12

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface {v1}, Lc2/u;->o()J

    move-result-wide v12

    shr-long/2addr v12, v7

    long-to-int v2, v12

    int-to-float v2, v2

    add-float/2addr v0, v2

    and-long v12, v3, v5

    long-to-int v2, v12

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {v1}, Lc2/u;->o()J

    move-result-wide v12

    and-long/2addr v12, v5

    long-to-int v1, v12

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v12, v2

    shl-long/2addr v0, v7

    and-long/2addr v12, v5

    or-long/2addr v0, v12

    goto :goto_1b

    :cond_1a
    move-wide v0, v3

    :goto_1b
    and-long v12, v10, v5

    long-to-int v2, v12

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    and-long v13, v8, v5

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    sub-float/2addr v12, v14

    shr-long/2addr v10, v7

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    shr-long/2addr v8, v7

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    sub-float/2addr v11, v9

    and-long v14, v0, v5

    long-to-int v9, v14

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    and-long/2addr v5, v3

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    sub-float/2addr v14, v6

    shr-long/2addr v0, v7

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    shr-long/2addr v3, v7

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v0, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v12, v4

    cmpl-float v6, v2, v12

    const/4 v7, 0x1

    const/4 v9, 0x0

    if-gez v6, :cond_1c

    mul-float/2addr v14, v4

    cmpl-float v2, v2, v14

    if-ltz v2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v2, v9

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v2, v7

    :goto_1d
    mul-float/2addr v11, v4

    cmpg-float v6, v0, v11

    if-gez v6, :cond_1d

    mul-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v7, v9

    :goto_1e
    if-eqz v2, :cond_1e

    if-eqz v7, :cond_1e

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1f

    :cond_1e
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->compareTo(Ljava/lang/Object;)I

    move-result v0

    :goto_1f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_11
    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lm0/b1;

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    check-cast v1, Ld0/a;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0}, Lm0/b1;->d()Lt8/j;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1f

    iget-object v5, v3, Lt8/j;->l:Ljava/lang/Object;

    check-cast v5, Lp2/g;

    goto :goto_20

    :cond_1f
    move-object v5, v4

    :goto_20
    if-eqz v3, :cond_20

    iget-object v3, v3, Lt8/j;->m:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lp2/l0;

    :cond_20
    iget-object v6, v0, Lm0/b1;->w:Lm0/u;

    new-instance v7, Lb0/r0;

    const/16 v3, 0xb

    invoke-direct {v7, v3, v0, v2}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    move-object/from16 v51, v5

    move-object v5, v4

    move-object/from16 v4, v51

    invoke-static/range {v1 .. v7}, Lm0/w;->a(Ld0/a;Landroid/content/Context;ZLjava/lang/CharSequence;Lp2/l0;Lm0/u;Li9/c;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_12
    move-object/from16 v2, p2

    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lj9/x;

    move-object/from16 v1, p1

    check-cast v1, Ly1/u;

    check-cast v2, Ll1/b;

    invoke-virtual {v1}, Ly1/u;->a()V

    iget-wide v1, v2, Ll1/b;->a:J

    iput-wide v1, v0, Lj9/x;->l:J

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_13
    move-object/from16 v2, p2

    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Landroid/app/RemoteAction;

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    const v2, -0x520d2714

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lr0/q;->q(Z)V

    return-object v0

    :pswitch_14
    move-object/from16 v2, p2

    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Landroid/view/textclassifier/TextClassification;

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    const v2, 0x38a0c7d5

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lr0/q;->q(Z)V

    return-object v0

    :pswitch_15
    move-object/from16 v2, p2

    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Le0/d;

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x27b3a34e

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    iget-object v0, v0, Le0/d;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lr0/q;->q(Z)V

    return-object v0

    :pswitch_16
    move-object/from16 v2, p2

    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Ldd/k0;

    move-object/from16 v1, p1

    check-cast v1, Ldd/l0;

    move-object v3, v2

    check-cast v3, Ldd/y0;

    const-string v2, "f"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Ldd/k0;->k:Lx9/l0;

    :cond_21
    invoke-virtual {v4}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    new-instance v5, Lt8/j;

    invoke-direct {v5, v1, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v5}, Lu8/m;->q0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    const/16 v5, 0x12c

    invoke-static {v5, v2}, Lu8/m;->y0(ILjava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_17
    move-object/from16 v2, p2

    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Ld1/b0;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/Set;

    check-cast v2, Ld1/g;

    iget-object v2, v0, Ld1/b0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_21
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_22

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    goto :goto_22

    :cond_22
    instance-of v4, v3, Ljava/util/Set;

    if-eqz v4, :cond_23

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v4}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_22

    :cond_23
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_27

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-static {v1}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    :cond_24
    :goto_22
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v0}, Ld1/b0;->b()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v0, Ld1/b0;->a:Li9/c;

    new-instance v2, Lad/t;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :cond_26
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v3, :cond_24

    goto :goto_21

    :cond_27
    const-string v0, "Unexpected notification"

    invoke-static {v0}, Lr0/s;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_18
    move-object/from16 v2, p2

    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Li9/e;

    move-object/from16 v1, p1

    check-cast v1, Lc1/b;

    invoke-interface {v0, v1, v2}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v2, :cond_2a

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_29

    iget-object v5, v1, Lc1/b;->m:Lc1/f;

    if-eqz v5, :cond_29

    invoke-interface {v5, v4}, Lc1/f;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    goto :goto_24

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "item at index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " can\'t be saved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_2a
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_25

    :cond_2b
    const/4 v1, 0x0

    :goto_25
    return-object v1

    :pswitch_19
    move-object/from16 v2, p2

    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lb0/e3;

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v2}, Lr0/r;->H(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lb0/e3;->a(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1a
    move-object/from16 v2, p2

    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lb0/c2;

    move-object/from16 v1, p1

    check-cast v1, Ly1/u;

    move-object v1, v2

    check-cast v1, Ll1/b;

    iget-wide v1, v1, Ll1/b;->a:J

    invoke-interface {v0, v1, v2}, Lb0/c2;->e(J)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1b
    move-object/from16 v2, p2

    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lm0/v1;

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v2}, Lr0/r;->H(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lb0/n1;->k(Lm0/v1;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1c
    move-object/from16 v2, p2

    iget-object v0, v0, Lb0/x;->m:Ljava/lang/Object;

    check-cast v0, Lm0/i1;

    move-object/from16 v1, p1

    check-cast v1, Lc1/b;

    move-object v1, v2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lm0/j1;->a(Lm0/i1;J)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_26

    :cond_2c
    const/4 v1, 0x0

    :goto_26
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
