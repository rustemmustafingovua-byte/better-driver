.class public final Lm0/o0;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ly1/j0;

.field public m:Lb0/c2;

.field public n:Lj9/x;

.field public o:J

.field public synthetic p:Ljava/lang/Object;

.field public q:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lm0/o0;->p:Ljava/lang/Object;

    iget p1, p0, Lm0/o0;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lm0/o0;->q:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p1, p1, v0, p0}, Lm0/d1;->j(Ly1/j0;Lb0/c2;Ly1/l;ILa9/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
