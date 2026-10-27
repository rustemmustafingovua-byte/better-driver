.class public final Lu8/d;
.super Lu8/e;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public final l:Lu8/e;

.field public final m:I

.field public final n:I


# direct methods
.method public constructor <init>(Lu8/e;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/d;->l:Lu8/e;

    iput p2, p0, Lu8/d;->m:I

    invoke-virtual {p1}, Lu8/a;->a()I

    move-result p1

    invoke-static {p2, p3, p1}, Lb6/g;->l(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Lu8/d;->n:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lu8/d;->n:I

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lu8/d;->n:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lu8/d;->m:I

    add-int/2addr v0, p1

    iget-object p0, p0, Lu8/d;->l:Lu8/e;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p1, v2, v0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 2

    iget v0, p0, Lu8/d;->n:I

    invoke-static {p1, p2, v0}, Lb6/g;->l(III)V

    new-instance v0, Lu8/d;

    iget v1, p0, Lu8/d;->m:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    iget-object p0, p0, Lu8/d;->l:Lu8/e;

    invoke-direct {v0, p0, p1, v1}, Lu8/d;-><init>(Lu8/e;II)V

    return-object v0
.end method
