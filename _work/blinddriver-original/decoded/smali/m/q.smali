.class final Lm/q;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Ln/h1;

.field public final b:Ln/b1;

.field public final c:Ln/b1;

.field public final d:Lm/a0;

.field public final e:Lm/b0;

.field public final f:Li9/a;

.field public final g:Lm/r;


# direct methods
.method public constructor <init>(Ln/h1;Ln/b1;Ln/b1;Lm/a0;Lm/b0;Li9/a;Lm/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/q;->a:Ln/h1;

    iput-object p2, p0, Lm/q;->b:Ln/b1;

    iput-object p3, p0, Lm/q;->c:Ln/b1;

    iput-object p4, p0, Lm/q;->d:Lm/a0;

    iput-object p5, p0, Lm/q;->e:Lm/b0;

    iput-object p6, p0, Lm/q;->f:Li9/a;

    iput-object p7, p0, Lm/q;->g:Lm/r;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 8

    new-instance v0, Lm/z;

    iget-object v6, p0, Lm/q;->f:Li9/a;

    iget-object v7, p0, Lm/q;->g:Lm/r;

    iget-object v1, p0, Lm/q;->a:Ln/h1;

    iget-object v2, p0, Lm/q;->b:Ln/b1;

    iget-object v3, p0, Lm/q;->c:Ln/b1;

    iget-object v4, p0, Lm/q;->d:Lm/a0;

    iget-object v5, p0, Lm/q;->e:Lm/b0;

    invoke-direct/range {v0 .. v7}, Lm/z;-><init>(Ln/h1;Ln/b1;Ln/b1;Lm/a0;Lm/b0;Li9/a;Lm/r;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lm/q;

    if-eqz v0, :cond_0

    check-cast p1, Lm/q;

    iget-object v0, p1, Lm/q;->a:Ln/h1;

    iget-object v1, p0, Lm/q;->a:Ln/h1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lm/q;->b:Ln/b1;

    iget-object v1, p0, Lm/q;->b:Ln/b1;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lm/q;->c:Ln/b1;

    iget-object v1, p0, Lm/q;->c:Ln/b1;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lm/q;->d:Lm/a0;

    iget-object v1, p0, Lm/q;->d:Lm/a0;

    invoke-virtual {v0, v1}, Lm/a0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lm/q;->e:Lm/b0;

    iget-object v1, p0, Lm/q;->e:Lm/b0;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lm/q;->f:Li9/a;

    iget-object v1, p0, Lm/q;->f:Li9/a;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lm/q;->g:Lm/r;

    iget-object p0, p0, Lm/q;->g:Lm/r;

    invoke-static {p1, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 1

    check-cast p1, Lm/z;

    iget-object v0, p0, Lm/q;->a:Ln/h1;

    iput-object v0, p1, Lm/z;->z:Ln/h1;

    iget-object v0, p0, Lm/q;->b:Ln/b1;

    iput-object v0, p1, Lm/z;->A:Ln/b1;

    iget-object v0, p0, Lm/q;->c:Ln/b1;

    iput-object v0, p1, Lm/z;->B:Ln/b1;

    iget-object v0, p0, Lm/q;->d:Lm/a0;

    iput-object v0, p1, Lm/z;->C:Lm/a0;

    iget-object v0, p0, Lm/q;->e:Lm/b0;

    iput-object v0, p1, Lm/z;->D:Lm/b0;

    iget-object v0, p0, Lm/q;->f:Li9/a;

    iput-object v0, p1, Lm/z;->E:Li9/a;

    iget-object p0, p0, Lm/q;->g:Lm/r;

    iput-object p0, p1, Lm/z;->F:Lm/r;

    return-void
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lm/q;->a:Ln/h1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lm/q;->b:Ln/b1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lm/q;->c:Ln/b1;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    iget-object v1, p0, Lm/q;->d:Lm/a0;

    iget-object v1, v1, Lm/a0;->a:Lm/j0;

    invoke-virtual {v1}, Lm/j0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lm/q;->e:Lm/b0;

    iget-object v0, v0, Lm/b0;->a:Lm/j0;

    invoke-virtual {v0}, Lm/j0;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lm/q;->f:Li9/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lm/q;->g:Lm/r;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
