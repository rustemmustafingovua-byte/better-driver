.class public final Lm0/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/c2;


# instance fields
.field public final synthetic a:Lm0/v1;


# direct methods
.method public constructor <init>(Lm0/v1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/r1;->a:Lm0/v1;

    return-void
.end method


# virtual methods
.method public final a(JLm0/b0;)V
    .locals 0

    const/4 p1, 0x1

    iget-object p0, p0, Lm0/r1;->a:Lm0/v1;

    invoke-virtual {p0, p1}, Lm0/v1;->l(Z)J

    move-result-wide p1

    invoke-static {p1, p2}, Lm0/s0;->a(J)J

    move-result-wide p1

    iget-object p3, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lb0/r1;->d()Lb0/z2;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1, p2}, Lb0/z2;->e(J)J

    move-result-wide p1

    iput-wide p1, p0, Lm0/v1;->o:J

    new-instance p3, Ll1/b;

    invoke-direct {p3, p1, p2}, Ll1/b;-><init>(J)V

    iget-object p1, p0, Lm0/v1;->s:Lr0/e1;

    invoke-virtual {p1, p3}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lm0/v1;->q:J

    sget-object p1, Lb0/d1;->l:Lb0/d1;

    iget-object p2, p0, Lm0/v1;->r:Lr0/e1;

    invoke-virtual {p2, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lm0/v1;->t(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object p0, p0, Lm0/r1;->a:Lm0/v1;

    iget-object v0, p0, Lm0/v1;->r:Lr0/e1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lm0/v1;->s:Lr0/e1;

    invoke-virtual {p0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object p0, p0, Lm0/r1;->a:Lm0/v1;

    iget-object v0, p0, Lm0/v1;->r:Lr0/e1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lm0/v1;->s:Lr0/e1;

    invoke-virtual {p0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(J)V
    .locals 4

    iget-object p0, p0, Lm0/r1;->a:Lm0/v1;

    iget-wide v0, p0, Lm0/v1;->q:J

    invoke-static {v0, v1, p1, p2}, Ll1/b;->e(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lm0/v1;->q:J

    iget-object p1, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lb0/r1;->d()Lb0/z2;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-wide v0, p0, Lm0/v1;->o:J

    iget-wide v2, p0, Lm0/v1;->q:J

    invoke-static {v0, v1, v2, v3}, Ll1/b;->e(JJ)J

    move-result-wide v0

    new-instance p2, Ll1/b;

    invoke-direct {p2, v0, v1}, Ll1/b;-><init>(J)V

    iget-object v0, p0, Lm0/v1;->s:Lr0/e1;

    invoke-virtual {v0, p2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lm0/v1;->b:Lu2/q;

    invoke-virtual {p0}, Lm0/v1;->i()Ll1/b;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v0, v0, Ll1/b;->a:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lb0/z2;->b(ZJ)I

    move-result p1

    invoke-interface {p2, p1}, Lu2/q;->j(I)I

    move-result p1

    invoke-static {p1, p1}, Lp2/d0;->b(II)J

    move-result-wide p1

    invoke-virtual {p0}, Lm0/v1;->n()Lu2/x;

    move-result-object v0

    iget-wide v0, v0, Lu2/x;->b:J

    invoke-static {p1, p2, v0, v1}, Lp2/l0;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lb0/r1;->q:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lm0/v1;->k:Lt1/a;

    if-eqz v0, :cond_2

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lt1/a;->a(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lm0/v1;->c:Li9/c;

    invoke-virtual {p0}, Lm0/v1;->n()Lu2/x;

    move-result-object v1

    iget-object v1, v1, Lu2/x;->a:Lp2/g;

    invoke-static {v1, p1, p2}, Lm0/v1;->e(Lp2/g;J)Lu2/x;

    move-result-object v1

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lp2/l0;

    invoke-direct {v0, p1, p2}, Lp2/l0;-><init>(J)V

    iput-object v0, p0, Lm0/v1;->w:Lp2/l0;

    :cond_3
    :goto_1
    return-void
.end method

.method public final onCancel()V
    .locals 0

    return-void
.end method
