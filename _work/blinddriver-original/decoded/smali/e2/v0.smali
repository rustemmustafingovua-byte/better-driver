.class public final Le2/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le2/g0;

.field public final b:Lg5/m;

.field public c:Z

.field public d:Z

.field public final e:Lg5/s;

.field public final f:Lt0/b;

.field public final g:J

.field public final h:Lt0/b;

.field public i:Lb3/a;


# direct methods
.method public constructor <init>(Le2/g0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/v0;->a:Le2/g0;

    new-instance p1, Lg5/m;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lg5/m;-><init>(I)V

    iput-object p1, p0, Le2/v0;->b:Lg5/m;

    new-instance p1, Lg5/s;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lg5/s;-><init>(I)V

    iput-object p1, p0, Le2/v0;->e:Lg5/s;

    new-instance p1, Lt0/b;

    const/16 v0, 0x10

    new-array v1, v0, [Le2/g0;

    invoke-direct {p1, v1}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Le2/v0;->f:Lt0/b;

    const-wide/16 v1, 0x1

    iput-wide v1, p0, Le2/v0;->g:J

    new-instance p1, Lt0/b;

    new-array v0, v0, [Le2/u0;

    invoke-direct {p1, v0}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Le2/v0;->h:Lt0/b;

    return-void
.end method

.method public static b(Le2/g0;Lb3/a;)Z
    .locals 5

    iget-object v0, p0, Le2/g0;->t:Le2/g0;

    iget-object v1, p0, Le2/g0;->S:Le2/l0;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, v1, Le2/l0;->q:Le2/t0;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v3, p1, Lb3/a;->a:J

    invoke-virtual {v0, v3, v4}, Le2/t0;->B0(J)Z

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v2

    goto :goto_1

    :cond_2
    iget-object p1, v1, Le2/l0;->q:Le2/t0;

    if-eqz p1, :cond_3

    iget-object v1, p1, Le2/t0;->y:Lb3/a;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v0, v1, Lb3/a;->a:J

    invoke-virtual {p1, v0, v1}, Le2/t0;->B0(J)Z

    move-result p1

    :goto_1
    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, v0, Le2/g0;->t:Le2/g0;

    const/4 v3, 0x3

    if-nez v1, :cond_4

    invoke-static {v0, v2, v3}, Le2/g0;->X(Le2/g0;ZI)V

    return p1

    :cond_4
    invoke-virtual {p0}, Le2/g0;->t()Le2/e0;

    move-result-object v1

    sget-object v4, Le2/e0;->l:Le2/e0;

    if-ne v1, v4, :cond_5

    invoke-static {v0, v2, v3}, Le2/g0;->V(Le2/g0;ZI)V

    return p1

    :cond_5
    invoke-virtual {p0}, Le2/g0;->t()Le2/e0;

    move-result-object p0

    sget-object v1, Le2/e0;->m:Le2/e0;

    if-ne p0, v1, :cond_6

    invoke-virtual {v0, v2}, Le2/g0;->U(Z)V

    :cond_6
    return p1
.end method

.method public static c(Le2/g0;Lb3/a;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Le2/g0;->P(Lb3/a;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Le2/g0;->Q(Le2/g0;)Z

    move-result p1

    :goto_0
    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le2/g0;->s()Le2/e0;

    move-result-object v1

    sget-object v2, Le2/e0;->l:Le2/e0;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 p0, 0x3

    invoke-static {v0, v3, p0}, Le2/g0;->X(Le2/g0;ZI)V

    return p1

    :cond_1
    invoke-virtual {p0}, Le2/g0;->s()Le2/e0;

    move-result-object p0

    sget-object v1, Le2/e0;->m:Le2/e0;

    if-ne p0, v1, :cond_2

    invoke-virtual {v0, v3}, Le2/g0;->W(Z)V

    :cond_2
    return p1
.end method

.method public static h(Le2/g0;)Z
    .locals 3

    iget-object v0, p0, Le2/g0;->S:Le2/l0;

    iget-boolean v0, v0, Le2/l0;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le2/g0;->t()Le2/e0;

    move-result-object v0

    sget-object v1, Le2/e0;->n:Le2/e0;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->q:Le2/t0;

    if-eqz p0, :cond_1

    iget-object p0, p0, Le2/t0;->C:Le2/h0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Le2/h0;->e()Z

    move-result p0

    if-ne p0, v2, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Le2/g0;)Z
    .locals 2

    invoke-virtual {p0}, Le2/g0;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {p0}, Le2/g0;->s()Le2/e0;

    move-result-object v0

    sget-object v1, Le2/e0;->n:Le2/e0;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Le2/g0;->S:Le2/l0;

    iget-object v0, v0, Le2/l0;->p:Le2/x0;

    iget-object v0, v0, Le2/x0;->I:Le2/h0;

    invoke-virtual {v0}, Le2/h0;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Le2/g0;->S:Le2/l0;

    iget-object v0, v0, Le2/l0;->d:Le2/c0;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Le2/c0;->l:Le2/c0;

    if-ne v0, v1, :cond_4

    :cond_2
    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Le2/g0;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Le2/v0;->e:Lg5/s;

    if-eqz p1, :cond_0

    iget-object p1, v1, Lg5/s;->l:Ljava/lang/Object;

    check-cast p1, Lt0/b;

    iget-object p0, p0, Le2/v0;->a:Le2/g0;

    iget v2, p0, Le2/g0;->b0:I

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lt0/b;->g()V

    invoke-virtual {p1, p0}, Lt0/b;->b(Ljava/lang/Object;)V

    iput-boolean v0, p0, Le2/g0;->a0:Z

    :cond_0
    iget-object p0, v1, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    iget p1, p0, Lt0/b;->n:I

    if-eqz p1, :cond_6

    sget-object v2, Le2/n1;->b:Le2/n1;

    iget-object v3, p0, Lt0/b;->l:[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, p1}, Lu8/l;->D0([Ljava/lang/Object;Ljava/util/Comparator;II)V

    iget p1, p0, Lt0/b;->n:I

    iget-object v2, v1, Lg5/s;->m:Ljava/lang/Object;

    check-cast v2, [Le2/g0;

    if-eqz v2, :cond_1

    array-length v3, v2

    if-ge v3, p1, :cond_2

    :cond_1
    const/16 v2, 0x10

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [Le2/g0;

    :cond_2
    const/4 v3, 0x0

    iput-object v3, v1, Lg5/s;->m:Ljava/lang/Object;

    :goto_0
    if-ge v4, p1, :cond_3

    iget-object v5, p0, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v5, v5, v4

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lt0/b;->g()V

    sub-int/2addr p1, v0

    :goto_1
    const/4 p0, -0x1

    if-ge p0, p1, :cond_5

    aget-object p0, v2, p1

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-boolean v0, p0, Le2/g0;->a0:Z

    if-eqz v0, :cond_4

    invoke-static {p0}, Lg5/s;->t(Le2/g0;)V

    :cond_4
    aput-object v3, v2, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    iput-object v2, v1, Lg5/s;->m:Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public final d()V
    .locals 7

    iget-object p0, p0, Le2/v0;->h:Lt0/b;

    iget v0, p0, Lt0/b;->n:I

    if-eqz v0, :cond_3

    iget-object v1, p0, Lt0/b;->l:[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    check-cast v3, Le2/u0;

    iget-object v4, v3, Le2/u0;->a:Le2/g0;

    iget-boolean v5, v3, Le2/u0;->c:Z

    iget-object v6, v3, Le2/u0;->a:Le2/g0;

    invoke-virtual {v4}, Le2/g0;->H()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v3, v3, Le2/u0;->b:Z

    const/4 v4, 0x2

    if-nez v3, :cond_0

    invoke-static {v6, v5, v4}, Le2/g0;->X(Le2/g0;ZI)V

    goto :goto_1

    :cond_0
    invoke-static {v6, v5, v4}, Le2/g0;->V(Le2/g0;ZI)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lt0/b;->g()V

    :cond_3
    return-void
.end method

.method public final e(Le2/g0;)V
    .locals 5

    invoke-virtual {p1}, Le2/g0;->z()Lt0/b;

    move-result-object p1

    iget-object v0, p1, Lt0/b;->l:[Ljava/lang/Object;

    iget p1, p1, Lt0/b;->n:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, v0, v1

    check-cast v2, Le2/g0;

    invoke-virtual {v2}, Le2/g0;->J()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Le2/g0;->c0:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Le2/v0;->b:Lg5/m;

    invoke-virtual {v3, v2}, Lg5/m;->g(Le2/g0;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Le2/g0;->K()V

    :cond_0
    invoke-virtual {p0, v2}, Le2/v0;->e(Le2/g0;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final f(Le2/g0;Z)V
    .locals 1

    iget-boolean v0, p0, Le2/v0;->c:Z

    if-nez v0, :cond_0

    const-string v0, "forceMeasureTheSubtree should be executed during the measureAndLayout pass"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p1, Le2/g0;->S:Le2/l0;

    iget-boolean v0, v0, Le2/l0;->e:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Le2/g0;->r()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    const-string v0, "node not yet measured"

    invoke-static {v0}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1, p2}, Le2/v0;->g(Le2/g0;Z)V

    return-void
.end method

.method public final g(Le2/g0;Z)V
    .locals 8

    invoke-virtual {p1}, Le2/g0;->z()Lt0/b;

    move-result-object v0

    iget-object v1, v0, Lt0/b;->l:[Ljava/lang/Object;

    iget v0, v0, Lt0/b;->n:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_8

    aget-object v4, v1, v3

    check-cast v4, Le2/g0;

    const/4 v5, 0x1

    if-nez p2, :cond_0

    invoke-virtual {v4}, Le2/g0;->s()Le2/e0;

    move-result-object v6

    sget-object v7, Le2/e0;->l:Le2/e0;

    if-eq v6, v7, :cond_1

    iget-object v6, v4, Le2/g0;->S:Le2/l0;

    iget-object v6, v6, Le2/l0;->p:Le2/x0;

    iget-object v6, v6, Le2/x0;->I:Le2/h0;

    invoke-virtual {v6}, Le2/h0;->e()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_7

    invoke-virtual {v4}, Le2/g0;->t()Le2/e0;

    move-result-object v6

    sget-object v7, Le2/e0;->l:Le2/e0;

    if-eq v6, v7, :cond_1

    iget-object v6, v4, Le2/g0;->S:Le2/l0;

    iget-object v6, v6, Le2/l0;->q:Le2/t0;

    if-eqz v6, :cond_7

    iget-object v6, v6, Le2/t0;->C:Le2/h0;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Le2/h0;->e()Z

    move-result v6

    if-ne v6, v5, :cond_7

    :cond_1
    :goto_1
    invoke-static {v4}, Le2/l;->q(Le2/g0;)Z

    move-result v6

    iget-object v7, v4, Le2/g0;->S:Le2/l0;

    if-eqz v6, :cond_3

    if-nez p2, :cond_3

    iget-boolean v6, v7, Le2/l0;->e:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Le2/v0;->b:Lg5/m;

    invoke-virtual {v6, v4}, Lg5/m;->g(Le2/g0;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v4, v5, v2}, Le2/v0;->m(Le2/g0;ZZ)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v4, v5}, Le2/v0;->f(Le2/g0;Z)V

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    iget-boolean v5, v7, Le2/l0;->e:Z

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Le2/g0;->r()Z

    move-result v5

    :goto_3
    if-eqz v5, :cond_5

    invoke-virtual {p0, v4, p2, v2}, Le2/v0;->m(Le2/g0;ZZ)Z

    :cond_5
    if-eqz p2, :cond_6

    iget-boolean v5, v7, Le2/l0;->e:Z

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Le2/g0;->r()Z

    move-result v5

    :goto_4
    if-nez v5, :cond_7

    invoke-virtual {p0, v4, p2}, Le2/v0;->g(Le2/g0;Z)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_9

    iget-object v0, p1, Le2/g0;->S:Le2/l0;

    iget-boolean v0, v0, Le2/l0;->e:Z

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Le2/g0;->r()Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2, v2}, Le2/v0;->m(Le2/g0;ZZ)Z

    :cond_a
    return-void
.end method

.method public final j(Lf2/v;)Z
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Le2/v0;->b:Lg5/m;

    iget-object v2, v1, Le2/v0;->a:Le2/g0;

    invoke-virtual {v2}, Le2/g0;->H()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "performMeasureAndLayout called with unattached root"

    invoke-static {v3}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Le2/g0;->I()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "performMeasureAndLayout called with unplaced root"

    invoke-static {v3}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_1
    iget-boolean v3, v1, Le2/v0;->c:Z

    if-eqz v3, :cond_2

    const-string v3, "performMeasureAndLayout called during measure layout"

    invoke-static {v3}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v3, v1, Le2/v0;->i:Lb3/a;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_d

    iput-boolean v5, v1, Le2/v0;->c:Z

    iput-boolean v5, v1, Le2/v0;->d:Z

    :try_start_0
    invoke-virtual {v0}, Lg5/m;->n()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v6, Lb0/l1;

    if-eqz v3, :cond_b

    move v3, v4

    :cond_3
    :goto_0
    :try_start_1
    iget-object v7, v0, Lg5/m;->o:Ljava/lang/Object;

    check-cast v7, Lb0/l1;

    iget-object v8, v0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v8, Lb0/l1;

    iget-object v9, v6, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v9, Le2/a2;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v7, v6, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v7, Le2/a2;

    invoke-virtual {v7}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le2/g0;

    invoke-virtual {v6, v7}, Lb0/l1;->z(Le2/g0;)Z

    iget-object v8, v7, Le2/g0;->t:Le2/g0;

    if-eqz v8, :cond_4

    move v8, v5

    goto :goto_1

    :cond_4
    move v8, v4

    :goto_1
    move v9, v4

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_5
    iget-object v9, v8, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v9, Le2/a2;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v7, v8, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v7, Le2/a2;

    invoke-virtual {v7}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le2/g0;

    invoke-virtual {v8, v7}, Lb0/l1;->z(Le2/g0;)Z

    iget-object v8, v7, Le2/g0;->t:Le2/g0;

    if-eqz v8, :cond_6

    move v8, v5

    goto :goto_2

    :cond_6
    move v8, v4

    :goto_2
    move v9, v5

    goto :goto_3

    :cond_7
    iget-object v8, v7, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v8, Le2/a2;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, v7, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v8, Le2/a2;

    invoke-virtual {v8}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le2/g0;

    invoke-virtual {v7, v8}, Lb0/l1;->z(Le2/g0;)Z

    move v9, v5

    move-object v7, v8

    move v8, v4

    :goto_3
    invoke-virtual {v1, v7, v8, v9}, Le2/v0;->m(Le2/g0;ZZ)Z

    move-result v8

    if-nez v9, :cond_9

    iget-object v9, v7, Le2/g0;->S:Le2/l0;

    iget-boolean v9, v9, Le2/l0;->f:Z

    if-eqz v9, :cond_8

    sget-object v9, Le2/u;->m:Le2/u;

    invoke-virtual {v0, v7, v9}, Lg5/m;->b(Le2/g0;Le2/u;)V

    :cond_8
    invoke-virtual {v7}, Le2/g0;->q()Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Le2/u;->o:Le2/u;

    invoke-virtual {v0, v7, v9}, Lg5/m;->b(Le2/g0;Le2/u;)V

    :cond_9
    if-ne v7, v2, :cond_3

    if-eqz v8, :cond_3

    move v3, v5

    goto/16 :goto_0

    :cond_a
    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lf2/v;->invoke()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_b
    move v3, v4

    :cond_c
    :goto_4
    iput-boolean v4, v1, Le2/v0;->c:Z

    iput-boolean v4, v1, Le2/v0;->d:Z

    goto :goto_6

    :goto_5
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    iput-boolean v4, v1, Le2/v0;->c:Z

    iput-boolean v4, v1, Le2/v0;->d:Z

    throw v0

    :cond_d
    move v3, v4

    :goto_6
    iget-object v0, v1, Le2/v0;->f:Lt0/b;

    iget-object v1, v0, Lt0/b;->l:[Ljava/lang/Object;

    iget v2, v0, Lt0/b;->n:I

    move v6, v4

    :goto_7
    if-ge v6, v2, :cond_19

    aget-object v7, v1, v6

    check-cast v7, Le2/g0;

    iget-object v7, v7, Le2/g0;->R:Le2/c1;

    iget-object v8, v7, Le2/c1;->c:Le2/s;

    const/high16 v9, 0x400000

    invoke-static {v9}, Le2/i1;->g(I)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v11, v8, Le2/s;->c0:Le2/b2;

    goto :goto_8

    :cond_e
    iget-object v11, v8, Le2/s;->c0:Le2/b2;

    iget-object v11, v11, Lf1/q;->p:Lf1/q;

    if-nez v11, :cond_f

    goto/16 :goto_f

    :cond_f
    :goto_8
    sget-object v12, Le2/h1;->X:Lm1/f0;

    invoke-virtual {v8, v10}, Le2/h1;->W0(Z)Lf1/q;

    move-result-object v8

    :goto_9
    if-eqz v8, :cond_18

    iget v10, v8, Lf1/q;->o:I

    and-int/2addr v10, v9

    if-eqz v10, :cond_18

    iget v10, v8, Lf1/q;->n:I

    and-int/2addr v10, v9

    if-eqz v10, :cond_17

    const/4 v10, 0x0

    move-object v12, v8

    move-object v13, v10

    :goto_a
    if-eqz v12, :cond_17

    instance-of v14, v12, Le2/w;

    if-eqz v14, :cond_10

    check-cast v12, Le2/w;

    iget-object v14, v7, Le2/c1;->c:Le2/s;

    invoke-interface {v12, v14}, Le2/w;->u(Lc2/u;)V

    goto :goto_e

    :cond_10
    iget v14, v12, Lf1/q;->n:I

    and-int/2addr v14, v9

    if-eqz v14, :cond_16

    instance-of v14, v12, Le2/k;

    if-eqz v14, :cond_16

    move-object v14, v12

    check-cast v14, Le2/k;

    iget-object v14, v14, Le2/k;->A:Lf1/q;

    move v15, v4

    :goto_b
    if-eqz v14, :cond_15

    iget v4, v14, Lf1/q;->n:I

    and-int/2addr v4, v9

    if-eqz v4, :cond_14

    add-int/lit8 v15, v15, 0x1

    if-ne v15, v5, :cond_11

    move-object v12, v14

    goto :goto_c

    :cond_11
    if-nez v13, :cond_12

    new-instance v13, Lt0/b;

    const/16 v4, 0x10

    new-array v4, v4, [Lf1/q;

    invoke-direct {v13, v4}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_12
    if-eqz v12, :cond_13

    invoke-virtual {v13, v12}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v12, v10

    :cond_13
    invoke-virtual {v13, v14}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_14
    :goto_c
    iget-object v14, v14, Lf1/q;->q:Lf1/q;

    const/4 v4, 0x0

    goto :goto_b

    :cond_15
    if-ne v15, v5, :cond_16

    :goto_d
    const/4 v4, 0x0

    goto :goto_a

    :cond_16
    :goto_e
    invoke-static {v13}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v12

    goto :goto_d

    :cond_17
    if-eq v8, v11, :cond_18

    iget-object v8, v8, Lf1/q;->q:Lf1/q;

    const/4 v4, 0x0

    goto :goto_9

    :cond_18
    :goto_f
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_19
    invoke-virtual {v0}, Lt0/b;->g()V

    return v3
.end method

.method public final k(Le2/g0;J)V
    .locals 12

    iget-boolean v0, p1, Le2/g0;->c0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le2/v0;->a:Le2/g0;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "measureAndLayout called on root"

    invoke-static {v1}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Le2/g0;->H()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "performMeasureAndLayout called with unattached root"

    invoke-static {v1}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Le2/g0;->I()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "performMeasureAndLayout called with unplaced root"

    invoke-static {v0}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Le2/v0;->c:Z

    if-eqz v0, :cond_4

    const-string v0, "performMeasureAndLayout called during measure layout"

    invoke-static {v0}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Le2/v0;->i:Lb3/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Le2/v0;->c:Z

    iput-boolean v2, p0, Le2/v0;->d:Z

    :try_start_0
    iget-object v0, p0, Le2/v0;->b:Lg5/m;

    iget-object v3, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v3, Lb0/l1;

    invoke-virtual {v3, p1}, Lb0/l1;->z(Le2/g0;)Z

    iget-object v3, v0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v3, Lb0/l1;

    invoke-virtual {v3, p1}, Lb0/l1;->z(Le2/g0;)Z

    iget-object v0, v0, Lg5/m;->o:Ljava/lang/Object;

    check-cast v0, Lb0/l1;

    invoke-virtual {v0, p1}, Lb0/l1;->z(Le2/g0;)Z

    new-instance v0, Lb3/a;

    invoke-direct {v0, p2, p3}, Lb3/a;-><init>(J)V

    invoke-static {p1, v0}, Le2/v0;->b(Le2/g0;Lb3/a;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Le2/g0;->S:Le2/l0;

    iget-boolean v0, v0, Le2/l0;->f:Z

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p1}, Le2/g0;->J()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Le2/g0;->K()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_6
    :goto_0
    invoke-virtual {p0, p1}, Le2/v0;->e(Le2/g0;)V

    new-instance v0, Lb3/a;

    invoke-direct {v0, p2, p3}, Lb3/a;-><init>(J)V

    invoke-static {p1, v0}, Le2/v0;->c(Le2/g0;Lb3/a;)Z

    invoke-virtual {p1}, Le2/g0;->q()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Le2/g0;->I()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Le2/g0;->T()V

    iget-object p2, p0, Le2/v0;->e:Lg5/s;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p3, p1, Le2/g0;->b0:I

    if-lez p3, :cond_7

    iget-object p2, p2, Lg5/s;->l:Ljava/lang/Object;

    check-cast p2, Lt0/b;

    invoke-virtual {p2, p1}, Lt0/b;->b(Ljava/lang/Object;)V

    iput-boolean v1, p1, Le2/g0;->a0:Z

    :cond_7
    invoke-virtual {p0}, Le2/v0;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Le2/v0;->c:Z

    iput-boolean v2, p0, Le2/v0;->d:Z

    goto :goto_2

    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    iput-boolean v2, p0, Le2/v0;->c:Z

    iput-boolean v2, p0, Le2/v0;->d:Z

    throw p1

    :cond_8
    :goto_2
    iget-object p0, p0, Le2/v0;->f:Lt0/b;

    iget-object p1, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p2, p0, Lt0/b;->n:I

    move p3, v2

    :goto_3
    if-ge p3, p2, :cond_14

    aget-object v0, p1, p3

    check-cast v0, Le2/g0;

    iget-object v0, v0, Le2/g0;->R:Le2/c1;

    iget-object v3, v0, Le2/c1;->c:Le2/s;

    const/high16 v4, 0x400000

    invoke-static {v4}, Le2/i1;->g(I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v6, v3, Le2/s;->c0:Le2/b2;

    goto :goto_4

    :cond_9
    iget-object v6, v3, Le2/s;->c0:Le2/b2;

    iget-object v6, v6, Lf1/q;->p:Lf1/q;

    if-nez v6, :cond_a

    goto/16 :goto_a

    :cond_a
    :goto_4
    sget-object v7, Le2/h1;->X:Lm1/f0;

    invoke-virtual {v3, v5}, Le2/h1;->W0(Z)Lf1/q;

    move-result-object v3

    :goto_5
    if-eqz v3, :cond_13

    iget v5, v3, Lf1/q;->o:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_13

    iget v5, v3, Lf1/q;->n:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_12

    const/4 v5, 0x0

    move-object v7, v3

    move-object v8, v5

    :goto_6
    if-eqz v7, :cond_12

    instance-of v9, v7, Le2/w;

    if-eqz v9, :cond_b

    check-cast v7, Le2/w;

    iget-object v9, v0, Le2/c1;->c:Le2/s;

    invoke-interface {v7, v9}, Le2/w;->u(Lc2/u;)V

    goto :goto_9

    :cond_b
    iget v9, v7, Lf1/q;->n:I

    and-int/2addr v9, v4

    if-eqz v9, :cond_11

    instance-of v9, v7, Le2/k;

    if-eqz v9, :cond_11

    move-object v9, v7

    check-cast v9, Le2/k;

    iget-object v9, v9, Le2/k;->A:Lf1/q;

    move v10, v2

    :goto_7
    if-eqz v9, :cond_10

    iget v11, v9, Lf1/q;->n:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_f

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v1, :cond_c

    move-object v7, v9

    goto :goto_8

    :cond_c
    if-nez v8, :cond_d

    new-instance v8, Lt0/b;

    const/16 v11, 0x10

    new-array v11, v11, [Lf1/q;

    invoke-direct {v8, v11}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {v8, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v7, v5

    :cond_e
    invoke-virtual {v8, v9}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_f
    :goto_8
    iget-object v9, v9, Lf1/q;->q:Lf1/q;

    goto :goto_7

    :cond_10
    if-ne v10, v1, :cond_11

    goto :goto_6

    :cond_11
    :goto_9
    invoke-static {v8}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v7

    goto :goto_6

    :cond_12
    if-eq v3, v6, :cond_13

    iget-object v3, v3, Lf1/q;->q:Lf1/q;

    goto :goto_5

    :cond_13
    :goto_a
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_3

    :cond_14
    invoke-virtual {p0}, Lt0/b;->g()V

    return-void
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, Le2/v0;->b:Lg5/m;

    invoke-virtual {v0}, Lg5/m;->n()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Le2/v0;->a:Le2/g0;

    invoke-virtual {v1}, Le2/g0;->H()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "performMeasureAndLayout called with unattached root"

    invoke-static {v2}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Le2/g0;->I()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "performMeasureAndLayout called with unplaced root"

    invoke-static {v2}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Le2/v0;->c:Z

    if-eqz v2, :cond_2

    const-string v2, "performMeasureAndLayout called during measure layout"

    invoke-static {v2}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Le2/v0;->i:Lb3/a;

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, p0, Le2/v0;->c:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Le2/v0;->d:Z

    :try_start_0
    iget-object v4, v0, Lg5/m;->o:Ljava/lang/Object;

    check-cast v4, Lb0/l1;

    iget-object v4, v4, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v4, Le2/a2;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v0, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lb0/l1;

    iget-object v0, v0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Le2/a2;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Le2/g0;->t:Le2/g0;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, v2}, Le2/v0;->o(Le2/g0;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Le2/v0;->n(Le2/g0;)V

    :cond_4
    :goto_0
    invoke-virtual {p0, v1, v3}, Le2/v0;->o(Le2/g0;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Le2/v0;->c:Z

    iput-boolean v3, p0, Le2/v0;->d:Z

    return-void

    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    iput-boolean v3, p0, Le2/v0;->c:Z

    iput-boolean v3, p0, Le2/v0;->d:Z

    throw v0

    :cond_5
    return-void
.end method

.method public final m(Le2/g0;ZZ)Z
    .locals 5

    iget-boolean v0, p1, Le2/g0;->c0:Z

    iget-object v1, p1, Le2/g0;->S:Le2/l0;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Le2/g0;->I()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object v0, v1, Le2/l0;->p:Le2/x0;

    iget-boolean v0, v0, Le2/x0;->E:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Le2/v0;->i(Le2/g0;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Le2/g0;->J()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Le2/v0;->h(Le2/g0;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Le2/l0;->p:Le2/x0;

    iget-object v0, v0, Le2/x0;->I:Le2/h0;

    invoke-virtual {v0}, Le2/h0;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Le2/l0;->q:Le2/t0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Le2/t0;->C:Le2/h0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Le2/h0;->e()Z

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return v2

    :cond_2
    :goto_1
    iget-object v0, p0, Le2/v0;->a:Le2/g0;

    if-ne p1, v0, :cond_3

    iget-object v4, p0, Le2/v0;->i:Lb3/a;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz p2, :cond_6

    iget-boolean p2, v1, Le2/l0;->e:Z

    if-eqz p2, :cond_4

    invoke-static {p1, v4}, Le2/v0;->b(Le2/g0;Lb3/a;)Z

    move-result v2

    :cond_4
    if-eqz p3, :cond_e

    if-nez v2, :cond_5

    iget-boolean p2, v1, Le2/l0;->f:Z

    if-eqz p2, :cond_e

    :cond_5
    invoke-virtual {p1}, Le2/g0;->J()Ljava/lang/Boolean;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Le2/g0;->K()V

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p1}, Le2/g0;->r()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {p1, v4}, Le2/v0;->c(Le2/g0;Lb3/a;)Z

    move-result p2

    goto :goto_3

    :cond_7
    move p2, v2

    :goto_3
    if-eqz p3, :cond_d

    invoke-virtual {p1}, Le2/g0;->q()Z

    move-result p3

    if-eqz p3, :cond_d

    if-eq p1, v0, :cond_8

    invoke-virtual {p1}, Le2/g0;->v()Le2/g0;

    move-result-object p3

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Le2/g0;->I()Z

    move-result p3

    if-ne p3, v3, :cond_d

    iget-object p3, v1, Le2/l0;->p:Le2/x0;

    iget-boolean p3, p3, Le2/x0;->E:Z

    if-eqz p3, :cond_d

    :cond_8
    if-ne p1, v0, :cond_c

    iget-object p3, p1, Le2/g0;->O:Le2/e0;

    sget-object v0, Le2/e0;->n:Le2/e0;

    if-ne p3, v0, :cond_9

    invoke-virtual {p1}, Le2/g0;->f()V

    :cond_9
    invoke-virtual {p1}, Le2/g0;->v()Le2/g0;

    move-result-object p3

    if-eqz p3, :cond_a

    iget-object p3, p3, Le2/g0;->R:Le2/c1;

    iget-object p3, p3, Le2/c1;->c:Le2/s;

    if-eqz p3, :cond_a

    iget-object p3, p3, Le2/p0;->w:Lc2/o0;

    if-nez p3, :cond_b

    :cond_a
    invoke-static {p1}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object p3

    check-cast p3, Lf2/y;

    invoke-virtual {p3}, Lf2/y;->getPlacementScope()Lc2/e1;

    move-result-object p3

    :cond_b
    iget-object v0, v1, Le2/l0;->p:Le2/x0;

    invoke-static {p3, v0, v2, v2}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Le2/g0;->T()V

    :goto_4
    iget-object p3, p0, Le2/v0;->e:Lg5/s;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Le2/g0;->b0:I

    if-lez v0, :cond_d

    iget-object p3, p3, Lg5/s;->l:Ljava/lang/Object;

    check-cast p3, Lt0/b;

    invoke-virtual {p3, p1}, Lt0/b;->b(Ljava/lang/Object;)V

    iput-boolean v3, p1, Le2/g0;->a0:Z

    :cond_d
    move v2, p2

    :cond_e
    :goto_5
    invoke-virtual {p0}, Le2/v0;->d()V

    return v2
.end method

.method public final n(Le2/g0;)V
    .locals 5

    invoke-virtual {p1}, Le2/g0;->z()Lt0/b;

    move-result-object p1

    iget-object v0, p1, Lt0/b;->l:[Ljava/lang/Object;

    iget p1, p1, Lt0/b;->n:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-object v2, v0, v1

    check-cast v2, Le2/g0;

    invoke-virtual {v2}, Le2/g0;->s()Le2/e0;

    move-result-object v3

    sget-object v4, Le2/e0;->l:Le2/e0;

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Le2/g0;->S:Le2/l0;

    iget-object v3, v3, Le2/l0;->p:Le2/x0;

    iget-object v3, v3, Le2/x0;->I:Le2/h0;

    invoke-virtual {v3}, Le2/h0;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-static {v2}, Le2/l;->q(Le2/g0;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Le2/v0;->o(Le2/g0;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Le2/v0;->n(Le2/g0;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final o(Le2/g0;Z)V
    .locals 1

    iget-boolean v0, p1, Le2/g0;->c0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le2/v0;->a:Le2/g0;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Le2/v0;->i:Lb3/a;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p2, :cond_2

    invoke-static {p1, p0}, Le2/v0;->b(Le2/g0;Lb3/a;)Z

    return-void

    :cond_2
    invoke-static {p1, p0}, Le2/v0;->c(Le2/g0;Lb3/a;)Z

    return-void
.end method

.method public final p(Le2/g0;Z)Z
    .locals 4

    iget-object v0, p1, Le2/g0;->S:Le2/l0;

    iget-object v0, v0, Le2/l0;->d:Le2/c0;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    invoke-virtual {p1}, Le2/g0;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p1, Le2/g0;->S:Le2/l0;

    iget-object p2, p2, Le2/l0;->p:Le2/x0;

    iput-boolean v2, p2, Le2/x0;->F:Z

    iget-boolean p2, p1, Le2/g0;->c0:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Le2/g0;->I()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1}, Le2/v0;->i(Le2/g0;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_2
    invoke-virtual {p1}, Le2/g0;->v()Le2/g0;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Le2/g0;->r()Z

    move-result p2

    if-ne p2, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p0, Le2/v0;->b:Lg5/m;

    sget-object v0, Le2/u;->n:Le2/u;

    invoke-virtual {p2, p1, v0}, Lg5/m;->b(Le2/g0;Le2/u;)V

    :goto_0
    iget-boolean p0, p0, Le2/v0;->d:Z

    if-nez p0, :cond_6

    return v2

    :cond_4
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    new-instance v0, Le2/u0;

    invoke-direct {v0, p1, v1, p2}, Le2/u0;-><init>(Le2/g0;ZZ)V

    iget-object p0, p0, Le2/v0;->h:Lt0/b;

    invoke-virtual {p0, v0}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return v1
.end method

.method public final q(J)V
    .locals 2

    iget-object v0, p0, Le2/v0;->i:Lb3/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, v0, Lb3/a;->a:J

    invoke-static {v0, v1, p1, p2}, Lb3/a;->b(JJ)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_4

    iget-boolean v0, p0, Le2/v0;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "updateRootConstraints called while measuring"

    invoke-static {v0}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lb3/a;

    invoke-direct {v0, p1, p2}, Lb3/a;-><init>(J)V

    iput-object v0, p0, Le2/v0;->i:Lb3/a;

    iget-object p1, p0, Le2/v0;->a:Le2/g0;

    iget-object p2, p1, Le2/g0;->t:Le2/g0;

    iget-object v0, p1, Le2/g0;->S:Le2/l0;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iput-boolean v1, v0, Le2/l0;->e:Z

    :cond_2
    iget-object v0, v0, Le2/l0;->p:Le2/x0;

    iput-boolean v1, v0, Le2/x0;->F:Z

    if-eqz p2, :cond_3

    sget-object p2, Le2/u;->l:Le2/u;

    goto :goto_1

    :cond_3
    sget-object p2, Le2/u;->n:Le2/u;

    :goto_1
    iget-object p0, p0, Le2/v0;->b:Lg5/m;

    invoke-virtual {p0, p1, p2}, Lg5/m;->b(Le2/g0;Le2/u;)V

    :cond_4
    return-void
.end method
