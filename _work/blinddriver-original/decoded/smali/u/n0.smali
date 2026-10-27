.class final Lu/n0;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Li9/c;


# direct methods
.method public constructor <init>(Li9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/n0;->a:Li9/c;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 1

    new-instance v0, Lu/o0;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object p0, p0, Lu/n0;->a:Li9/c;

    iput-object p0, v0, Lu/o0;->z:Li9/c;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lu/o0;->A:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu/n0;

    if-eqz v1, :cond_1

    check-cast p1, Lu/n0;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lu/n0;->a:Li9/c;

    iget-object p1, p1, Lu/n0;->a:Li9/c;

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 3

    check-cast p1, Lu/o0;

    iget-object v0, p1, Lu/o0;->z:Li9/c;

    iget-object p0, p0, Lu/n0;->a:Li9/c;

    const/4 v1, 0x1

    if-ne v0, p0, :cond_0

    iget-boolean v0, p1, Lu/o0;->A:Z

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {p1}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Le2/g0;->W(Z)V

    :cond_1
    iput-object p0, p1, Lu/o0;->z:Li9/c;

    iput-boolean v1, p1, Lu/o0;->A:Z

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Lu/n0;->a:Li9/c;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OffsetPxModifier(offset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lu/n0;->a:Li9/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", rtlAware=true)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
