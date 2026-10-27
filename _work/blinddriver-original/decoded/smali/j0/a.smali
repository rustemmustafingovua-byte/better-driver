.class final Lj0/a;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Li9/a;


# direct methods
.method public constructor <init>(Li9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/a;->a:Li9/a;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 1

    new-instance v0, Lj0/d;

    iget-object p0, p0, Lj0/a;->a:Li9/a;

    invoke-direct {v0, p0}, Lj0/d;-><init>(Li9/a;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj0/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lj0/a;

    iget-object p1, p1, Lj0/a;->a:Li9/a;

    iget-object p0, p0, Lj0/a;->a:Li9/a;

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f(Lf1/q;)V
    .locals 0

    check-cast p1, Lj0/d;

    iget-object p0, p0, Lj0/a;->a:Li9/a;

    iput-object p0, p1, Lj0/d;->B:Li9/a;

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lj0/a;->a:Li9/a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
