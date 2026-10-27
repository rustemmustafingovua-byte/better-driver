.class public final Lw/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Z

.field public final d:Lf1/d;

.field public final e:Lf1/i;

.field public final f:Lb3/m;

.field public final g:I

.field public final h:J

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public final k:Lx/s;

.field public l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public p:Z

.field public q:I

.field public final r:[I


# direct methods
.method public constructor <init>(ILjava/util/List;ZLf1/d;Lf1/i;Lb3/m;IIIJLjava/lang/Object;Ljava/lang/Object;Lx/s;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw/l;->a:I

    iput-object p2, p0, Lw/l;->b:Ljava/util/List;

    iput-boolean p3, p0, Lw/l;->c:Z

    iput-object p4, p0, Lw/l;->d:Lf1/d;

    iput-object p5, p0, Lw/l;->e:Lf1/i;

    iput-object p6, p0, Lw/l;->f:Lb3/m;

    iput p9, p0, Lw/l;->g:I

    iput-wide p10, p0, Lw/l;->h:J

    iput-object p12, p0, Lw/l;->i:Ljava/lang/Object;

    move-object/from16 p1, p13

    iput-object p1, p0, Lw/l;->j:Ljava/lang/Object;

    move-object/from16 p1, p14

    iput-object p1, p0, Lw/l;->k:Lx/s;

    const/high16 p1, -0x80000000

    iput p1, p0, Lw/l;->q:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 p3, 0x0

    move p4, p3

    move p5, p4

    move p6, p5

    :goto_0
    if-ge p4, p1, :cond_2

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc2/f1;

    iget-boolean v1, p0, Lw/l;->c:Z

    if-eqz v1, :cond_0

    iget v2, v0, Lc2/f1;->m:I

    goto :goto_1

    :cond_0
    iget v2, v0, Lc2/f1;->l:I

    :goto_1
    add-int/2addr p5, v2

    if-nez v1, :cond_1

    iget v0, v0, Lc2/f1;->m:I

    goto :goto_2

    :cond_1
    iget v0, v0, Lc2/f1;->l:I

    :goto_2
    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result p6

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    iput p5, p0, Lw/l;->m:I

    iget p1, p0, Lw/l;->g:I

    add-int/2addr p5, p1

    if-gez p5, :cond_3

    goto :goto_3

    :cond_3
    move p3, p5

    :goto_3
    iput p3, p0, Lw/l;->n:I

    iput p6, p0, Lw/l;->o:I

    iget-object p1, p0, Lw/l;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lw/l;->r:[I

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 5

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    if-nez p1, :cond_1

    iget-object v3, p0, Lw/l;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-boolean p1, p0, Lw/l;->c:Z

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget p0, p0, Lw/l;->l:I

    int-to-long v3, v3

    shl-long v2, v3, v2

    int-to-long p0, p0

    and-long/2addr p0, v0

    or-long/2addr p0, v2

    return-wide p0

    :cond_0
    iget p0, p0, Lw/l;->l:I

    int-to-long p0, p0

    shl-long/2addr p0, v2

    int-to-long v2, v3

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lw/l;->r:[I

    aget v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    int-to-long v3, v3

    shl-long v2, v3, v2

    int-to-long p0, p0

    and-long/2addr p0, v0

    or-long/2addr p0, v2

    return-wide p0
.end method

.method public final b(Lc2/e1;)V
    .locals 14

    sget-object v0, Lc2/g1;->m:Lc2/g1;

    iget v1, p0, Lw/l;->q:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "position() should be called first"

    invoke-static {v1}, Lt/b;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lw/l;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc2/f1;

    iget-boolean v5, p0, Lw/l;->c:Z

    if-eqz v5, :cond_1

    iget v6, v4, Lc2/f1;->m:I

    goto :goto_2

    :cond_1
    iget v6, v4, Lc2/f1;->l:I

    :goto_2
    invoke-virtual {p0, v3}, Lw/l;->a(I)J

    move-result-wide v6

    iget-object v8, p0, Lw/l;->i:Ljava/lang/Object;

    iget-object v9, p0, Lw/l;->k:Lx/s;

    iget-object v9, v9, Lx/s;->a:Lk/m0;

    invoke-virtual {v9, v8}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lr0/i;->p(Ljava/lang/Object;)V

    iget-wide v8, p0, Lw/l;->h:J

    invoke-static {v6, v7, v8, v9}, Lb3/j;->c(JJ)J

    move-result-wide v6

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    sget v5, Lc2/h1;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v4}, Lc2/e1;->b(Lc2/e1;Lc2/f1;)V

    iget-wide v9, v4, Lc2/f1;->p:J

    invoke-static {v6, v7, v9, v10}, Lb3/j;->c(JJ)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v8, v0}, Lc2/f1;->o0(JFLi9/c;)V

    goto :goto_4

    :cond_2
    sget v5, Lc2/h1;->b:I

    invoke-virtual {p1}, Lc2/e1;->e()Lb3/m;

    move-result-object v5

    sget-object v9, Lb3/m;->l:Lb3/m;

    if-eq v5, v9, :cond_4

    invoke-virtual {p1}, Lc2/e1;->f()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lc2/e1;->f()I

    move-result v5

    iget v9, v4, Lc2/f1;->l:I

    sub-int/2addr v5, v9

    const/16 v9, 0x20

    shr-long v10, v6, v9

    long-to-int v10, v10

    sub-int/2addr v5, v10

    const-wide v10, 0xffffffffL

    and-long/2addr v6, v10

    long-to-int v6, v6

    int-to-long v12, v5

    shl-long/2addr v12, v9

    int-to-long v5, v6

    and-long/2addr v5, v10

    or-long/2addr v5, v12

    invoke-static {p1, v4}, Lc2/e1;->b(Lc2/e1;Lc2/f1;)V

    iget-wide v9, v4, Lc2/f1;->p:J

    invoke-static {v5, v6, v9, v10}, Lb3/j;->c(JJ)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v8, v0}, Lc2/f1;->o0(JFLi9/c;)V

    goto :goto_4

    :cond_4
    :goto_3
    invoke-static {p1, v4}, Lc2/e1;->b(Lc2/e1;Lc2/f1;)V

    iget-wide v9, v4, Lc2/f1;->p:J

    invoke-static {v6, v7, v9, v10}, Lb3/j;->c(JJ)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v8, v0}, Lc2/f1;->o0(JFLi9/c;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method public final c(III)V
    .locals 10

    iput p1, p0, Lw/l;->l:I

    iget-boolean v0, p0, Lw/l;->c:Z

    if-eqz v0, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    iput v1, p0, Lw/l;->q:I

    iget-object v1, p0, Lw/l;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc2/f1;

    mul-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Lw/l;->r:[I

    if-eqz v0, :cond_2

    iget-object v7, p0, Lw/l;->d:Lf1/d;

    if-eqz v7, :cond_1

    iget v8, v4, Lc2/f1;->l:I

    iget-object v9, p0, Lw/l;->f:Lb3/m;

    invoke-interface {v7, v8, p2, v9}, Lf1/d;->a(IILb3/m;)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    aput p1, v6, v5

    iget v4, v4, Lc2/f1;->m:I

    :goto_2
    add-int/2addr p1, v4

    goto :goto_3

    :cond_1
    const-string p0, "null horizontalAlignment when isVertical == true"

    invoke-static {p0}, Lt/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    aput p1, v6, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Lw/l;->e:Lf1/i;

    if-eqz v7, :cond_3

    iget v8, v4, Lc2/f1;->m:I

    invoke-virtual {v7, v8, p3}, Lf1/i;->a(II)I

    move-result v7

    aput v7, v6, v5

    iget v4, v4, Lc2/f1;->l:I

    goto :goto_2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "null verticalAlignment when isVertical == false"

    invoke-static {p0}, Lt/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    return-void
.end method
