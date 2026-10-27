.class final Lr/u1;
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

.field public final d:Z

.field public final e:Ls/i;


# direct methods
.method public constructor <init>(Lr/h2;Lr/m1;ZZLs/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/u1;->a:Lr/h2;

    iput-object p2, p0, Lr/u1;->b:Lr/m1;

    iput-boolean p3, p0, Lr/u1;->c:Z

    iput-boolean p4, p0, Lr/u1;->d:Z

    iput-object p5, p0, Lr/u1;->e:Ls/i;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 8

    new-instance v0, Lr/g2;

    iget-boolean v7, p0, Lr/u1;->d:Z

    iget-object v5, p0, Lr/u1;->e:Ls/i;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lr/u1;->b:Lr/m1;

    iget-object v4, p0, Lr/u1;->a:Lr/h2;

    iget-boolean v6, p0, Lr/u1;->c:Z

    invoke-direct/range {v0 .. v7}, Lr/g2;-><init>(Lp/j;Lr/k;Lr/m1;Lr/h2;Ls/i;ZZ)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lr/u1;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lr/u1;

    iget-object v0, p1, Lr/u1;->a:Lr/h2;

    iget-object v1, p0, Lr/u1;->a:Lr/h2;

    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lr/u1;->b:Lr/m1;

    iget-object v1, p1, Lr/u1;->b:Lr/m1;

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lr/u1;->c:Z

    iget-boolean v1, p1, Lr/u1;->c:Z

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lr/u1;->d:Z

    iget-boolean v1, p1, Lr/u1;->d:Z

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lr/u1;->e:Ls/i;

    iget-object p1, p1, Lr/u1;->e:Ls/i;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 8

    move-object v0, p1

    check-cast v0, Lr/g2;

    const/4 v2, 0x0

    iget-object v5, p0, Lr/u1;->e:Ls/i;

    const/4 v1, 0x0

    iget-object v3, p0, Lr/u1;->b:Lr/m1;

    iget-object v4, p0, Lr/u1;->a:Lr/h2;

    iget-boolean v6, p0, Lr/u1;->c:Z

    iget-boolean v7, p0, Lr/u1;->d:Z

    invoke-virtual/range {v0 .. v7}, Lr/g2;->h1(Lp/j;Lr/k;Lr/m1;Lr/h2;Ls/i;ZZ)V

    return-void
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lr/u1;->a:Lr/h2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lr/u1;->b:Lr/m1;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    const/16 v0, 0x3c1

    mul-int/2addr v2, v0

    iget-boolean v3, p0, Lr/u1;->c:Z

    invoke-static {v2, v1, v3}, Lm/a;->g(IIZ)I

    move-result v2

    iget-boolean v3, p0, Lr/u1;->d:Z

    invoke-static {v2, v0, v3}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object p0, p0, Lr/u1;->e:Ls/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    mul-int/2addr v0, v1

    return v0
.end method
