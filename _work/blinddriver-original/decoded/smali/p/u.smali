.class public final synthetic Lp/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:J

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/io/Serializable;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(J[FLa6/k;Lj9/w;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lp/u;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lp/u;->m:J

    iput-object p3, p0, Lp/u;->n:Ljava/lang/Object;

    iput-object p4, p0, Lp/u;->o:Ljava/io/Serializable;

    iput-object p5, p0, Lp/u;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ll1/c;Lj9/y;JLm1/j;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lp/u;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/u;->n:Ljava/lang/Object;

    iput-object p2, p0, Lp/u;->o:Ljava/io/Serializable;

    iput-wide p3, p0, Lp/u;->m:J

    iput-object p5, p0, Lp/u;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lp/u;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lp/u;->n:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, v0, Lp/u;->o:Ljava/io/Serializable;

    check-cast v2, La6/k;

    iget-object v3, v0, Lp/u;->p:Ljava/lang/Object;

    check-cast v3, Lj9/w;

    move-object/from16 v4, p1

    check-cast v4, Lp2/p;

    iget v5, v4, Lp2/p;->b:I

    iget-object v6, v4, Lp2/p;->a:Lp2/a;

    iget v7, v4, Lp2/p;->c:I

    iget-wide v8, v0, Lp/u;->m:J

    invoke-static {v8, v9}, Lp2/l0;->f(J)I

    move-result v0

    if-le v5, v0, :cond_0

    iget v0, v4, Lp2/p;->b:I

    goto :goto_0

    :cond_0
    invoke-static {v8, v9}, Lp2/l0;->f(J)I

    move-result v0

    :goto_0
    invoke-static {v8, v9}, Lp2/l0;->e(J)I

    move-result v5

    if-ge v7, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v8, v9}, Lp2/l0;->e(J)I

    move-result v7

    :goto_1
    invoke-virtual {v4, v0}, Lp2/p;->d(I)I

    move-result v0

    invoke-virtual {v4, v7}, Lp2/p;->d(I)I

    move-result v4

    invoke-static {v0, v4}, Lp2/d0;->b(II)J

    move-result-wide v4

    iget v0, v2, La6/k;->m:I

    iget-object v7, v6, Lp2/a;->d:Lq2/j;

    invoke-static {v4, v5}, Lp2/l0;->f(J)I

    move-result v8

    invoke-static {v4, v5}, Lp2/l0;->e(J)I

    move-result v9

    iget-object v10, v7, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ltz v8, :cond_2

    goto :goto_2

    :cond_2
    const-string v12, "startOffset must be > 0"

    invoke-static {v12}, Lv2/a;->a(Ljava/lang/String;)V

    :goto_2
    if-ge v8, v11, :cond_3

    goto :goto_3

    :cond_3
    const-string v12, "startOffset must be less than text length"

    invoke-static {v12}, Lv2/a;->a(Ljava/lang/String;)V

    :goto_3
    if-le v9, v8, :cond_4

    goto :goto_4

    :cond_4
    const-string v12, "endOffset must be greater than startOffset"

    invoke-static {v12}, Lv2/a;->a(Ljava/lang/String;)V

    :goto_4
    if-gt v9, v11, :cond_5

    goto :goto_5

    :cond_5
    const-string v11, "endOffset must be smaller or equal to text length"

    invoke-static {v11}, Lv2/a;->a(Ljava/lang/String;)V

    :goto_5
    sub-int v11, v9, v8

    mul-int/lit8 v11, v11, 0x4

    array-length v12, v1

    sub-int/2addr v12, v0

    if-lt v12, v11, :cond_6

    goto :goto_6

    :cond_6
    const-string v11, "array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 4"

    invoke-static {v11}, Lv2/a;->a(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v10, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v10, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v12

    new-instance v13, Ll2/f;

    invoke-direct {v13, v7}, Ll2/f;-><init>(Lq2/j;)V

    if-gt v11, v12, :cond_c

    :goto_7
    invoke-virtual {v10, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    invoke-virtual {v7, v11}, Lq2/j;->f(I)I

    move-result v15

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-virtual {v7, v11}, Lq2/j;->g(I)F

    move-result v16

    invoke-virtual {v7, v11}, Lq2/j;->e(I)F

    move-result v17

    move/from16 p0, v0

    invoke-virtual {v10, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    move-object/from16 v18, v1

    const/4 v1, 0x1

    move-wide/from16 v19, v4

    const/4 v4, 0x0

    if-ne v0, v1, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    move v0, v4

    :goto_8
    move/from16 v5, p0

    :goto_9
    if-ge v14, v15, :cond_b

    invoke-virtual {v10, v14}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v21

    if-eqz v0, :cond_8

    if-nez v21, :cond_8

    invoke-virtual {v13, v14, v4, v4, v1}, Ll2/f;->a(IZZZ)F

    move-result v21

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v13, v4, v1, v1, v1}, Ll2/f;->a(IZZZ)F

    move-result v4

    move/from16 p0, v0

    move v0, v4

    :goto_a
    const/4 v4, 0x0

    goto :goto_b

    :cond_8
    if-eqz v0, :cond_9

    if-eqz v21, :cond_9

    const/4 v4, 0x0

    invoke-virtual {v13, v14, v4, v4, v4}, Ll2/f;->a(IZZZ)F

    move-result v21

    move/from16 p0, v0

    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v13, v0, v1, v1, v4}, Ll2/f;->a(IZZZ)F

    move-result v0

    move/from16 v22, v21

    move/from16 v21, v0

    move/from16 v0, v22

    goto :goto_b

    :cond_9
    move/from16 p0, v0

    const/4 v4, 0x0

    if-nez p0, :cond_a

    if-eqz v21, :cond_a

    invoke-virtual {v13, v14, v4, v4, v1}, Ll2/f;->a(IZZZ)F

    move-result v0

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v13, v4, v1, v1, v1}, Ll2/f;->a(IZZZ)F

    move-result v4

    move/from16 v21, v4

    goto :goto_a

    :cond_a
    invoke-virtual {v13, v14, v4, v4, v4}, Ll2/f;->a(IZZZ)F

    move-result v21

    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v13, v0, v1, v1, v4}, Ll2/f;->a(IZZZ)F

    move-result v0

    :goto_b
    aput v21, v18, v5

    add-int/lit8 v21, v5, 0x1

    aput v16, v18, v21

    add-int/lit8 v21, v5, 0x2

    aput v0, v18, v21

    add-int/lit8 v0, v5, 0x3

    aput v17, v18, v0

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p0

    goto :goto_9

    :cond_b
    if-eq v11, v12, :cond_d

    add-int/lit8 v11, v11, 0x1

    move v0, v5

    move-object/from16 v1, v18

    move-wide/from16 v4, v19

    goto/16 :goto_7

    :cond_c
    move-object/from16 v18, v1

    move-wide/from16 v19, v4

    :cond_d
    iget v0, v2, La6/k;->m:I

    invoke-static/range {v19 .. v20}, Lp2/l0;->d(J)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    iget v0, v2, La6/k;->m:I

    :goto_c
    if-ge v0, v1, :cond_e

    add-int/lit8 v4, v0, 0x1

    aget v5, v18, v4

    iget v7, v3, Lj9/w;->l:F

    add-float/2addr v5, v7

    aput v5, v18, v4

    add-int/lit8 v4, v0, 0x3

    aget v5, v18, v4

    add-float/2addr v5, v7

    aput v5, v18, v4

    add-int/lit8 v0, v0, 0x4

    goto :goto_c

    :cond_e
    iput v1, v2, La6/k;->m:I

    iget v0, v3, Lj9/w;->l:F

    invoke-virtual {v6}, Lp2/a;->b()F

    move-result v1

    add-float/2addr v1, v0

    iput v1, v3, Lj9/w;->l:F

    :goto_d
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lp/u;->n:Ljava/lang/Object;

    check-cast v1, Ll1/c;

    iget-object v2, v0, Lp/u;->o:Ljava/io/Serializable;

    check-cast v2, Lj9/y;

    iget-wide v5, v0, Lp/u;->m:J

    iget-object v0, v0, Lp/u;->p:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lm1/j;

    move-object/from16 v3, p1

    check-cast v3, Le2/j0;

    invoke-virtual {v3}, Le2/j0;->b()V

    iget v13, v1, Ll1/c;->a:F

    iget v1, v1, Ll1/c;->b:F

    iget-object v14, v3, Le2/j0;->l:Lo1/b;

    iget-object v0, v14, Lo1/b;->m:Lg5/m;

    iget-object v0, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lm2/j;

    invoke-virtual {v0, v13, v1}, Lm2/j;->F(FF)V

    :try_start_0
    iget-object v0, v2, Lj9/y;->m:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lm1/e;

    const/4 v11, 0x0

    const/16 v12, 0x37a

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v12}, Lo1/d;->D(Lo1/d;Lm1/e;JJFLm1/j;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v14, Lo1/b;->m:Lg5/m;

    iget-object v0, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lm2/j;

    neg-float v2, v13

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Lm2/j;->F(FF)V

    goto :goto_d

    :catchall_0
    move-exception v0

    iget-object v2, v14, Lo1/b;->m:Lg5/m;

    iget-object v2, v2, Lg5/m;->m:Ljava/lang/Object;

    check-cast v2, Lm2/j;

    neg-float v3, v13

    neg-float v1, v1

    invoke-virtual {v2, v3, v1}, Lm2/j;->F(FF)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
