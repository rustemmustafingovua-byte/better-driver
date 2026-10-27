.class public final Lm0/l0;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ly1/j0;

.field public synthetic m:Ljava/lang/Object;

.field public n:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lm0/l0;->m:Ljava/lang/Object;

    iget p1, p0, Lm0/l0;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lm0/l0;->n:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lm0/d1;->i(Ly1/j0;La9/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
