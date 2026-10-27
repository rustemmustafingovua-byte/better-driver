.class public final Lr/x;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ly1/j0;

.field public m:Ly1/m;

.field public n:Lj9/x;

.field public o:Lr/y2;

.field public p:I

.field public q:F

.field public synthetic r:Ljava/lang/Object;

.field public s:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lr/x;->r:Ljava/lang/Object;

    iget p1, p0, Lr/x;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/x;->s:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Lr/i0;->a(Ly1/j0;Ly1/u;Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
