.class public final Ly1/d0;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Le2/m;


# direct methods
.method public constructor <init>(Le2/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/d0;->a:Le2/m;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Ly1/e0;

    sget-object v1, Lb0/n1;->b:Ly1/a;

    iget-object p0, p0, Ly1/d0;->a:Le2/m;

    invoke-direct {v0, v1, p0}, Ly1/f;-><init>(Ly1/a;Le2/m;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ly1/d0;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Ly1/d0;

    sget-object v0, Lb0/n1;->b:Ly1/a;

    invoke-virtual {v0, v0}, Ly1/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Ly1/d0;->a:Le2/m;

    iget-object p1, p1, Ly1/d0;->a:Le2/m;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 2

    check-cast p1, Ly1/e0;

    sget-object v0, Lb0/n1;->b:Ly1/a;

    iget-object v1, p1, Ly1/f;->A:Ly1/a;

    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p1, Ly1/f;->A:Ly1/a;

    iget-boolean v0, p1, Ly1/f;->B:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ly1/f;->O0()V

    :cond_0
    iget-object p0, p0, Ly1/d0;->a:Le2/m;

    iput-object p0, p1, Ly1/f;->z:Le2/m;

    return-void
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x3fe

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object p0, p0, Ly1/d0;->a:Le2/m;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le2/m;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StylusHoverIconModifierElement(icon="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lb0/n1;->b:Ly1/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", overrideDescendants=false, touchBoundsExpansion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ly1/d0;->a:Le2/m;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
