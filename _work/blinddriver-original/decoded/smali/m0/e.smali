.class public final synthetic Lm0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:J

.field public final synthetic m:Z

.field public final synthetic n:Lf1/r;

.field public final synthetic o:Lm0/r;


# direct methods
.method public synthetic constructor <init>(JZLf1/r;Lm0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lm0/e;->l:J

    iput-boolean p3, p0, Lm0/e;->m:Z

    iput-object p4, p0, Lm0/e;->n:Lf1/r;

    iput-object p5, p0, Lm0/e;->o:Lm0/r;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

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

    if-eqz p2, :cond_8

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    iget-wide v4, p0, Lm0/e;->l:J

    cmp-long p2, v4, v0

    iget-boolean v0, p0, Lm0/e;->m:Z

    iget-object v6, p0, Lm0/e;->n:Lf1/r;

    iget-object p0, p0, Lm0/e;->o:Lm0/r;

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-eqz p2, :cond_5

    const p2, 0x34c4c6

    invoke-virtual {p1, p2}, Lr0/q;->b0(I)V

    if-eqz v0, :cond_1

    sget-object p2, Lu/b;->b:Lu/n;

    goto :goto_1

    :cond_1
    sget-object p2, Lu/b;->a:Lu/n;

    :goto_1
    invoke-static {v4, v5}, Lb3/h;->b(J)F

    move-result v7

    invoke-static {v4, v5}, Lb3/h;->a(J)F

    move-result v8

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lu/b1;->k(Lf1/r;FFFFI)Lf1/r;

    move-result-object v4

    sget-object v5, Lf1/c;->u:Lf1/i;

    invoke-static {p2, v5, p1, v3}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object p2

    iget-wide v5, p1, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {p1}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v4, p1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    sget-object v7, Le2/h;->b:Le2/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Le2/g;->b:Le2/f;

    invoke-virtual {p1}, Lr0/q;->e0()V

    iget-boolean v8, p1, Lr0/q;->S:Z

    if-eqz v8, :cond_2

    invoke-virtual {p1, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_2
    sget-object v7, Le2/g;->f:Le2/e;

    invoke-static {v7, p2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object p2, Le2/g;->e:Le2/e;

    invoke-static {p2, v6, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v5, Le2/g;->g:Le2/e;

    invoke-static {p1, p2, v5}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object p2, Le2/g;->h:Le2/d;

    invoke-static {p1, p2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object p2, Le2/g;->d:Le2/e;

    invoke-static {p2, v4, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {p1, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez p2, :cond_3

    if-ne v4, v1, :cond_4

    :cond_3
    new-instance v4, Lm0/f;

    const/4 p2, 0x0

    invoke-direct {v4, p0, p2}, Lm0/f;-><init>(Lm0/r;I)V

    invoke-virtual {p1, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v4, Li9/a;

    const/4 p0, 0x6

    sget-object p2, Lf1/o;->a:Lf1/o;

    invoke-static {p2, v4, v0, p1, p0}, Lm0/d1;->e(Lf1/r;Li9/a;ZLr0/q;I)V

    invoke-virtual {p1, v2}, Lr0/q;->q(Z)V

    invoke-virtual {p1, v3}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_5
    const p2, 0x42f938

    invoke-virtual {p1, p2}, Lr0/q;->b0(I)V

    invoke-virtual {p1, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez p2, :cond_6

    if-ne v2, v1, :cond_7

    :cond_6
    new-instance v2, Lm0/f;

    const/4 p2, 0x1

    invoke-direct {v2, p0, p2}, Lm0/f;-><init>(Lm0/r;I)V

    invoke-virtual {p1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v2, Li9/a;

    invoke-static {v6, v2, v0, p1, v3}, Lm0/d1;->e(Lf1/r;Li9/a;ZLr0/q;I)V

    invoke-virtual {p1, v3}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
