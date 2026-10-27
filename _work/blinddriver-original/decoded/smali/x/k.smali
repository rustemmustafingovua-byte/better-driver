.class final Lx/k;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Lw/d;

.field public final b:Lr/a;

.field public final c:Lr/m1;


# direct methods
.method public constructor <init>(Lw/d;Lr/a;Lr/m1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/k;->a:Lw/d;

    iput-object p2, p0, Lx/k;->b:Lr/a;

    iput-object p3, p0, Lx/k;->c:Lr/m1;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Lx/o;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object v1, p0, Lx/k;->a:Lw/d;

    iput-object v1, v0, Lx/o;->z:Lw/d;

    iget-object v1, p0, Lx/k;->b:Lr/a;

    iput-object v1, v0, Lx/o;->A:Lr/a;

    iget-object p0, p0, Lx/k;->c:Lr/m1;

    iput-object p0, v0, Lx/o;->B:Lr/m1;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lx/k;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lx/k;

    iget-object v0, p1, Lx/k;->a:Lw/d;

    iget-object v1, p0, Lx/k;->a:Lw/d;

    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lx/k;->b:Lr/a;

    iget-object v1, p1, Lx/k;->b:Lr/a;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lx/k;->c:Lr/m1;

    iget-object p1, p1, Lx/k;->c:Lr/m1;

    if-eq p0, p1, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 1

    check-cast p1, Lx/o;

    iget-object v0, p0, Lx/k;->a:Lw/d;

    iput-object v0, p1, Lx/o;->z:Lw/d;

    iget-object v0, p0, Lx/k;->b:Lr/a;

    iput-object v0, p1, Lx/o;->A:Lr/a;

    iget-object p0, p0, Lx/k;->c:Lr/m1;

    iput-object p0, p1, Lx/o;->B:Lr/m1;

    return-void
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lx/k;->a:Lw/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lx/k;->b:Lr/a;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object p0, p0, Lx/k;->c:Lr/m1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
