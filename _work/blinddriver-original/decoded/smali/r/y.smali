.class public final Lr/y;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ly1/j0;

.field public m:Lj9/x;

.field public synthetic n:Ljava/lang/Object;

.field public o:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lr/y;->n:Ljava/lang/Object;

    iget p1, p0, Lr/y;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/y;->o:I

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1, p0}, Lr/i0;->b(Ly1/j0;JLa9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
