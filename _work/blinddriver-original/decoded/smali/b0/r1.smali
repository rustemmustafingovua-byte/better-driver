.class public final Lb0/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Lr0/e1;

.field public final B:Lr0/e1;

.field public a:Lb0/b2;

.field public final b:Lr0/n1;

.field public final c:Lf2/k2;

.field public final d:Lg5/e;

.field public e:Lu2/a0;

.field public final f:Lr0/e1;

.field public final g:Lr0/e1;

.field public h:Lc2/u;

.field public final i:Lr0/e1;

.field public j:Lp2/g;

.field public final k:Lr0/e1;

.field public final l:Lr0/e1;

.field public final m:Lr0/e1;

.field public final n:Lr0/e1;

.field public final o:Lr0/e1;

.field public p:Z

.field public final q:Lr0/e1;

.field public final r:Lb0/o1;

.field public final s:Lr0/e1;

.field public final t:Lr0/e1;

.field public u:Li9/c;

.field public final v:Lb0/h0;

.field public final w:Lb0/h0;

.field public final x:Lb0/h0;

.field public final y:Lf6/v;

.field public z:J


# direct methods
.method public constructor <init>(Lb0/b2;Lr0/n1;Lf2/k2;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/r1;->a:Lb0/b2;

    iput-object p2, p0, Lb0/r1;->b:Lr0/n1;

    iput-object p3, p0, Lb0/r1;->c:Lf2/k2;

    new-instance p1, Lg5/e;

    const/16 p2, 0xd

    invoke-direct {p1, p2}, Lg5/e;-><init>(I)V

    new-instance p2, Lu2/x;

    sget-object v0, Lp2/h;->a:Lp2/g;

    sget-wide v1, Lp2/l0;->b:J

    const/4 v3, 0x0

    invoke-direct {p2, v0, v1, v2, v3}, Lu2/x;-><init>(Lp2/g;JLp2/l0;)V

    iput-object p2, p1, Lg5/e;->m:Ljava/lang/Object;

    new-instance v4, Lu2/h;

    iget-wide v5, p2, Lu2/x;->b:J

    invoke-direct {v4, v0, v5, v6}, Lu2/h;-><init>(Lp2/g;J)V

    iput-object v4, p1, Lg5/e;->n:Ljava/lang/Object;

    iput-object p1, p0, Lb0/r1;->d:Lg5/e;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p2

    iput-object p2, p0, Lb0/r1;->f:Lr0/e1;

    const/4 p2, 0x0

    int-to-float p2, p2

    new-instance v0, Lb3/f;

    invoke-direct {v0, p2}, Lb3/f;-><init>(F)V

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p2

    iput-object p2, p0, Lb0/r1;->g:Lr0/e1;

    invoke-static {v3}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p2

    iput-object p2, p0, Lb0/r1;->i:Lr0/e1;

    sget-object p2, Lb0/e1;->l:Lb0/e1;

    invoke-static {p2}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p2

    iput-object p2, p0, Lb0/r1;->k:Lr0/e1;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p2

    iput-object p2, p0, Lb0/r1;->l:Lr0/e1;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p2

    iput-object p2, p0, Lb0/r1;->m:Lr0/e1;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p2

    iput-object p2, p0, Lb0/r1;->n:Lr0/e1;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p2

    iput-object p2, p0, Lb0/r1;->o:Lr0/e1;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lb0/r1;->p:Z

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p2

    iput-object p2, p0, Lb0/r1;->q:Lr0/e1;

    new-instance p2, Lb0/o1;

    invoke-direct {p2, p3}, Lb0/o1;-><init>(Lf2/k2;)V

    iput-object p2, p0, Lb0/r1;->r:Lb0/o1;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p2

    iput-object p2, p0, Lb0/r1;->s:Lr0/e1;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lb0/r1;->t:Lr0/e1;

    new-instance p1, Lad/b2;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lad/b2;-><init>(I)V

    iput-object p1, p0, Lb0/r1;->u:Li9/c;

    new-instance p1, Lb0/h0;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lb0/h0;-><init>(Lb0/r1;I)V

    iput-object p1, p0, Lb0/r1;->v:Lb0/h0;

    new-instance p1, Lb0/h0;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lb0/h0;-><init>(Lb0/r1;I)V

    iput-object p1, p0, Lb0/r1;->w:Lb0/h0;

    new-instance p1, Lb0/h0;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lb0/h0;-><init>(Lb0/r1;I)V

    iput-object p1, p0, Lb0/r1;->x:Lb0/h0;

    invoke-static {}, Lm1/v;->g()Lf6/v;

    move-result-object p1

    iput-object p1, p0, Lb0/r1;->y:Lf6/v;

    sget-wide p1, Lm1/p;->g:J

    iput-wide p1, p0, Lb0/r1;->z:J

    new-instance p1, Lp2/l0;

    invoke-direct {p1, v1, v2}, Lp2/l0;-><init>(J)V

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lb0/r1;->A:Lr0/e1;

    new-instance p1, Lp2/l0;

    invoke-direct {p1, v1, v2}, Lp2/l0;-><init>(J)V

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lb0/r1;->B:Lr0/e1;

    return-void
.end method


# virtual methods
.method public final a()Lb0/e1;
    .locals 0

    iget-object p0, p0, Lb0/r1;->k:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb0/e1;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lb0/r1;->f:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final c()Lc2/u;
    .locals 1

    iget-object p0, p0, Lb0/r1;->h:Lc2/u;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc2/u;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Lb0/z2;
    .locals 0

    iget-object p0, p0, Lb0/r1;->i:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb0/z2;

    return-object p0
.end method

.method public final e(J)V
    .locals 1

    new-instance v0, Lp2/l0;

    invoke-direct {v0, p1, p2}, Lp2/l0;-><init>(J)V

    iget-object p0, p0, Lb0/r1;->B:Lr0/e1;

    invoke-virtual {p0, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(J)V
    .locals 1

    new-instance v0, Lp2/l0;

    invoke-direct {v0, p1, p2}, Lp2/l0;-><init>(J)V

    iget-object p0, p0, Lb0/r1;->A:Lr0/e1;

    invoke-virtual {p0, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method
