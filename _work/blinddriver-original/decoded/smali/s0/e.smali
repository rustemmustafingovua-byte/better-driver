.class public final Ls0/e;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ls0/e;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/e;->c:Ls0/e;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 2

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/a;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p5, p1, Lr0/y1;

    if-eqz p5, :cond_0

    move-object p5, p1

    check-cast p5, Lr0/y1;

    iget-object v0, p4, Lmb/x4;->e:Ljava/lang/Object;

    check-cast v0, Lt0/b;

    invoke-virtual {v0, p5}, Lt0/b;->b(Ljava/lang/Object;)V

    iget-object p4, p4, Lmb/x4;->d:Ljava/lang/Object;

    check-cast p4, Lk/n0;

    invoke-virtual {p4, p5}, Lk/n0;->a(Ljava/lang/Object;)Z

    :cond_0
    iget p4, p3, Lr0/h2;->n:I

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    const-string p4, "Can only append a slot if not current inserting"

    invoke-static {p4}, Lr0/s;->a(Ljava/lang/String;)V

    :goto_0
    iget p4, p3, Lr0/h2;->i:I

    iget p5, p3, Lr0/h2;->j:I

    invoke-virtual {p3, p0}, Lr0/h2;->c(Lr0/a;)I

    move-result p0

    iget-object v0, p3, Lr0/h2;->b:[I

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {p3, v1}, Lr0/h2;->r(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lr0/h2;->g([II)I

    move-result v0

    iput v0, p3, Lr0/h2;->i:I

    iput v0, p3, Lr0/h2;->j:I

    invoke-virtual {p3, p2, p0}, Lr0/h2;->x(II)V

    if-lt p4, v0, :cond_2

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 p5, p5, 0x1

    :cond_2
    iget-object p0, p3, Lr0/h2;->c:[Ljava/lang/Object;

    aput-object p1, p0, v0

    iput p4, p3, Lr0/h2;->i:I

    iput p5, p3, Lr0/h2;->j:I

    return-void
.end method
