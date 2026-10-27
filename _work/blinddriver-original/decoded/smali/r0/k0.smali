.class public final Lr0/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lk9/a;


# instance fields
.field public final l:Lr0/e2;

.field public final m:I

.field public n:I

.field public final o:I


# direct methods
.method public constructor <init>(Lr0/e2;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/k0;->l:Lr0/e2;

    iput p3, p0, Lr0/k0;->m:I

    iput p2, p0, Lr0/k0;->n:I

    iget p2, p1, Lr0/e2;->s:I

    iput p2, p0, Lr0/k0;->o:I

    iget-boolean p0, p1, Lr0/e2;->r:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lr0/g2;->f()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lr0/k0;->n:I

    iget p0, p0, Lr0/k0;->m:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr0/k0;->l:Lr0/e2;

    iget v1, v0, Lr0/e2;->s:I

    iget v2, p0, Lr0/k0;->o:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lr0/g2;->f()V

    :cond_0
    iget v1, p0, Lr0/k0;->n:I

    iget-object v3, v0, Lr0/e2;->l:[I

    invoke-static {v3, v1}, Lr0/g2;->a([II)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, p0, Lr0/k0;->n:I

    new-instance p0, Lr0/f2;

    invoke-direct {p0, v0, v1, v2}, Lr0/f2;-><init>(Lr0/e2;II)V

    return-object p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
