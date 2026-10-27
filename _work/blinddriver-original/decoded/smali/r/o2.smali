.class public final Lr/o2;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ly1/j0;

.field public m:Ly1/m;

.field public n:Z

.field public synthetic o:Ljava/lang/Object;

.field public p:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lr/o2;->o:Ljava/lang/Object;

    iget p1, p0, Lr/o2;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/o2;->p:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, p1, p0}, Lr/x2;->b(Ly1/j0;ZLy1/m;La9/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
