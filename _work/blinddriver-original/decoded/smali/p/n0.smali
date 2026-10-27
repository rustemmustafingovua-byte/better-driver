.class final Lp/n0;
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

    iput-object p1, p0, Lp/n0;->a:Ls/i;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 3

    new-instance v0, Lp/p0;

    iget-object p0, p0, Lp/n0;->a:Ls/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lp/p0;-><init>(Ls/i;ILb0/k2;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lp/n0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lp/n0;

    iget-object p1, p1, Lp/n0;->a:Ls/i;

    iget-object p0, p0, Lp/n0;->a:Ls/i;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final f(Lf1/q;)V
    .locals 0

    check-cast p1, Lp/p0;

    iget-object p0, p0, Lp/n0;->a:Ls/i;

    invoke-virtual {p1, p0}, Lp/p0;->R0(Ls/i;)V

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lp/n0;->a:Ls/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
