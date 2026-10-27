.class public final Ly1/f0;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/f0;->a:Ljava/lang/Object;

    iput-object p2, p0, Ly1/f0;->b:Ljava/lang/Object;

    iput-object p3, p0, Ly1/f0;->c:Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 3

    new-instance v0, Ly1/k0;

    iget-object v1, p0, Ly1/f0;->b:Ljava/lang/Object;

    iget-object v2, p0, Ly1/f0;->c:Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    iget-object p0, p0, Ly1/f0;->a:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, v2}, Ly1/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ly1/f0;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Ly1/f0;

    iget-object v0, p1, Ly1/f0;->a:Ljava/lang/Object;

    iget-object v1, p0, Ly1/f0;->a:Ljava/lang/Object;

    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ly1/f0;->b:Ljava/lang/Object;

    iget-object v1, p1, Ly1/f0;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Ly1/f0;->c:Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    iget-object p1, p1, Ly1/f0;->c:Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    if-ne p0, p1, :cond_4

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 4

    check-cast p1, Ly1/k0;

    iget-object v0, p1, Ly1/k0;->z:Ljava/lang/Object;

    iget-object v1, p0, Ly1/f0;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-object v1, p1, Ly1/k0;->z:Ljava/lang/Object;

    iget-object v1, p1, Ly1/k0;->A:Ljava/lang/Object;

    iget-object v3, p0, Ly1/f0;->b:Ljava/lang/Object;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    :cond_0
    iput-object v3, p1, Ly1/k0;->A:Ljava/lang/Object;

    iget-object v1, p1, Ly1/k0;->B:Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object p0, p0, Ly1/f0;->c:Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ly1/k0;->O0()V

    :cond_2
    iput-object p0, p1, Ly1/k0;->B:Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    return-void
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ly1/f0;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Ly1/f0;->b:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_1
    add-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3c1

    iget-object p0, p0, Ly1/f0;->c:Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
