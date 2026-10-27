.class final Lh0/e;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:La9/i;


# direct methods
.method public constructor <init>(Li9/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, La9/i;

    iput-object p1, p0, Lh0/e;->a:La9/i;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 1

    new-instance v0, Lh0/g;

    iget-object p0, p0, Lh0/e;->a:La9/i;

    invoke-direct {v0, p0}, Lh0/g;-><init>(Li9/e;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lh0/e;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lh0/e;

    iget-object p1, p1, Lh0/e;->a:La9/i;

    iget-object p0, p0, Lh0/e;->a:La9/i;

    if-eq p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 0

    check-cast p1, Lh0/g;

    iget-object p0, p0, Lh0/e;->a:La9/i;

    iput-object p0, p1, Lh0/g;->B:La9/i;

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lh0/e;->a:La9/i;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
