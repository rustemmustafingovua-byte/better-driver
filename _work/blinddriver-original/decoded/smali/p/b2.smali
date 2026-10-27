.class final Lp/b2;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Lr/h2;

.field public final b:Lr/m1;

.field public final c:Z

.field public final d:Lr/k;

.field public final e:Ls/i;

.field public final f:Z

.field public final g:Lp/j;


# direct methods
.method public constructor <init>(Lp/j;Lr/k;Lr/m1;Lr/h2;Ls/i;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lp/b2;->a:Lr/h2;

    iput-object p3, p0, Lp/b2;->b:Lr/m1;

    iput-boolean p6, p0, Lp/b2;->c:Z

    iput-object p2, p0, Lp/b2;->d:Lr/k;

    iput-object p5, p0, Lp/b2;->e:Ls/i;

    iput-boolean p7, p0, Lp/b2;->f:Z

    iput-object p1, p0, Lp/b2;->g:Lp/j;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Lp/c2;

    invoke-direct {v0}, Le2/k;-><init>()V

    iget-object v1, p0, Lp/b2;->a:Lr/h2;

    iput-object v1, v0, Lp/c2;->B:Lr/h2;

    iget-object v1, p0, Lp/b2;->b:Lr/m1;

    iput-object v1, v0, Lp/c2;->C:Lr/m1;

    iget-boolean v1, p0, Lp/b2;->c:Z

    iput-boolean v1, v0, Lp/c2;->D:Z

    iget-object v1, p0, Lp/b2;->d:Lr/k;

    iput-object v1, v0, Lp/c2;->E:Lr/k;

    iget-object v1, p0, Lp/b2;->e:Ls/i;

    iput-object v1, v0, Lp/c2;->F:Ls/i;

    iget-boolean v1, p0, Lp/b2;->f:Z

    iput-boolean v1, v0, Lp/c2;->G:Z

    iget-object p0, p0, Lp/b2;->g:Lp/j;

    iput-object p0, v0, Lp/c2;->H:Lp/j;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_9

    const-class v0, Lp/b2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lp/b2;

    iget-object v0, p0, Lp/b2;->a:Lr/h2;

    iget-object v1, p1, Lp/b2;->a:Lr/h2;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lp/b2;->b:Lr/m1;

    iget-object v1, p1, Lp/b2;->b:Lr/m1;

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lp/b2;->c:Z

    iget-boolean v1, p1, Lp/b2;->c:Z

    if-eq v0, v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lp/b2;->d:Lr/k;

    iget-object v1, p1, Lp/b2;->d:Lr/k;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lp/b2;->e:Ls/i;

    iget-object v1, p1, Lp/b2;->e:Ls/i;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lp/b2;->f:Z

    iget-boolean v1, p1, Lp/b2;->f:Z

    if-eq v0, v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lp/b2;->g:Lp/j;

    iget-object p1, p1, Lp/b2;->g:Lp/j;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_9
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 8

    move-object v0, p1

    check-cast v0, Lp/c2;

    iget-object v2, p0, Lp/b2;->d:Lr/k;

    iget-object v5, p0, Lp/b2;->e:Ls/i;

    iget-object v1, p0, Lp/b2;->g:Lp/j;

    iget-object v3, p0, Lp/b2;->b:Lr/m1;

    iget-object v4, p0, Lp/b2;->a:Lr/h2;

    iget-boolean v6, p0, Lp/b2;->f:Z

    iget-boolean v7, p0, Lp/b2;->c:Z

    invoke-virtual/range {v0 .. v7}, Lp/c2;->R0(Lp/j;Lr/k;Lr/m1;Lr/h2;Ls/i;ZZ)V

    return-void
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lp/b2;->a:Lr/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lp/b2;->b:Lr/m1;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lp/b2;->c:Z

    invoke-static {v2, v1, v0}, Lm/a;->g(IIZ)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object v3, p0, Lp/b2;->d:Lr/k;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lp/b2;->e:Ls/i;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v3, p0, Lp/b2;->f:Z

    invoke-static {v0, v1, v3}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object p0, p0, Lp/b2;->g:Lp/j;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method
