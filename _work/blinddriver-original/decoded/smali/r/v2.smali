.class public final Lr/v2;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lj9/y;

.field public synthetic m:Ljava/lang/Object;

.field public n:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lr/v2;->m:Ljava/lang/Object;

    iget p1, p0, Lr/v2;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/v2;->n:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lr/x2;->h(Ly1/j0;Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
