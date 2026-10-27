.class public final Lb0/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/h;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lb0/s0;->l:I

    iput-object p1, p0, Lb0/s0;->m:Ljava/lang/Object;

    iput-object p2, p0, Lb0/s0;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb0/s0;->o:Ljava/lang/Object;

    iput-object p4, p0, Lb0/s0;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lb0/s0;->l:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Ly9/i;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ly9/i;

    iget v1, v0, Ly9/i;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ly9/i;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Ly9/i;

    invoke-direct {v0, p0, p2}, Ly9/i;-><init>(Lb0/s0;Ly8/c;)V

    :goto_0
    iget-object p2, v0, Ly9/i;->n:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Ly9/i;->p:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ly9/i;->m:Ljava/lang/Object;

    iget-object p0, v0, Ly9/i;->l:Lb0/s0;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Lb0/s0;->m:Ljava/lang/Object;

    check-cast p2, Lj9/y;

    iget-object p2, p2, Lj9/y;->m:Ljava/lang/Object;

    check-cast p2, Lu9/v0;

    if-eqz p2, :cond_3

    new-instance v2, Ly9/k;

    const-string v4, "Child of the scoped flow was cancelled"

    invoke-direct {v2, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    iput-object p0, v0, Ly9/i;->l:Lb0/s0;

    iput-object p1, v0, Ly9/i;->m:Ljava/lang/Object;

    iput v3, v0, Ly9/i;->p:I

    invoke-interface {p2, v0}, Lu9/v0;->e(La9/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p2, p0, Lb0/s0;->m:Ljava/lang/Object;

    check-cast p2, Lj9/y;

    iget-object v0, p0, Lb0/s0;->n:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v1, Lu9/u;->o:Lu9/u;

    new-instance v2, Ly9/h;

    iget-object v4, p0, Lb0/s0;->o:Ljava/lang/Object;

    check-cast v4, Ly9/j;

    iget-object p0, p0, Lb0/s0;->p:Ljava/lang/Object;

    check-cast p0, Lx9/h;

    const/4 v5, 0x0

    invoke-direct {v2, v4, p0, p1, v5}, Ly9/h;-><init>(Ly9/j;Lx9/h;Ljava/lang/Object;Ly8/c;)V

    invoke-static {v0, v5, v1, v2, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object p0

    iput-object p0, p2, Lj9/y;->m:Ljava/lang/Object;

    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_2
    return-object v1

    :pswitch_0
    check-cast p1, Ls/h;

    iget-object p2, p0, Lb0/s0;->o:Ljava/lang/Object;

    check-cast p2, La6/k;

    iget-object v0, p0, Lb0/s0;->n:Ljava/lang/Object;

    check-cast v0, La6/k;

    iget-object v1, p0, Lb0/s0;->m:Ljava/lang/Object;

    check-cast v1, La6/k;

    instance-of v2, p1, Ls/k;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget p1, v1, La6/k;->m:I

    add-int/2addr p1, v3

    iput p1, v1, La6/k;->m:I

    goto :goto_3

    :cond_4
    instance-of v2, p1, Ls/l;

    if-eqz v2, :cond_5

    iget p1, v1, La6/k;->m:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v1, La6/k;->m:I

    goto :goto_3

    :cond_5
    instance-of v2, p1, Ls/j;

    if-eqz v2, :cond_6

    iget p1, v1, La6/k;->m:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v1, La6/k;->m:I

    goto :goto_3

    :cond_6
    instance-of v2, p1, Ls/f;

    if-eqz v2, :cond_7

    iget p1, v0, La6/k;->m:I

    add-int/2addr p1, v3

    iput p1, v0, La6/k;->m:I

    goto :goto_3

    :cond_7
    instance-of v2, p1, Ls/g;

    if-eqz v2, :cond_8

    iget p1, v0, La6/k;->m:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, La6/k;->m:I

    goto :goto_3

    :cond_8
    instance-of v2, p1, Ls/d;

    if-eqz v2, :cond_9

    iget p1, p2, La6/k;->m:I

    add-int/2addr p1, v3

    iput p1, p2, La6/k;->m:I

    goto :goto_3

    :cond_9
    instance-of p1, p1, Ls/e;

    if-eqz p1, :cond_a

    iget p1, p2, La6/k;->m:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, La6/k;->m:I

    :cond_a
    :goto_3
    iget p1, v1, La6/k;->m:I

    const/4 v1, 0x0

    if-lez p1, :cond_b

    move p1, v3

    goto :goto_4

    :cond_b
    move p1, v1

    :goto_4
    iget v0, v0, La6/k;->m:I

    if-lez v0, :cond_c

    move v0, v3

    goto :goto_5

    :cond_c
    move v0, v1

    :goto_5
    iget p2, p2, La6/k;->m:I

    if-lez p2, :cond_d

    move p2, v3

    goto :goto_6

    :cond_d
    move p2, v1

    :goto_6
    iget-object p0, p0, Lb0/s0;->p:Ljava/lang/Object;

    check-cast p0, Lp/i0;

    iget-boolean v2, p0, Lp/i0;->A:Z

    if-eq v2, p1, :cond_e

    iput-boolean p1, p0, Lp/i0;->A:Z

    move v1, v3

    :cond_e
    iget-boolean p1, p0, Lp/i0;->B:Z

    if-eq p1, v0, :cond_f

    iput-boolean v0, p0, Lp/i0;->B:Z

    move v1, v3

    :cond_f
    iget-boolean p1, p0, Lp/i0;->C:Z

    if-eq p1, p2, :cond_10

    iput-boolean p2, p0, Lp/i0;->C:Z

    goto :goto_7

    :cond_10
    move v3, v1

    :goto_7
    if-eqz v3, :cond_11

    invoke-static {p0}, Le2/l;->k(Le2/n;)V

    :cond_11
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lb0/s0;->o:Ljava/lang/Object;

    check-cast p2, Lm0/v1;

    iget-object v0, p0, Lb0/s0;->m:Ljava/lang/Object;

    check-cast v0, Lb0/r1;

    if-eqz p1, :cond_12

    invoke-virtual {v0}, Lb0/r1;->b()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lb0/s0;->n:Ljava/lang/Object;

    check-cast p1, Lu2/y;

    invoke-virtual {p2}, Lm0/v1;->n()Lu2/x;

    move-result-object v1

    iget-object p0, p0, Lb0/s0;->p:Ljava/lang/Object;

    check-cast p0, Lu2/k;

    iget-object p2, p2, Lm0/v1;->b:Lu2/q;

    invoke-static {p1, v0, v1, p0, p2}, Lb0/n1;->z(Lu2/y;Lb0/r1;Lu2/x;Lu2/k;Lu2/q;)V

    goto :goto_8

    :cond_12
    invoke-static {v0}, Lb0/n1;->q(Lb0/r1;)V

    :goto_8
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
