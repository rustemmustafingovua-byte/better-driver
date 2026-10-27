.class final Lu/h0;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Lu/f0;


# direct methods
.method public constructor <init>(Lu/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/h0;->a:Lu/f0;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 1

    new-instance v0, Lu/i0;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object p0, p0, Lu/h0;->a:Lu/f0;

    iput-object p0, v0, Lu/i0;->z:Lu/f0;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lu/i0;->A:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu/h0;

    if-eqz v1, :cond_1

    check-cast p1, Lu/h0;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lu/h0;->a:Lu/f0;

    iget-object p1, p1, Lu/h0;->a:Lu/f0;

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 0

    check-cast p1, Lu/i0;

    iget-object p0, p0, Lu/h0;->a:Lu/f0;

    iput-object p0, p1, Lu/i0;->z:Lu/f0;

    const/4 p0, 0x1

    iput-boolean p0, p1, Lu/i0;->A:Z

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Lu/h0;->a:Lu/f0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method
