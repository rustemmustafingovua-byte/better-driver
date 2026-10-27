.class final Lm1/k;
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

    iput-object p1, p0, Lm1/k;->a:Li9/c;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 1

    new-instance v0, Lm1/l;

    iget-object p0, p0, Lm1/k;->a:Li9/c;

    invoke-direct {v0, p0}, Lm1/l;-><init>(Li9/c;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lm1/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lm1/k;

    iget-object p1, p1, Lm1/k;->a:Li9/c;

    iget-object p0, p0, Lm1/k;->a:Li9/c;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final f(Lf1/q;)V
    .locals 1

    check-cast p1, Lm1/l;

    iget-object p0, p0, Lm1/k;->a:Li9/c;

    iput-object p0, p1, Lm1/l;->z:Li9/c;

    iget-object v0, p1, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, v0}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object p1

    iget-object p1, p1, Le2/h1;->A:Le2/h1;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Le2/h1;->s1(Li9/c;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lm1/k;->a:Li9/c;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
