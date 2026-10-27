.class public interface abstract Lo1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/c;


# direct methods
.method public static D(Lo1/d;Lm1/e;JJFLm1/j;II)V
    .locals 13

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    move-wide v8, p2

    goto :goto_0

    :cond_0
    move-wide/from16 v8, p4

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    move v10, v1

    goto :goto_1

    :cond_1
    move/from16 v10, p6

    :goto_1
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v12, v0

    goto :goto_2

    :cond_2
    move/from16 v12, p8

    :goto_2
    const-wide/16 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p2

    move-object/from16 v11, p7

    invoke-interface/range {v2 .. v12}, Lo1/d;->r(Lm1/e;JJJFLm1/j;I)V

    return-void
.end method

.method public static Q(JJ)J
    .locals 6

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    shr-long v2, p2, v0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float/2addr v1, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    and-long p1, p2, v2

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v4, p0

    shl-long p0, p1, v0

    and-long p2, v4, v2

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static synthetic X(Lo1/d;JFJLo1/e;I)V
    .locals 7

    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lo1/d;->j0()J

    move-result-wide p4

    :cond_0
    move-wide v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    sget-object p6, Lo1/g;->a:Lo1/g;

    :cond_1
    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lo1/d;->Z(JFJLo1/e;)V

    return-void
.end method

.method public static c0(Le2/j0;Lm1/m;JJFLo1/e;I)V
    .locals 14

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    move-wide/from16 v0, p2

    :goto_0
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_1

    iget-object v2, p0, Le2/j0;->l:Lo1/b;

    invoke-interface {v2}, Lo1/d;->d()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lo1/d;->Q(JJ)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    move-wide/from16 v2, p4

    :goto_1
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    move/from16 v4, p6

    :goto_2
    and-int/lit8 v5, p8, 0x10

    if-eqz v5, :cond_3

    sget-object v5, Lo1/g;->a:Lo1/g;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p7

    :goto_3
    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    iget-object v6, p0, Lo1/b;->l:Lo1/a;

    iget-object v6, v6, Lo1/a;->c:Lm1/o;

    const/16 v7, 0x20

    shr-long v8, v0, v7

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    const-wide v10, 0xffffffffL

    and-long/2addr v0, v10

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    shr-long v12, v2, v7

    long-to-int v7, v12

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    add-float/2addr v7, v8

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    and-long/2addr v2, v10

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    add-float/2addr v2, v0

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x3

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p8, v0

    move-object/from16 p6, v3

    move/from16 p5, v4

    move-object/from16 p4, v5

    move/from16 p7, v8

    invoke-virtual/range {p2 .. p8}, Lo1/b;->c(Lm1/m;Lo1/e;FLm1/j;II)Lf6/v;

    move-result-object p0

    move-object/from16 p6, p0

    move/from16 p3, v1

    move/from16 p5, v2

    move-object p1, v6

    move/from16 p4, v7

    move/from16 p2, v9

    invoke-interface/range {p1 .. p6}, Lm1/o;->j(FFFFLf6/v;)V

    return-void
.end method

.method public static synthetic g0(Lo1/d;JJJJLo1/e;I)V
    .locals 14

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v6, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    sget-object v1, Lo1/g;->a:Lo1/g;

    move-object v12, v1

    goto :goto_1

    :cond_1
    move-object/from16 v12, p9

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move v13, v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    invoke-interface/range {v3 .. v13}, Lo1/d;->g(JJJJLo1/e;I)V

    return-void
.end method

.method public static synthetic h(Lo1/d;JJJI)V
    .locals 8

    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p7, 0x4

    if-eqz p3, :cond_1

    invoke-interface {p0}, Lo1/d;->d()J

    move-result-wide p3

    invoke-static {p3, p4, v3, v4}, Lo1/d;->Q(JJ)J

    move-result-wide p5

    :cond_1
    move-wide v5, p5

    and-int/lit8 p3, p7, 0x40

    if-eqz p3, :cond_2

    const/4 p3, 0x3

    :goto_0
    move-object v0, p0

    move-wide v1, p1

    move v7, p3

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    invoke-interface/range {v0 .. v7}, Lo1/d;->e0(JJJI)V

    return-void
.end method

.method public static synthetic q(Lo1/d;Lm1/g;JLo1/e;I)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    sget-object p4, Lo1/g;->a:Lo1/g;

    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lo1/d;->a0(Lm1/g;JLo1/e;)V

    return-void
.end method

.method public static synthetic t(Lo1/d;Lm1/g;Lm1/m;FLo1/h;I)V
    .locals 6

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_0
    move v3, p3

    and-int/lit8 p3, p5, 0x8

    if-eqz p3, :cond_1

    sget-object p4, Lo1/g;->a:Lo1/g;

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p5, 0x20

    if-eqz p3, :cond_2

    const/4 p3, 0x3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    invoke-interface/range {v0 .. v5}, Lo1/d;->m0(Lm1/g;Lm1/m;FLo1/e;I)V

    return-void
.end method

.method public static synthetic u0(Lo1/d;JJJFII)V
    .locals 10

    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    goto :goto_1

    :cond_0
    move/from16 v9, p8

    goto :goto_0

    :goto_1
    invoke-interface/range {v1 .. v9}, Lo1/d;->B(JJJFI)V

    return-void
.end method

.method public static w(Le2/j0;Lm1/m;JJJLo1/e;I)V
    .locals 13

    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_1

    iget-object v2, p0, Le2/j0;->l:Lo1/b;

    invoke-interface {v2}, Lo1/d;->d()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lo1/d;->Q(JJ)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    move-wide/from16 v2, p4

    :goto_1
    and-int/lit8 v4, p9, 0x20

    if-eqz v4, :cond_2

    sget-object v4, Lo1/g;->a:Lo1/g;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p8

    :goto_2
    iget-object p0, p0, Le2/j0;->l:Lo1/b;

    iget-object v5, p0, Lo1/b;->l:Lo1/a;

    iget-object v5, v5, Lo1/a;->c:Lm1/o;

    const/16 v6, 0x20

    shr-long v7, v0, v6

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    const-wide v9, 0xffffffffL

    and-long/2addr v0, v9

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    shr-long v11, v2, v6

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    add-float/2addr v11, v7

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    and-long/2addr v2, v9

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    add-float/2addr v2, v0

    shr-long v6, p6, v6

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    and-long v6, p6, v9

    long-to-int v3, v6

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x3

    move-object p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v4

    move/from16 p8, v6

    move/from16 p5, v7

    move-object/from16 p6, v9

    move/from16 p7, v10

    invoke-virtual/range {p2 .. p8}, Lo1/b;->c(Lm1/m;Lo1/e;FLm1/j;II)Lf6/v;

    move-result-object p0

    move-object/from16 p8, p0

    move/from16 p6, v0

    move/from16 p3, v1

    move/from16 p5, v2

    move/from16 p7, v3

    move-object p1, v5

    move p2, v8

    move/from16 p4, v11

    invoke-interface/range {p1 .. p8}, Lm1/o;->a(FFFFFFLf6/v;)V

    return-void
.end method


# virtual methods
.method public abstract B(JJJFI)V
.end method

.method public abstract Y()Lg5/m;
.end method

.method public abstract Z(JFJLo1/e;)V
.end method

.method public abstract a0(Lm1/g;JLo1/e;)V
.end method

.method public d()J
    .locals 2

    invoke-interface {p0}, Lo1/d;->Y()Lg5/m;

    move-result-object p0

    invoke-virtual {p0}, Lg5/m;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract e0(JJJI)V
.end method

.method public abstract g(JJJJLo1/e;I)V
.end method

.method public abstract getLayoutDirection()Lb3/m;
.end method

.method public j0()J
    .locals 2

    invoke-interface {p0}, Lo1/d;->Y()Lg5/m;

    move-result-object p0

    invoke-virtual {p0}, Lg5/m;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Lwa/h;->o(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract m0(Lm1/g;Lm1/m;FLo1/e;I)V
.end method

.method public abstract r(Lm1/e;JJJFLm1/j;I)V
.end method

.method public abstract s(JFFJJLo1/h;)V
.end method
