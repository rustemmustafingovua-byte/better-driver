.class final Lu/r0;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Lu/s0;


# direct methods
.method public constructor <init>(Lu/s0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/r0;->a:Lu/s0;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 1

    new-instance v0, Lu/t0;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object p0, p0, Lu/r0;->a:Lu/s0;

    iput-object p0, v0, Lu/t0;->z:Lu/s0;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lu/r0;

    if-eqz v0, :cond_0

    check-cast p1, Lu/r0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lu/r0;->a:Lu/s0;

    iget-object p1, p1, Lu/r0;->a:Lu/s0;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 0

    check-cast p1, Lu/t0;

    iget-object p0, p0, Lu/r0;->a:Lu/s0;

    iput-object p0, p1, Lu/t0;->z:Lu/s0;

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lu/r0;->a:Lu/s0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
