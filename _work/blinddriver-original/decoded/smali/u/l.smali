.class public abstract Lu/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk/m0;

.field public static final b:Lk/m0;

.field public static final c:Lu/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lu/l;->c(Z)Lk/m0;

    move-result-object v0

    sput-object v0, Lu/l;->a:Lk/m0;

    const/4 v0, 0x0

    invoke-static {v0}, Lu/l;->c(Z)Lk/m0;

    move-result-object v0

    sput-object v0, Lu/l;->b:Lk/m0;

    sget-object v0, Lu/k;->b:Lu/k;

    sput-object v0, Lu/l;->c:Lu/k;

    return-void
.end method

.method public static final a(Lf1/r;Lr0/q;I)V
    .locals 6

    const v0, -0xc96ce69

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p2, 0x6

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    if-eq v2, v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    and-int/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p1, Lr0/q;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-static {p0, p1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {p1}, Lr0/q;->m()Lr0/j1;

    move-result-object v2

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

    sget-object v5, Lu/l;->c:Lu/k;

    invoke-static {v4, v5, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {p1, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v1, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Le2/g;->g:Le2/e;

    invoke-static {p1, v0, v1}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    invoke-virtual {p1, v3}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Lb0/d;

    invoke-direct {v0, p0, p2}, Lb0/d;-><init>(Lf1/r;I)V

    iput-object v0, p1, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method

.method public static final b(Lc2/e1;Lc2/f1;Lc2/q0;Lb3/m;IILf1/j;)V
    .locals 7

    invoke-interface {p2}, Lc2/q0;->G()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lu/j;

    if-eqz v0, :cond_0

    check-cast p2, Lu/j;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, Lu/j;->z:Lf1/j;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v0, p6

    :goto_2
    iget p2, p1, Lc2/f1;->l:I

    iget p6, p1, Lc2/f1;->m:I

    int-to-long v1, p2

    const/16 p2, 0x20

    shl-long/2addr v1, p2

    int-to-long v3, p6

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    int-to-long v3, p4

    shl-long/2addr v3, p2

    int-to-long p4, p5

    and-long/2addr p4, v5

    or-long/2addr v3, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lf1/j;->a(JJLb3/m;)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lc2/e1;->k(Lc2/e1;Lc2/f1;J)V

    return-void
.end method

.method public static final c(Z)Lk/m0;
    .locals 3

    new-instance v0, Lk/m0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lk/m0;-><init>(I)V

    sget-object v1, Lf1/c;->l:Lf1/j;

    new-instance v2, Lu/m;

    invoke-direct {v2, v1, p0}, Lu/m;-><init>(Lf1/j;Z)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lf1/c;->m:Lf1/j;

    new-instance v2, Lu/m;

    invoke-direct {v2, v1, p0}, Lu/m;-><init>(Lf1/j;Z)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lf1/c;->n:Lf1/j;

    new-instance v2, Lu/m;

    invoke-direct {v2, v1, p0}, Lu/m;-><init>(Lf1/j;Z)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lf1/c;->o:Lf1/j;

    new-instance v2, Lu/m;

    invoke-direct {v2, v1, p0}, Lu/m;-><init>(Lf1/j;Z)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lf1/c;->p:Lf1/j;

    new-instance v2, Lu/m;

    invoke-direct {v2, v1, p0}, Lu/m;-><init>(Lf1/j;Z)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lf1/c;->q:Lf1/j;

    new-instance v2, Lu/m;

    invoke-direct {v2, v1, p0}, Lu/m;-><init>(Lf1/j;Z)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lf1/c;->r:Lf1/j;

    new-instance v2, Lu/m;

    invoke-direct {v2, v1, p0}, Lu/m;-><init>(Lf1/j;Z)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lf1/c;->s:Lf1/j;

    new-instance v2, Lu/m;

    invoke-direct {v2, v1, p0}, Lu/m;-><init>(Lf1/j;Z)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lf1/c;->t:Lf1/j;

    new-instance v2, Lu/m;

    invoke-direct {v2, v1, p0}, Lu/m;-><init>(Lf1/j;Z)V

    invoke-virtual {v0, v1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final d(Lf1/j;Z)Lc2/r0;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lu/l;->a:Lk/m0;

    goto :goto_0

    :cond_0
    sget-object v0, Lu/l;->b:Lk/m0;

    :goto_0
    invoke-virtual {v0, p0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc2/r0;

    if-nez v0, :cond_1

    new-instance v0, Lu/m;

    invoke-direct {v0, p0, p1}, Lu/m;-><init>(Lf1/j;Z)V

    :cond_1
    return-object v0
.end method
