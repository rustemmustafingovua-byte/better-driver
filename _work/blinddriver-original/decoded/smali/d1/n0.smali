.class public final Ld1/n0;
.super Ld1/g;
.source "SourceFile"


# instance fields
.field public final e:Ld1/g;

.field public final f:Z

.field public final g:Z

.field public h:Li9/c;

.field public final i:J


# direct methods
.method public constructor <init>(Ld1/g;Li9/c;ZZ)V
    .locals 3

    sget-object v0, Ld1/p;->a:Lad/b2;

    const-wide/16 v0, 0x0

    sget-object v2, Ld1/m;->p:Ld1/m;

    invoke-direct {p0, v0, v1, v2}, Ld1/g;-><init>(JLd1/m;)V

    iput-object p1, p0, Ld1/n0;->e:Ld1/g;

    iput-boolean p3, p0, Ld1/n0;->f:Z

    iput-boolean p4, p0, Ld1/n0;->g:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ld1/g;->e()Li9/c;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Ld1/p;->j:Ld1/b;

    iget-object p1, p1, Ld1/c;->e:Li9/c;

    :cond_1
    invoke-static {p2, p1, p3}, Ld1/p;->k(Li9/c;Li9/c;Z)Li9/c;

    move-result-object p1

    iput-object p1, p0, Ld1/n0;->h:Li9/c;

    invoke-static {}, Lz0/i;->b()J

    move-result-wide p1

    iput-wide p1, p0, Ld1/n0;->i:J

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld1/g;->c:Z

    iget-boolean v0, p0, Ld1/n0;->g:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Ld1/n0;->e:Ld1/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ld1/g;->c()V

    :cond_0
    return-void
.end method

.method public final d()Ld1/m;
    .locals 0

    invoke-virtual {p0}, Ld1/n0;->v()Ld1/g;

    move-result-object p0

    invoke-virtual {p0}, Ld1/g;->d()Ld1/m;

    move-result-object p0

    return-object p0
.end method

.method public final e()Li9/c;
    .locals 0

    iget-object p0, p0, Ld1/n0;->h:Li9/c;

    return-object p0
.end method

.method public final f()Z
    .locals 0

    invoke-virtual {p0}, Ld1/n0;->v()Ld1/g;

    move-result-object p0

    invoke-virtual {p0}, Ld1/g;->f()Z

    move-result p0

    return p0
.end method

.method public final g()J
    .locals 2

    invoke-virtual {p0}, Ld1/n0;->v()Ld1/g;

    move-result-object p0

    invoke-virtual {p0}, Ld1/g;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()Li9/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final k()V
    .locals 0

    invoke-static {}, Ld1/w;->l()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final l()V
    .locals 0

    invoke-static {}, Ld1/w;->l()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final m()V
    .locals 0

    invoke-virtual {p0}, Ld1/n0;->v()Ld1/g;

    move-result-object p0

    invoke-virtual {p0}, Ld1/g;->m()V

    return-void
.end method

.method public final n(Ld1/h0;)V
    .locals 0

    invoke-virtual {p0}, Ld1/n0;->v()Ld1/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Ld1/g;->n(Ld1/h0;)V

    return-void
.end method

.method public final u(Li9/c;)Ld1/g;
    .locals 2

    iget-object v0, p0, Ld1/n0;->h:Li9/c;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Ld1/p;->k(Li9/c;Li9/c;Z)Li9/c;

    move-result-object p1

    iget-boolean v0, p0, Ld1/n0;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld1/n0;->v()Ld1/g;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ld1/g;->u(Li9/c;)Ld1/g;

    move-result-object p0

    invoke-static {p0, p1, v1}, Ld1/p;->g(Ld1/g;Li9/c;Z)Ld1/g;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ld1/n0;->v()Ld1/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Ld1/g;->u(Li9/c;)Ld1/g;

    move-result-object p0

    return-object p0
.end method

.method public final v()Ld1/g;
    .locals 0

    iget-object p0, p0, Ld1/n0;->e:Ld1/g;

    if-nez p0, :cond_0

    sget-object p0, Ld1/p;->j:Ld1/b;

    :cond_0
    return-object p0
.end method
