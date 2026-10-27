.class public final synthetic Lod/p6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p6, p0, Lod/p6;->l:I

    iput-object p1, p0, Lod/p6;->m:Ljava/lang/Object;

    iput-object p2, p0, Lod/p6;->n:Ljava/lang/Object;

    iput-object p3, p0, Lod/p6;->o:Ljava/lang/Object;

    iput-object p4, p0, Lod/p6;->p:Ljava/lang/Object;

    iput-object p5, p0, Lod/p6;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 52

    move-object/from16 v0, p0

    iget v1, v0, Lod/p6;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lod/p6;->m:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lqd/q;

    iget-object v1, v0, Lod/p6;->n:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lqd/n;

    iget-object v1, v0, Lod/p6;->o:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lqd/e;

    iget-object v1, v0, Lod/p6;->p:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    iget-object v0, v0, Lod/p6;->q:Ljava/lang/Object;

    check-cast v0, Li9/a;

    move-object/from16 v1, p1

    check-cast v1, Lu/s;

    move-object/from16 v13, p2

    check-cast v13, Lr0/q;

    move-object/from16 v6, p3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "$this$Card"

    invoke-static {v1, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v6, 0x11

    const/16 v7, 0x10

    const/4 v9, 0x1

    if-eq v1, v7, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v6, v9

    invoke-virtual {v13, v6, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xc

    int-to-float v1, v1

    sget-object v6, Lf1/o;->a:Lf1/o;

    invoke-static {v6, v1}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    const/16 v7, 0x8

    int-to-float v7, v7

    invoke-static {v7}, Lu/h;->g(F)Lu/f;

    move-result-object v7

    sget-object v10, Lf1/c;->x:Lf1/h;

    const/4 v11, 0x6

    invoke-static {v7, v10, v13, v11}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v7

    iget-wide v10, v13, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v13}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v1, v13}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v12, Le2/h;->b:Le2/g;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Le2/g;->b:Le2/f;

    invoke-virtual {v13}, Lr0/q;->e0()V

    iget-boolean v14, v13, Lr0/q;->S:Z

    if-eqz v14, :cond_1

    invoke-virtual {v13, v12}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v13}, Lr0/q;->o0()V

    :goto_1
    sget-object v14, Le2/g;->f:Le2/e;

    invoke-static {v14, v7, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v7, Le2/g;->e:Le2/e;

    invoke-static {v7, v11, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Le2/g;->g:Le2/e;

    invoke-static {v13, v10, v11}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v10, Le2/g;->h:Le2/d;

    invoke-static {v13, v10}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v15, Le2/g;->d:Le2/e;

    invoke-static {v15, v1, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Lf1/c;->u:Lf1/i;

    sget-object v8, Lu/h;->a:Lu/n;

    const/16 v9, 0x30

    invoke-static {v8, v1, v13, v9}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v1

    iget-wide v8, v13, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v13}, Lr0/q;->m()Lr0/j1;

    move-result-object v9

    invoke-static {v6, v13}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v6

    invoke-virtual {v13}, Lr0/q;->e0()V

    move-object/from16 v28, v0

    iget-boolean v0, v13, Lr0/q;->S:Z

    if-eqz v0, :cond_2

    invoke-virtual {v13, v12}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v13}, Lr0/q;->o0()V

    :goto_2
    invoke-static {v14, v1, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7, v9, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v8, v13, v11, v13, v10}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v15, v6, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v13, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->k:Lp2/m0;

    sget-object v11, Lt2/k;->o:Lt2/k;

    const/high16 v1, 0x3f800000    # 1.0f

    float-to-double v6, v1

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    goto :goto_3

    :cond_3
    const-string v6, "invalid weight; must be greater than zero"

    invoke-static {v6}, Lv/a;->a(Ljava/lang/String;)V

    :goto_3
    new-instance v6, Lu/j0;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7}, Lu/j0;-><init>(FZ)V

    const/16 v26, 0x0

    const v27, 0xffdc

    move v1, v7

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v24, v13

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v25, 0x30000

    move-object/from16 v23, v0

    const/4 v0, 0x0

    invoke-static/range {v5 .. v27}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v13, v24

    if-eqz v28, :cond_4

    const v5, 0xcb06363

    invoke-virtual {v13, v5}, Lr0/q;->b0(I)V

    sget-object v12, Lod/m;->F1:Lz0/d;

    const/high16 v14, 0x30000000

    const/16 v15, 0x1fe

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, v28

    invoke-static/range {v6 .. v15}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    :goto_4
    invoke-virtual {v13, v0}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_4
    const v5, -0x76a342d1

    invoke-virtual {v13, v5}, Lr0/q;->b0(I)V

    goto :goto_4

    :goto_5
    invoke-virtual {v13, v1}, Lr0/q;->q(Z)V

    const/4 v5, 0x0

    const/16 v7, 0xc00

    move-object v6, v13

    invoke-static/range {v2 .. v7}, Lod/m;->A(Lqd/q;Lqd/n;Lqd/e;ZLr0/q;I)V

    invoke-virtual {v13, v1}, Lr0/q;->q(Z)V

    goto :goto_6

    :cond_5
    invoke-virtual {v13}, Lr0/q;->W()V

    :goto_6
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lod/p6;->m:Ljava/lang/Object;

    check-cast v1, Lad/r2;

    iget-object v2, v0, Lod/p6;->n:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    iget-object v3, v0, Lod/p6;->o:Ljava/lang/Object;

    check-cast v3, Lr0/u0;

    iget-object v4, v0, Lod/p6;->p:Ljava/lang/Object;

    check-cast v4, Lr0/u0;

    iget-object v0, v0, Lod/p6;->q:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    move-object/from16 v5, p1

    check-cast v5, Lu/s;

    move-object/from16 v15, p2

    check-cast v15, Lr0/q;

    move-object/from16 v6, p3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "$this$Section"

    invoke-static {v5, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v5, v6, 0x11

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v5, v7, :cond_6

    move v5, v9

    goto :goto_7

    :cond_6
    move v5, v8

    :goto_7
    and-int/2addr v6, v9

    invoke-virtual {v15, v6, v5}, Lr0/q;->T(IZ)Z

    move-result v5

    if-eqz v5, :cond_1b

    sget-object v5, Lu/h;->c:Lu/c;

    sget-object v6, Lf1/c;->x:Lf1/h;

    invoke-static {v5, v6, v15, v8}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v7

    iget-wide v10, v15, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v15}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    sget-object v12, Lf1/o;->a:Lf1/o;

    invoke-static {v12, v15}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v13

    sget-object v14, Le2/h;->b:Le2/g;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Le2/g;->b:Le2/f;

    invoke-virtual {v15}, Lr0/q;->e0()V

    iget-boolean v8, v15, Lr0/q;->S:Z

    if-eqz v8, :cond_7

    invoke-virtual {v15, v14}, Lr0/q;->l(Li9/a;)V

    goto :goto_8

    :cond_7
    invoke-virtual {v15}, Lr0/q;->o0()V

    :goto_8
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v7, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v7, Le2/g;->e:Le2/e;

    invoke-static {v7, v11, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Le2/g;->g:Le2/e;

    invoke-static {v15, v10, v11}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v10, Le2/g;->h:Le2/d;

    invoke-static {v15, v10}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v9, Le2/g;->d:Le2/e;

    invoke-static {v9, v13, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v13, Lf1/c;->v:Lf1/i;

    move-object/from16 v29, v0

    sget-object v0, Lu/h;->a:Lu/n;

    move-object/from16 v30, v4

    const/16 v4, 0x30

    move-object/from16 p2, v6

    invoke-static {v0, v13, v15, v4}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v6

    move-object/from16 p3, v5

    iget-wide v4, v15, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v15}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    move-object/from16 v16, v13

    invoke-static {v12, v15}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v13

    invoke-virtual {v15}, Lr0/q;->e0()V

    move-object/from16 v17, v12

    iget-boolean v12, v15, Lr0/q;->S:Z

    if-eqz v12, :cond_8

    invoke-virtual {v15, v14}, Lr0/q;->l(Li9/a;)V

    goto :goto_9

    :cond_8
    invoke-virtual {v15}, Lr0/q;->o0()V

    :goto_9
    invoke-static {v8, v6, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7, v5, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4, v15, v11, v15, v10}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v9, v13, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/high16 v4, 0x3f800000    # 1.0f

    float-to-double v5, v4

    const-wide/16 v31, 0x0

    cmpl-double v5, v5, v31

    const-string v33, "invalid weight; must be greater than zero"

    if-lez v5, :cond_9

    :goto_a
    move-object v5, v7

    goto :goto_b

    :cond_9
    invoke-static/range {v33 .. v33}, Lv/a;->a(Ljava/lang/String;)V

    goto :goto_a

    :goto_b
    new-instance v7, Lu/j0;

    const v34, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v6, v4, v34

    if-lez v6, :cond_a

    move/from16 v6, v34

    :goto_c
    const/4 v12, 0x1

    goto :goto_d

    :cond_a
    move v6, v4

    goto :goto_c

    :goto_d
    invoke-direct {v7, v6, v12}, Lu/j0;-><init>(FZ)V

    invoke-static {v15}, Lo0/z2;->k(Lr0/q;)Lo0/h5;

    move-result-object v6

    iget-object v6, v6, Lo0/h5;->k:Lp2/m0;

    const/16 v27, 0x0

    const v28, 0xfffc

    move-object/from16 v24, v6

    const-string v6, "\u0413\u0443\u0447\u043d\u0456\u0441\u0442\u044c \u043f\u0456\u0434\u043a\u0430\u0437\u043e\u043a"

    move-object v13, v8

    move-object/from16 v18, v9

    const-wide/16 v8, 0x0

    move-object/from16 v20, v10

    move-object/from16 v19, v11

    const-wide/16 v10, 0x0

    move/from16 v21, v12

    const/4 v12, 0x0

    move-object/from16 v22, v13

    const/4 v13, 0x0

    move-object/from16 v23, v14

    move-object/from16 v25, v15

    const-wide/16 v14, 0x0

    move-object/from16 v26, v16

    const/16 v16, 0x0

    move-object/from16 v36, v17

    move-object/from16 v35, v18

    const-wide/16 v17, 0x0

    move-object/from16 v37, v19

    const/16 v19, 0x0

    move-object/from16 v38, v20

    const/16 v20, 0x0

    move/from16 v39, v21

    const/16 v21, 0x0

    move-object/from16 v40, v22

    const/16 v22, 0x0

    move-object/from16 v41, v23

    const/16 v23, 0x0

    move-object/from16 v42, v26

    const/16 v26, 0x6

    move-object/from16 v45, v5

    move-object/from16 v48, v35

    move-object/from16 v51, v36

    move-object/from16 v46, v37

    move-object/from16 v47, v38

    move/from16 v4, v39

    move-object/from16 v44, v40

    move-object/from16 v43, v41

    move-object/from16 v49, v42

    move-object/from16 v5, p2

    invoke-static/range {v6 .. v28}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    const/16 v7, 0x64

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " %"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v12, Lt2/k;->q:Lt2/k;

    invoke-static/range {v25 .. v25}, Lo0/z2;->k(Lr0/q;)Lo0/h5;

    move-result-object v7

    iget-object v7, v7, Lo0/h5;->k:Lp2/m0;

    const v28, 0xffde

    move-object/from16 v24, v7

    const/4 v7, 0x0

    const/high16 v26, 0x30000

    invoke-static/range {v6 .. v28}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v35, v12

    move-object/from16 v15, v25

    invoke-virtual {v15, v4}, Lr0/q;->q(Z)V

    invoke-static {v15}, Lo0/z2;->k(Lr0/q;)Lo0/h5;

    move-result-object v6

    iget-object v6, v6, Lo0/h5;->l:Lp2/m0;

    invoke-static {v15}, Lo0/z2;->j(Lr0/q;)Lo0/u0;

    move-result-object v7

    iget-wide v8, v7, Lo0/u0;->s:J

    const v28, 0xfffa

    move-object/from16 v24, v6

    const-string v6, "\u0412\u0456\u0434 \u0433\u0443\u0447\u043d\u043e\u0441\u0442\u0456 \u043c\u0435\u0434\u0456\u0430 \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456."

    const/4 v7, 0x0

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v26, 0x6

    invoke-static/range {v6 .. v28}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v15, v25

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    new-instance v10, Lo9/a;

    const v7, 0x3e4ccccd    # 0.2f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v10, v7, v8}, Lo9/a;-><init>(FF)V

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lr0/m;->a:Lr0/e;

    if-ne v7, v8, :cond_b

    new-instance v7, Lod/t6;

    const/4 v9, 0x0

    invoke-direct {v7, v2, v9}, Lod/t6;-><init>(Lr0/u0;I)V

    invoke-virtual {v15, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b
    check-cast v7, Li9/c;

    invoke-virtual {v15, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v9, :cond_c

    if-ne v11, v8, :cond_d

    :cond_c
    new-instance v11, Lod/n5;

    const/4 v9, 0x1

    invoke-direct {v11, v1, v2, v9}, Lod/n5;-><init>(Lad/r2;Lr0/u0;I)V

    invoke-virtual {v15, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    move-object v12, v11

    check-cast v12, Li9/a;

    const v16, 0x30030

    const/16 v17, 0x18c

    move-object v2, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0xf

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v6 .. v17}, Lo0/m4;->b(FLi9/c;Lf1/r;ZLo9/a;ILi9/a;Lo0/t3;Ls/i;Lr0/q;II)V

    invoke-virtual {v15, v4}, Lr0/q;->q(Z)V

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v15, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_e

    if-ne v7, v2, :cond_f

    :cond_e
    new-instance v7, Lod/o5;

    const/4 v6, 0x1

    invoke-direct {v7, v1, v3, v6}, Lod/o5;-><init>(Lad/r2;Lr0/u0;I)V

    invoke-virtual {v15, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_f
    move-object v9, v7

    check-cast v9, Li9/c;

    const/16 v11, 0x36

    const-string v6, "\u0421\u0442\u0430\u0432\u0438\u0442\u0438 \u043c\u0443\u0437\u0438\u043a\u0443 \u043d\u0430 \u043f\u0430\u0443\u0437\u0443 \u043f\u0456\u0434 \u0447\u0430\u0441 \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0438"

    const-string v7, "\u0417\u0430\u043c\u0456\u0441\u0442\u044c \u043f\u0440\u0438\u0442\u0438\u0448\u0435\u043d\u043d\u044f: \u043c\u0443\u0437\u0438\u043a\u0430 \u0437\u0430\u043c\u043e\u0432\u043a\u0430\u0454 \u043d\u0430 \u0447\u0430\u0441 \u0444\u0440\u0430\u0437\u0438 \u2014 \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0443 \u0447\u0443\u0442\u0438 \u0437\u0430\u0432\u0436\u0434\u0438."

    move-object v10, v15

    invoke-static/range {v6 .. v11}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    move-object/from16 v3, p3

    const/4 v6, 0x0

    invoke-static {v3, v5, v15, v6}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    iget-wide v7, v15, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v15}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    move-object/from16 v8, v51

    invoke-static {v8, v15}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v9

    invoke-virtual {v15}, Lr0/q;->e0()V

    iget-boolean v10, v15, Lr0/q;->S:Z

    if-eqz v10, :cond_10

    move-object/from16 v10, v43

    invoke-virtual {v15, v10}, Lr0/q;->l(Li9/a;)V

    :goto_e
    move-object/from16 v13, v44

    goto :goto_f

    :cond_10
    move-object/from16 v10, v43

    invoke-virtual {v15}, Lr0/q;->o0()V

    goto :goto_e

    :goto_f
    invoke-static {v13, v3, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v3, v45

    invoke-static {v3, v7, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v7, v46

    move-object/from16 v11, v47

    invoke-static {v5, v15, v7, v15, v11}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v5, v48

    invoke-static {v5, v9, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v9, v49

    const/16 v12, 0x30

    invoke-static {v0, v9, v15, v12}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v0

    move-object/from16 v18, v5

    iget-wide v4, v15, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v15}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v8, v15}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v9

    invoke-virtual {v15}, Lr0/q;->e0()V

    iget-boolean v12, v15, Lr0/q;->S:Z

    if-eqz v12, :cond_11

    invoke-virtual {v15, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_10

    :cond_11
    invoke-virtual {v15}, Lr0/q;->o0()V

    :goto_10
    invoke-static {v13, v0, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v5, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4, v15, v7, v15, v11}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v5, v18

    invoke-static {v5, v9, v15}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/high16 v0, 0x3f800000    # 1.0f

    float-to-double v3, v0

    cmpl-double v3, v3, v31

    if-lez v3, :cond_12

    goto :goto_11

    :cond_12
    invoke-static/range {v33 .. v33}, Lv/a;->a(Ljava/lang/String;)V

    :goto_11
    new-instance v7, Lu/j0;

    cmpl-float v3, v0, v34

    if-lez v3, :cond_13

    move/from16 v0, v34

    :goto_12
    const/4 v12, 0x1

    goto :goto_13

    :cond_13
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_12

    :goto_13
    invoke-direct {v7, v0, v12}, Lu/j0;-><init>(FZ)V

    invoke-static {v15}, Lo0/z2;->k(Lr0/q;)Lo0/h5;

    move-result-object v0

    iget-object v0, v0, Lo0/h5;->k:Lp2/m0;

    const/16 v27, 0x0

    const v28, 0xfffc

    move/from16 v50, v6

    const-string v6, "\u041f\u0456\u0434\u0441\u0438\u043b\u0435\u043d\u043d\u044f \u0433\u043e\u043b\u043e\u0441\u0443"

    move-object/from16 v17, v8

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v25, v15

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v51, v17

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x6

    move-object/from16 v24, v0

    move/from16 v0, v50

    move-object/from16 v3, v51

    invoke-static/range {v6 .. v28}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    const-string v4, "\u0433\u0443\u0447\u043d\u043e"

    const-string v5, "\u0434\u0443\u0436\u0435 \u0433\u0443\u0447\u043d\u043e"

    const-string v6, "\u0432\u0438\u043c\u043a."

    const-string v7, "\u043d\u043e\u0440\u043c\u0430\u043b\u044c\u043d\u043e"

    filled-new-array {v6, v7, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface/range {v30 .. v30}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v6, 0x3

    invoke-static {v5, v0, v6}, Lg6/c1;->f(III)I

    move-result v0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Lo0/z2;->k(Lr0/q;)Lo0/h5;

    move-result-object v0

    iget-object v0, v0, Lo0/h5;->k:Lp2/m0;

    const v28, 0xffde

    const/4 v7, 0x0

    const/high16 v26, 0x30000

    move-object/from16 v24, v0

    move-object/from16 v12, v35

    invoke-static/range {v6 .. v28}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v15, v25

    const/4 v12, 0x1

    invoke-virtual {v15, v12}, Lr0/q;->q(Z)V

    invoke-static {v15}, Lo0/z2;->k(Lr0/q;)Lo0/h5;

    move-result-object v0

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    invoke-static {v15}, Lo0/z2;->j(Lr0/q;)Lo0/u0;

    move-result-object v4

    iget-wide v8, v4, Lo0/u0;->s:J

    const v28, 0xfffa

    const-string v6, "\u0417\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0441\u0430\u043c \u0440\u043e\u0431\u0438\u0442\u044c \u0433\u043e\u043b\u043e\u0441 \u0433\u0443\u0447\u043d\u0456\u0448\u0438\u043c \u0437\u0430 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u0438\u0439 (\u0432\u0456\u043d \u0442\u0438\u0445\u0438\u0439, \u0430 \u043c\u0443\u0437\u0438\u043a\u0430 \u0433\u0443\u0447\u043d\u0430). \u00ab\u0412\u0438\u043c\u043a.\u00bb \u2014 \u044f\u043a \u0432\u0456\u0434\u0434\u0430\u0454 \u0441\u0438\u043d\u0442\u0435\u0437\u0430\u0442\u043e\u0440. \u042f\u043a\u0449\u043e \u0447\u0443\u0442\u0438 \u0442\u0440\u0456\u0441\u043a \u2014 \u0437\u043d\u0438\u0437\u044c\u0442\u0435 \u0440\u0456\u0432\u0435\u043d\u044c."

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v26, 0x6

    move-object/from16 v24, v0

    invoke-static/range {v6 .. v28}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v15, v25

    invoke-interface/range {v30 .. v30}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-float v6, v0

    new-instance v10, Lo9/a;

    const/4 v0, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {v10, v0, v4}, Lo9/a;-><init>(FF)V

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_14

    new-instance v0, Lb0/y;

    const/16 v4, 0x1b

    move-object/from16 v5, v30

    invoke-direct {v0, v5, v4}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v15, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_14

    :cond_14
    move-object/from16 v5, v30

    :goto_14
    move-object v7, v0

    check-cast v7, Li9/c;

    invoke-virtual {v15, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_15

    if-ne v4, v2, :cond_16

    :cond_15
    new-instance v4, Lod/n5;

    const/4 v0, 0x0

    invoke-direct {v4, v1, v5, v0}, Lod/n5;-><init>(Lad/r2;Lr0/u0;I)V

    invoke-virtual {v15, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_16
    move-object v12, v4

    check-cast v12, Li9/a;

    const v16, 0x30030

    const/16 v17, 0x18c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v6 .. v17}, Lo0/m4;->b(FLi9/c;Lf1/r;ZLo9/a;ILi9/a;Lo0/t3;Ls/i;Lr0/q;II)V

    const/4 v12, 0x1

    invoke-virtual {v15, v12}, Lr0/q;->q(Z)V

    invoke-interface/range {v29 .. v29}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v15, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_17

    if-ne v4, v2, :cond_18

    :cond_17
    new-instance v4, Lod/o5;

    const/4 v0, 0x0

    move-object/from16 v5, v29

    invoke-direct {v4, v1, v5, v0}, Lod/o5;-><init>(Lad/r2;Lr0/u0;I)V

    invoke-virtual {v15, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_18
    move-object v9, v4

    check-cast v9, Li9/c;

    const/16 v11, 0x36

    const-string v6, "\u041d\u0435 \u0433\u043e\u0432\u043e\u0440\u0438\u0442\u0438 \u043f\u0456\u0434 \u0447\u0430\u0441 \u0434\u0437\u0432\u0456\u043d\u043a\u0430"

    const-string v7, "\u041f\u0456\u0434 \u0447\u0430\u0441 \u0440\u043e\u0437\u043c\u043e\u0432\u0438 \u0430\u0431\u043e \u0432\u0445\u0456\u0434\u043d\u043e\u0433\u043e \u0432\u0438\u043a\u043b\u0438\u043a\u0443 \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0438 \u043c\u043e\u0432\u0447\u0430\u0442\u044c, \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0456 \u0432\u0441\u0435 \u043b\u0438\u0448\u0430\u0454\u0442\u044c\u0441\u044f."

    move-object v10, v15

    invoke-static/range {v6 .. v11}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    invoke-virtual {v15, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_19

    if-ne v4, v2, :cond_1a

    :cond_19
    new-instance v4, Lod/x4;

    const/4 v0, 0x1

    invoke-direct {v4, v0, v1}, Lod/x4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v15, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1a
    move-object v6, v4

    check-cast v6, Li9/a;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v7

    sget-object v13, Lod/m;->U0:Lz0/d;

    move-object/from16 v25, v15

    const v15, 0x30000030

    const/16 v16, 0x1fc

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v14, v25

    invoke-static/range {v6 .. v16}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_15

    :cond_1b
    move-object/from16 v25, v15

    invoke-virtual/range {v25 .. v25}, Lr0/q;->W()V

    :goto_15
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
