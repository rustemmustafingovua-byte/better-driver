.class final Lx/i0;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Li9/a;

.field public final b:Lw/c;

.field public final c:Lr/m1;

.field public final d:Z


# direct methods
.method public constructor <init>(Li9/a;Lw/c;Lr/m1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/i0;->a:Li9/a;

    iput-object p2, p0, Lx/i0;->b:Lw/c;

    iput-object p3, p0, Lx/i0;->c:Lr/m1;

    iput-boolean p4, p0, Lx/i0;->d:Z

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 4

    new-instance v0, Lx/l0;

    iget-object v1, p0, Lx/i0;->c:Lr/m1;

    iget-boolean v2, p0, Lx/i0;->d:Z

    iget-object v3, p0, Lx/i0;->a:Li9/a;

    iget-object p0, p0, Lx/i0;->b:Lw/c;

    invoke-direct {v0, v3, p0, v1, v2}, Lx/l0;-><init>(Li9/a;Lw/c;Lr/m1;Z)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lx/i0;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lx/i0;

    iget-object v1, p1, Lx/i0;->a:Li9/a;

    iget-object v2, p0, Lx/i0;->a:Li9/a;

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lx/i0;->b:Lw/c;

    iget-object v2, p1, Lx/i0;->b:Lw/c;

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lx/i0;->c:Lr/m1;

    iget-object v2, p1, Lx/i0;->c:Lr/m1;

    if-eq v1, v2, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean p0, p0, Lx/i0;->d:Z

    iget-boolean p1, p1, Lx/i0;->d:Z

    if-eq p0, p1, :cond_5

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    return v0
.end method

.method public final f(Lf1/q;)V
    .locals 2

    check-cast p1, Lx/l0;

    iget-object v0, p0, Lx/i0;->a:Li9/a;

    iput-object v0, p1, Lx/l0;->z:Li9/a;

    iget-object v0, p0, Lx/i0;->b:Lw/c;

    iput-object v0, p1, Lx/l0;->A:Lw/c;

    iget-object v0, p1, Lx/l0;->B:Lr/m1;

    iget-object v1, p0, Lx/i0;->c:Lr/m1;

    if-eq v0, v1, :cond_0

    iput-object v1, p1, Lx/l0;->B:Lr/m1;

    invoke-static {p1}, Le2/l;->m(Le2/z1;)V

    :cond_0
    iget-boolean v0, p1, Lx/l0;->C:Z

    iget-boolean p0, p0, Lx/i0;->d:Z

    if-ne v0, p0, :cond_1

    return-void

    :cond_1
    iput-boolean p0, p1, Lx/l0;->C:Z

    invoke-virtual {p1}, Lx/l0;->M0()V

    invoke-static {p1}, Le2/l;->m(Le2/z1;)V

    return-void
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lx/i0;->a:Li9/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lx/i0;->b:Lw/c;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lx/i0;->c:Lr/m1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lx/i0;->d:Z

    invoke-static {v0, v1, p0}, Lm/a;->g(IIZ)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method
