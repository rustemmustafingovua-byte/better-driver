.class final Lp/u0;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Ls/i;


# direct methods
.method public constructor <init>(Ls/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/u0;->a:Ls/i;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 1

    new-instance v0, Lp/y0;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object p0, p0, Lp/u0;->a:Ls/i;

    iput-object p0, v0, Lp/y0;->z:Ls/i;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lp/u0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lp/u0;

    iget-object p1, p1, Lp/u0;->a:Ls/i;

    iget-object p0, p0, Lp/u0;->a:Ls/i;

    invoke-static {p1, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final f(Lf1/q;)V
    .locals 1

    check-cast p1, Lp/y0;

    iget-object v0, p1, Lp/y0;->z:Ls/i;

    iget-object p0, p0, Lp/u0;->a:Ls/i;

    invoke-static {v0, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lp/y0;->O0()V

    iput-object p0, p1, Lp/y0;->z:Ls/i;

    :cond_0
    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lp/u0;->a:Ls/i;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method
