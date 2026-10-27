.class public final Lr/i;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/i;
.implements Le2/w;


# instance fields
.field public final A:Lr/n2;

.field public B:Z

.field public final C:Lr/b2;

.field public final D:Lr/a;

.field public E:Z

.field public F:J

.field public G:Z

.field public z:Lr/m1;


# direct methods
.method public constructor <init>(Lr/m1;Lr/n2;ZLr/b2;)V
    .locals 0

    invoke-direct {p0}, Lf1/q;-><init>()V

    iput-object p1, p0, Lr/i;->z:Lr/m1;

    iput-object p2, p0, Lr/i;->A:Lr/n2;

    iput-boolean p3, p0, Lr/i;->B:Z

    iput-object p4, p0, Lr/i;->C:Lr/b2;

    new-instance p1, Lr/a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lr/a;-><init>(I)V

    iput-object p1, p0, Lr/i;->D:Lr/a;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lr/i;->F:J

    return-void
.end method

.method public static final M0(Lr/i;Lr/d;J)F
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lr/i;->F:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lb3/l;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, v0, Lr/i;->D:Lr/a;

    iget-object v2, v2, Lr/a;->a:Lt0/b;

    iget v3, v2, Lt0/b;->n:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-object v2, v2, Lt0/b;->l:[Ljava/lang/Object;

    array-length v5, v2

    const/4 v6, 0x0

    const/16 v7, 0x20

    const-wide v8, 0xffffffffL

    if-ge v3, v5, :cond_5

    move-object v5, v6

    :goto_0
    if-ltz v3, :cond_6

    aget-object v10, v2, v3

    check-cast v10, Lr/g;

    iget-object v10, v10, Lr/g;->a:Ly/f;

    invoke-virtual {v10}, Ly/f;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ll1/c;

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ll1/c;->d()J

    move-result-wide v11

    iget-wide v13, v0, Lr/i;->F:J

    invoke-static {v13, v14}, Ly4/s;->E(J)J

    move-result-wide v13

    iget-object v15, v0, Lr/i;->z:Lr/m1;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-eqz v15, :cond_2

    if-ne v15, v4, :cond_1

    shr-long/2addr v11, v7

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    shr-long v12, v13, v7

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    goto :goto_1

    :cond_1
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    and-long/2addr v11, v8

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    and-long v12, v13, v8

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    :goto_1
    if-gtz v11, :cond_3

    move-object v5, v10

    goto :goto_2

    :cond_3
    if-nez v5, :cond_6

    move-object v5, v10

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    move-object v5, v6

    :cond_6
    :goto_3
    if-nez v5, :cond_9

    iget-boolean v2, v0, Lr/i;->E:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lr/i;->C:Lr/b2;

    invoke-virtual {v2}, Lr/b2;->invoke()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ll1/c;

    :cond_7
    if-nez v6, :cond_8

    :goto_4
    const/4 v0, 0x0

    return v0

    :cond_8
    move-object v5, v6

    :cond_9
    iget-wide v2, v0, Lr/i;->F:J

    invoke-static {v2, v3}, Ly4/s;->E(J)J

    move-result-wide v2

    iget-object v0, v0, Lr/i;->z:Lr/m1;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_b

    if-ne v0, v4, :cond_a

    iget v0, v5, Ll1/c;->a:F

    shr-long v8, p2, v7

    long-to-int v4, v8

    int-to-float v4, v4

    sub-float v4, v0, v4

    iget v5, v5, Ll1/c;->c:F

    sub-float/2addr v5, v0

    shr-long/2addr v2, v7

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface {v1, v4, v5, v0}, Lr/d;->a(FFF)F

    move-result v0

    return v0

    :cond_a
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    iget v0, v5, Ll1/c;->b:F

    and-long v6, p2, v8

    long-to-int v4, v6

    int-to-float v4, v4

    sub-float v4, v0, v4

    iget v5, v5, Ll1/c;->d:F

    sub-float/2addr v5, v0

    and-long/2addr v2, v8

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface {v1, v4, v5, v0}, Lr/d;->a(FFF)F

    move-result v0

    return v0
.end method

.method public static N0(Lr/i;Ll1/c;JJI)Z
    .locals 6

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    iget-wide p2, p0, Lr/i;->F:J

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x2

    if-eqz p2, :cond_1

    const-wide/16 p4, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lr/i;->P0(Ll1/c;JJ)J

    move-result-wide p0

    const/16 p2, 0x20

    shr-long p2, p0, p2

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 p3, 0x3f000000    # 0.5f

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_2

    const-wide p4, 0xffffffffL

    and-long/2addr p0, p4

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p3

    if-gtz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final O0(J)V
    .locals 9

    sget-object v0, Lr/f;->a:Lr0/a0;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lr/d;

    iget-boolean v1, p0, Lr/i;->G:Z

    if-eqz v1, :cond_0

    const-string v1, "launchAnimation called when previous animation was running"

    invoke-static {v1}, Lt/b;->c(Ljava/lang/String;)V

    :cond_0
    new-instance v4, Lr/a3;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lr/d;->a:Lr/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lr/c;->b:Ln/r0;

    invoke-direct {v4, v0}, Lr/a3;-><init>(Ln/j;)V

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v0

    sget-object v1, Lu9/u;->o:Lu9/u;

    new-instance v2, Lr/h;

    const/4 v8, 0x0

    move-object v3, p0

    move-wide v6, p1

    invoke-direct/range {v2 .. v8}, Lr/h;-><init>(Lr/i;Lr/a3;Lr/d;JLy8/c;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method

.method public final P0(Ll1/c;JJ)J
    .locals 6

    invoke-static {p2, p3}, Ly4/s;->E(J)J

    move-result-wide p2

    iget-object v0, p0, Lr/i;->z:Lr/m1;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0xffffffffL

    const/16 v4, 0x20

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    sget-object v0, Lr/f;->a:Lr0/a0;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr/d;

    iget v0, p1, Ll1/c;->a:F

    shr-long/2addr p4, v4

    long-to-int p4, p4

    int-to-float p4, p4

    sub-float p4, v0, p4

    iget p1, p1, Ll1/c;->c:F

    sub-float/2addr p1, v0

    shr-long/2addr p2, v4

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-interface {p0, p4, p1, p2}, Lr/d;->a(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long p2, p2

    shl-long/2addr p0, v4

    and-long/2addr p2, v2

    :goto_0
    or-long/2addr p0, p2

    return-wide p0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    sget-object v0, Lr/f;->a:Lr0/a0;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr/d;

    iget v0, p1, Ll1/c;->b:F

    and-long/2addr p4, v2

    long-to-int p4, p4

    int-to-float p4, p4

    sub-float p4, v0, p4

    iget p1, p1, Ll1/c;->d:F

    sub-float/2addr p1, v0

    and-long/2addr p2, v2

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-interface {p0, p4, p1, p2}, Lr/d;->a(FFF)F

    move-result p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p3, p0

    shl-long p0, p1, v4

    and-long p2, p3, v2

    goto :goto_0
.end method

.method public final l(J)V
    .locals 14

    move-wide v1, p1

    iget-wide v3, p0, Lr/i;->F:J

    iput-wide v1, p0, Lr/i;->F:J

    iget-object v5, p0, Lr/i;->z:Lr/m1;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v7, 0x1

    const/16 v6, 0x20

    const-wide v8, 0xffffffffL

    if-eqz v5, :cond_1

    if-ne v5, v7, :cond_0

    shr-long v10, v1, v6

    long-to-int v5, v10

    shr-long v10, v3, v6

    long-to-int v10, v10

    invoke-static {v5, v10}, Lj9/n;->h(II)I

    move-result v5

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    and-long v10, v1, v8

    long-to-int v5, v10

    and-long v10, v3, v8

    long-to-int v10, v10

    invoke-static {v5, v10}, Lj9/n;->h(II)I

    move-result v5

    :goto_0
    if-ltz v5, :cond_2

    goto :goto_4

    :cond_2
    iget-boolean v5, p0, Lr/i;->B:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lr/i;->z:Lr/m1;

    sget-object v10, Lr/m1;->l:Lr/m1;

    const/4 v11, 0x0

    if-ne v5, v10, :cond_3

    and-long v12, v3, v8

    long-to-int v5, v12

    and-long/2addr v1, v8

    long-to-int v1, v1

    sub-int/2addr v5, v1

    int-to-long v1, v11

    shl-long/2addr v1, v6

    int-to-long v5, v5

    :goto_1
    and-long/2addr v5, v8

    or-long/2addr v1, v5

    :goto_2
    move-wide v8, v1

    goto :goto_3

    :cond_3
    shr-long v12, v3, v6

    long-to-int v5, v12

    shr-long/2addr v1, v6

    long-to-int v1, v1

    sub-int/2addr v5, v1

    int-to-long v1, v5

    shl-long/2addr v1, v6

    int-to-long v5, v11

    goto :goto_1

    :cond_4
    const-wide/16 v1, 0x0

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lr/i;->C:Lr/b2;

    invoke-virtual {v1}, Lr/b2;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/c;

    if-eqz v1, :cond_5

    iget-boolean v2, p0, Lr/i;->G:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lr/i;->E:Z

    if-nez v2, :cond_5

    move-wide v2, v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lr/i;->N0(Lr/i;Ll1/c;JJI)Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v4, v8

    invoke-static/range {v0 .. v6}, Lr/i;->N0(Lr/i;Ll1/c;JJI)Z

    move-result v1

    if-nez v1, :cond_5

    iput-boolean v7, p0, Lr/i;->E:Z

    invoke-virtual {p0, v4, v5}, Lr/i;->O0(J)V

    :cond_5
    :goto_4
    return-void
.end method
