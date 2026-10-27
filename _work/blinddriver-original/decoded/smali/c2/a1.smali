.class final Lc2/a1;
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

    iput-object p1, p0, Lc2/a1;->a:Li9/c;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 7

    new-instance v0, Lc2/b1;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object p0, p0, Lc2/a1;->a:Li9/c;

    iput-object p0, v0, Lc2/b1;->z:Li9/c;

    const/high16 p0, -0x80000000

    int-to-long v1, p0

    const/16 p0, 0x20

    shl-long v3, v1, p0

    const-wide v5, 0xffffffffL

    and-long/2addr v1, v5

    or-long/2addr v1, v3

    iput-wide v1, v0, Lc2/b1;->A:J

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc2/a1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc2/a1;

    iget-object p1, p1, Lc2/a1;->a:Li9/c;

    iget-object p0, p0, Lc2/a1;->a:Li9/c;

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f(Lf1/q;)V
    .locals 6

    check-cast p1, Lc2/b1;

    iget-object p0, p0, Lc2/a1;->a:Li9/c;

    iput-object p0, p1, Lc2/b1;->z:Li9/c;

    const/high16 p0, -0x80000000

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long v2, v0, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    iput-wide v0, p1, Lc2/b1;->A:J

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lc2/a1;->a:Li9/c;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
