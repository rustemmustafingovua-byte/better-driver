.class public final Lc2/z;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lc2/z;->l:I

    iput-object p2, p0, Lc2/z;->m:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lf2/a;II)V
    .locals 0

    .line 2
    iput p3, p0, Lc2/z;->l:I

    iput-object p1, p0, Lc2/z;->m:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lc2/z;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lm2/p;

    iget-object p0, p0, Lc2/z;->m:Ljava/lang/Object;

    check-cast p0, Lh1/d;

    invoke-virtual {p0, p1, p2}, Lh1/d;->l(ILm2/p;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p0, p0, Lc2/z;->m:Ljava/lang/Object;

    check-cast p0, Lf3/x;

    const/4 p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lf3/x;->a(Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p0, p0, Lc2/z;->m:Ljava/lang/Object;

    check-cast p0, Lf3/t;

    const/4 p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lf3/t;->a(Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    and-int/2addr p2, v2

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-ne p2, v0, :cond_1

    sget-object p2, Lf3/b;->m:Lf3/b;

    invoke-virtual {p1, p2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast p2, Li9/c;

    sget-object v0, Lf1/o;->a:Lf1/o;

    invoke-static {v0, v3, p2}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object p2

    iget-object p0, p0, Lc2/z;->m:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li9/e;

    invoke-static {p2, p0, p1, v3}, Lg5/f;->d(Lf1/r;Li9/e;Lr0/q;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p0, p0, Lc2/z;->m:Ljava/lang/Object;

    check-cast p0, Lf2/k1;

    const/4 p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lf2/k1;->a(Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_4
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    and-int/2addr p2, v3

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lc2/z;->m:Ljava/lang/Object;

    check-cast p0, Lf2/a;

    invoke-virtual {p0, p1, v2}, Lf2/a;->a(Lr0/q;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_5
    check-cast p1, Lf1/r;

    check-cast p2, Lf1/p;

    iget-object p0, p0, Lc2/z;->m:Ljava/lang/Object;

    check-cast p0, Lr0/q;

    instance-of v0, p2, Lf1/m;

    if-eqz v0, :cond_5

    check-cast p2, Lf1/m;

    iget-object p2, p2, Lf1/m;->a:Li9/f;

    const/4 v0, 0x3

    invoke-static {v0, p2}, Lj9/b0;->b(ILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lf1/o;->a:Lf1/o;

    invoke-interface {p2, v1, p0, v0}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf1/r;

    invoke-static {p2, p0}, Lf1/a;->b(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object p2

    :cond_5
    invoke-interface {p1, p2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_6

    move v0, v3

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    and-int/2addr p2, v3

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p0, p0, Lc2/z;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p2

    move v0, v2

    :goto_5
    if-ge v0, p2, :cond_9

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li9/e;

    iget-wide v4, p1, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->c:Le2/f;

    invoke-virtual {p1}, Lr0/q;->e0()V

    iget-boolean v6, p1, Lr0/q;->S:Z

    if-eqz v6, :cond_7

    invoke-virtual {p1, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Le2/g;->g:Le2/e;

    invoke-static {p1, v4, v5}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, p1, v4}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lr0/q;->q(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lr0/q;->W()V

    :cond_9
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
