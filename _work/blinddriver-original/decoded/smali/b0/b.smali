.class public final synthetic Lb0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:J

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLf1/r;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb0/b;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lb0/b;->m:J

    iput-object p3, p0, Lb0/b;->n:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(JLi9/e;I)V
    .locals 0

    .line 2
    const/4 p4, 0x1

    iput p4, p0, Lb0/b;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lb0/b;->m:J

    iput-object p3, p0, Lb0/b;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lb0/b;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb0/b;->n:Ljava/lang/Object;

    check-cast v0, Li9/e;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-wide v1, p0, Lb0/b;->m:J

    invoke-static {v1, v2, v0, p1, p2}, Lp0/y;->c(JLi9/e;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lb0/b;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lf1/r;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v0, v2, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    and-int/2addr p2, v7

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_3

    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    iget-wide v4, p0, Lb0/b;->m:J

    cmp-long p0, v4, v2

    if-eqz p0, :cond_2

    const p0, -0x4a262578

    invoke-virtual {p1, p0}, Lr0/q;->b0(I)V

    invoke-static {v4, v5}, Lb3/h;->b(J)F

    move-result v2

    invoke-static {v4, v5}, Lb3/h;->a(J)F

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lu/b1;->k(Lf1/r;FFFFI)Lf1/r;

    move-result-object p0

    sget-object p2, Lf1/c;->m:Lf1/j;

    invoke-static {p2, v8}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object p2

    iget-wide v0, p1, Lr0/q;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {p1}, Lr0/q;->m()Lr0/j1;

    move-result-object v1

    invoke-static {p0, p1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object p0

    sget-object v2, Le2/h;->b:Le2/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Le2/g;->b:Le2/f;

    invoke-virtual {p1}, Lr0/q;->e0()V

    iget-boolean v3, p1, Lr0/q;->S:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_1
    sget-object v2, Le2/g;->f:Le2/e;

    invoke-static {v2, p2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object p2, Le2/g;->e:Le2/e;

    invoke-static {p2, v1, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Le2/g;->g:Le2/e;

    invoke-static {p1, p2, v0}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object p2, Le2/g;->h:Le2/d;

    invoke-static {p1, p2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object p2, Le2/g;->d:Le2/e;

    invoke-static {p2, p0, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 p0, 0x0

    invoke-static {p0, p1, v8, v7}, Lb0/g;->b(Lf1/r;Lr0/q;II)V

    invoke-virtual {p1, v7}, Lr0/q;->q(Z)V

    invoke-virtual {p1, v8}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_2
    const p0, -0x4a2083ba

    invoke-virtual {p1, p0}, Lr0/q;->b0(I)V

    invoke-static {v1, p1, v8, v8}, Lb0/g;->b(Lf1/r;Lr0/q;II)V

    invoke-virtual {p1, v8}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
