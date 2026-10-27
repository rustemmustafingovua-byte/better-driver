.class public final Le2/w0;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Le2/x0;


# direct methods
.method public synthetic constructor <init>(Le2/x0;I)V
    .locals 0

    iput p2, p0, Le2/w0;->l:I

    iput-object p1, p0, Le2/w0;->m:Le2/x0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Le2/w0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Le2/w0;->m:Le2/x0;

    iget-object v0, p0, Le2/x0;->q:Le2/l0;

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object v1

    iget-object v1, v1, Le2/h1;->B:Le2/h1;

    if-eqz v1, :cond_0

    iget-object v1, v1, Le2/p0;->w:Lc2/o0;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, v0, Le2/l0;->a:Le2/g0;

    invoke-static {v1}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v1

    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->getPlacementScope()Lc2/e1;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Le2/x0;->R:Li9/c;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object v0

    iget-wide v2, p0, Le2/x0;->S:J

    iget p0, p0, Le2/x0;->T:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lc2/e1;->b(Lc2/e1;Lc2/f1;)V

    iget-wide v4, v0, Lc2/f1;->p:J

    invoke-static {v2, v3, v4, v5}, Lb3/j;->c(JJ)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lc2/f1;->o0(JFLi9/c;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object v0

    iget-wide v3, p0, Le2/x0;->S:J

    iget p0, p0, Le2/x0;->T:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lc2/e1;->b(Lc2/e1;Lc2/f1;)V

    iget-wide v5, v0, Lc2/f1;->p:J

    invoke-static {v3, v4, v5, v6}, Lb3/j;->c(JJ)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, p0, v2}, Lc2/f1;->o0(JFLi9/c;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Le2/w0;->m:Le2/x0;

    iget-object v0, p0, Le2/x0;->q:Le2/l0;

    invoke-virtual {v0}, Le2/l0;->a()Le2/h1;

    move-result-object v0

    iget-wide v1, p0, Le2/x0;->M:J

    invoke-interface {v0, v1, v2}, Lc2/q0;->C(J)Lc2/f1;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Le2/w0;->m:Le2/x0;

    iget-object v0, p0, Le2/x0;->q:Le2/l0;

    const/4 v1, 0x0

    iput v1, v0, Le2/l0;->i:I

    iget-object v2, v0, Le2/l0;->a:Le2/g0;

    invoke-virtual {v2}, Le2/g0;->z()Lt0/b;

    move-result-object v2

    iget-object v3, v2, Lt0/b;->l:[Ljava/lang/Object;

    iget v2, v2, Lt0/b;->n:I

    move v4, v1

    :goto_1
    const v5, 0x7fffffff

    if-ge v4, v2, :cond_4

    aget-object v6, v3, v4

    check-cast v6, Le2/g0;

    iget-object v6, v6, Le2/g0;->S:Le2/l0;

    iget-object v6, v6, Le2/l0;->p:Le2/x0;

    iget v7, v6, Le2/x0;->t:I

    iput v7, v6, Le2/x0;->s:I

    iput v5, v6, Le2/x0;->t:I

    iput-boolean v1, v6, Le2/x0;->E:Z

    iget-object v5, v6, Le2/x0;->w:Le2/e0;

    sget-object v7, Le2/e0;->m:Le2/e0;

    if-ne v5, v7, :cond_3

    sget-object v5, Le2/e0;->n:Le2/e0;

    iput-object v5, v6, Le2/x0;->w:Le2/e0;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, v0, Le2/l0;->a:Le2/g0;

    iget-object v0, v0, Le2/l0;->a:Le2/g0;

    invoke-virtual {v2}, Le2/g0;->z()Lt0/b;

    move-result-object v2

    iget-object v3, v2, Lt0/b;->l:[Ljava/lang/Object;

    iget v2, v2, Lt0/b;->n:I

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_5

    aget-object v6, v3, v4

    check-cast v6, Le2/g0;

    iget-object v6, v6, Le2/g0;->S:Le2/l0;

    iget-object v6, v6, Le2/l0;->p:Le2/x0;

    iget-object v6, v6, Le2/x0;->I:Le2/h0;

    iput-boolean v1, v6, Le2/h0;->d:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Le2/x0;->f()Le2/s;

    move-result-object v2

    iget-boolean v2, v2, Le2/p0;->v:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Le2/g0;->n()Ljava/util/List;

    move-result-object v2

    check-cast v2, Lk/f0;

    iget-object v3, v2, Lk/f0;->m:Ljava/lang/Object;

    check-cast v3, Lt0/b;

    iget v3, v3, Lt0/b;->n:I

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_6

    invoke-virtual {v2, v4}, Lk/f0;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le2/g0;

    iget-object v6, v6, Le2/g0;->R:Le2/c1;

    iget-object v6, v6, Le2/c1;->d:Le2/h1;

    const/4 v7, 0x1

    iput-boolean v7, v6, Le2/p0;->v:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Le2/x0;->f()Le2/s;

    move-result-object v2

    invoke-virtual {v2}, Le2/h1;->C0()Lc2/s0;

    move-result-object v2

    invoke-interface {v2}, Lc2/s0;->c()V

    invoke-virtual {p0}, Le2/x0;->f()Le2/s;

    move-result-object p0

    iget-boolean p0, p0, Le2/p0;->v:Z

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Le2/g0;->n()Ljava/util/List;

    move-result-object p0

    check-cast p0, Lk/f0;

    iget-object v2, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast v2, Lt0/b;

    iget v2, v2, Lt0/b;->n:I

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_7

    invoke-virtual {p0, v3}, Lk/f0;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le2/g0;

    iget-object v4, v4, Le2/g0;->R:Le2/c1;

    iget-object v4, v4, Le2/c1;->d:Le2/h1;

    iput-boolean v1, v4, Le2/p0;->v:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    iget-object v2, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    move v3, v1

    :goto_5
    if-ge v3, p0, :cond_b

    aget-object v4, v2, v3

    check-cast v4, Le2/g0;

    iget-object v6, v4, Le2/g0;->S:Le2/l0;

    iget-object v7, v6, Le2/l0;->p:Le2/x0;

    iget v7, v7, Le2/x0;->s:I

    invoke-virtual {v4}, Le2/g0;->w()I

    move-result v8

    if-eq v7, v8, :cond_a

    invoke-virtual {v0}, Le2/g0;->O()V

    invoke-virtual {v0}, Le2/g0;->C()V

    invoke-virtual {v4}, Le2/g0;->w()I

    move-result v7

    if-ne v7, v5, :cond_a

    iget-boolean v7, v6, Le2/l0;->c:Z

    if-nez v7, :cond_8

    invoke-static {v4}, Le2/l;->q(Le2/g0;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, v6, Le2/l0;->q:Le2/t0;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Le2/t0;->t0(Z)V

    :cond_9
    iget-object v4, v6, Le2/l0;->p:Le2/x0;

    invoke-virtual {v4}, Le2/x0;->v0()V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    iget-object v0, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    :goto_6
    if-ge v1, p0, :cond_c

    aget-object v2, v0, v1

    check-cast v2, Le2/g0;

    iget-object v2, v2, Le2/g0;->S:Le2/l0;

    iget-object v2, v2, Le2/l0;->p:Le2/x0;

    iget-object v2, v2, Le2/x0;->I:Le2/h0;

    iget-boolean v3, v2, Le2/h0;->d:Z

    iput-boolean v3, v2, Le2/h0;->e:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
