.class final Lx1/e;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Lx1/d;


# direct methods
.method public constructor <init>(Lx1/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/e;->a:Lx1/d;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Lx1/i;

    sget-object v1, Le3/l;->a:Ld7/g;

    iget-object p0, p0, Lx1/e;->a:Lx1/d;

    invoke-direct {v0, v1, p0}, Lx1/i;-><init>(Lx1/a;Lx1/d;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lx1/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lx1/e;

    sget-object v0, Le3/l;->a:Ld7/g;

    invoke-virtual {v0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lx1/e;->a:Lx1/d;

    iget-object p0, p0, Lx1/e;->a:Lx1/d;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 3

    check-cast p1, Lx1/i;

    sget-object v0, Le3/l;->a:Ld7/g;

    iput-object v0, p1, Lx1/i;->z:Lx1/a;

    iget-object v0, p1, Lx1/i;->A:Lx1/d;

    iget-object v1, v0, Lx1/d;->a:Lx1/i;

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    iput-object v2, v0, Lx1/d;->a:Lx1/i;

    :cond_0
    iget-object p0, p0, Lx1/e;->a:Lx1/d;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p0, p1, Lx1/i;->A:Lx1/d;

    :cond_1
    iget-boolean p0, p1, Lf1/q;->y:Z

    if-eqz p0, :cond_2

    iget-object p0, p1, Lx1/i;->A:Lx1/d;

    iput-object p1, p0, Lx1/d;->a:Lx1/i;

    iput-object v2, p0, Lx1/d;->b:Lx1/i;

    iput-object v2, p1, Lx1/i;->B:Lx1/i;

    new-instance v0, Lc2/l0;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p1}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lx1/d;->c:Lj9/o;

    invoke-virtual {p1}, Lf1/q;->A0()Lu9/t;

    move-result-object p1

    iput-object p1, p0, Lx1/d;->d:Lu9/t;

    :cond_2
    return-void
.end method

.method public final hashCode()I
    .locals 1

    sget-object v0, Le3/l;->a:Ld7/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lx1/e;->a:Lx1/d;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
