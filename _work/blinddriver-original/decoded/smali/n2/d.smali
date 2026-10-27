.class public final Ln2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lx/d;

.field public final c:Lp/o0;

.field public d:Ln2/d;

.field public e:J

.field public f:J

.field public g:J

.field public final synthetic h:Ln2/e;


# direct methods
.method public constructor <init>(Ln2/e;ILx/d;Lp/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/d;->h:Ln2/e;

    iput p2, p0, Ln2/d;->a:I

    iput-object p3, p0, Ln2/d;->b:Lx/d;

    iput-object p4, p0, Ln2/d;->c:Lp/o0;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Ln2/d;->g:J

    return-void
.end method


# virtual methods
.method public final a(JJJJ[F)V
    .locals 15

    iget-object v1, p0, Ln2/d;->h:Ln2/e;

    iget-wide v11, v1, Ln2/e;->f:J

    const/4 v1, 0x2

    iget-object v14, p0, Ln2/d;->b:Lx/d;

    invoke-static {v14, v1}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object v1

    invoke-static {v14}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v2

    invoke-virtual {v2}, Le2/g0;->I()Z

    move-result v3

    iget-object v2, v2, Le2/g0;->R:Le2/c1;

    if-nez v3, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Le2/c1;->d:Le2/h1;

    if-eq v3, v1, :cond_1

    const/16 v3, 0x20

    shr-long v4, p1, v3

    long-to-int v4, v4

    int-to-float v4, v4

    const-wide v5, 0xffffffffL

    and-long v7, p1, v5

    long-to-int v7, v7

    int-to-float v7, v7

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v8, v4

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    move/from16 p3, v3

    int-to-long v3, v4

    shl-long v7, v8, p3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    iget-wide v7, v1, Lc2/f1;->n:J

    iget-object v2, v2, Le2/c1;->d:Le2/h1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1, v3, v4}, Le2/h1;->K(Lc2/u;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lr5/h1;->D(J)J

    move-result-wide v3

    new-instance v2, Ln2/c;

    shr-long v9, v3, p3

    long-to-int v1, v9

    shr-long v9, v7, p3

    long-to-int v9, v9

    add-int/2addr v1, v9

    and-long v9, v3, v5

    long-to-int v9, v9

    and-long/2addr v7, v5

    long-to-int v7, v7

    add-int/2addr v9, v7

    int-to-long v7, v1

    shl-long v7, v7, p3

    int-to-long v9, v9

    and-long/2addr v5, v9

    or-long/2addr v5, v7

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-object/from16 v13, p9

    invoke-direct/range {v2 .. v14}, Ln2/c;-><init>(JJJJJ[FLx/d;)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    new-instance v2, Ln2/c;

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-object/from16 v13, p9

    invoke-direct/range {v2 .. v14}, Ln2/c;-><init>(JJJJJ[FLx/d;)V

    goto :goto_0

    :goto_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Ln2/d;->c:Lp/o0;

    invoke-virtual {v0, v1}, Lp/o0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .locals 9

    iget-object v0, p0, Ln2/d;->h:Ln2/e;

    iget-object v1, v0, Ln2/e;->a:Lk/x;

    iget v2, p0, Ln2/d;->a:I

    invoke-virtual {v1, v2}, Lk/x;->g(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln2/d;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Ln2/d;->d:Ln2/d;

    iput-object v4, p0, Ln2/d;->d:Ln2/d;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v2}, Lk/x;->d(I)I

    move-result p0

    iget-object v3, v1, Lk/k;->c:[Ljava/lang/Object;

    aget-object v4, v3, p0

    iget-object v1, v1, Lk/k;->b:[I

    aput v2, v1, p0

    aput-object v0, v3, p0

    return-void

    :cond_1
    iget-object p0, p0, Ln2/d;->b:Lx/d;

    iget-object p0, p0, Lf1/q;->l:Lf1/q;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-boolean v0, p0, Le2/g0;->s:Z

    if-eqz v0, :cond_7

    invoke-static {p0}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v0

    check-cast v0, Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v0

    iget-object v0, v0, Ln2/b;->a:Ld1/c0;

    iget p0, p0, Le2/g0;->m:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ld1/c0;->n(IZ)V

    return-void

    :cond_2
    invoke-virtual {v1, v2}, Lk/x;->d(I)I

    move-result v5

    iget-object v6, v1, Lk/k;->c:[Ljava/lang/Object;

    aget-object v7, v6, v5

    iget-object v1, v1, Lk/k;->b:[I

    aput v2, v1, v5

    aput-object v3, v6, v5

    :goto_0
    iget-object v1, v3, Ln2/d;->d:Ln2/d;

    if-nez v1, :cond_8

    :goto_1
    iget-object v1, v0, Ln2/e;->b:Ln2/d;

    if-ne v1, p0, :cond_3

    iget-object v1, v1, Ln2/d;->d:Ln2/d;

    iput-object v1, v0, Ln2/e;->b:Ln2/d;

    iput-object v4, p0, Ln2/d;->d:Ln2/d;

    return-void

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, v1, Ln2/d;->d:Ln2/d;

    goto :goto_2

    :cond_4
    move-object v0, v4

    :goto_2
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    if-eqz v1, :cond_7

    if-ne v1, p0, :cond_6

    if-eqz v0, :cond_5

    iget-object v1, v1, Ln2/d;->d:Ln2/d;

    iput-object v1, v0, Ln2/d;->d:Ln2/d;

    :cond_5
    iput-object v4, p0, Ln2/d;->d:Ln2/d;

    return-void

    :cond_6
    iget-object v0, v1, Ln2/d;->d:Ln2/d;

    goto :goto_2

    :cond_7
    return-void

    :cond_8
    if-ne v1, p0, :cond_9

    iget-object v0, p0, Ln2/d;->d:Ln2/d;

    iput-object v0, v3, Ln2/d;->d:Ln2/d;

    iput-object v4, p0, Ln2/d;->d:Ln2/d;

    return-void

    :cond_9
    move-object v3, v1

    goto :goto_0
.end method
