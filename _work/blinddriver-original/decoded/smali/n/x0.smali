.class public final Ln/x0;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ln/k;

.field public m:Ln/f;

.field public n:Li9/c;

.field public o:Lj9/y;

.field public synthetic p:Ljava/lang/Object;

.field public q:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Ln/x0;->p:Ljava/lang/Object;

    iget p1, p0, Ln/x0;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ln/x0;->q:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Ln/d;->c(Ln/k;Ln/f;JLi9/c;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
