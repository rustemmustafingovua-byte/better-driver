.class public final Lr/p2;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ly1/j0;

.field public m:Ly1/m;

.field public synthetic n:Ljava/lang/Object;

.field public o:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lr/p2;->n:Ljava/lang/Object;

    iget p1, p0, Lr/p2;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/p2;->o:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lr/x2;->d(Ly1/j0;Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
