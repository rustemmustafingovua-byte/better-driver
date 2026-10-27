.class public final Lo0/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/f;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li9/f;Lp0/v;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo0/y;->l:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/y;->m:Li9/f;

    iput-object p2, p0, Lo0/y;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lu/s0;Li9/f;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo0/y;->l:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/y;->n:Ljava/lang/Object;

    iput-object p2, p0, Lo0/y;->m:Li9/f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lo0/y;->l:I

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

    if-eqz p2, :cond_1

    iget-object p2, p0, Lo0/y;->n:Ljava/lang/Object;

    check-cast p2, Lp0/v;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lo0/y;->m:Li9/f;

    invoke-interface {p0, p2, p1, v0}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    and-int/2addr p2, v2

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_6

    sget p2, Lo0/q;->c:F

    sget v0, Lo0/q;->d:F

    sget-object v1, Lf1/o;->a:Lf1/o;

    invoke-static {v1, p2, v0}, Lu/b1;->a(Lf1/r;FF)Lf1/r;

    move-result-object p2

    iget-object v0, p0, Lo0/y;->n:Ljava/lang/Object;

    check-cast v0, Lu/s0;

    invoke-static {p2, v0}, Lu/b;->o(Lf1/r;Lu/s0;)Lf1/r;

    move-result-object p2

    sget-object v0, Lu/h;->d:Lu/d;

    sget-object v1, Lf1/c;->v:Lf1/i;

    const/16 v3, 0x36

    invoke-static {v0, v1, p1, v3}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v0

    iget-wide v3, p1, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {p1}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    invoke-static {p2, p1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object p2

    sget-object v4, Le2/h;->b:Le2/g;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Le2/g;->b:Le2/f;

    invoke-virtual {p1}, Lr0/q;->e0()V

    iget-boolean v5, p1, Lr0/q;->S:Z

    if-eqz v5, :cond_3

    invoke-virtual {p1, v4}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_3
    sget-object v4, Le2/g;->f:Le2/e;

    invoke-static {v4, v0, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v3, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->g:Le2/e;

    iget-boolean v3, p1, Lr0/q;->S:Z

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    invoke-static {v1, p1, v1, v0}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_5
    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, p2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 p2, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lo0/y;->m:Li9/f;

    sget-object v0, Lu/z0;->a:Lu/z0;

    invoke-interface {p0, v0, p1, p2}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
