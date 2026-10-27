.class final Lw1/d;
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

.field public final b:Li9/c;


# direct methods
.method public constructor <init>(Li9/c;Li9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/d;->a:Li9/c;

    iput-object p2, p0, Lw1/d;->b:Li9/c;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Lw1/f;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object v1, p0, Lw1/d;->a:Li9/c;

    iput-object v1, v0, Lw1/f;->z:Li9/c;

    iget-object p0, p0, Lw1/d;->b:Li9/c;

    iput-object p0, v0, Lw1/f;->A:Li9/c;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lw1/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lw1/d;

    iget-object v1, p1, Lw1/d;->a:Li9/c;

    iget-object v3, p0, Lw1/d;->a:Li9/c;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lw1/d;->b:Li9/c;

    iget-object p1, p1, Lw1/d;->b:Li9/c;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final f(Lf1/q;)V
    .locals 1

    check-cast p1, Lw1/f;

    iget-object v0, p0, Lw1/d;->a:Li9/c;

    iput-object v0, p1, Lw1/f;->z:Li9/c;

    iget-object p0, p0, Lw1/d;->b:Li9/c;

    iput-object p0, p1, Lw1/f;->A:Li9/c;

    return-void
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lw1/d;->a:Li9/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lw1/d;->b:Li9/c;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_1
    add-int/2addr v1, v0

    return v1
.end method
