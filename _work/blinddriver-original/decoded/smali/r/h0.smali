.class public final Lr/h0;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Li9/c;

.field public m:Ly1/j0;

.field public n:Lr/m1;

.field public o:Ly1/j0;

.field public p:Lj9/x;

.field public synthetic q:Ljava/lang/Object;

.field public r:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lr/h0;->q:Ljava/lang/Object;

    iget p1, p0, Lr/h0;->r:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/h0;->r:I

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1, p1, p0}, Lr/i0;->h(Ly1/j0;JLb0/a;La9/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
