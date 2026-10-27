.class public final Lr/c0;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Li9/e;

.field public m:Ly1/j0;

.field public n:Lj9/x;

.field public o:Lr/y2;

.field public p:Ly1/u;

.field public q:F

.field public synthetic r:Ljava/lang/Object;

.field public s:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lr/c0;->r:Ljava/lang/Object;

    iget p1, p0, Lr/c0;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/c0;->s:I

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1, p1, p0}, Lr/i0;->e(Ly1/j0;JLb0/x;La9/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
