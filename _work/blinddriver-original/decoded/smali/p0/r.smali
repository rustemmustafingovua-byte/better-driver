.class public final Lp0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lr0/u0;

.field public final synthetic m:Lo0/a5;

.field public final synthetic n:Lu/s0;

.field public final synthetic o:Lz0/d;


# direct methods
.method public constructor <init>(Lr0/u0;Lo0/a5;Lu/s0;Lz0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/r;->l:Lr0/u0;

    iput-object p2, p0, Lp0/r;->m:Lo0/a5;

    iput-object p3, p0, Lp0/r;->n:Lu/s0;

    iput-object p4, p0, Lp0/r;->o:Lz0/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/2addr p2, v3

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lf1/o;->a:Lf1/o;

    const-string v0, "Container"

    invoke-static {p2, v0}, Lc2/x;->l(Lf1/r;Ljava/lang/Object;)Lf1/r;

    move-result-object p2

    new-instance v4, Lp0/q;

    const-string v8, "getValue()Ljava/lang/Object;"

    const/4 v9, 0x0

    iget-object v5, p0, Lp0/r;->l:Lr0/u0;

    const-class v6, Lr0/u0;

    const-string v7, "value"

    invoke-direct/range {v4 .. v9}, Lj9/t;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lp0/r;->m:Lo0/a5;

    invoke-static {v0}, Lp0/y;->d(Lo0/a5;)Lf1/d;

    move-result-object v0

    sget v1, Lo0/j2;->a:F

    new-instance v1, Lb0/o;

    const/16 v5, 0xb

    iget-object v6, p0, Lp0/r;->n:Lu/s0;

    invoke-direct {v1, v4, v6, v0, v5}, Lb0/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p2, v1}, Lj1/g;->f(Lf1/r;Li9/c;)Lf1/r;

    move-result-object p2

    sget-object v0, Lf1/c;->l:Lf1/j;

    invoke-static {v0, v3}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v0

    iget-wide v4, p1, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {p1}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {p2, p1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object p2

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->b:Le2/f;

    invoke-virtual {p1}, Lr0/q;->e0()V

    iget-boolean v6, p1, Lr0/q;->S:Z

    if-eqz v6, :cond_1

    invoke-virtual {p1, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lr0/q;->o0()V

    :goto_1
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v0, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v4, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->g:Le2/e;

    iget-boolean v4, p1, Lr0/q;->S:Z

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-static {v1, p1, v1, v0}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_3
    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, p2, p1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lp0/r;->o:Lz0/d;

    invoke-virtual {p0, p1, p2}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
