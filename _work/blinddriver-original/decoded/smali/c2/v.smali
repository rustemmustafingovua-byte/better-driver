.class final Lc2/v;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Li9/f;


# direct methods
.method public constructor <init>(Li9/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/v;->a:Li9/f;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 1

    new-instance v0, Lc2/b0;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object p0, p0, Lc2/v;->a:Li9/f;

    iput-object p0, v0, Lc2/b0;->z:Li9/f;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc2/v;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc2/v;

    iget-object p1, p1, Lc2/v;->a:Li9/f;

    iget-object p0, p0, Lc2/v;->a:Li9/f;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final f(Lf1/q;)V
    .locals 0

    check-cast p1, Lc2/b0;

    iget-object p0, p0, Lc2/v;->a:Li9/f;

    iput-object p0, p1, Lc2/b0;->z:Li9/f;

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lc2/v;->a:Li9/f;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
