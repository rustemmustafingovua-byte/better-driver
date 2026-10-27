.class public final Lm0/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm0/i1;

.field public final b:Lr0/e1;

.field public final c:Lr0/e1;

.field public d:Li9/c;

.field public e:Lt1/a;

.field public f:Li9/c;

.field public final g:Lg5/s;

.field public final h:Lk1/u;

.field public final i:Lr0/e1;

.field public final j:Lr0/d0;

.field public k:Ll1/b;

.field public l:Lc2/u;

.field public final m:Lr0/e1;

.field public final n:Lr0/e1;

.field public final o:Lr0/e1;

.field public final p:Lr0/e1;

.field public final q:Lr0/e1;

.field public final r:Lr0/e1;

.field public final s:Lr0/e1;

.field public t:Lm0/t0;

.field public u:Z

.field public v:Lu9/t;

.field public w:Lm0/u;

.field public x:Z


# direct methods
.method public constructor <init>(Lm0/i1;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/b1;->a:Lm0/i1;

    const/4 v0, 0x0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    iput-object v1, p0, Lm0/b1;->b:Lr0/e1;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    iput-object v1, p0, Lm0/b1;->c:Lr0/e1;

    new-instance v1, Lm0/i0;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lm0/i0;-><init>(Lm0/b1;I)V

    iput-object v1, p0, Lm0/b1;->d:Li9/c;

    new-instance v1, Lg5/s;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lg5/s;-><init>(I)V

    iput-object v1, p0, Lm0/b1;->g:Lg5/s;

    new-instance v1, Lk1/u;

    invoke-direct {v1}, Lk1/u;-><init>()V

    iput-object v1, p0, Lm0/b1;->h:Lk1/u;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    iput-object v1, p0, Lm0/b1;->i:Lr0/e1;

    new-instance v1, Lm0/f0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lm0/f0;-><init>(Lm0/b1;I)V

    invoke-static {v1}, Lr0/r;->r(Li9/a;)Lr0/d0;

    move-result-object v1

    iput-object v1, p0, Lm0/b1;->j:Lr0/d0;

    sget-object v1, Lr0/e;->o:Lr0/e;

    new-instance v2, Lr0/e1;

    sget-object v3, Lt8/z;->a:Lt8/z;

    invoke-direct {v2, v3, v1}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    iput-object v2, p0, Lm0/b1;->m:Lr0/e1;

    new-instance v1, Ll1/b;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ll1/b;-><init>(J)V

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    iput-object v1, p0, Lm0/b1;->n:Lr0/e1;

    new-instance v1, Ll1/b;

    invoke-direct {v1, v2, v3}, Ll1/b;-><init>(J)V

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    iput-object v1, p0, Lm0/b1;->o:Lr0/e1;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    iput-object v1, p0, Lm0/b1;->p:Lr0/e1;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    iput-object v1, p0, Lm0/b1;->q:Lr0/e1;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    iput-object v1, p0, Lm0/b1;->r:Lr0/e1;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, p0, Lm0/b1;->s:Lr0/e1;

    new-instance v0, Lm0/i0;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lm0/i0;-><init>(Lm0/b1;I)V

    iput-object v0, p1, Lm0/i1;->e:Lm0/i0;

    new-instance v0, Lld/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lld/b;-><init>(ILjava/lang/Object;)V

    iput-object v0, p1, Lm0/i1;->f:Lld/b;

    new-instance v0, Lm0/y0;

    invoke-direct {v0, p0}, Lm0/y0;-><init>(Lm0/b1;)V

    iput-object v0, p1, Lm0/i1;->g:Lm0/y0;

    new-instance v0, Lm0/f0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lm0/f0;-><init>(Lm0/b1;I)V

    iput-object v0, p1, Lm0/i1;->h:Lm0/f0;

    new-instance v0, Lm0/i0;

    invoke-direct {v0, p0, v1}, Lm0/i0;-><init>(Lm0/b1;I)V

    iput-object v0, p1, Lm0/i1;->i:Lm0/i0;

    new-instance v0, Lm0/i0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lm0/i0;-><init>(Lm0/b1;I)V

    iput-object v0, p1, Lm0/i1;->j:Lm0/i0;

    return-void
.end method


# virtual methods
.method public final a(Lc2/u;J)J
    .locals 1

    iget-object v0, p0, Lm0/b1;->l:Lc2/u;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lc2/u;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lm0/b1;->j()Lc2/u;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide p0, 0x7fc000007fc00000L    # 2.247117487993712E307

    return-wide p0
.end method

.method public final b()V
    .locals 13

    invoke-virtual {p0}, Lm0/b1;->f()Lm0/a0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm0/b1;->a:Lm0/i1;

    invoke-virtual {v0}, Lm0/i1;->a()Lk/b0;

    move-result-object v2

    iget v2, v2, Lk/b0;->e:I

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    goto/16 :goto_3

    :cond_1
    new-instance v2, Lp2/d;

    invoke-direct {v2}, Lp2/d;-><init>()V

    invoke-virtual {p0}, Lm0/b1;->j()Lc2/u;

    move-result-object v3

    invoke-virtual {v0, v3}, Lm0/i1;->c(Lc2/u;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm0/q;

    invoke-virtual {v0}, Lm0/i1;->a()Lk/b0;

    move-result-object v7

    iget-wide v8, v5, Lm0/q;->a:J

    invoke-virtual {v7, v8, v9}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm0/a0;

    if-eqz v5, :cond_2

    iget-object v7, v5, Lm0/a0;->a:Lm0/z;

    iget v7, v7, Lm0/z;->b:I

    iget-object v5, v5, Lm0/a0;->b:Lm0/z;

    iget v5, v5, Lm0/z;->b:I

    if-eq v7, v5, :cond_2

    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    move-result v4

    goto :goto_0

    :cond_3
    move v4, v6

    :goto_0
    if-eq v4, v6, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_6

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lm0/q;

    invoke-virtual {v0}, Lm0/i1;->a()Lk/b0;

    move-result-object v9

    iget-wide v10, v8, Lm0/q;->a:J

    invoke-virtual {v9, v10, v11}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lm0/a0;

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lm0/q;->d()Lp2/g;

    move-result-object v8

    iget-object v10, v9, Lm0/a0;->a:Lm0/z;

    iget v10, v10, Lm0/z;->b:I

    iget-object v9, v9, Lm0/a0;->b:Lm0/z;

    iget v9, v9, Lm0/z;->b:I

    invoke-static {v10, v9}, Lp2/d0;->b(II)J

    move-result-wide v9

    if-lt v7, v4, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    move v11, v6

    :goto_2
    invoke-static {v9, v10}, Lp2/l0;->f(J)I

    move-result v12

    invoke-static {v9, v10}, Lp2/l0;->e(J)I

    move-result v9

    invoke-virtual {v2, v8, v12, v9}, Lp2/d;->b(Lp2/g;II)V

    if-nez v11, :cond_5

    const/16 v8, 0xa

    iget-object v9, v2, Lp2/d;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lp2/d;->e()Lp2/g;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_8

    iget-object v2, v0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    move-object v1, v0

    :cond_7
    if-eqz v1, :cond_8

    iget-object p0, p0, Lm0/b1;->f:Li9/c;

    if-eqz p0, :cond_8

    invoke-interface {p0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method public final c(Lm0/z;)Lm0/q;
    .locals 2

    iget-object p0, p0, Lm0/b1;->a:Lm0/i1;

    iget-object p0, p0, Lm0/i1;->c:Lk/b0;

    iget-wide v0, p1, Lm0/z;->c:J

    invoke-virtual {p0, v0, v1}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm0/q;

    return-object p0
.end method

.method public final d()Lt8/j;
    .locals 15

    invoke-virtual {p0}, Lm0/b1;->f()Lm0/a0;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lm0/b1;->a:Lm0/i1;

    iget-object v1, v0, Lm0/i1;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v1, Lp2/d;

    invoke-direct {v1}, Lp2/d;-><init>()V

    invoke-virtual {p0}, Lm0/b1;->j()Lc2/u;

    move-result-object p0

    invoke-virtual {v0, p0}, Lm0/i1;->c(Lc2/u;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm0/q;

    invoke-virtual {v0}, Lm0/i1;->a()Lk/b0;

    move-result-object v5

    iget-wide v6, v3, Lm0/q;->a:J

    invoke-virtual {v5, v6, v7}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm0/a0;

    if-eqz v3, :cond_1

    iget-object v5, v3, Lm0/a0;->a:Lm0/z;

    iget v5, v5, Lm0/z;->b:I

    iget-object v3, v3, Lm0/a0;->b:Lm0/z;

    iget v3, v3, Lm0/z;->b:I

    if-eq v5, v3, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    if-eq v2, v4, :cond_7

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v5, 0x0

    move v7, v4

    move v8, v7

    move v6, v5

    :goto_1
    if-ge v6, v3, :cond_8

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lm0/q;

    invoke-virtual {v0}, Lm0/i1;->a()Lk/b0;

    move-result-object v10

    iget-wide v11, v9, Lm0/q;->a:J

    invoke-virtual {v10, v11, v12}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lm0/a0;

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Lm0/q;->d()Lp2/g;

    move-result-object v9

    iget-object v11, v10, Lm0/a0;->a:Lm0/z;

    iget v11, v11, Lm0/z;->b:I

    iget-object v10, v10, Lm0/a0;->b:Lm0/z;

    iget v10, v10, Lm0/z;->b:I

    invoke-static {v11, v10}, Lp2/d0;->b(II)J

    move-result-wide v10

    if-lt v6, v2, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    move v12, v5

    :goto_2
    if-ne v7, v4, :cond_4

    invoke-static {v10, v11}, Lp2/l0;->f(J)I

    move-result v7

    invoke-static {v10, v11}, Lp2/l0;->f(J)I

    move-result v13

    invoke-virtual {v1, v9, v5, v13}, Lp2/d;->b(Lp2/g;II)V

    :cond_4
    invoke-static {v10, v11}, Lp2/l0;->f(J)I

    move-result v13

    invoke-static {v10, v11}, Lp2/l0;->e(J)I

    move-result v14

    invoke-virtual {v1, v9, v13, v14}, Lp2/d;->b(Lp2/g;II)V

    iget-object v13, v1, Lp2/d;->l:Ljava/lang/StringBuilder;

    if-nez v12, :cond_5

    const/16 v9, 0xa

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-static {v10, v11}, Lp2/l0;->e(J)I

    move-result v10

    iget-object v11, v9, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v1, v9, v10, v11}, Lp2/d;->b(Lp2/g;II)V

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    move v7, v4

    move v8, v7

    :cond_8
    invoke-virtual {v1}, Lp2/d;->e()Lp2/g;

    move-result-object p0

    if-eq v7, v4, :cond_a

    if-ne v8, v4, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Lt8/j;

    invoke-static {v7, v8}, Lp2/d0;->b(II)J

    move-result-wide v1

    new-instance v3, Lp2/l0;

    invoke-direct {v3, v1, v2}, Lp2/l0;-><init>(J)V

    invoke-direct {v0, p0, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_a
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e()Lb0/d1;
    .locals 0

    iget-object p0, p0, Lm0/b1;->r:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb0/d1;

    return-object p0
.end method

.method public final f()Lm0/a0;
    .locals 0

    iget-object p0, p0, Lm0/b1;->b:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm0/a0;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Lm0/b1;->c:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final h()Z
    .locals 8

    invoke-virtual {p0}, Lm0/b1;->f()Lm0/a0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, v0, Lm0/a0;->b:Lm0/z;

    iget-object v0, v0, Lm0/a0;->a:Lm0/z;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    iget-wide v3, v0, Lm0/z;->c:J

    iget-wide v5, v2, Lm0/z;->c:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lm0/b1;->j()Lc2/u;

    move-result-object v0

    iget-object p0, p0, Lm0/b1;->a:Lm0/i1;

    invoke-virtual {p0, v0}, Lm0/i1;->c(Lc2/u;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm0/q;

    invoke-virtual {p0}, Lm0/i1;->a()Lk/b0;

    move-result-object v5

    iget-wide v6, v4, Lm0/q;->a:J

    invoke-virtual {v5, v6, v7}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm0/a0;

    if-eqz v4, :cond_3

    iget-object v5, v4, Lm0/a0;->a:Lm0/z;

    iget v5, v5, Lm0/z;->b:I

    iget-object v4, v4, Lm0/a0;->b:Lm0/z;

    iget v4, v4, Lm0/z;->b:I

    if-eq v5, v4, :cond_3

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v1
.end method

.method public final i()V
    .locals 2

    sget-object v0, Lk/o;->a:Lk/b0;

    const-string v1, "null cannot be cast to non-null type androidx.collection.LongObjectMap<V of androidx.collection.LongObjectMapKt.emptyLongObjectMap>"

    invoke-static {v0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lm0/b1;->a:Lm0/i1;

    iget-object v1, v1, Lm0/i1;->k:Lr0/e1;

    invoke-virtual {v1, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm0/b1;->x:Z

    invoke-virtual {p0}, Lm0/b1;->o()V

    invoke-virtual {p0}, Lm0/b1;->f()Lm0/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm0/b1;->d:Li9/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lm0/b1;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm0/b1;->e:Lt1/a;

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    invoke-interface {p0, v0}, Lt1/a;->a(I)V

    :cond_0
    return-void
.end method

.method public final j()Lc2/u;
    .locals 1

    iget-object p0, p0, Lm0/b1;->l:Lc2/u;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lc2/u;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unattached coordinates"

    invoke-static {v0}, Lt/b;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0

    :cond_1
    const-string p0, "null coordinates"

    invoke-static {p0}, Lt/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final k(Z)V
    .locals 2

    iget-object v0, p0, Lm0/b1;->c:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm0/b1;->o()V

    :cond_0
    return-void
.end method

.method public final l(Lm0/a0;)V
    .locals 1

    iget-object v0, p0, Lm0/b1;->b:Lr0/e1;

    invoke-virtual {v0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lm0/b1;->m()V

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lm0/b1;->f()Lm0/a0;

    move-result-object v1

    iget-object v2, v0, Lm0/b1;->l:Lc2/u;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, v1, Lm0/a0;->a:Lm0/z;

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Lm0/b1;->c(Lm0/z;)Lm0/q;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v1, :cond_1

    iget-object v5, v1, Lm0/a0;->b:Lm0/z;

    if-eqz v5, :cond_1

    invoke-virtual {v0, v5}, Lm0/b1;->c(Lm0/z;)Lm0/q;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lm0/q;->c()Lc2/u;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v3

    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lm0/q;->c()Lc2/u;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v3

    :goto_3
    iget-object v8, v0, Lm0/b1;->q:Lr0/e1;

    iget-object v9, v0, Lm0/b1;->p:Lr0/e1;

    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    invoke-interface {v2}, Lc2/u;->j()Z

    move-result v10

    if-eqz v10, :cond_c

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    goto :goto_7

    :cond_4
    invoke-static {v2}, Lm0/d1;->A(Lc2/u;)Ll1/c;

    move-result-object v10

    const-wide v13, 0x7fffffff7fffffffL

    if-eqz v6, :cond_6

    const/4 v15, 0x1

    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-virtual {v4, v1, v15}, Lm0/q;->a(Lm0/a0;Z)J

    move-result-wide v11

    and-long v18, v11, v13

    cmp-long v4, v18, v16

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v2, v6, v11, v12}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide v11

    new-instance v4, Ll1/b;

    invoke-direct {v4, v11, v12}, Ll1/b;-><init>(J)V

    invoke-virtual {v0}, Lm0/b1;->e()Lb0/d1;

    move-result-object v6

    sget-object v15, Lb0/d1;->m:Lb0/d1;

    if-eq v6, v15, :cond_8

    invoke-static {v10, v11, v12}, Lm0/d1;->p(Ll1/c;J)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_6
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    :cond_7
    :goto_4
    move-object v4, v3

    :cond_8
    :goto_5
    invoke-virtual {v9, v4}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    if-eqz v7, :cond_b

    const/4 v4, 0x0

    invoke-virtual {v5, v1, v4}, Lm0/q;->a(Lm0/a0;Z)J

    move-result-wide v4

    and-long v11, v4, v13

    cmp-long v1, v11, v16

    if-nez v1, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {v2, v7, v4, v5}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide v1

    new-instance v4, Ll1/b;

    invoke-direct {v4, v1, v2}, Ll1/b;-><init>(J)V

    invoke-virtual {v0}, Lm0/b1;->e()Lb0/d1;

    move-result-object v0

    sget-object v5, Lb0/d1;->n:Lb0/d1;

    if-eq v0, v5, :cond_a

    invoke-static {v10, v1, v2}, Lm0/d1;->p(Ll1/c;J)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move-object v3, v4

    :cond_b
    :goto_6
    invoke-virtual {v8, v3}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_c
    :goto_7
    invoke-virtual {v9, v3}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v8, v3}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final n(JJZLm0/b0;)Z
    .locals 33

    move-object/from16 v0, p0

    if-eqz p5, :cond_0

    sget-object v1, Lb0/d1;->m:Lb0/d1;

    goto :goto_0

    :cond_0
    sget-object v1, Lb0/d1;->n:Lb0/d1;

    :goto_0
    iget-object v2, v0, Lm0/b1;->r:Lr0/e1;

    invoke-virtual {v2, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    new-instance v1, Ll1/b;

    move-wide/from16 v3, p1

    invoke-direct {v1, v3, v4}, Ll1/b;-><init>(J)V

    iget-object v2, v0, Lm0/b1;->s:Lr0/e1;

    invoke-virtual {v2, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lm0/b1;->j()Lc2/u;

    move-result-object v7

    iget-object v1, v0, Lm0/b1;->a:Lm0/i1;

    invoke-virtual {v1, v7}, Lm0/i1;->c(Lc2/u;)Ljava/util/ArrayList;

    move-result-object v11

    sget v2, Lk/n;->a:I

    new-instance v2, Lk/z;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Lk/z;-><init>(I)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lm0/q;

    iget-wide v8, v8, Lm0/q;->a:J

    invoke-virtual {v2, v6, v8, v9}, Lk/z;->e(IJ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-instance v10, Lad/m0;

    const/4 v5, 0x3

    invoke-direct {v10, v5, v2}, Lad/m0;-><init>(ILjava/lang/Object;)V

    const-wide v13, 0x7fffffff7fffffffL

    and-long v5, p3, v13

    const-wide v15, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v2, v5, v15

    const/16 v17, 0x0

    if-nez v2, :cond_2

    move-object/from16 v9, v17

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lm0/b1;->f()Lm0/a0;

    move-result-object v2

    move-object v9, v2

    :goto_2
    new-instance v20, Lm0/u0;

    move-wide/from16 v5, p3

    move/from16 v8, p5

    move-object/from16 v2, v20

    invoke-direct/range {v2 .. v10}, Lm0/u0;-><init>(JJLc2/u;ZLm0/a0;Lad/m0;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_3
    iget-object v6, v2, Lm0/u0;->h:Ljava/util/ArrayList;

    if-ge v4, v3, :cond_17

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lm0/q;

    invoke-virtual {v7}, Lm0/q;->c()Lc2/u;

    move-result-object v8

    if-nez v8, :cond_3

    :goto_4
    move/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 v30, v11

    move-wide/from16 v26, v13

    move-wide/from16 v28, v15

    const/16 p2, 0x0

    move-object v15, v2

    goto/16 :goto_14

    :cond_3
    iget-object v9, v7, Lm0/q;->c:Ll0/h;

    invoke-virtual {v9}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lp2/j0;

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    move-wide/from16 v26, v13

    const-wide/16 v13, 0x0

    iget-object v10, v2, Lm0/u0;->c:Lc2/u;

    invoke-interface {v10, v8, v13, v14}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide v13

    move-object v8, v6

    iget-wide v5, v2, Lm0/u0;->a:J

    invoke-static {v5, v6, v13, v14}, Ll1/b;->d(JJ)J

    move-result-wide v5

    move-wide/from16 p2, v13

    const/4 v10, 0x0

    iget-wide v12, v2, Lm0/u0;->b:J

    and-long v18, v12, v26

    cmp-long v14, v18, v15

    if-nez v14, :cond_5

    move/from16 p2, v10

    move-object v14, v11

    move-wide v10, v15

    goto :goto_5

    :cond_5
    move-object v14, v11

    move-wide/from16 v31, p2

    move/from16 p2, v10

    move-wide/from16 v10, v31

    invoke-static {v12, v13, v10, v11}, Ll1/b;->d(JJ)J

    move-result-wide v10

    :goto_5
    iget-wide v12, v7, Lm0/q;->a:J

    move/from16 p3, v3

    move v7, v4

    iget-wide v3, v9, Lp2/j0;->c:J

    const/16 v18, 0x20

    move-wide/from16 v19, v3

    shr-long v3, v19, v18

    long-to-int v3, v3

    int-to-float v3, v3

    const-wide v21, 0xffffffffL

    move/from16 v23, v3

    and-long v3, v19, v21

    long-to-int v3, v3

    int-to-float v3, v3

    move/from16 v19, v3

    shr-long v3, v5, v18

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    const/16 v18, 0x0

    cmpg-float v4, v4, v18

    if-gez v4, :cond_6

    sget-object v3, Lm0/l;->l:Lm0/l;

    :goto_6
    move-object/from16 p4, v3

    goto :goto_7

    :cond_6
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpl-float v3, v3, v23

    if-lez v3, :cond_7

    sget-object v3, Lm0/l;->n:Lm0/l;

    goto :goto_6

    :cond_7
    sget-object v3, Lm0/l;->m:Lm0/l;

    goto :goto_6

    :goto_7
    and-long v3, v5, v21

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    cmpg-float v4, v4, v18

    if-gez v4, :cond_8

    sget-object v3, Lm0/l;->l:Lm0/l;

    :goto_8
    move-object/from16 v19, v3

    goto :goto_9

    :cond_8
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpl-float v3, v3, v19

    if-lez v3, :cond_9

    sget-object v3, Lm0/l;->n:Lm0/l;

    goto :goto_8

    :cond_9
    sget-object v3, Lm0/l;->m:Lm0/l;

    goto :goto_8

    :goto_9
    iget-boolean v3, v2, Lm0/u0;->d:Z

    iget-object v4, v2, Lm0/u0;->e:Lm0/a0;

    if-eqz v3, :cond_b

    move-wide/from16 v28, v15

    if-eqz v4, :cond_a

    iget-object v15, v4, Lm0/a0;->b:Lm0/z;

    move-object/from16 v23, v15

    :goto_a
    move-object/from16 v18, p4

    move-object/from16 v20, v2

    move-wide/from16 v21, v12

    goto :goto_b

    :cond_a
    move-object/from16 v23, v17

    goto :goto_a

    :goto_b
    invoke-static/range {v18 .. v23}, Lm0/d1;->m(Lm0/l;Lm0/l;Lm0/u0;JLm0/z;)Lm0/l;

    move-result-object v2

    move/from16 v16, v3

    move/from16 p4, v7

    move-object/from16 p5, v8

    move-object/from16 v30, v14

    move-object/from16 v3, v18

    move-object v12, v3

    move-object/from16 v8, v19

    move-object v13, v8

    move-object v7, v2

    move-object v14, v7

    :goto_c
    move-object/from16 v15, v20

    goto :goto_e

    :cond_b
    move-object/from16 v18, p4

    move-object/from16 v20, v2

    move-wide/from16 v21, v12

    move-wide/from16 v28, v15

    if-eqz v4, :cond_c

    iget-object v2, v4, Lm0/a0;->a:Lm0/z;

    move-object/from16 v23, v2

    goto :goto_d

    :cond_c
    move-object/from16 v23, v17

    :goto_d
    invoke-static/range {v18 .. v23}, Lm0/d1;->m(Lm0/l;Lm0/l;Lm0/u0;JLm0/z;)Lm0/l;

    move-result-object v2

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v16, v3

    move/from16 p4, v7

    move-object/from16 p5, v8

    move-object v7, v12

    move-object/from16 v30, v14

    move-object v3, v2

    move-object v8, v3

    move-object v14, v13

    goto :goto_c

    :goto_e
    invoke-static {v12, v13}, Lm0/d1;->y(Lm0/l;Lm0/l;)Lm0/l;

    move-result-object v12

    sget-object v13, Lm0/l;->m:Lm0/l;

    if-eq v12, v13, :cond_d

    if-eq v12, v2, :cond_16

    :cond_d
    iget-object v2, v9, Lp2/j0;->a:Lp2/i0;

    iget-object v2, v2, Lp2/i0;->a:Lp2/g;

    iget-object v2, v2, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v12, v15, Lm0/u0;->f:Lad/m0;

    if-eqz v16, :cond_11

    invoke-static {v5, v6, v9}, Lm0/d1;->s(JLp2/j0;)I

    move-result v5

    if-eqz v4, :cond_10

    iget-object v4, v4, Lm0/a0;->b:Lm0/z;

    if-eqz v4, :cond_10

    move v13, v5

    iget-wide v5, v4, Lm0/z;->c:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Lad/m0;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_e

    move/from16 v2, p2

    goto :goto_f

    :cond_e
    if-lez v5, :cond_f

    goto :goto_f

    :cond_f
    iget v2, v4, Lm0/z;->b:I

    goto :goto_f

    :cond_10
    move v13, v5

    move v2, v13

    :goto_f
    move/from16 v23, v2

    move v5, v13

    goto :goto_12

    :cond_11
    invoke-static {v5, v6, v9}, Lm0/d1;->s(JLp2/j0;)I

    move-result v5

    if-eqz v4, :cond_14

    iget-object v4, v4, Lm0/a0;->a:Lm0/z;

    if-eqz v4, :cond_14

    move v13, v5

    iget-wide v5, v4, Lm0/z;->c:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Lad/m0;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_12

    move/from16 v2, p2

    goto :goto_10

    :cond_12
    if-lez v5, :cond_13

    goto :goto_10

    :cond_13
    iget v2, v4, Lm0/z;->b:I

    :goto_10
    move v5, v2

    goto :goto_11

    :cond_14
    move v13, v5

    move v5, v13

    :goto_11
    move/from16 v23, v13

    :goto_12
    and-long v12, v10, v26

    cmp-long v2, v12, v28

    if-nez v2, :cond_15

    const/16 v24, -0x1

    goto :goto_13

    :cond_15
    invoke-static {v10, v11, v9}, Lm0/d1;->s(JLp2/j0;)I

    move-result v2

    move/from16 v24, v2

    :goto_13
    iget v2, v15, Lm0/u0;->k:I

    add-int/lit8 v2, v2, 0x2

    iput v2, v15, Lm0/u0;->k:I

    new-instance v18, Lm0/x;

    move-object/from16 v25, v9

    move-wide/from16 v19, v21

    move/from16 v21, v2

    move/from16 v22, v5

    invoke-direct/range {v18 .. v25}, Lm0/x;-><init>(JIIIILp2/j0;)V

    move-object/from16 v2, v18

    move-wide/from16 v4, v19

    iget v6, v15, Lm0/u0;->i:I

    invoke-virtual {v15, v6, v3, v8}, Lm0/u0;->a(ILm0/l;Lm0/l;)I

    move-result v3

    iput v3, v15, Lm0/u0;->i:I

    iget v3, v15, Lm0/u0;->j:I

    invoke-virtual {v15, v3, v7, v14}, Lm0/u0;->a(ILm0/l;Lm0/l;)I

    move-result v3

    iput v3, v15, Lm0/u0;->j:I

    iget-object v3, v15, Lm0/u0;->g:Lk/z;

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v3, v6, v4, v5}, Lk/z;->e(IJ)V

    move-object/from16 v8, p5

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_14
    add-int/lit8 v4, p4, 0x1

    move/from16 v3, p3

    move-object v2, v15

    move-wide/from16 v13, v26

    move-wide/from16 v15, v28

    move-object/from16 v11, v30

    goto/16 :goto_3

    :cond_17
    move-object v15, v2

    move-object v8, v6

    const/16 p2, 0x0

    iget v2, v15, Lm0/u0;->k:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1d

    if-eq v4, v3, :cond_1a

    new-instance v18, Lm0/p;

    iget v4, v15, Lm0/u0;->i:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_18

    move/from16 v21, v2

    goto :goto_15

    :cond_18
    move/from16 v21, v4

    :goto_15
    iget v4, v15, Lm0/u0;->j:I

    if-ne v4, v5, :cond_19

    move/from16 v22, v2

    goto :goto_16

    :cond_19
    move/from16 v22, v4

    :goto_16
    iget-boolean v2, v15, Lm0/u0;->d:Z

    iget-object v4, v15, Lm0/u0;->e:Lm0/a0;

    iget-object v5, v15, Lm0/u0;->g:Lk/z;

    move/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v8

    invoke-direct/range {v18 .. v24}, Lm0/p;-><init>(Lk/z;Ljava/util/List;IIZLm0/a0;)V

    move-object/from16 v6, v18

    goto :goto_19

    :cond_1a
    const/4 v5, -0x1

    invoke-static {v8}, Lu8/m;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lm0/x;

    iget v4, v15, Lm0/u0;->i:I

    if-ne v4, v5, :cond_1b

    move v8, v2

    goto :goto_17

    :cond_1b
    move v8, v4

    :goto_17
    iget v4, v15, Lm0/u0;->j:I

    if-ne v4, v5, :cond_1c

    move v9, v2

    goto :goto_18

    :cond_1c
    move v9, v4

    :goto_18
    new-instance v6, Lm0/l1;

    iget-boolean v7, v15, Lm0/u0;->d:Z

    iget-object v10, v15, Lm0/u0;->e:Lm0/a0;

    invoke-direct/range {v6 .. v11}, Lm0/l1;-><init>(ZIILm0/a0;Lm0/x;)V

    goto :goto_19

    :cond_1d
    move-object/from16 v6, v17

    :goto_19
    if-nez v6, :cond_1e

    goto :goto_1a

    :cond_1e
    iget-object v2, v0, Lm0/b1;->t:Lm0/t0;

    invoke-interface {v6, v2}, Lm0/t0;->e(Lm0/t0;)Z

    move-result v2

    if-nez v2, :cond_1f

    :goto_1a
    return p2

    :cond_1f
    move-object/from16 v2, p6

    invoke-virtual {v2, v6}, Lm0/b0;->a(Lm0/t0;)Lm0/a0;

    move-result-object v2

    invoke-virtual {v0}, Lm0/b1;->f()Lm0/a0;

    move-result-object v4

    invoke-static {v2, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v0}, Lm0/b1;->g()Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v4, v1, Lm0/i1;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v7, p2

    :goto_1b
    if-ge v7, v5, :cond_21

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lm0/q;

    invoke-virtual {v8}, Lm0/q;->d()Lp2/g;

    move-result-object v8

    iget-object v8, v8, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_20

    iget-object v4, v0, Lm0/b1;->e:Lt1/a;

    if-eqz v4, :cond_21

    const/16 v5, 0x9

    invoke-interface {v4, v5}, Lt1/a;->a(I)V

    goto :goto_1c

    :cond_20
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_21
    :goto_1c
    invoke-interface {v6, v2}, Lm0/t0;->j(Lm0/a0;)Lk/b0;

    move-result-object v4

    iget-object v1, v1, Lm0/i1;->k:Lr0/e1;

    invoke-virtual {v1, v4}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lm0/b1;->d:Li9/c;

    invoke-interface {v1, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v10, p2

    iput-boolean v10, v0, Lm0/b1;->u:Z

    :cond_22
    iput-object v6, v0, Lm0/b1;->t:Lm0/t0;

    return v3
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lm0/b1;->i:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lm0/b1;->x:Z

    iget-object v1, p0, Lm0/b1;->g:Lg5/s;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lm0/b1;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lm0/b1;->j:Lr0/d0;

    invoke-virtual {p0}, Lr0/d0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1/c;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lg5/s;->N()V

    return-void

    :cond_2
    iget-object p0, v1, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Lh0/j;

    if-eqz p0, :cond_4

    iget-object v0, p0, Lh0/j;->F:Lu9/j1;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    iput-object v1, p0, Lh0/j;->F:Lu9/j1;

    :cond_4
    :goto_0
    return-void
.end method
