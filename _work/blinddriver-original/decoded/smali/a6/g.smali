.class public final La6/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls5/p;
.implements La6/h;
.implements Ljava/io/Serializable;


# instance fields
.field public l:La6/f;

.field public m:Ls5/u;

.field public n:Lw5/k;

.field public transient o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw5/k;

    const-string v1, " "

    invoke-direct {v0, v1}, Lw5/k;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    new-instance v0, La6/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, La6/f;->l:La6/f;

    iput-object v1, v0, La6/g;->l:La6/f;

    sget-object v1, La6/e;->o:La6/e;

    iput-object v1, v0, La6/g;->m:Ls5/u;

    iget-object v1, p0, La6/g;->n:Lw5/k;

    iput-object v1, v0, La6/g;->n:Lw5/k;

    iget-object v1, p0, La6/g;->l:La6/f;

    iput-object v1, v0, La6/g;->l:La6/f;

    iget-object v1, p0, La6/g;->m:Ls5/u;

    iput-object v1, v0, La6/g;->m:Ls5/u;

    iget v1, p0, La6/g;->o:I

    iput v1, v0, La6/g;->o:I

    iget-object v1, p0, La6/g;->p:Ljava/lang/String;

    iput-object v1, v0, La6/g;->p:Ljava/lang/String;

    iget-object v1, p0, La6/g;->q:Ljava/lang/String;

    iput-object v1, v0, La6/g;->q:Ljava/lang/String;

    iget-object v1, p0, La6/g;->r:Ljava/lang/String;

    iput-object v1, v0, La6/g;->r:Ljava/lang/String;

    iget-object v1, p0, La6/g;->s:Ljava/lang/String;

    iput-object v1, v0, La6/g;->s:Ljava/lang/String;

    iget-object p0, p0, La6/g;->t:Ljava/lang/String;

    iput-object p0, v0, La6/g;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ly5/b;)V
    .locals 0

    iget-object p0, p0, La6/g;->l:La6/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Ls5/g;->e0(C)V

    return-void
.end method

.method public final c(Ls5/g;)V
    .locals 1

    iget-object v0, p0, La6/g;->m:Ls5/u;

    iget p0, p0, La6/g;->o:I

    invoke-virtual {v0, p1, p0}, Ls5/u;->d(Ls5/g;I)V

    return-void
.end method

.method public final d(Lt5/a;I)V
    .locals 2

    iget-object v0, p0, La6/g;->m:Ls5/u;

    invoke-virtual {v0}, Ls5/u;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, La6/g;->o:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, La6/g;->o:I

    :cond_0
    if-lez p2, :cond_1

    iget p0, p0, La6/g;->o:I

    invoke-virtual {v0, p1, p0}, Ls5/u;->d(Ls5/g;I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, La6/g;->r:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ls5/g;->g0(Ljava/lang/String;)V

    :goto_0
    const/16 p0, 0x7d

    invoke-virtual {p1, p0}, Ls5/g;->e0(C)V

    return-void
.end method

.method public final e(Lt5/a;I)V
    .locals 1

    iget-object v0, p0, La6/g;->l:La6/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez p2, :cond_0

    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Ls5/g;->e0(C)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, La6/g;->t:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ls5/g;->g0(Ljava/lang/String;)V

    :goto_0
    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Ls5/g;->e0(C)V

    return-void
.end method

.method public final f(Lt5/a;)V
    .locals 1

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ls5/g;->e0(C)V

    iget-object p1, p0, La6/g;->m:Ls5/u;

    invoke-virtual {p1}, Ls5/u;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, La6/g;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La6/g;->o:I

    :cond_0
    return-void
.end method

.method public final h(Ly5/b;)V
    .locals 0

    iget-object p0, p0, La6/g;->n:Lw5/k;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ls5/g;->h0(Ls5/q;)V

    :cond_0
    return-void
.end method

.method public final i(Ly5/b;)V
    .locals 0

    iget-object p0, p0, La6/g;->p:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ls5/g;->g0(Ljava/lang/String;)V

    return-void
.end method

.method public final k(Lt5/a;)V
    .locals 0

    iget-object p0, p0, La6/g;->l:La6/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x5b

    invoke-virtual {p1, p0}, Ls5/g;->e0(C)V

    return-void
.end method

.method public final l(Ly5/b;)V
    .locals 1

    iget-object v0, p0, La6/g;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ls5/g;->g0(Ljava/lang/String;)V

    iget-object v0, p0, La6/g;->m:Ls5/u;

    iget p0, p0, La6/g;->o:I

    invoke-virtual {v0, p1, p0}, Ls5/u;->d(Ls5/g;I)V

    return-void
.end method

.method public final m(Ly5/b;)V
    .locals 1

    iget-object v0, p0, La6/g;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ls5/g;->g0(Ljava/lang/String;)V

    iget-object p0, p0, La6/g;->l:La6/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Ls5/g;->e0(C)V

    return-void
.end method
