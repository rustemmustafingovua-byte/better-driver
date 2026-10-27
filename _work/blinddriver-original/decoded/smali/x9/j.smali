.class public final Lx9/j;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lj9/y;

.field public synthetic m:Ljava/lang/Object;

.field public n:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lx9/j;->m:Ljava/lang/Object;

    iget p1, p0, Lx9/j;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx9/j;->n:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lx9/c0;->e(Lc5/n;Lx9/h;La9/c;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method
