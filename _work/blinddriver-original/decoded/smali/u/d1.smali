.class final Lu/d1;
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

    iput-object p1, p0, Lu/d1;->a:Li9/c;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Lu/e1;

    sget-object v1, Lu/b;->c:Lu/x;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iput-object v1, v0, Lu/e1;->z:Lu/j1;

    iput-object v1, v0, Lu/e1;->A:Lu/j1;

    iput-object v1, v0, Lu/e1;->B:Lu/j1;

    iget-object p0, p0, Lu/d1;->a:Li9/c;

    iput-object p0, v0, Lu/e1;->C:Li9/c;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu/d1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lu/d1;

    iget-object p1, p1, Lu/d1;->a:Li9/c;

    iget-object p0, p0, Lu/d1;->a:Li9/c;

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f(Lf1/q;)V
    .locals 1

    check-cast p1, Lu/e1;

    iget-object v0, p1, Lu/e1;->C:Li9/c;

    iget-object p0, p0, Lu/d1;->a:Li9/c;

    if-eq v0, p0, :cond_0

    iput-object p0, p1, Lu/e1;->C:Li9/c;

    iget-object v0, p1, Lu/e1;->D:Lu/k1;

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/j1;

    iget-object v0, p1, Lu/e1;->B:Lu/j1;

    invoke-static {p0, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p0, p1, Lu/e1;->B:Lu/j1;

    invoke-virtual {p1}, Lu/e1;->M0()V

    :cond_0
    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lu/d1;->a:Li9/c;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
