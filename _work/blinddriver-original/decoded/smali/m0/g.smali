.class public final synthetic Lm0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lf1/r;Li9/a;ZI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lm0/g;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/g;->o:Ljava/lang/Object;

    iput-object p2, p0, Lm0/g;->p:Ljava/lang/Object;

    iput-boolean p3, p0, Lm0/g;->m:Z

    iput p4, p0, Lm0/g;->n:I

    return-void
.end method

.method public synthetic constructor <init>(ZILi9/a;Li9/a;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lm0/g;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lm0/g;->m:Z

    iput p2, p0, Lm0/g;->n:I

    iput-object p3, p0, Lm0/g;->p:Ljava/lang/Object;

    iput-object p4, p0, Lm0/g;->o:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLa3/j;Lm0/v1;I)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lm0/g;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lm0/g;->m:Z

    iput-object p2, p0, Lm0/g;->o:Ljava/lang/Object;

    iput-object p3, p0, Lm0/g;->p:Ljava/lang/Object;

    iput p4, p0, Lm0/g;->n:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    iget v1, v0, Lm0/g;->l:I

    sget-object v2, Lt8/z;->a:Lt8/z;

    const/4 v3, 0x1

    iget-object v4, v0, Lm0/g;->o:Ljava/lang/Object;

    iget-object v5, v0, Lm0/g;->p:Ljava/lang/Object;

    iget v6, v0, Lm0/g;->n:I

    iget-boolean v0, v0, Lm0/g;->m:Z

    packed-switch v1, :pswitch_data_0

    move-object v7, v5

    check-cast v7, Li9/a;

    check-cast v4, Li9/a;

    move-object/from16 v12, p1

    check-cast v12, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v5, v1, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eq v5, v8, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v9

    :goto_0
    and-int/2addr v1, v3

    invoke-virtual {v12, v1, v5}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0xa

    int-to-float v1, v1

    sget-object v5, Lf1/o;->a:Lf1/o;

    invoke-static {v5, v1}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    sget-object v8, Lu/h;->c:Lu/c;

    sget-object v10, Lf1/c;->x:Lf1/h;

    invoke-static {v8, v10, v12, v9}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v8

    iget-wide v10, v12, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v12}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v1, v12}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v13, Le2/h;->b:Le2/g;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Le2/g;->b:Le2/f;

    invoke-virtual {v12}, Lr0/q;->e0()V

    iget-boolean v14, v12, Lr0/q;->S:Z

    if-eqz v14, :cond_1

    invoke-virtual {v12, v13}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Lr0/q;->o0()V

    :goto_1
    sget-object v14, Le2/g;->f:Le2/e;

    invoke-static {v14, v8, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v8, Le2/g;->e:Le2/e;

    invoke-static {v8, v11, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Le2/g;->g:Le2/e;

    invoke-static {v12, v10, v11}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v10, Le2/g;->h:Le2/d;

    invoke-static {v12, v10}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v15, Le2/g;->d:Le2/e;

    invoke-static {v15, v1, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Lcd/d;->O:Lcd/c;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v12, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Lo0/h5;

    iget-object v9, v9, Lo0/h5;->h:Lp2/m0;

    const/16 v29, 0x0

    const v30, 0xfffe

    move-object/from16 v26, v9

    const/4 v9, 0x0

    move-object/from16 v17, v10

    move-object/from16 v16, v11

    const-wide/16 v10, 0x0

    move-object/from16 v27, v12

    move-object/from16 v18, v13

    const-wide/16 v12, 0x0

    move-object/from16 v19, v14

    const/4 v14, 0x0

    move-object/from16 v20, v15

    const/4 v15, 0x0

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    const-wide/16 v16, 0x0

    move-object/from16 v23, v18

    const/16 v18, 0x0

    move-object/from16 v24, v19

    move-object/from16 v25, v20

    const-wide/16 v19, 0x0

    move-object/from16 v28, v21

    const/16 v21, 0x0

    move-object/from16 v31, v22

    const/16 v22, 0x0

    move-object/from16 v32, v23

    const/16 v23, 0x0

    move-object/from16 v33, v24

    const/16 v24, 0x0

    move-object/from16 v34, v25

    const/16 v25, 0x0

    move-object/from16 v35, v28

    const/16 v28, 0x0

    move-object/from16 p0, v31

    move-object/from16 v31, v2

    move-object/from16 v2, v33

    move-object/from16 v33, v7

    move-object/from16 v7, p0

    move-object/from16 p0, v4

    move-object v4, v8

    move-object v8, v1

    move-object/from16 v1, v32

    move/from16 v32, v6

    move-object/from16 v6, v35

    move-object/from16 v35, v34

    move/from16 v34, v0

    const/4 v0, 0x0

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v12, v27

    if-eqz v34, :cond_2

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcd/d;->P:Lcd/c;

    invoke-virtual {v9, v8}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    sget-object v8, Lcd/d;->Q:Lcd/c;

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v12, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->k:Lp2/m0;

    const/16 v29, 0x0

    const v30, 0xfffe

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v27, v12

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    move-object/from16 v26, v3

    invoke-static/range {v8 .. v30}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v12, v27

    const/4 v3, 0x6

    int-to-float v3, v3

    invoke-static {v5, v3}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v8

    invoke-static {v8, v12}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v5, v8}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v8

    sget-object v9, Lu/h;->a:Lu/n;

    sget-object v10, Lf1/c;->u:Lf1/i;

    invoke-static {v9, v10, v12, v0}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v0

    iget-wide v9, v12, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v12}, Lr0/q;->m()Lr0/j1;

    move-result-object v10

    invoke-static {v8, v12}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v8

    invoke-virtual {v12}, Lr0/q;->e0()V

    iget-boolean v11, v12, Lr0/q;->S:Z

    if-eqz v11, :cond_3

    invoke-virtual {v12, v1}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v12}, Lr0/q;->o0()V

    :goto_3
    invoke-static {v2, v0, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4, v10, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v9, v12, v6, v12, v7}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v0, v35

    invoke-static {v0, v8, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/high16 v0, 0x40000000    # 2.0f

    float-to-double v1, v0

    const-wide/16 v19, 0x0

    cmpl-double v1, v1, v19

    const-string v2, "invalid weight; must be greater than zero"

    if-lez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v2}, Lv/a;->a(Ljava/lang/String;)V

    :goto_4
    new-instance v8, Lu/j0;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v0, v1

    if-lez v4, :cond_5

    move v0, v1

    :cond_5
    const/4 v4, 0x1

    invoke-direct {v8, v0, v4}, Lu/j0;-><init>(FZ)V

    sget-object v15, Lod/m;->D:Lz0/d;

    const/high16 v17, 0x30000000

    const/16 v18, 0x1fc

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v27, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v27

    move-object/from16 v7, v33

    invoke-static/range {v7 .. v18}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object/from16 v12, v16

    invoke-static {v5, v3}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v12}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const v0, 0x3f99999a    # 1.2f

    float-to-double v3, v0

    cmpl-double v3, v3, v19

    if-lez v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {v2}, Lv/a;->a(Ljava/lang/String;)V

    :goto_5
    new-instance v2, Lu/j0;

    cmpl-float v3, v0, v1

    if-lez v3, :cond_7

    :goto_6
    const/4 v4, 0x1

    goto :goto_7

    :cond_7
    move v1, v0

    goto :goto_6

    :goto_7
    invoke-direct {v2, v1, v4}, Lu/j0;-><init>(FZ)V

    sget-object v0, Lo0/q;->a:Lu/s0;

    sget-wide v10, Lm1/p;->c:J

    const/16 v13, 0xd

    const-wide/16 v8, 0x0

    invoke-static/range {v8 .. v13}, Lo0/q;->d(JJLr0/q;I)Lo0/p;

    move-result-object v0

    move-object/from16 v27, v12

    sget-object v15, Lod/m;->E:Lz0/d;

    const/high16 v17, 0x30000000

    const/16 v18, 0x1ec

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p0

    move-object v12, v0

    move-object v9, v2

    move-object/from16 v16, v27

    invoke-static/range {v8 .. v18}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object/from16 v12, v16

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lr0/q;->q(Z)V

    invoke-virtual {v12, v0}, Lr0/q;->q(Z)V

    goto :goto_8

    :cond_8
    move-object/from16 v31, v2

    invoke-virtual {v12}, Lr0/q;->W()V

    :goto_8
    return-object v31

    :pswitch_0
    move/from16 v34, v0

    move-object/from16 v31, v2

    move v0, v3

    move/from16 v32, v6

    check-cast v4, La3/j;

    check-cast v5, Lm0/v1;

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v0, v32, 0x1

    invoke-static {v0}, Lr0/r;->H(I)I

    move-result v0

    move/from16 v2, v34

    invoke-static {v2, v4, v5, v1, v0}, Lm0/d1;->g(ZLa3/j;Lm0/v1;Lr0/q;I)V

    return-object v31

    :pswitch_1
    move-object/from16 v31, v2

    move/from16 v32, v6

    move v2, v0

    move v0, v3

    check-cast v4, Lf1/r;

    check-cast v5, Li9/a;

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v0, v32, 0x1

    invoke-static {v0}, Lr0/r;->H(I)I

    move-result v0

    invoke-static {v4, v5, v2, v1, v0}, Lm0/d1;->e(Lf1/r;Li9/a;ZLr0/q;I)V

    return-object v31

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
