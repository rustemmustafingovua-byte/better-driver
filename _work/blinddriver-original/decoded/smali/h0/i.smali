.class final Lh0/i;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Lg5/s;

.field public final b:La9/i;

.field public final c:Li9/c;

.field public final d:Li9/c;


# direct methods
.method public constructor <init>(Lg5/s;Li9/c;Li9/c;Li9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/i;->a:Lg5/s;

    check-cast p2, La9/i;

    iput-object p2, p0, Lh0/i;->b:La9/i;

    iput-object p3, p0, Lh0/i;->c:Li9/c;

    iput-object p4, p0, Lh0/i;->d:Li9/c;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 4

    new-instance v0, Lh0/j;

    iget-object v1, p0, Lh0/i;->c:Li9/c;

    iget-object v2, p0, Lh0/i;->d:Li9/c;

    iget-object v3, p0, Lh0/i;->a:Lg5/s;

    iget-object p0, p0, Lh0/i;->b:La9/i;

    invoke-direct {v0, v3, p0, v1, v2}, Lh0/j;-><init>(Lg5/s;Li9/c;Li9/c;Li9/c;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lh0/i;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lh0/i;

    iget-object v0, p1, Lh0/i;->a:Lg5/s;

    iget-object v1, p0, Lh0/i;->a:Lg5/s;

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lh0/i;->b:La9/i;

    iget-object v1, p1, Lh0/i;->b:La9/i;

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lh0/i;->c:Li9/c;

    iget-object v1, p1, Lh0/i;->c:Li9/c;

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lh0/i;->d:Li9/c;

    iget-object p1, p1, Lh0/i;->d:Li9/c;

    if-eq p0, p1, :cond_5

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 2

    check-cast p1, Lh0/j;

    iget-object v0, p1, Lh0/j;->B:Lg5/s;

    const/4 v1, 0x0

    iput-object v1, v0, Lg5/s;->l:Ljava/lang/Object;

    iget-object v0, p0, Lh0/i;->a:Lg5/s;

    iput-object v0, p1, Lh0/j;->B:Lg5/s;

    iput-object p1, v0, Lg5/s;->l:Ljava/lang/Object;

    iget-boolean v1, p1, Lf1/q;->y:Z

    if-eqz v1, :cond_0

    sget-object v1, Lh0/k;->n:Lh0/k;

    goto :goto_0

    :cond_0
    sget-object v1, Lh0/k;->m:Lh0/k;

    :goto_0
    iput-object v1, v0, Lg5/s;->m:Ljava/lang/Object;

    iget-object v0, p0, Lh0/i;->b:La9/i;

    iput-object v0, p1, Lh0/j;->C:La9/i;

    iget-object v0, p0, Lh0/i;->c:Li9/c;

    iput-object v0, p1, Lh0/j;->D:Li9/c;

    iget-object p0, p0, Lh0/i;->d:Li9/c;

    iput-object p0, p1, Lh0/j;->E:Li9/c;

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lh0/i;->a:Lg5/s;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lh0/i;->b:La9/i;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lh0/i;->c:Li9/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lh0/i;->d:Li9/c;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
