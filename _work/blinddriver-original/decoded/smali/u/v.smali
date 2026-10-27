.class final Lu/v;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Lu/u;

.field public final b:F


# direct methods
.method public constructor <init>(Lu/u;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/v;->a:Lu/u;

    iput p2, p0, Lu/v;->b:F

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Lu/w;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object v1, p0, Lu/v;->a:Lu/u;

    iput-object v1, v0, Lu/w;->z:Lu/u;

    iget p0, p0, Lu/v;->b:F

    iput p0, v0, Lu/w;->A:F

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu/v;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lu/v;

    iget-object v1, p1, Lu/v;->a:Lu/u;

    iget-object v3, p0, Lu/v;->a:Lu/u;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lu/v;->b:F

    iget p1, p1, Lu/v;->b:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public final f(Lf1/q;)V
    .locals 1

    check-cast p1, Lu/w;

    iget-object v0, p0, Lu/v;->a:Lu/u;

    iput-object v0, p1, Lu/w;->z:Lu/u;

    iget p0, p0, Lu/v;->b:F

    iput p0, p1, Lu/w;->A:F

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lu/v;->a:Lu/u;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lu/v;->b:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
