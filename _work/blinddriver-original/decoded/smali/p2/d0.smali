.class public abstract Lp2/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg5/c;

.field public static final b:Lg5/c;

.field public static final c:Lg5/c;

.field public static final d:Lg5/c;

.field public static final e:Lg5/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lp2/x;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp2/x;-><init>(IB)V

    new-instance v1, Lp2/y;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lp2/y;-><init>(I)V

    new-instance v2, Lg5/c;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0, v1}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Lp2/d0;->a:Lg5/c;

    new-instance v0, Lp2/x;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp2/x;-><init>(IB)V

    new-instance v1, Lp2/y;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lp2/y;-><init>(I)V

    new-instance v2, Lg5/c;

    invoke-direct {v2, v3, v0, v1}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Lp2/d0;->b:Lg5/c;

    new-instance v0, Lp2/x;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp2/x;-><init>(IB)V

    new-instance v1, Lp2/y;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lp2/y;-><init>(I)V

    new-instance v2, Lg5/c;

    invoke-direct {v2, v3, v0, v1}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Lp2/d0;->c:Lg5/c;

    new-instance v0, Lp2/x;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp2/x;-><init>(IB)V

    new-instance v1, Lp2/y;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lp2/y;-><init>(I)V

    new-instance v2, Lg5/c;

    invoke-direct {v2, v3, v0, v1}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Lp2/d0;->d:Lg5/c;

    new-instance v0, Lp2/x;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp2/x;-><init>(IB)V

    new-instance v1, Lp2/y;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lp2/y;-><init>(I)V

    new-instance v2, Lg5/c;

    invoke-direct {v2, v3, v0, v1}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Lp2/d0;->e:Lg5/c;

    return-void
.end method

.method public static a(Ljava/lang/String;Lp2/m0;JLb3/c;Lt2/d;II)Lp2/a;
    .locals 7

    move-object v1, p0

    new-instance p0, Lp2/a;

    new-instance v0, Lx2/c;

    sget-object v3, Lu8/r;->l:Lu8/r;

    move-object v4, v3

    move-object v2, p1

    move-object v6, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lx2/c;-><init>(Ljava/lang/String;Lp2/m0;Ljava/util/List;Ljava/util/List;Lt2/d;Lb3/c;)V

    move-wide p4, p2

    move-object p1, v0

    const/4 p3, 0x1

    move p2, p6

    invoke-direct/range {p0 .. p5}, Lp2/a;-><init>(Lx2/c;IIJ)V

    return-object p0
.end method

.method public static final b(II)J
    .locals 4

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start and end cannot be negative. [start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv2/a;->a(Ljava/lang/String;)V

    :goto_0
    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    sget v0, Lp2/l0;->c:I

    return-wide p0
.end method

.method public static final c(IJ)J
    .locals 5

    sget v0, Lp2/l0;->c:I

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-le v2, p0, :cond_1

    move v2, p0

    :cond_1
    const-wide v3, 0xffffffffL

    and-long/2addr v3, p1

    long-to-int v3, v3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-le v1, p0, :cond_3

    goto :goto_2

    :cond_3
    move p0, v1

    :goto_2
    if-ne v2, v0, :cond_5

    if-eq p0, v3, :cond_4

    goto :goto_3

    :cond_4
    return-wide p1

    :cond_5
    :goto_3
    invoke-static {v2, p0}, Lp2/d0;->b(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final d(ILjava/util/List;)I
    .locals 7

    invoke-static {p1}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/p;

    iget v0, v0, Lp2/p;->c:I

    invoke-static {p1}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp2/p;

    iget v1, v1, Lp2/p;->c:I

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " should be less or equal than last line\'s end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv2/a;->a(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-gt v3, v0, :cond_4

    add-int v4, v3, v0

    ushr-int/2addr v4, v1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp2/p;

    iget v6, v5, Lp2/p;->b:I

    if-le v6, p0, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    iget v5, v5, Lp2/p;->c:I

    if-gt v5, p0, :cond_2

    const/4 v5, -0x1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    if-gez v5, :cond_3

    add-int/lit8 v3, v4, 0x1

    goto :goto_1

    :cond_3
    if-lez v5, :cond_5

    add-int/lit8 v0, v4, -0x1

    goto :goto_1

    :cond_4
    add-int/2addr v3, v1

    neg-int v4, v3

    :cond_5
    if-ltz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    return v4

    :cond_6
    const-string v0, "Found paragraph index "

    const-string v1, " should be in range [0, "

    invoke-static {v4, v0, v1}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ").\nDebug info: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", paragraphs=["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lp0/e;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lp0/e;-><init>(I)V

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-static {p1, v2, p0, v1}, Ld3/a;->a(Ljava/util/List;Ljava/lang/String;Lp0/e;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv2/a;->a(Ljava/lang/String;)V

    return v4
.end method

.method public static final e(ILjava/util/List;)I
    .locals 7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v3, v0, :cond_4

    add-int v4, v3, v0

    ushr-int/2addr v4, v1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp2/p;

    iget v6, v5, Lp2/p;->d:I

    if-le v6, p0, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    iget v5, v5, Lp2/p;->e:I

    if-gt v5, p0, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-gez v5, :cond_2

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_2
    if-lez v5, :cond_3

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    add-int/2addr v3, v1

    neg-int p0, v3

    return p0
.end method

.method public static final f(Ljava/util/ArrayList;F)I
    .locals 7

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/p;

    iget v0, v0, Lp2/p;->g:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    invoke-static {p0}, Lg5/f;->A(Ljava/util/List;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v3, v1

    :goto_0
    if-gt v3, v0, :cond_6

    add-int v4, v3, v0

    ushr-int/2addr v4, v2

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp2/p;

    iget v6, v5, Lp2/p;->f:F

    cmpl-float v6, v6, p1

    if-lez v6, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    iget v5, v5, Lp2/p;->g:F

    cmpg-float v5, v5, p1

    if-gtz v5, :cond_3

    const/4 v5, -0x1

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    if-gez v5, :cond_4

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_4
    if-lez v5, :cond_5

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_5
    return v4

    :cond_6
    add-int/2addr v3, v2

    neg-int p0, v3

    return p0
.end method

.method public static final g(Ljava/util/ArrayList;JLi9/c;)V
    .locals 5

    invoke-static {p1, p2}, Lp2/l0;->f(J)I

    move-result v0

    invoke-static {v0, p0}, Lp2/d0;->d(ILjava/util/List;)I

    move-result v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2/p;

    iget v3, v2, Lp2/p;->b:I

    invoke-static {p1, p2}, Lp2/l0;->e(J)I

    move-result v4

    if-ge v3, v4, :cond_1

    iget v3, v2, Lp2/p;->b:I

    iget v4, v2, Lp2/p;->c:I

    if-eq v3, v4, :cond_0

    invoke-interface {p3, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final h(Lp2/m0;Lb3/m;)Lp2/m0;
    .locals 30

    move-object/from16 v0, p0

    new-instance v1, Lp2/m0;

    iget-object v2, v0, Lp2/m0;->a:Lp2/e0;

    sget-object v3, Lp2/f0;->d:La3/o;

    iget-object v3, v2, Lp2/e0;->a:La3/o;

    sget-object v4, La3/n;->a:La3/n;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    move-object v5, v3

    goto :goto_1

    :cond_0
    sget-object v3, Lp2/f0;->d:La3/o;

    goto :goto_0

    :goto_1
    iget-wide v3, v2, Lp2/e0;->b:J

    sget-object v6, Lb3/o;->b:[Lb3/p;

    const-wide v24, 0xff00000000L

    and-long v6, v3, v24

    const-wide/16 v26, 0x0

    cmp-long v6, v6, v26

    if-nez v6, :cond_1

    sget-wide v3, Lp2/f0;->a:J

    :cond_1
    move-wide v6, v3

    iget-object v3, v2, Lp2/e0;->c:Lt2/k;

    if-nez v3, :cond_2

    sget-object v3, Lt2/k;->n:Lt2/k;

    :cond_2
    move-object v8, v3

    iget-object v3, v2, Lp2/e0;->d:Lt2/i;

    if-eqz v3, :cond_3

    iget v3, v3, Lt2/i;->a:I

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    new-instance v9, Lt2/i;

    invoke-direct {v9, v3}, Lt2/i;-><init>(I)V

    iget-object v3, v2, Lp2/e0;->e:Lt2/j;

    if-eqz v3, :cond_4

    iget v3, v3, Lt2/j;->a:I

    goto :goto_3

    :cond_4
    const v3, 0xffff

    :goto_3
    new-instance v10, Lt2/j;

    invoke-direct {v10, v3}, Lt2/j;-><init>(I)V

    iget-object v3, v2, Lp2/e0;->f:Lt2/p;

    if-nez v3, :cond_5

    sget-object v3, Lt2/p;->a:Lt2/b;

    :cond_5
    move-object v11, v3

    iget-object v3, v2, Lp2/e0;->g:Ljava/lang/String;

    if-nez v3, :cond_6

    const-string v3, ""

    :cond_6
    move-object v12, v3

    iget-wide v3, v2, Lp2/e0;->h:J

    and-long v13, v3, v24

    cmp-long v13, v13, v26

    if-nez v13, :cond_7

    sget-wide v3, Lp2/f0;->b:J

    :cond_7
    move-wide v13, v3

    iget-object v3, v2, Lp2/e0;->i:La3/a;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    iget v3, v3, La3/a;->a:F

    goto :goto_4

    :cond_8
    move v3, v4

    :goto_4
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_9

    goto :goto_5

    :cond_9
    move v4, v3

    :goto_5
    new-instance v15, La3/a;

    invoke-direct {v15, v4}, La3/a;-><init>(F)V

    iget-object v3, v2, Lp2/e0;->j:La3/p;

    if-nez v3, :cond_a

    sget-object v3, La3/p;->c:La3/p;

    :cond_a
    move-object/from16 v16, v3

    iget-object v3, v2, Lp2/e0;->k:Lw2/b;

    if-nez v3, :cond_b

    sget-object v3, Lw2/b;->n:Lw2/b;

    sget-object v3, Lw2/c;->a:Lg5/m;

    invoke-virtual {v3}, Lg5/m;->i()Lw2/b;

    move-result-object v3

    :cond_b
    move-object/from16 v17, v3

    iget-wide v3, v2, Lp2/e0;->l:J

    const-wide/16 v18, 0x10

    cmp-long v18, v3, v18

    if-eqz v18, :cond_c

    :goto_6
    move-wide/from16 v18, v3

    goto :goto_7

    :cond_c
    sget-wide v3, Lp2/f0;->c:J

    goto :goto_6

    :goto_7
    iget-object v3, v2, Lp2/e0;->m:La3/l;

    if-nez v3, :cond_d

    sget-object v3, La3/l;->b:La3/l;

    :cond_d
    move-object/from16 v20, v3

    iget-object v3, v2, Lp2/e0;->n:Lm1/g0;

    if-nez v3, :cond_e

    sget-object v3, Lm1/g0;->d:Lm1/g0;

    :cond_e
    move-object/from16 v21, v3

    iget-object v3, v2, Lp2/e0;->o:Lp2/v;

    iget-object v2, v2, Lp2/e0;->p:Lo1/e;

    if-nez v2, :cond_f

    sget-object v2, Lo1/g;->a:Lo1/g;

    :cond_f
    move-object/from16 v23, v2

    new-instance v4, Lp2/e0;

    move-object/from16 v22, v3

    invoke-direct/range {v4 .. v23}, Lp2/e0;-><init>(La3/o;JLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;Lp2/v;Lo1/e;)V

    iget-object v2, v0, Lp2/m0;->b:Lp2/s;

    sget v3, Lp2/t;->b:I

    new-instance v5, Lp2/s;

    iget v3, v2, Lp2/s;->a:I

    const/4 v6, 0x5

    if-nez v3, :cond_10

    move v3, v6

    :cond_10
    iget v7, v2, Lp2/s;->b:I

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-ne v7, v8, :cond_13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_12

    if-ne v7, v9, :cond_11

    :goto_8
    move v7, v6

    goto :goto_9

    :cond_11
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_12
    const/4 v6, 0x4

    goto :goto_8

    :cond_13
    if-nez v7, :cond_16

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_15

    if-ne v6, v9, :cond_14

    const/4 v6, 0x2

    goto :goto_8

    :cond_14
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_15
    move v7, v9

    :cond_16
    :goto_9
    iget-wide v10, v2, Lp2/s;->c:J

    and-long v12, v10, v24

    cmp-long v6, v12, v26

    if-nez v6, :cond_17

    sget-wide v10, Lp2/t;->a:J

    :cond_17
    iget-object v6, v2, Lp2/s;->d:La3/q;

    if-nez v6, :cond_18

    sget-object v6, La3/q;->c:La3/q;

    :cond_18
    move-wide/from16 v28, v10

    move v10, v9

    move-wide/from16 v8, v28

    iget-object v11, v2, Lp2/s;->e:Lp2/u;

    iget-object v12, v2, Lp2/s;->f:La3/i;

    iget v13, v2, Lp2/s;->g:I

    if-nez v13, :cond_19

    sget v13, La3/e;->b:I

    :cond_19
    iget v14, v2, Lp2/s;->h:I

    if-nez v14, :cond_1a

    move v14, v10

    :cond_1a
    iget-object v2, v2, Lp2/s;->i:La3/s;

    if-nez v2, :cond_1b

    sget-object v2, La3/s;->c:La3/s;

    :cond_1b
    move-object v15, v2

    move-object v10, v6

    move v6, v3

    invoke-direct/range {v5 .. v15}, Lp2/s;-><init>(IIJLa3/q;Lp2/u;La3/i;IILa3/s;)V

    iget-object v0, v0, Lp2/m0;->c:Lp2/w;

    invoke-direct {v1, v4, v5, v0}, Lp2/m0;-><init>(Lp2/e0;Lp2/s;Lp2/w;)V

    return-object v1
.end method
