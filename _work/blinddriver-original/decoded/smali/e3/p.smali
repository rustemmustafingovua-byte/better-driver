.class final Le3/p;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Le3/e;


# direct methods
.method public constructor <init>(Le3/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/p;->a:Le3/e;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 1

    new-instance v0, Le3/q;

    iget-object p0, p0, Le3/p;->a:Le3/e;

    invoke-direct {v0, p0}, Le3/q;-><init>(Le3/e;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le3/p;

    if-eqz v0, :cond_0

    check-cast p1, Le3/p;

    iget-object p1, p1, Le3/p;->a:Le3/e;

    iget-object p0, p0, Le3/p;->a:Le3/e;

    if-ne p0, p1, :cond_0

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

    check-cast p1, Le3/q;

    iget-object p0, p0, Le3/p;->a:Le3/e;

    iput-object p0, p1, Le3/q;->z:Le3/e;

    iget-boolean v0, p1, Lf1/q;->y:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Le3/q;->A:Landroidx/fragment/app/t;

    invoke-virtual {p0, p1}, Le3/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Le3/p;->a:Le3/e;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
