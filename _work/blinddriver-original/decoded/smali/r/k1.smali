.class public final Lr/k1;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lgc/f;

.field public m:Lj9/y;

.field public n:Lj9/w;

.field public o:Lr/n2;

.field public p:Lj9/y;

.field public synthetic q:Ljava/lang/Object;

.field public r:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Lr/k1;->q:Ljava/lang/Object;

    iget p1, p0, Lr/k1;->r:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/k1;->r:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lgc/f;->b(Lgc/f;Lj9/y;Lj9/w;Lr/n2;Lj9/y;JLa9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
