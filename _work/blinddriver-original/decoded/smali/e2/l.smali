.class public abstract Le2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le2/n1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/n1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le2/n1;-><init>(I)V

    sput-object v0, Le2/l;->a:Le2/n1;

    return-void
.end method

.method public static final A(Le2/j;Ljava/lang/String;Li9/c;)V
    .locals 11

    check-cast p0, Lf1/q;

    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "visitSubtreeIf called on an unattached node"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lt0/b;

    const/16 v1, 0x10

    new-array v2, v1, [Lf1/q;

    invoke-direct {v0, v2}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object p0, p0, Lf1/q;->l:Lf1/q;

    iget-object v2, p0, Lf1/q;->q:Lf1/q;

    if-nez v2, :cond_1

    invoke-static {v0, p0}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget p0, v0, Lt0/b;->n:I

    if-eqz p0, :cond_e

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf1/q;

    iget v2, p0, Lf1/q;->o:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_d

    move-object v2, p0

    :goto_1
    if-eqz v2, :cond_d

    iget-boolean v4, v2, Lf1/q;->y:Z

    if-eqz v4, :cond_d

    iget v4, v2, Lf1/q;->n:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    move-object v5, v2

    move-object v6, v4

    :goto_2
    if-eqz v5, :cond_c

    instance-of v7, v5, Le2/e2;

    if-eqz v7, :cond_5

    check-cast v5, Le2/e2;

    invoke-interface {v5}, Le2/e2;->i()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p2, v5}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le2/d2;

    goto :goto_3

    :cond_3
    sget-object v5, Le2/d2;->l:Le2/d2;

    :goto_3
    sget-object v7, Le2/d2;->n:Le2/d2;

    if-ne v5, v7, :cond_4

    goto :goto_7

    :cond_4
    sget-object v7, Le2/d2;->m:Le2/d2;

    if-eq v5, v7, :cond_2

    goto :goto_6

    :cond_5
    iget v7, v5, Lf1/q;->n:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_b

    instance-of v7, v5, Le2/k;

    if-eqz v7, :cond_b

    move-object v7, v5

    check-cast v7, Le2/k;

    iget-object v7, v7, Le2/k;->A:Lf1/q;

    const/4 v8, 0x0

    :goto_4
    const/4 v9, 0x1

    if-eqz v7, :cond_a

    iget v10, v7, Lf1/q;->n:I

    and-int/2addr v10, v3

    if-eqz v10, :cond_9

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v9, :cond_6

    move-object v5, v7

    goto :goto_5

    :cond_6
    if-nez v6, :cond_7

    new-instance v6, Lt0/b;

    new-array v9, v1, [Lf1/q;

    invoke-direct {v6, v9}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v6, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v5, v4

    :cond_8
    invoke-virtual {v6, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    iget-object v7, v7, Lf1/q;->q:Lf1/q;

    goto :goto_4

    :cond_a
    if-ne v8, v9, :cond_b

    goto :goto_2

    :cond_b
    :goto_6
    invoke-static {v6}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v5

    goto :goto_2

    :cond_c
    iget-object v2, v2, Lf1/q;->q:Lf1/q;

    goto :goto_1

    :cond_d
    invoke-static {v0, p0}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto/16 :goto_0

    :cond_e
    :goto_7
    return-void
.end method

.method public static final B(Le2/e2;Li9/c;)V
    .locals 12

    move-object v0, p0

    check-cast v0, Lf1/q;

    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v1, v1, Lf1/q;->y:Z

    if-nez v1, :cond_0

    const-string v1, "visitSubtreeIf called on an unattached node"

    invoke-static {v1}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lt0/b;

    const/16 v2, 0x10

    new-array v3, v2, [Lf1/q;

    invoke-direct {v1, v3}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    iget-object v3, v0, Lf1/q;->q:Lf1/q;

    if-nez v3, :cond_1

    invoke-static {v1, v0}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget v0, v1, Lt0/b;->n:I

    if-eqz v0, :cond_e

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/q;

    iget v3, v0, Lf1/q;->o:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_d

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_d

    iget-boolean v5, v3, Lf1/q;->y:Z

    if-eqz v5, :cond_d

    iget v5, v3, Lf1/q;->n:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    move-object v6, v3

    move-object v7, v5

    :goto_2
    if-eqz v6, :cond_c

    instance-of v8, v6, Le2/e2;

    if-eqz v8, :cond_5

    check-cast v6, Le2/e2;

    invoke-interface {p0}, Le2/e2;->i()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6}, Le2/e2;->i()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_3

    invoke-interface {p1, v6}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le2/d2;

    goto :goto_3

    :cond_3
    sget-object v6, Le2/d2;->l:Le2/d2;

    :goto_3
    sget-object v8, Le2/d2;->n:Le2/d2;

    if-ne v6, v8, :cond_4

    goto :goto_7

    :cond_4
    sget-object v8, Le2/d2;->m:Le2/d2;

    if-eq v6, v8, :cond_2

    goto :goto_6

    :cond_5
    iget v8, v6, Lf1/q;->n:I

    and-int/2addr v8, v4

    if-eqz v8, :cond_b

    instance-of v8, v6, Le2/k;

    if-eqz v8, :cond_b

    move-object v8, v6

    check-cast v8, Le2/k;

    iget-object v8, v8, Le2/k;->A:Lf1/q;

    const/4 v9, 0x0

    :goto_4
    const/4 v10, 0x1

    if-eqz v8, :cond_a

    iget v11, v8, Lf1/q;->n:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_9

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v10, :cond_6

    move-object v6, v8

    goto :goto_5

    :cond_6
    if-nez v7, :cond_7

    new-instance v7, Lt0/b;

    new-array v10, v2, [Lf1/q;

    invoke-direct {v7, v10}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v7, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v6, v5

    :cond_8
    invoke-virtual {v7, v8}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    iget-object v8, v8, Lf1/q;->q:Lf1/q;

    goto :goto_4

    :cond_a
    if-ne v9, v10, :cond_b

    goto :goto_2

    :cond_b
    :goto_6
    invoke-static {v7}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v6

    goto :goto_2

    :cond_c
    iget-object v3, v3, Lf1/q;->q:Lf1/q;

    goto :goto_1

    :cond_d
    invoke-static {v1, v0}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto/16 :goto_0

    :cond_e
    :goto_7
    return-void
.end method

.method public static final a(FZZ)J
    .locals 4

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_0
    move-wide p0, v2

    :goto_0
    if-eqz p2, :cond_1

    const-wide/16 v2, 0x2

    :cond_1
    or-long/2addr p0, v2

    const/16 p2, 0x20

    shl-long/2addr v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static final b(Lt0/b;Lf1/q;)V
    .locals 2

    invoke-static {p1}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p1

    invoke-virtual {p1}, Le2/g0;->z()Lt0/b;

    move-result-object p1

    iget v0, p1, Lt0/b;->n:I

    add-int/lit8 v0, v0, -0x1

    iget-object p1, p1, Lt0/b;->l:[Ljava/lang/Object;

    array-length v1, p1

    if-ge v0, v1, :cond_0

    :goto_0
    if-ltz v0, :cond_0

    aget-object v1, p1, v0

    check-cast v1, Le2/g0;

    iget-object v1, v1, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->f:Lf1/q;

    invoke-virtual {p0, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final c(Le2/p0;Lc2/a;)I
    .locals 4

    invoke-virtual {p0}, Le2/p0;->x0()Le2/p0;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Child of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be null when calculating alignment line"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Le2/p0;->C0()Lc2/s0;

    move-result-object v1

    invoke-interface {v1}, Lc2/s0;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, -0x80000000

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Le2/p0;->C0()Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v0, p1}, Le2/p0;->d0(Lc2/a;)I

    move-result v1

    if-ne v1, v2, :cond_3

    :cond_2
    return v2

    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v0, Le2/p0;->u:Z

    iput-boolean v2, p0, Le2/p0;->v:Z

    invoke-virtual {p0}, Le2/p0;->I0()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Le2/p0;->u:Z

    iput-boolean v2, p0, Le2/p0;->v:Z

    instance-of p0, p1, Lc2/k;

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Le2/p0;->E0()J

    move-result-wide p0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    :goto_1
    long-to-int p0, p0

    add-int/2addr v1, p0

    return v1

    :cond_4
    invoke-virtual {v0}, Le2/p0;->E0()J

    move-result-wide p0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    goto :goto_1
.end method

.method public static final d(Le2/j;I)Lf1/q;
    .locals 2

    check-cast p0, Lf1/q;

    iget-object p0, p0, Lf1/q;->l:Lf1/q;

    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lf1/q;->o:I

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p0, :cond_4

    iget v0, p0, Lf1/q;->n:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    return-object p0

    :cond_3
    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final e(Lt0/b;)Lf1/q;
    .locals 1

    if-eqz p0, :cond_1

    iget v0, p0, Lt0/b;->n:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf1/q;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final f(Lf1/q;)Le2/x;
    .locals 2

    iget v0, p0, Lf1/q;->n:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v0, p0, Le2/x;

    if-eqz v0, :cond_0

    check-cast p0, Le2/x;

    return-object p0

    :cond_0
    instance-of v0, p0, Le2/k;

    if-eqz v0, :cond_3

    check-cast p0, Le2/k;

    iget-object p0, p0, Le2/k;->A:Lf1/q;

    :goto_0
    if-eqz p0, :cond_3

    instance-of v0, p0, Le2/x;

    if-eqz v0, :cond_1

    check-cast p0, Le2/x;

    return-object p0

    :cond_1
    instance-of v0, p0, Le2/k;

    if-eqz v0, :cond_2

    iget v0, p0, Lf1/q;->n:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    check-cast p0, Le2/k;

    iget-object p0, p0, Le2/k;->A:Lf1/q;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static final g(JJ)I
    .locals 5

    invoke-static {p0, p1}, Le2/l;->o(J)Z

    move-result v0

    invoke-static {p2, p3}, Le2/l;->o(J)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    invoke-static {p0, p1}, Le2/l;->j(J)F

    move-result v0

    invoke-static {p2, p3}, Le2/l;->j(J)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p0, p1}, Le2/l;->j(J)F

    move-result v1

    invoke-static {p2, p3}, Le2/l;->j(J)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Le2/l;->n(J)Z

    move-result v1

    invoke-static {p2, p3}, Le2/l;->n(J)Z

    move-result p2

    if-eq v1, p2, :cond_4

    invoke-static {p0, p1}, Le2/l;->n(J)Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v0
.end method

.method public static final h(Le2/i;Lr0/m1;)Ljava/lang/Object;
    .locals 1

    move-object v0, p0

    check-cast v0, Lf1/q;

    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "Cannot read CompositionLocal because the Modifier node is not currently attached."

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->N:Lr0/z;

    check-cast p0, Lz0/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lr0/r;->z(Lr0/j1;Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Lc2/p;)Ljava/util/ArrayList;
    .locals 5

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.node.MeasureScopeWithLayoutNode"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Le2/p0;

    invoke-virtual {p0}, Le2/p0;->B0()Le2/g0;

    move-result-object p0

    invoke-static {p0}, Le2/l;->p(Le2/g0;)Z

    move-result v0

    invoke-virtual {p0}, Le2/g0;->o()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    check-cast p0, Lk/f0;

    iget-object v2, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast v2, Lt0/b;

    iget v3, v2, Lt0/b;->n:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget v2, v2, Lt0/b;->n:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p0, v3}, Lk/f0;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le2/g0;

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Le2/g0;->l()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Le2/g0;->m()Ljava/util/List;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static final j(J)F
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static final k(Le2/n;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lf1/q;

    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object p0

    invoke-virtual {p0}, Le2/h1;->b1()V

    :cond_0
    return-void
.end method

.method public static final l(Le2/x;)V
    .locals 0

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    invoke-virtual {p0}, Le2/g0;->E()V

    return-void
.end method

.method public static final m(Le2/z1;)V
    .locals 0

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    invoke-virtual {p0}, Le2/g0;->F()V

    return-void
.end method

.method public static final n(J)Z
    .locals 2

    const-wide/16 v0, 0x2

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final o(J)Z
    .locals 2

    const-wide/16 v0, 0x1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final p(Le2/g0;)Z
    .locals 3

    iget-object v0, p0, Le2/g0;->S:Le2/l0;

    iget-object v0, v0, Le2/l0;->d:Le2/c0;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Le2/l;->p(Le2/g0;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "no parent for idle node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static final q(Le2/g0;)Z
    .locals 1

    iget-object v0, p0, Le2/g0;->t:Le2/g0;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Le2/g0;->t:Le2/g0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-boolean p0, p0, Le2/l0;->b:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static final r(Lf1/q;Li9/a;)V
    .locals 2

    iget-object v0, p0, Lf1/q;->r:Le2/m1;

    if-nez v0, :cond_0

    new-instance v0, Le2/m1;

    move-object v1, p0

    check-cast v1, Le2/l1;

    invoke-direct {v0, v1}, Le2/m1;-><init>(Le2/l1;)V

    iput-object v0, p0, Lf1/q;->r:Le2/m1;

    :cond_0
    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object p0

    check-cast p0, Lf2/y;

    invoke-virtual {p0}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object p0

    sget-object v1, Le2/d;->q:Le2/d;

    iget-object p0, p0, Le2/s1;->a:Ld1/b0;

    invoke-virtual {p0, v0, v1, p1}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    return-void
.end method

.method public static final s(Le2/j;)V
    .locals 4

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-boolean v0, p0, Le2/g0;->F:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v0

    check-cast v0, Lf2/y;

    iget-object v0, v0, Lf2/y;->W:Lg1/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg1/c;->o:Ln2/b;

    iget-object v1, v1, Ln2/b;->a:Ld1/c0;

    iget v2, p0, Le2/g0;->m:I

    new-instance v3, Lg1/b;

    invoke-direct {v3, v0, p0}, Lg1/b;-><init>(Lg1/c;Le2/g0;)V

    invoke-virtual {v1, v2, v3}, Ld1/c0;->p(ILi9/g;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final t(Le2/j;I)Le2/h1;
    .locals 2

    move-object v0, p0

    check-cast v0, Lf1/q;

    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    iget-object v0, v0, Lf1/q;->s:Le2/h1;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Le2/h1;->U0()Lf1/q;

    move-result-object v1

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Le2/i1;->g(I)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Le2/h1;->A:Le2/h1;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final u(Le2/j;)Le2/h1;
    .locals 1

    move-object v0, p0

    check-cast v0, Lf1/q;

    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "Cannot get LayoutCoordinates, Modifier.Node is not attached."

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object p0

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v0

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_1

    const-string v0, "LayoutCoordinates is not attached."

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public static final v(Le2/j;)Le2/g0;
    .locals 0

    check-cast p0, Lf1/q;

    iget-object p0, p0, Lf1/q;->l:Lf1/q;

    iget-object p0, p0, Lf1/q;->s:Le2/h1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    return-object p0

    :cond_0
    const-string p0, "Cannot obtain node coordinator. Is the Modifier.Node attached?"

    invoke-static {p0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0
.end method

.method public static final w(Le2/j;)Le2/q1;
    .locals 0

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->z:Le2/q1;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "This node does not have an owner."

    invoke-static {p0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0
.end method

.method public static final x(Le2/j;)Landroid/view/View;
    .locals 1

    move-object v0, p0

    check-cast v0, Lf1/q;

    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "Cannot get View because the Modifier node is not currently attached."

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    invoke-static {p0}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public static final y(Le2/j;Ljava/lang/Object;Li9/c;)V
    .locals 10

    move-object v0, p0

    check-cast v0, Lf1/q;

    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v1, v1, Lf1/q;->y:Z

    if-nez v1, :cond_0

    const-string v1, "visitAncestors called on an unattached node"

    invoke-static {v1}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_e

    iget-object v1, p0, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->f:Lf1/q;

    iget v1, v1, Lf1/q;->o:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    :goto_1
    if-eqz v0, :cond_c

    iget v1, v0, Lf1/q;->n:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    move-object v1, v0

    move-object v4, v3

    :goto_2
    if-eqz v1, :cond_b

    instance-of v5, v1, Le2/e2;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    check-cast v1, Le2/e2;

    invoke-interface {v1}, Le2/e2;->i()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p2, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :cond_1
    if-nez v6, :cond_a

    goto/16 :goto_7

    :cond_2
    iget v5, v1, Lf1/q;->n:I

    and-int/2addr v5, v2

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move v5, v7

    :goto_3
    if-eqz v5, :cond_a

    instance-of v5, v1, Le2/k;

    if-eqz v5, :cond_a

    move-object v5, v1

    check-cast v5, Le2/k;

    iget-object v5, v5, Le2/k;->A:Lf1/q;

    move v8, v7

    :goto_4
    if-eqz v5, :cond_9

    iget v9, v5, Lf1/q;->n:I

    and-int/2addr v9, v2

    if-eqz v9, :cond_4

    move v9, v6

    goto :goto_5

    :cond_4
    move v9, v7

    :goto_5
    if-eqz v9, :cond_8

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v6, :cond_5

    move-object v1, v5

    goto :goto_6

    :cond_5
    if-nez v4, :cond_6

    new-instance v4, Lt0/b;

    const/16 v9, 0x10

    new-array v9, v9, [Lf1/q;

    invoke-direct {v4, v9}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v4, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v1, v3

    :cond_7
    invoke-virtual {v4, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_8
    :goto_6
    iget-object v5, v5, Lf1/q;->q:Lf1/q;

    goto :goto_4

    :cond_9
    if-ne v8, v6, :cond_a

    goto :goto_2

    :cond_a
    invoke-static {v4}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v1

    goto :goto_2

    :cond_b
    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_d

    iget-object v0, p0, Le2/g0;->R:Le2/c1;

    if-eqz v0, :cond_d

    iget-object v0, v0, Le2/c1;->e:Le2/b2;

    goto/16 :goto_0

    :cond_d
    move-object v0, v3

    goto/16 :goto_0

    :cond_e
    :goto_7
    return-void
.end method

.method public static final z(Le2/e2;Li9/c;)V
    .locals 11

    move-object v0, p0

    check-cast v0, Lf1/q;

    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v1, v1, Lf1/q;->y:Z

    if-nez v1, :cond_0

    const-string v1, "visitAncestors called on an unattached node"

    invoke-static {v1}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_e

    iget-object v2, v1, Le2/g0;->R:Le2/c1;

    iget-object v2, v2, Le2/c1;->f:Lf1/q;

    iget v2, v2, Lf1/q;->o:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    :goto_1
    if-eqz v0, :cond_c

    iget v2, v0, Lf1/q;->n:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_b

    move-object v2, v0

    move-object v5, v4

    :goto_2
    if-eqz v2, :cond_b

    instance-of v6, v2, Le2/e2;

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    check-cast v2, Le2/e2;

    invoke-interface {p0}, Le2/e2;->i()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Le2/e2;->i()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v6, v8, :cond_1

    invoke-interface {p1, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :cond_1
    if-nez v7, :cond_a

    goto/16 :goto_7

    :cond_2
    iget v6, v2, Lf1/q;->n:I

    and-int/2addr v6, v3

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_3

    :cond_3
    move v6, v8

    :goto_3
    if-eqz v6, :cond_a

    instance-of v6, v2, Le2/k;

    if-eqz v6, :cond_a

    move-object v6, v2

    check-cast v6, Le2/k;

    iget-object v6, v6, Le2/k;->A:Lf1/q;

    move v9, v8

    :goto_4
    if-eqz v6, :cond_9

    iget v10, v6, Lf1/q;->n:I

    and-int/2addr v10, v3

    if-eqz v10, :cond_4

    move v10, v7

    goto :goto_5

    :cond_4
    move v10, v8

    :goto_5
    if-eqz v10, :cond_8

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v7, :cond_5

    move-object v2, v6

    goto :goto_6

    :cond_5
    if-nez v5, :cond_6

    new-instance v5, Lt0/b;

    const/16 v10, 0x10

    new-array v10, v10, [Lf1/q;

    invoke-direct {v5, v10}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v5, v2}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v2, v4

    :cond_7
    invoke-virtual {v5, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_8
    :goto_6
    iget-object v6, v6, Lf1/q;->q:Lf1/q;

    goto :goto_4

    :cond_9
    if-ne v9, v7, :cond_a

    goto :goto_2

    :cond_a
    invoke-static {v5}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v2

    goto :goto_2

    :cond_b
    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v1}, Le2/g0;->v()Le2/g0;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v0, v1, Le2/g0;->R:Le2/c1;

    if-eqz v0, :cond_d

    iget-object v0, v0, Le2/c1;->e:Le2/b2;

    goto/16 :goto_0

    :cond_d
    move-object v0, v4

    goto/16 :goto_0

    :cond_e
    :goto_7
    return-void
.end method
