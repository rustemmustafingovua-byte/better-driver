.class final Lh0/b;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Li9/e;


# direct methods
.method public constructor <init>(Li9/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/b;->a:Li9/e;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 3

    new-instance v0, Lh0/c;

    invoke-direct {v0}, Le2/k;-><init>()V

    iget-object p0, p0, Lh0/b;->a:Li9/e;

    iput-object p0, v0, Lh0/c;->B:Li9/e;

    new-instance p0, Lh0/a;

    new-instance v1, Lb0/a;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lb0/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0}, Lf1/q;-><init>()V

    iput-object v1, p0, Lh0/a;->z:Lb0/a;

    invoke-virtual {v0, p0}, Le2/k;->M0(Le2/j;)Le2/j;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh0/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh0/b;

    iget-object p1, p1, Lh0/b;->a:Li9/e;

    iget-object p0, p0, Lh0/b;->a:Li9/e;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final f(Lf1/q;)V
    .locals 0

    check-cast p1, Lh0/c;

    iget-object p0, p0, Lh0/b;->a:Li9/e;

    iput-object p0, p1, Lh0/c;->B:Li9/e;

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lh0/b;->a:Li9/e;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
