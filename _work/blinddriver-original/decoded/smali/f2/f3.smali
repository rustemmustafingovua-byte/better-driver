.class public final Lf2/f3;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lf2/g3;

.field public final synthetic n:Li9/e;


# direct methods
.method public synthetic constructor <init>(Lf2/g3;Li9/e;I)V
    .locals 0

    iput p3, p0, Lf2/f3;->l:I

    iput-object p1, p0, Lf2/f3;->m:Lf2/g3;

    iput-object p2, p0, Lf2/f3;->n:Li9/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lf2/f3;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr p2, v2

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lf2/f3;->m:Lf2/g3;

    iget-object v0, p2, Lf2/g3;->l:Lf2/y;

    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Set;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    instance-of v4, v3, Lk9/a;

    if-eqz v4, :cond_1

    instance-of v4, v3, Lk9/e;

    if-eqz v4, :cond_2

    :cond_1
    check-cast v3, Ljava/util/Set;

    goto :goto_1

    :cond_2
    move-object v3, v5

    :goto_1
    if-nez v3, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_3

    check-cast v3, Landroid/view/View;

    goto :goto_2

    :cond_3
    move-object v3, v5

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v5

    :goto_3
    instance-of v3, v1, Ljava/util/Set;

    if-eqz v3, :cond_6

    instance-of v3, v1, Lk9/a;

    if-eqz v3, :cond_5

    instance-of v3, v1, Lk9/e;

    if-eqz v3, :cond_6

    :cond_5
    move-object v3, v1

    check-cast v3, Ljava/util/Set;

    goto :goto_4

    :cond_6
    move-object v3, v5

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    invoke-virtual {p1}, Lr0/q;->z()Le1/d;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p1, Lr0/q;->q:Z

    iput-boolean v2, p1, Lr0/q;->C:Z

    iget-object v1, p1, Lr0/q;->c:Lr0/e2;

    invoke-virtual {v1}, Lr0/e2;->b()V

    iget-object v1, p1, Lr0/q;->H:Lr0/e2;

    invoke-virtual {v1}, Lr0/e2;->b()V

    iget-object v1, p1, Lr0/q;->I:Lr0/h2;

    iget-object v2, v1, Lr0/h2;->a:Lr0/e2;

    iget-object v4, v2, Lr0/e2;->u:Ljava/util/HashMap;

    iput-object v4, v1, Lr0/h2;->e:Ljava/util/HashMap;

    iget-object v2, v2, Lr0/e2;->v:Lk/x;

    iput-object v2, v1, Lr0/h2;->f:Lk/x;

    :cond_8
    invoke-virtual {p1, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-nez v1, :cond_9

    if-ne v2, v4, :cond_a

    :cond_9
    new-instance v2, Lf2/e3;

    const/4 v1, 0x0

    invoke-direct {v2, p2, v5, v1}, Lf2/e3;-><init>(Lf2/g3;Ly8/c;I)V

    invoke-virtual {p1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    check-cast v2, Li9/e;

    invoke-static {v2, v0, p1}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {p1, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_b

    if-ne v2, v4, :cond_c

    :cond_b
    new-instance v2, Lf2/e3;

    const/4 v1, 0x1

    invoke-direct {v2, p2, v5, v1}, Lf2/e3;-><init>(Lf2/g3;Ly8/c;I)V

    invoke-virtual {p1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_c
    check-cast v2, Li9/e;

    invoke-static {v2, v0, p1}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le1/h;->a:Lr0/s2;

    invoke-virtual {v0, v3}, Lr0/s2;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v0

    new-instance v1, Lf2/f3;

    iget-object p0, p0, Lf2/f3;->n:Li9/e;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, v2}, Lf2/f3;-><init>(Lf2/g3;Li9/e;I)V

    const p0, -0x10b420f1

    invoke-static {p0, v1, p1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object p0

    const/16 p2, 0x38

    invoke-static {v0, p0, p1, p2}, Lr0/r;->a(Lj6/g0;Li9/e;Lr0/q;I)V

    goto :goto_5

    :cond_d
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_5
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_e

    move v0, v3

    goto :goto_6

    :cond_e
    move v0, v2

    :goto_6
    and-int/2addr p2, v3

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lf2/f3;->m:Lf2/g3;

    iget-object p2, p2, Lf2/g3;->l:Lf2/y;

    iget-object p0, p0, Lf2/f3;->n:Li9/e;

    invoke-static {p2, p0, p1, v2}, Lf2/o0;->a(Lf2/y;Li9/e;Lr0/q;I)V

    goto :goto_7

    :cond_f
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_7
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
