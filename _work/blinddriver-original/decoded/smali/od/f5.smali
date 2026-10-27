.class public final Lod/f5;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Landroid/content/Context;

.field public synthetic m:Ljava/lang/Object;

.field public n:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lod/f5;->m:Ljava/lang/Object;

    iget p1, p0, Lod/f5;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lod/f5;->n:I

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-static {p1, p1, v0, v1, p0}, Lod/m;->F(Landroid/content/Context;Led/g;DLa9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
