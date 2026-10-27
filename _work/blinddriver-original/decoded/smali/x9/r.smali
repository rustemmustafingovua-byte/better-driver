.class public final Lx9/r;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lj9/y;

.field public m:Lb0/s1;

.field public synthetic n:Ljava/lang/Object;

.field public o:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lx9/r;->n:Ljava/lang/Object;

    iget p1, p0, Lx9/r;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx9/r;->o:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lx9/c0;->j(Lx9/g;Li9/e;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
