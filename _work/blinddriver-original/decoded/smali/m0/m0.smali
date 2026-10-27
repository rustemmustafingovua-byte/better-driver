.class public final Lm0/m0;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ly1/j0;

.field public m:Lm0/o;

.field public n:Lj9/u;

.field public synthetic o:Ljava/lang/Object;

.field public p:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lm0/m0;->o:Ljava/lang/Object;

    iget p1, p0, Lm0/m0;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lm0/m0;->p:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p1, p0}, Lm0/d1;->x(Ly1/j0;Lm0/o;Ld1/c0;Ly1/l;La9/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
