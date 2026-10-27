.class final Ly/a;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Ly/c;


# direct methods
.method public constructor <init>(Ly/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/a;->a:Ly/c;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 1

    new-instance v0, Ly/e;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object p0, p0, Ly/a;->a:Ly/c;

    iput-object p0, v0, Ly/e;->z:Ly/c;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ly/a;

    if-eqz v0, :cond_0

    check-cast p1, Ly/a;

    iget-object p1, p1, Ly/a;->a:Ly/c;

    iget-object p0, p0, Ly/a;->a:Ly/c;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 1

    check-cast p1, Ly/e;

    iget-object v0, p1, Ly/e;->z:Ly/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ly/c;->a:Lt0/b;

    invoke-virtual {v0, p1}, Lt0/b;->j(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Ly/a;->a:Ly/c;

    if-eqz p0, :cond_1

    iget-object v0, p0, Ly/c;->a:Lt0/b;

    invoke-virtual {v0, p1}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_1
    iput-object p0, p1, Ly/e;->z:Ly/c;

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Ly/a;->a:Ly/c;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
