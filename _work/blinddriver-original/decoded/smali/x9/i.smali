.class public final Lx9/i;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lx9/h;

.field public m:Lw9/t;

.field public n:Lw9/b;

.field public o:Z

.field public synthetic p:Ljava/lang/Object;

.field public q:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lx9/i;->p:Ljava/lang/Object;

    iget p1, p0, Lx9/i;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx9/i;->q:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p1, v0, p0}, Lx9/c0;->i(Lx9/h;Lw9/i;ZLa9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
