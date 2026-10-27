.class public final Ln/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/u;


# instance fields
.field public final a:Ln/g0;


# direct methods
.method public constructor <init>(Ln/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/h0;->a:Ln/g0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ln/o1;)Ln/q1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln/h0;->f(Ln/o1;)Ln/w1;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a(Ln/o1;)Ln/s1;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ln/h0;->f(Ln/o1;)Ln/w1;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ln/o1;)Ln/w1;
    .locals 19

    new-instance v0, Lk/w;

    move-object/from16 v1, p0

    iget-object v1, v1, Ln/h0;->a:Ln/g0;

    iget-object v2, v1, Ln/g0;->b:Lk/x;

    iget v3, v2, Lk/k;->e:I

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Lk/w;-><init>(I)V

    new-instance v3, Lk/x;

    iget v4, v2, Lk/k;->e:I

    invoke-direct {v3, v4}, Lk/x;-><init>(I)V

    iget-object v4, v2, Lk/k;->b:[I

    iget-object v5, v2, Lk/k;->c:[Ljava/lang/Object;

    iget-object v6, v2, Lk/k;->a:[J

    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_2

    const/4 v9, 0x0

    :goto_0
    aget-wide v10, v6, v9

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    sub-int v12, v9, v7

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v12, :cond_1

    const-wide/16 v15, 0xff

    and-long/2addr v15, v10

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_0

    shl-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v14

    aget v8, v4, v15

    aget-object v15, v5, v15

    check-cast v15, Ln/f0;

    invoke-virtual {v0, v8}, Lk/w;->a(I)V

    move/from16 v16, v13

    new-instance v13, Ln/v1;

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v4, p1

    iget-object v5, v4, Ln/o1;->a:Li9/c;

    iget-object v4, v15, Ln/f0;->a:Ljava/lang/Float;

    invoke-interface {v5, v4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln/p;

    iget-object v5, v15, Ln/f0;->b:Ln/v;

    invoke-direct {v13, v4, v5}, Ln/v1;-><init>(Ln/p;Ln/v;)V

    invoke-virtual {v3, v8, v13}, Lk/x;->h(ILjava/lang/Object;)V

    goto :goto_2

    :cond_0
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v16, v13

    :goto_2
    shr-long v10, v10, v16

    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    goto :goto_1

    :cond_1
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move v4, v13

    if-ne v12, v4, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    goto :goto_4

    :cond_3
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    :goto_3
    if-eq v9, v7, :cond_2

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    goto :goto_0

    :goto_4
    invoke-virtual {v2, v4}, Lk/k;->a(I)Z

    move-result v5

    if-nez v5, :cond_6

    iget v5, v0, Lk/w;->b:I

    if-ltz v5, :cond_5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lk/w;->b(I)V

    iget-object v5, v0, Lk/w;->a:[I

    iget v7, v0, Lk/w;->b:I

    if-eqz v7, :cond_4

    invoke-static {v5, v5, v6, v4, v7}, Lu8/l;->i0([I[IIII)V

    :cond_4
    aput v4, v5, v4

    iget v4, v0, Lk/w;->b:I

    add-int/2addr v4, v6

    iput v4, v0, Lk/w;->b:I

    goto :goto_5

    :cond_5
    const-string v0, "Index must be between 0 and size"

    invoke-static {v0}, Ll/a;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_6
    :goto_5
    iget v4, v1, Ln/g0;->a:I

    invoke-virtual {v2, v4}, Lk/k;->a(I)Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, v1, Ln/g0;->a:I

    invoke-virtual {v0, v2}, Lk/w;->a(I)V

    :cond_7
    iget v2, v0, Lk/w;->b:I

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    iget-object v4, v0, Lk/w;->a:[I

    const-string v5, "<this>"

    invoke-static {v4, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Ljava/util/Arrays;->sort([III)V

    :goto_6
    new-instance v2, Ln/w1;

    iget v1, v1, Ln/g0;->a:I

    sget-object v4, Ln/w;->b:Lc2/c0;

    invoke-direct {v2, v0, v3, v1, v4}, Ln/w1;-><init>(Lk/w;Lk/x;ILn/v;)V

    return-object v2
.end method
