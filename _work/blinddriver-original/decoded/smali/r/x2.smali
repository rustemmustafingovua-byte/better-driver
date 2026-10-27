.class public abstract Lr/x2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lr/q0;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lr/q0;-><init>(ILy8/c;I)V

    sput-object v0, Lr/x2;->a:Lr/q0;

    return-void
.end method

.method public static final a(Ly1/j0;La9/a;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lr/q2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lr/q2;

    iget v1, v0, Lr/q2;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/q2;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/q2;

    invoke-direct {v0, p1}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p1, v0, Lr/q2;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/q2;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lr/q2;->l:Ly1/j0;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    :goto_1
    iput-object p0, v0, Lr/q2;->l:Ly1/j0;

    iput v3, v0, Lr/q2;->n:I

    sget-object p1, Ly1/m;->m:Ly1/m;

    invoke-virtual {p0, p1, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    check-cast p1, Ly1/l;

    iget-object v2, p1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_3
    if-ge v6, v4, :cond_4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly1/u;

    invoke-virtual {v7}, Ly1/u;->a()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iget-object p1, p1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_4
    if-ge v5, v2, :cond_6

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly1/u;

    iget-boolean v4, v4, Ly1/u;->d:Z

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public static final b(Ly1/j0;ZLy1/m;La9/a;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p3, Lr/o2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lr/o2;

    iget v1, v0, Lr/o2;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/o2;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/o2;

    invoke-direct {v0, p3}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p3, v0, Lr/o2;->o:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/o2;->p:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p0, v0, Lr/o2;->n:Z

    iget-object p1, v0, Lr/o2;->m:Ly1/m;

    iget-object p2, v0, Lr/o2;->l:Ly1/j0;

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    move-object v5, p1

    move p1, p0

    move-object p0, p2

    move-object p2, v5

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    :cond_3
    iput-object p0, v0, Lr/o2;->l:Ly1/j0;

    iput-object p2, v0, Lr/o2;->m:Ly1/m;

    iput-boolean p1, v0, Lr/o2;->n:Z

    iput v3, v0, Lr/o2;->p:I

    invoke-virtual {p0, p2, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p3, Ly1/l;

    const/4 v2, 0x0

    invoke-static {p3, p1, v2}, Lr/x2;->f(Ly1/l;ZZ)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p0, p3, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ly1/j0;La9/h;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object p2, Ly1/m;->m:Ly1/m;

    invoke-static {p0, v0, p2, p1}, Lr/x2;->b(Ly1/j0;ZLy1/m;La9/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ly1/j0;Ly1/m;La9/a;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lr/p2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lr/p2;

    iget v1, v0, Lr/p2;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/p2;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/p2;

    invoke-direct {v0, p2}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p2, v0, Lr/p2;->n:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/p2;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lr/p2;->m:Ly1/m;

    iget-object p1, v0, Lr/p2;->l:Ly1/j0;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    :cond_3
    iput-object p0, v0, Lr/p2;->l:Ly1/j0;

    iput-object p1, v0, Lr/p2;->m:Ly1/m;

    iput v3, v0, Lr/p2;->o:I

    invoke-virtual {p0, p1, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ly1/l;

    const/4 v2, 0x0

    invoke-static {p2, v2, v3}, Lr/x2;->f(Ly1/l;ZZ)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p0, p2, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ly1/x;Li9/f;Li9/c;Ly8/c;I)Ljava/lang/Object;
    .locals 8

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    sget-object p1, Lr/x2;->a:Lr/q0;

    :cond_0
    move-object v2, p1

    and-int/lit8 p1, p4, 0x8

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move-object v5, p2

    new-instance v0, Lf2/z2;

    const/4 v6, 0x0

    const/16 v7, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lf2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v0, p3}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public static final f(Ly1/l;ZZ)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly1/u;

    iget v3, v3, Ly1/u;->i:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget p2, p0, Ly1/l;->d:I

    and-int/lit8 p2, p2, 0x21

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    :goto_1
    iget-object p0, p0, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p2

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly1/u;

    if-eqz p1, :cond_3

    invoke-static {v2}, Ly1/t;->a(Ly1/u;)Z

    move-result v2

    goto :goto_3

    :cond_3
    invoke-static {v2}, Ly1/t;->b(Ly1/u;)Z

    move-result v2

    :goto_3
    if-nez v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static g(Lu9/t;Lu9/v0;Li9/e;)Lu9/j1;
    .locals 3

    sget-object v0, Lu9/u;->o:Lu9/u;

    new-instance v1, Landroidx/lifecycle/m0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroidx/lifecycle/m0;-><init>(Lu9/v0;Li9/e;Ly8/c;)V

    const/4 p1, 0x1

    invoke-static {p0, v2, v0, v1, p1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Ly1/j0;Ly1/m;La9/a;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lr/v2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lr/v2;

    iget v1, v0, Lr/v2;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/v2;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/v2;

    invoke-direct {v0, p2}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p2, v0, Lr/v2;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/v2;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lr/v2;->l:Lj9/y;

    :try_start_0
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ly1/n; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p2, Lj9/y;

    invoke-direct {p2}, Lj9/y;-><init>()V

    sget-object v2, Lr/b1;->a:Lr/b1;

    iput-object v2, p2, Lj9/y;->m:Ljava/lang/Object;

    :try_start_1
    invoke-virtual {p0}, Ly1/j0;->e()Lf2/p2;

    move-result-object v2

    invoke-interface {v2}, Lf2/p2;->b()J

    move-result-wide v4

    new-instance v2, Lb0/y1;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-direct {v2, p1, p2, v6, v7}, Lb0/y1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p2, v0, Lr/v2;->l:Lj9/y;

    iput v3, v0, Lr/v2;->n:I

    invoke-virtual {p0, v4, v5, v2, v0}, Ly1/j0;->f(JLi9/e;La9/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ly1/n; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p2

    :goto_1
    iget-object p0, p0, Lj9/y;->m:Ljava/lang/Object;

    return-object p0

    :catch_0
    sget-object p0, Lr/d1;->a:Lr/d1;

    return-object p0
.end method

.method public static final i(Ly1/j0;Ly1/m;La9/a;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p2, Lr/w2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lr/w2;

    iget v1, v0, Lr/w2;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/w2;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/w2;

    invoke-direct {v0, p2}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p2, v0, Lr/w2;->n:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/w2;->o:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-ne v2, v3, :cond_2

    iget-object p0, v0, Lr/w2;->m:Ly1/m;

    iget-object p1, v0, Lr/w2;->l:Ly1/j0;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    :cond_1
    move-object v12, p1

    move-object p1, p0

    move-object p0, v12

    goto/16 :goto_5

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, v0, Lr/w2;->m:Ly1/m;

    iget-object p1, v0, Lr/w2;->l:Ly1/j0;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    :cond_5
    iput-object p0, v0, Lr/w2;->l:Ly1/j0;

    iput-object p1, v0, Lr/w2;->m:Ly1/m;

    iput v5, v0, Lr/w2;->o:I

    invoke-virtual {p0, p1, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v12, p1

    move-object p1, p0

    move-object p0, v12

    :goto_1
    check-cast p2, Ly1/l;

    iget-object p2, p2, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    move v6, v4

    :goto_2
    if-ge v6, v2, :cond_c

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly1/u;

    invoke-static {v7}, Ly1/t;->c(Ly1/u;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    move v6, v4

    :goto_3
    if-ge v6, v2, :cond_8

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly1/u;

    invoke-virtual {v7}, Ly1/u;->b()Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p1, Ly1/j0;->q:Ly1/k0;

    iget-wide v8, v8, Ly1/k0;->I:J

    invoke-virtual {p1}, Ly1/j0;->c()J

    move-result-wide v10

    invoke-static {v7, v8, v9, v10, v11}, Ly1/t;->f(Ly1/u;JJ)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    sget-object p2, Ly1/m;->n:Ly1/m;

    iput-object p1, v0, Lr/w2;->l:Ly1/j0;

    iput-object p0, v0, Lr/w2;->m:Ly1/m;

    iput v3, v0, Lr/w2;->o:I

    invoke-virtual {p1, p2, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1

    :goto_4
    return-object v1

    :goto_5
    check-cast p2, Ly1/l;

    iget-object p2, p2, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    move v6, v4

    :goto_6
    if-ge v6, v2, :cond_5

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly1/u;

    invoke-virtual {v7}, Ly1/u;->b()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    :goto_7
    const/4 p0, 0x0

    return-object p0

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_c
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
