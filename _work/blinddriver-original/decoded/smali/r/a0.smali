.class public final Lr/a0;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ly1/u;

.field public m:Lj9/y;

.field public n:Lj9/u;

.field public synthetic o:Ljava/lang/Object;

.field public p:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lr/a0;->o:Ljava/lang/Object;

    iget p1, p0, Lr/a0;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/a0;->p:I

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1, p0}, Lr/i0;->d(Ly1/j0;JLa9/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
