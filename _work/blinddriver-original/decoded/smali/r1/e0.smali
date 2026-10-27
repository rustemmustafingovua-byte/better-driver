.class public final Lr1/e0;
.super Lr1/c0;
.source "SourceFile"


# instance fields
.field public final b:Lr1/c;

.field public c:Ljava/lang/String;

.field public d:Z

.field public final e:Lr1/a;

.field public f:Lj9/o;

.field public final g:Lr0/e1;

.field public h:Lm1/j;

.field public final i:Lr0/e1;

.field public j:J

.field public k:F

.field public l:F

.field public final m:Lr1/d0;


# direct methods
.method public constructor <init>(Lr1/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/e0;->b:Lr1/c;

    new-instance v0, Lr1/d0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr1/d0;-><init>(Lr1/e0;I)V

    iput-object v0, p1, Lr1/c;->i:Li9/c;

    const-string p1, ""

    iput-object p1, p0, Lr1/e0;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr1/e0;->d:Z

    new-instance p1, Lr1/a;

    invoke-direct {p1}, Lr1/a;-><init>()V

    iput-object p1, p0, Lr1/e0;->e:Lr1/a;

    sget-object p1, Lr1/g;->n:Lr1/g;

    iput-object p1, p0, Lr1/e0;->f:Lj9/o;

    const/4 p1, 0x0

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lr1/e0;->g:Lr0/e1;

    new-instance p1, Ll1/e;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ll1/e;-><init>(J)V

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lr1/e0;->i:Lr0/e1;

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v0, p0, Lr1/e0;->j:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lr1/e0;->k:F

    iput p1, p0, Lr1/e0;->l:F

    new-instance p1, Lr1/d0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lr1/d0;-><init>(Lr1/e0;I)V

    iput-object p1, p0, Lr1/e0;->m:Lr1/d0;

    return-void
.end method


# virtual methods
.method public final a(Lo1/d;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lr1/e0;->e(Lo1/d;FLm1/j;)V

    return-void
.end method

.method public final e(Lo1/d;FLm1/j;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lr1/e0;->b:Lr1/c;

    iget-boolean v3, v2, Lr1/c;->d:Z

    const/4 v4, 0x5

    iget-object v5, v0, Lr1/e0;->g:Lr0/e1;

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    iget-wide v8, v2, Lr1/c;->e:J

    const-wide/16 v10, 0x10

    cmp-long v3, v8, v10

    if-eqz v3, :cond_4

    invoke-virtual {v5}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm1/j;

    sget v8, Lr1/h0;->a:I

    instance-of v8, v3, Lm1/j;

    const/4 v9, 0x3

    if-eqz v8, :cond_1

    iget v3, v3, Lm1/j;->c:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v3, v9, :cond_4

    goto :goto_0

    :cond_1
    if-nez v3, :cond_4

    :goto_0
    instance-of v3, v1, Lm1/j;

    if-eqz v3, :cond_3

    iget v3, v1, Lm1/j;->c:I

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    if-ne v3, v9, :cond_4

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    :goto_1
    move v3, v6

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    iget-boolean v8, v0, Lr1/e0;->d:Z

    iget-object v9, v0, Lr1/e0;->e:Lr1/a;

    if-nez v8, :cond_6

    iget-wide v10, v0, Lr1/e0;->j:J

    invoke-interface/range {p1 .. p1}, Lo1/d;->d()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ll1/e;->a(JJ)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v9, Lr1/a;->a:Lm1/e;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lm1/e;->a()I

    move-result v8

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    if-ne v3, v8, :cond_6

    goto/16 :goto_7

    :cond_6
    if-ne v3, v6, :cond_8

    iget-wide v10, v2, Lr1/c;->e:J

    sget v2, Lr1/h0;->a:I

    invoke-static {v10, v11}, Lm1/p;->d(J)F

    move-result v2

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v6

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v6, v10, v11}, Lm1/p;->b(FJ)J

    move-result-wide v10

    :goto_4
    new-instance v2, Lm1/j;

    invoke-direct {v2, v4, v10, v11}, Lm1/j;-><init>(IJ)V

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    iput-object v2, v0, Lr1/e0;->h:Lm1/j;

    invoke-interface/range {p1 .. p1}, Lo1/d;->d()J

    move-result-wide v10

    const/16 v2, 0x20

    shr-long/2addr v10, v2

    long-to-int v4, v10

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    iget-object v6, v0, Lr1/e0;->i:Lr0/e1;

    invoke-virtual {v6}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ll1/e;

    iget-wide v10, v8, Ll1/e;->a:J

    shr-long/2addr v10, v2

    long-to-int v8, v10

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    div-float/2addr v4, v8

    iput v4, v0, Lr1/e0;->k:F

    invoke-interface/range {p1 .. p1}, Lo1/d;->d()J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    long-to-int v4, v10

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-virtual {v6}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll1/e;

    iget-wide v10, v6, Ll1/e;->a:J

    and-long/2addr v10, v12

    long-to-int v6, v10

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    div-float/2addr v4, v6

    iput v4, v0, Lr1/e0;->l:F

    invoke-interface/range {p1 .. p1}, Lo1/d;->d()J

    move-result-wide v10

    shr-long/2addr v10, v2

    long-to-int v4, v10

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v4, v10

    float-to-int v4, v4

    invoke-interface/range {p1 .. p1}, Lo1/d;->d()J

    move-result-wide v10

    and-long/2addr v10, v12

    long-to-int v6, v10

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v6, v10

    float-to-int v6, v6

    int-to-long v10, v4

    shl-long/2addr v10, v2

    int-to-long v14, v6

    and-long/2addr v14, v12

    or-long/2addr v10, v14

    invoke-interface/range {p1 .. p1}, Lo1/d;->getLayoutDirection()Lb3/m;

    move-result-object v4

    iget-object v6, v9, Lr1/a;->a:Lm1/e;

    iget-object v8, v9, Lr1/a;->b:Lm1/a;

    if-eqz v6, :cond_9

    if-eqz v8, :cond_9

    shr-long v14, v10, v2

    long-to-int v14, v14

    iget-object v15, v6, Lm1/e;->a:Landroid/graphics/Bitmap;

    move/from16 v16, v2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-wide/from16 v17, v12

    if-gt v14, v2, :cond_a

    and-long v12, v10, v17

    long-to-int v2, v12

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-gt v2, v12, :cond_a

    iget v2, v9, Lr1/a;->d:I

    if-ne v2, v3, :cond_a

    goto :goto_6

    :cond_9
    move/from16 v16, v2

    move-wide/from16 v17, v12

    :cond_a
    shr-long v12, v10, v16

    long-to-int v2, v12

    and-long v12, v10, v17

    long-to-int v6, v12

    invoke-static {v2, v6, v3}, Lm1/v;->f(III)Lm1/e;

    move-result-object v6

    invoke-static {v6}, Lm1/v;->a(Lm1/e;)Lm1/a;

    move-result-object v8

    iput-object v6, v9, Lr1/a;->a:Lm1/e;

    iput-object v8, v9, Lr1/a;->b:Lm1/a;

    iput v3, v9, Lr1/a;->d:I

    :goto_6
    iput-wide v10, v9, Lr1/a;->c:J

    iget-object v12, v9, Lr1/a;->e:Lo1/b;

    invoke-static {v10, v11}, Ly4/s;->E(J)J

    move-result-wide v2

    iget-object v10, v12, Lo1/b;->l:Lo1/a;

    iget-object v11, v10, Lo1/a;->a:Lb3/c;

    iget-object v13, v10, Lo1/a;->b:Lb3/m;

    iget-object v14, v10, Lo1/a;->c:Lm1/o;

    move-object/from16 v20, v8

    iget-wide v7, v10, Lo1/a;->d:J

    move-object/from16 v15, p1

    iput-object v15, v10, Lo1/a;->a:Lb3/c;

    iput-object v4, v10, Lo1/a;->b:Lb3/m;

    move-object/from16 v4, v20

    iput-object v4, v10, Lo1/a;->c:Lm1/o;

    iput-wide v2, v10, Lo1/a;->d:J

    invoke-virtual {v4}, Lm1/a;->h()V

    move-object v2, v13

    move-object v3, v14

    sget-wide v13, Lm1/p;->b:J

    const-wide/16 v17, 0x0

    const/16 v19, 0x3e

    const-wide/16 v15, 0x0

    invoke-static/range {v12 .. v19}, Lo1/d;->h(Lo1/d;JJJI)V

    iget-object v10, v0, Lr1/e0;->m:Lr1/d0;

    invoke-virtual {v10, v12}, Lr1/d0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lm1/a;->q()V

    iget-object v4, v12, Lo1/b;->l:Lo1/a;

    iput-object v11, v4, Lo1/a;->a:Lb3/c;

    iput-object v2, v4, Lo1/a;->b:Lb3/m;

    iput-object v3, v4, Lo1/a;->c:Lm1/o;

    iput-wide v7, v4, Lo1/a;->d:J

    iget-object v2, v6, Lm1/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->prepareToDraw()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lr1/e0;->d:Z

    invoke-interface/range {p1 .. p1}, Lo1/d;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lr1/e0;->j:J

    :goto_7
    if-eqz v1, :cond_b

    move-object/from16 v28, v1

    goto :goto_9

    :cond_b
    invoke-virtual {v5}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm1/j;

    if-eqz v1, :cond_c

    invoke-virtual {v5}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm1/j;

    :goto_8
    move-object/from16 v28, v0

    goto :goto_9

    :cond_c
    iget-object v0, v0, Lr1/e0;->h:Lm1/j;

    goto :goto_8

    :goto_9
    iget-object v0, v9, Lr1/a;->a:Lm1/e;

    if-eqz v0, :cond_d

    goto :goto_a

    :cond_d
    const-string v1, "drawCachedImage must be invoked first before attempting to draw the result into another destination"

    invoke-static {v1}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_a
    iget-wide v1, v9, Lr1/a;->c:J

    const/16 v29, 0x0

    const/16 v30, 0x35a

    const-wide/16 v25, 0x0

    move-object/from16 v21, p1

    move/from16 v27, p2

    move-object/from16 v22, v0

    move-wide/from16 v23, v1

    invoke-static/range {v21 .. v30}, Lo1/d;->D(Lo1/d;Lm1/e;JJFLm1/j;II)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Params: \tname: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lr1/e0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tviewportWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lr1/e0;->i:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/e;

    iget-wide v1, v1, Ll1/e;->a:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n\tviewportHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1/e;

    iget-wide v1, p0, Ll1/e;->a:J

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
