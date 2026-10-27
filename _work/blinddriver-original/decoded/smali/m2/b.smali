.class public final Lm2/b;
.super Le2/y0;
.source "SourceFile"

# interfaces
.implements Lf1/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;",
        "Lf1/p;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Li9/c;


# direct methods
.method public constructor <init>(Li9/c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lm2/b;->a:Z

    iput-object p1, p0, Lm2/b;->b:Li9/c;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Lm2/d;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-boolean v1, p0, Lm2/b;->a:Z

    iput-boolean v1, v0, Lm2/d;->z:Z

    iget-object p0, p0, Lm2/b;->b:Li9/c;

    iput-object p0, v0, Lm2/d;->A:Li9/c;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lm2/b;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lm2/b;

    iget-boolean v0, p1, Lm2/b;->a:Z

    iget-boolean v1, p0, Lm2/b;->a:Z

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lm2/b;->b:Li9/c;

    iget-object p1, p1, Lm2/b;->b:Li9/c;

    if-eq p0, p1, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 1

    check-cast p1, Lm2/d;

    iget-boolean v0, p0, Lm2/b;->a:Z

    iput-boolean v0, p1, Lm2/d;->z:Z

    iget-object p0, p0, Lm2/b;->b:Li9/c;

    iput-object p0, p1, Lm2/d;->A:Li9/c;

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lm2/b;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lm2/b;->b:Li9/c;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
