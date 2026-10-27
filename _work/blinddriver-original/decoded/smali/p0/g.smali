.class public final Lp0/g;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Ln/p1;


# direct methods
.method public constructor <init>(Ln/p1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/g;->a:Ln/p1;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 1

    new-instance v0, Lp0/f;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object p0, p0, Lp0/g;->a:Ln/p1;

    iput-object p0, v0, Lp0/f;->z:Ln/p1;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lp0/g;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lp0/g;

    iget-object p1, p1, Lp0/g;->a:Ln/p1;

    iget-object p0, p0, Lp0/g;->a:Ln/p1;

    if-ne p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 0

    check-cast p1, Lp0/f;

    iget-object p0, p0, Lp0/g;->a:Ln/p1;

    iput-object p0, p1, Lp0/f;->z:Ln/p1;

    invoke-static {p1}, Le2/l;->m(Le2/z1;)V

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lp0/g;->a:Ln/p1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
