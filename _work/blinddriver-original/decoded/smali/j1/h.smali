.class final Lj1/h;
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

    iput-object p1, p0, Lj1/h;->a:Li9/c;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Lj1/b;

    new-instance v1, Lj1/c;

    invoke-direct {v1}, Lj1/c;-><init>()V

    iget-object p0, p0, Lj1/h;->a:Li9/c;

    invoke-direct {v0, v1, p0}, Lj1/b;-><init>(Lj1/c;Li9/c;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj1/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lj1/h;

    iget-object p1, p1, Lj1/h;->a:Li9/c;

    iget-object p0, p0, Lj1/h;->a:Li9/c;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final f(Lf1/q;)V
    .locals 0

    check-cast p1, Lj1/b;

    iget-object p0, p0, Lj1/h;->a:Li9/c;

    iput-object p0, p1, Lj1/b;->B:Li9/c;

    invoke-virtual {p1}, Lj1/b;->M0()V

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lj1/h;->a:Li9/c;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
