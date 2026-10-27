.class public final Lu0/a;
.super Lu8/e;
.source "SourceFile"


# instance fields
.field public final l:Lv0/b;

.field public final m:I

.field public final n:I


# direct methods
.method public constructor <init>(Lv0/b;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/a;->l:Lv0/b;

    iput p2, p0, Lu0/a;->m:I

    invoke-virtual {p1}, Lu8/a;->a()I

    move-result p1

    invoke-static {p2, p3, p1}, Ly4/s;->h(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Lu0/a;->n:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lu0/a;->n:I

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lu0/a;->n:I

    invoke-static {p1, v0}, Ly4/s;->f(II)V

    iget v0, p0, Lu0/a;->m:I

    add-int/2addr v0, p1

    iget-object p0, p0, Lu0/a;->l:Lv0/b;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 2

    iget v0, p0, Lu0/a;->n:I

    invoke-static {p1, p2, v0}, Ly4/s;->h(III)V

    new-instance v0, Lu0/a;

    iget v1, p0, Lu0/a;->m:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    iget-object p0, p0, Lu0/a;->l:Lv0/b;

    invoke-direct {v0, p0, p1, v1}, Lu0/a;-><init>(Lv0/b;II)V

    return-object v0
.end method
