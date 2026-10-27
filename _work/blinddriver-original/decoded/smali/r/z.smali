.class public final Lr/z;
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
    .locals 6

    iput-object p1, p0, Lr/z;->r:Ljava/lang/Object;

    iget p1, p0, Lr/z;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/z;->s:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lr/i0;->c(Ly1/j0;JILod/y6;La9/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
