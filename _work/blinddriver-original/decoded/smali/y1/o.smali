.class public final Ly1/o;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Ly1/a;


# direct methods
.method public constructor <init>(Ly1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/o;->a:Ly1/a;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Ly1/p;

    iget-object p0, p0, Ly1/o;->a:Ly1/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ly1/f;-><init>(Ly1/a;Le2/m;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ly1/o;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Ly1/o;

    iget-object p0, p0, Ly1/o;->a:Ly1/a;

    iget-object p1, p1, Ly1/o;->a:Ly1/a;

    invoke-virtual {p0, p1}, Ly1/a;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public final f(Lf1/q;)V
    .locals 1

    check-cast p1, Ly1/p;

    iget-object v0, p1, Ly1/f;->A:Ly1/a;

    iget-object p0, p0, Ly1/o;->a:Ly1/a;

    invoke-static {v0, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p0, p1, Ly1/f;->A:Ly1/a;

    iget-boolean p0, p1, Ly1/f;->B:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ly1/f;->O0()V

    :cond_0
    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Ly1/o;->a:Ly1/a;

    iget p0, p0, Ly1/a;->b:I

    mul-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PointerHoverIconModifierElement(icon="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ly1/o;->a:Ly1/a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", overrideDescendants=false)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
