.class public Lo6/g;
.super Lo6/a;
.source "SourceFile"


# instance fields
.field public final u:Lr5/s0;

.field public final v:Z

.field public final w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb6/l;Lo6/p;Ljava/lang/String;ZLb6/l;Lr5/s0;Z)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lo6/a;-><init>(Lb6/l;Lo6/p;Ljava/lang/String;ZLb6/l;I)V

    .line 2
    iget-object p0, v0, Lo6/a;->p:Ljava/lang/String;

    .line 3
    const-string p1, "missing type id property \'"

    .line 4
    const-string p2, "\'"

    .line 5
    invoke-static {p1, p0, p2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    iput-object p0, v0, Lo6/g;->w:Ljava/lang/String;

    .line 7
    iput-object p6, v0, Lo6/g;->u:Lr5/s0;

    .line 8
    iput-boolean p7, v0, Lo6/g;->v:Z

    return-void
.end method

.method public constructor <init>(Lo6/g;Lb6/f;)V
    .locals 4

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lo6/a;-><init>(Lo6/a;Lb6/f;I)V

    .line 10
    const-string v0, "missing type id property \'"

    if-nez p2, :cond_0

    iget-object p2, p0, Lo6/a;->p:Ljava/lang/String;

    const-string v1, "\'"

    .line 11
    invoke-static {v0, p2, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lo6/a;->p:Ljava/lang/String;

    .line 13
    invoke-interface {p2}, Lu6/s;->getName()Ljava/lang/String;

    move-result-object p2

    .line 14
    const-string v2, "\' (for POJO property \'"

    const-string v3, "\')"

    .line 15
    invoke-static {v0, v1, v2, p2, v3}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    :goto_0
    iput-object p2, p0, Lo6/g;->w:Ljava/lang/String;

    .line 17
    iget-object p2, p1, Lo6/g;->u:Lr5/s0;

    iput-object p2, p0, Lo6/g;->u:Lr5/s0;

    .line 18
    iget-boolean p1, p1, Lo6/g;->v:Z

    iput-boolean p1, p0, Lo6/g;->v:Z

    return-void
.end method


# virtual methods
.method public final b(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ls5/n;->w:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lo6/a;->i(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lo6/g;->d(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Ls5/k;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls5/k;->l0()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lo6/a;->j(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->u:Ls5/n;

    iget-object v2, p0, Lo6/g;->w:Ljava/lang/String;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Ls5/n;->y:Ls5/n;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, p1, p2, v3, v2}, Lo6/g;->n(Ls5/k;Lb6/i;Lu6/z;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    sget-object v1, Lb6/x;->L:Lb6/x;

    iget-object v4, p2, Lb6/i;->q:Lb6/h;

    invoke-virtual {v4, v1}, Ld6/m;->m(Lb6/x;)Z

    move-result v1

    :goto_1
    sget-object v4, Ls5/n;->y:Ls5/n;

    if-ne v0, v4, :cond_6

    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    iget-object v4, p0, Lo6/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {p1}, Ls5/k;->o0()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, p1, p2, v3, v4}, Lo6/g;->m(Ls5/k;Lb6/i;Lu6/z;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    if-nez v3, :cond_5

    invoke-virtual {p2, p1}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v3

    :cond_5
    invoke-virtual {v3, v0}, Lu6/z;->S(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lu6/z;->J0(Ls5/k;)V

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1, p2, v3, v2}, Lo6/g;->n(Ls5/k;Lb6/i;Lu6/z;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public f(Lb6/f;)Ln6/d;
    .locals 1

    iget-object v0, p0, Lo6/a;->n:Lb6/f;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lo6/g;

    invoke-direct {v0, p0, p1}, Lo6/g;-><init>(Lo6/g;Lb6/f;)V

    return-object v0
.end method

.method public final h()Lr5/s0;
    .locals 0

    iget-object p0, p0, Lo6/g;->u:Lr5/s0;

    return-object p0
.end method

.method public final m(Ls5/k;Lb6/i;Lu6/z;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p2, p4}, Lo6/a;->l(Lb6/i;Ljava/lang/String;)Lb6/n;

    move-result-object v0

    iget-boolean p0, p0, Lo6/a;->q:Z

    if-eqz p0, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p2, p1}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object p3

    :cond_0
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lu6/z;->S(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lu6/z;->q0(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ls5/k;->m()V

    invoke-virtual {p3, p1}, Lu6/z;->H0(Ls5/k;)Lu6/x;

    move-result-object p0

    invoke-static {p0, p1}, La6/l;->F0(Lu6/x;Ls5/k;)La6/l;

    move-result-object p1

    :cond_2
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object p0

    sget-object p3, Ls5/n;->v:Ls5/n;

    if-eq p0, p3, :cond_3

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    :cond_3
    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ls5/k;Lb6/i;Lu6/z;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lo6/a;->o:Lb6/l;

    const/4 v1, 0x0

    iget-object v2, p0, Lo6/a;->m:Lb6/l;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, p1}, Ln6/d;->a(Lb6/l;Ls5/k;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lo6/a;->i(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lb6/j;->H:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Lo6/a;->k(Lb6/i;)Lb6/n;

    move-result-object v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lo6/g;->v:Z

    if-nez v0, :cond_5

    if-nez v2, :cond_4

    :goto_1
    return-object v1

    :cond_4
    iget-object p0, p0, Lo6/a;->n:Lb6/f;

    invoke-virtual {p2, v2, p0}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object p0, p2, Lb6/i;->q:Lb6/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Could not resolve subtype of %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p2, Lb6/i;->t:Ls5/k;

    invoke-static {p0, p4}, Lb6/g;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lh6/d;

    invoke-direct {p2, p1, p0, v1}, Lh6/b;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Object;)V

    throw p2

    :cond_6
    :goto_2
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lu6/z;->R()V

    invoke-virtual {p3, p1}, Lu6/z;->H0(Ls5/k;)Lu6/x;

    move-result-object p1

    invoke-virtual {p1}, Lu6/x;->z0()Ls5/n;

    :cond_7
    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
