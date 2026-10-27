.class public final Ld1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lk9/a;


# static fields
.field public static final p:Ld1/m;


# instance fields
.field public final l:J

.field public final m:J

.field public final n:J

.field public final o:[J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ld1/m;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v7}, Ld1/m;-><init>(JJJ[J)V

    sput-object v0, Ld1/m;->p:Ld1/m;

    return-void
.end method

.method public constructor <init>(JJJ[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ld1/m;->l:J

    iput-wide p3, p0, Ld1/m;->m:J

    iput-wide p5, p0, Ld1/m;->n:J

    iput-object p7, p0, Ld1/m;->o:[J

    return-void
.end method


# virtual methods
.method public final a(Ld1/m;)Ld1/m;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Ld1/m;->p:Ld1/m;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    if-ne v0, v2, :cond_1

    return-object v2

    :cond_1
    iget-wide v2, v1, Ld1/m;->n:J

    iget-wide v4, v1, Ld1/m;->n:J

    iget-object v6, v1, Ld1/m;->o:[J

    iget-wide v7, v1, Ld1/m;->m:J

    iget-wide v9, v1, Ld1/m;->l:J

    iget-wide v11, v0, Ld1/m;->n:J

    cmp-long v1, v2, v11

    if-nez v1, :cond_2

    iget-object v1, v0, Ld1/m;->o:[J

    if-ne v6, v1, :cond_2

    move-wide/from16 v16, v11

    new-instance v11, Ld1/m;

    iget-wide v2, v0, Ld1/m;->l:J

    not-long v4, v9

    and-long v12, v2, v4

    iget-wide v2, v0, Ld1/m;->m:J

    not-long v4, v7

    and-long v14, v2, v4

    move-object/from16 v18, v1

    invoke-direct/range {v11 .. v18}, Ld1/m;-><init>(JJJ[J)V

    return-object v11

    :cond_2
    const/4 v1, 0x0

    if-eqz v6, :cond_3

    array-length v2, v6

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-wide v11, v6, v3

    invoke-virtual {v0, v11, v12}, Ld1/m;->b(J)Ld1/m;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v6, v7, v2

    const-wide/16 v11, 0x1

    const/16 v13, 0x40

    if-eqz v6, :cond_5

    move v6, v1

    :goto_1
    if-ge v6, v13, :cond_5

    shl-long v14, v11, v6

    and-long/2addr v14, v7

    cmp-long v14, v14, v2

    if-eqz v14, :cond_4

    int-to-long v14, v6

    add-long/2addr v14, v4

    invoke-virtual {v0, v14, v15}, Ld1/m;->b(J)Ld1/m;

    move-result-object v0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    cmp-long v6, v9, v2

    if-eqz v6, :cond_7

    :goto_2
    if-ge v1, v13, :cond_7

    shl-long v6, v11, v1

    and-long/2addr v6, v9

    cmp-long v6, v6, v2

    if-eqz v6, :cond_6

    int-to-long v6, v1

    add-long/2addr v6, v4

    int-to-long v14, v13

    add-long/2addr v6, v14

    invoke-virtual {v0, v6, v7}, Ld1/m;->b(J)Ld1/m;

    move-result-object v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-object v0
.end method

.method public final b(J)Ld1/m;
    .locals 13

    iget-wide v0, p0, Ld1/m;->n:J

    sub-long v0, p1, v0

    const/4 v2, 0x0

    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Lj9/n;->i(JJ)I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1

    const/16 v10, 0x40

    if-ltz v5, :cond_0

    int-to-long v11, v10

    invoke-static {v0, v1, v11, v12}, Lj9/n;->i(JJ)I

    move-result v5

    if-gez v5, :cond_0

    long-to-int p1, v0

    shl-long p1, v8, p1

    iget-wide v0, p0, Ld1/m;->m:J

    and-long v2, v0, p1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    new-instance v3, Ld1/m;

    not-long p1, p1

    and-long v6, v0, p1

    iget-wide v8, p0, Ld1/m;->n:J

    iget-object v10, p0, Ld1/m;->o:[J

    iget-wide v4, p0, Ld1/m;->l:J

    invoke-direct/range {v3 .. v10}, Ld1/m;-><init>(JJJ[J)V

    return-object v3

    :cond_0
    int-to-long v11, v10

    invoke-static {v0, v1, v11, v12}, Lj9/n;->i(JJ)I

    move-result v5

    if-ltz v5, :cond_1

    const/16 v5, 0x80

    int-to-long v11, v5

    invoke-static {v0, v1, v11, v12}, Lj9/n;->i(JJ)I

    move-result v5

    if-gez v5, :cond_1

    long-to-int p1, v0

    sub-int/2addr p1, v10

    shl-long p1, v8, p1

    iget-wide v0, p0, Ld1/m;->l:J

    and-long v2, v0, p1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    new-instance v3, Ld1/m;

    not-long p1, p1

    and-long v4, v0, p1

    iget-wide v8, p0, Ld1/m;->n:J

    iget-object v10, p0, Ld1/m;->o:[J

    iget-wide v6, p0, Ld1/m;->m:J

    invoke-direct/range {v3 .. v10}, Ld1/m;-><init>(JJJ[J)V

    return-object v3

    :cond_1
    invoke-static {v0, v1, v3, v4}, Lj9/n;->i(JJ)I

    move-result v0

    if-gez v0, :cond_5

    iget-object v0, p0, Ld1/m;->o:[J

    if-eqz v0, :cond_5

    invoke-static {v0, p1, p2}, Ld1/w;->c([JJ)I

    move-result p1

    if-ltz p1, :cond_5

    new-instance v3, Ld1/m;

    array-length p2, v0

    add-int/lit8 v1, p2, -0x1

    if-nez v1, :cond_2

    const/4 p1, 0x0

    move-object v10, p1

    goto :goto_0

    :cond_2
    new-array v4, v1, [J

    if-lez p1, :cond_3

    invoke-static {v0, v4, v2, v2, p1}, Lu8/l;->j0([J[JIII)V

    :cond_3
    if-ge p1, v1, :cond_4

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v4, p1, v1, p2}, Lu8/l;->j0([J[JIII)V

    :cond_4
    move-object v10, v4

    :goto_0
    iget-wide v4, p0, Ld1/m;->l:J

    iget-wide v6, p0, Ld1/m;->m:J

    iget-wide v8, p0, Ld1/m;->n:J

    invoke-direct/range {v3 .. v10}, Ld1/m;-><init>(JJJ[J)V

    return-object v3

    :cond_5
    return-object p0
.end method

.method public final c(J)Z
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-wide v3, v0, Ld1/m;->n:J

    sub-long v3, v1, v3

    const/4 v5, 0x0

    int-to-long v6, v5

    invoke-static {v3, v4, v6, v7}, Lj9/n;->i(JJ)I

    move-result v8

    const-wide/16 v11, 0x1

    const/4 v13, 0x1

    const/16 v14, 0x40

    const-wide/16 v15, 0x0

    if-ltz v8, :cond_1

    int-to-long v9, v14

    invoke-static {v3, v4, v9, v10}, Lj9/n;->i(JJ)I

    move-result v8

    if-gez v8, :cond_1

    long-to-int v1, v3

    shl-long v1, v11, v1

    iget-wide v3, v0, Ld1/m;->m:J

    and-long v0, v1, v3

    cmp-long v0, v0, v15

    if-eqz v0, :cond_0

    return v13

    :cond_0
    return v5

    :cond_1
    int-to-long v8, v14

    invoke-static {v3, v4, v8, v9}, Lj9/n;->i(JJ)I

    move-result v8

    if-ltz v8, :cond_3

    const/16 v8, 0x80

    int-to-long v8, v8

    invoke-static {v3, v4, v8, v9}, Lj9/n;->i(JJ)I

    move-result v8

    if-gez v8, :cond_3

    long-to-int v1, v3

    sub-int/2addr v1, v14

    shl-long v1, v11, v1

    iget-wide v3, v0, Ld1/m;->l:J

    and-long v0, v1, v3

    cmp-long v0, v0, v15

    if-eqz v0, :cond_2

    return v13

    :cond_2
    return v5

    :cond_3
    invoke-static {v3, v4, v6, v7}, Lj9/n;->i(JJ)I

    move-result v3

    if-lez v3, :cond_4

    return v5

    :cond_4
    iget-object v0, v0, Ld1/m;->o:[J

    if-eqz v0, :cond_5

    invoke-static {v0, v1, v2}, Ld1/w;->c([JJ)I

    move-result v0

    if-ltz v0, :cond_5

    return v13

    :cond_5
    return v5
.end method

.method public final d(Ld1/m;)Ld1/m;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Ld1/m;->p:Ld1/m;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-wide v2, v1, Ld1/m;->n:J

    iget-wide v4, v1, Ld1/m;->n:J

    iget-object v6, v1, Ld1/m;->o:[J

    iget-wide v7, v1, Ld1/m;->m:J

    iget-wide v9, v1, Ld1/m;->l:J

    iget-wide v11, v0, Ld1/m;->n:J

    cmp-long v2, v2, v11

    iget-wide v13, v0, Ld1/m;->m:J

    move v3, v2

    iget-wide v1, v0, Ld1/m;->l:J

    if-nez v3, :cond_2

    iget-object v3, v0, Ld1/m;->o:[J

    if-ne v6, v3, :cond_2

    move-wide/from16 v16, v11

    new-instance v11, Ld1/m;

    move-wide v14, v13

    or-long v12, v1, v9

    or-long/2addr v14, v7

    move-object/from16 v18, v3

    invoke-direct/range {v11 .. v18}, Ld1/m;-><init>(JJJ[J)V

    return-object v11

    :cond_2
    move-wide v14, v13

    const/16 v3, 0x40

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x1

    iget-object v11, v0, Ld1/m;->o:[J

    if-nez v11, :cond_9

    if-eqz v11, :cond_3

    array-length v4, v11

    move-object/from16 v5, p1

    move v6, v13

    :goto_0
    if-ge v6, v4, :cond_4

    aget-wide v7, v11, v6

    invoke-virtual {v5, v7, v8}, Ld1/m;->e(J)Ld1/m;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v5, p1

    :cond_4
    cmp-long v4, v14, v16

    iget-wide v6, v0, Ld1/m;->n:J

    if-eqz v4, :cond_6

    move v0, v13

    :goto_1
    if-ge v0, v3, :cond_6

    shl-long v8, v18, v0

    and-long/2addr v8, v14

    cmp-long v4, v8, v16

    if-eqz v4, :cond_5

    int-to-long v8, v0

    add-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Ld1/m;->e(J)Ld1/m;

    move-result-object v4

    move-object v5, v4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    cmp-long v0, v1, v16

    if-eqz v0, :cond_8

    :goto_2
    if-ge v13, v3, :cond_8

    shl-long v8, v18, v13

    and-long/2addr v8, v1

    cmp-long v0, v8, v16

    if-eqz v0, :cond_7

    int-to-long v8, v13

    add-long/2addr v8, v6

    int-to-long v10, v3

    add-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Ld1/m;->e(J)Ld1/m;

    move-result-object v0

    move-object v5, v0

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_8
    return-object v5

    :cond_9
    if-eqz v6, :cond_a

    array-length v1, v6

    move v2, v13

    :goto_3
    if-ge v2, v1, :cond_a

    aget-wide v11, v6, v2

    invoke-virtual {v0, v11, v12}, Ld1/m;->e(J)Ld1/m;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    cmp-long v1, v7, v16

    if-eqz v1, :cond_c

    move v1, v13

    :goto_4
    if-ge v1, v3, :cond_c

    shl-long v11, v18, v1

    and-long/2addr v11, v7

    cmp-long v2, v11, v16

    if-eqz v2, :cond_b

    int-to-long v11, v1

    add-long/2addr v11, v4

    invoke-virtual {v0, v11, v12}, Ld1/m;->e(J)Ld1/m;

    move-result-object v0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    cmp-long v1, v9, v16

    if-eqz v1, :cond_e

    :goto_5
    if-ge v13, v3, :cond_e

    shl-long v1, v18, v13

    and-long/2addr v1, v9

    cmp-long v1, v1, v16

    if-eqz v1, :cond_d

    int-to-long v1, v13

    add-long/2addr v1, v4

    int-to-long v6, v3

    add-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ld1/m;->e(J)Ld1/m;

    move-result-object v0

    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_e
    return-object v0
.end method

.method public final e(J)Ld1/m;
    .locals 29

    move-object/from16 v0, p0

    iget-wide v3, v0, Ld1/m;->n:J

    sub-long v5, p1, v3

    const/4 v7, 0x0

    int-to-long v8, v7

    invoke-static {v5, v6, v8, v9}, Lj9/n;->i(JJ)I

    move-result v10

    iget-wide v11, v0, Ld1/m;->m:J

    const/16 v15, 0x40

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x1

    if-ltz v10, :cond_0

    int-to-long v13, v15

    invoke-static {v5, v6, v13, v14}, Lj9/n;->i(JJ)I

    move-result v10

    if-gez v10, :cond_0

    long-to-int v1, v5

    shl-long v1, v18, v1

    and-long v3, v11, v1

    cmp-long v3, v3, v16

    if-nez v3, :cond_e

    new-instance v13, Ld1/m;

    or-long v16, v11, v1

    iget-wide v1, v0, Ld1/m;->n:J

    iget-object v3, v0, Ld1/m;->o:[J

    iget-wide v14, v0, Ld1/m;->l:J

    move-wide/from16 v18, v1

    move-object/from16 v20, v3

    invoke-direct/range {v13 .. v20}, Ld1/m;-><init>(JJJ[J)V

    return-object v13

    :cond_0
    int-to-long v13, v15

    invoke-static {v5, v6, v13, v14}, Lj9/n;->i(JJ)I

    move-result v10

    move/from16 v20, v7

    move-wide/from16 v21, v8

    iget-wide v7, v0, Ld1/m;->l:J

    const/16 v9, 0x80

    move-wide/from16 v23, v3

    if-ltz v10, :cond_1

    int-to-long v3, v9

    invoke-static {v5, v6, v3, v4}, Lj9/n;->i(JJ)I

    move-result v3

    if-gez v3, :cond_1

    long-to-int v1, v5

    sub-int/2addr v1, v15

    shl-long v1, v18, v1

    and-long v3, v7, v1

    cmp-long v3, v3, v16

    if-nez v3, :cond_e

    new-instance v9, Ld1/m;

    or-long v10, v7, v1

    iget-wide v14, v0, Ld1/m;->n:J

    iget-object v1, v0, Ld1/m;->o:[J

    iget-wide v12, v0, Ld1/m;->m:J

    move-object/from16 v16, v1

    invoke-direct/range {v9 .. v16}, Ld1/m;-><init>(JJJ[J)V

    return-object v9

    :cond_1
    int-to-long v3, v9

    invoke-static {v5, v6, v3, v4}, Lj9/n;->i(JJ)I

    move-result v5

    iget-object v6, v0, Ld1/m;->o:[J

    const/4 v9, 0x1

    if-ltz v5, :cond_c

    invoke-virtual/range {p0 .. p2}, Ld1/m;->c(J)Z

    move-result v5

    if-nez v5, :cond_e

    int-to-long v9, v9

    add-long v25, p1, v9

    div-long v25, v25, v13

    move-wide/from16 v27, v3

    mul-long v3, v25, v13

    move-wide/from16 v25, v7

    move-wide/from16 v7, v21

    invoke-static {v3, v4, v7, v8}, Lj9/n;->i(JJ)I

    move-result v0

    if-gez v0, :cond_2

    const-wide v3, 0x7fffffffffffffffL

    sub-long v3, v3, v27

    add-long/2addr v3, v9

    :cond_2
    move-wide/from16 v7, v23

    move-wide/from16 v22, v25

    const/4 v5, 0x0

    :goto_0
    invoke-static {v7, v8, v3, v4}, Lj9/n;->i(JJ)I

    move-result v9

    if-gez v9, :cond_7

    cmp-long v9, v11, v16

    if-eqz v9, :cond_5

    if-nez v5, :cond_3

    new-instance v5, Lb0/l1;

    invoke-direct {v5, v6}, Lb0/l1;-><init>([J)V

    :cond_3
    move/from16 v9, v20

    :goto_1
    if-ge v9, v15, :cond_5

    shl-long v24, v18, v9

    and-long v24, v11, v24

    cmp-long v10, v24, v16

    if-eqz v10, :cond_4

    int-to-long v0, v9

    add-long/2addr v0, v7

    iget-object v2, v5, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v2, Lk/a0;

    invoke-virtual {v2, v0, v1}, Lk/a0;->a(J)V

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    cmp-long v0, v22, v16

    if-nez v0, :cond_6

    move-wide/from16 v26, v3

    move-wide/from16 v24, v16

    goto :goto_2

    :cond_6
    add-long/2addr v7, v13

    move-wide/from16 v11, v22

    move-wide/from16 v22, v16

    goto :goto_0

    :cond_7
    move-wide/from16 v26, v7

    move-wide/from16 v24, v11

    :goto_2
    new-instance v21, Ld1/m;

    if-eqz v5, :cond_b

    iget-object v0, v5, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lk/a0;

    iget v1, v0, Lk/a0;->b:I

    if-nez v1, :cond_8

    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    new-array v2, v1, [J

    iget-object v0, v0, Lk/a0;->a:[J

    move/from16 v7, v20

    :goto_3
    if-ge v7, v1, :cond_9

    aget-wide v3, v0, v7

    aput-wide v3, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    move-object v0, v2

    :goto_4
    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    move-object/from16 v28, v0

    goto :goto_6

    :cond_b
    :goto_5
    move-object/from16 v28, v6

    :goto_6
    invoke-direct/range {v21 .. v28}, Ld1/m;-><init>(JJJ[J)V

    move-wide/from16 v1, p1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Ld1/m;->e(J)Ld1/m;

    move-result-object v0

    return-object v0

    :cond_c
    move-wide/from16 v1, p1

    if-nez v6, :cond_d

    move-wide v2, v1

    new-instance v1, Ld1/m;

    new-array v8, v9, [J

    aput-wide v2, v8, v20

    iget-wide v2, v0, Ld1/m;->l:J

    iget-wide v4, v0, Ld1/m;->m:J

    iget-wide v6, v0, Ld1/m;->n:J

    invoke-direct/range {v1 .. v8}, Ld1/m;-><init>(JJJ[J)V

    return-object v1

    :cond_d
    move-wide v2, v1

    invoke-static {v6, v2, v3}, Ld1/w;->c([JJ)I

    move-result v1

    if-gez v1, :cond_e

    add-int/2addr v1, v9

    neg-int v1, v1

    array-length v4, v6

    add-int/lit8 v5, v4, 0x1

    new-array v14, v5, [J

    move/from16 v5, v20

    invoke-static {v6, v14, v5, v5, v1}, Lu8/l;->j0([J[JIII)V

    add-int/lit8 v5, v1, 0x1

    invoke-static {v6, v14, v5, v1, v4}, Lu8/l;->j0([J[JIII)V

    aput-wide v2, v14, v1

    new-instance v7, Ld1/m;

    iget-wide v10, v0, Ld1/m;->m:J

    iget-wide v12, v0, Ld1/m;->n:J

    iget-wide v8, v0, Ld1/m;->l:J

    invoke-direct/range {v7 .. v14}, Ld1/m;-><init>(JJJ[J)V

    return-object v7

    :cond_e
    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Ld1/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld1/l;-><init>(Ld1/m;Ly8/c;)V

    invoke-static {v0}, Ll7/a;->r(Li9/e;)Lq9/i;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    add-int/2addr v5, v7

    if-le v5, v7, :cond_1

    const-string v8, ", "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    instance-of v7, v6, Ljava/lang/CharSequence;

    :goto_2
    if-eqz v7, :cond_3

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    :cond_3
    instance-of v7, v6, Ljava/lang/Character;

    if-eqz v7, :cond_4

    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
