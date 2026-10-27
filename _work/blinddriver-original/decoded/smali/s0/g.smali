.class public final Ls0/g;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ls0/g;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/g;->c:Ls0/g;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lz0/e;

    iget p3, p3, Lz0/e;->a:I

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p4

    :goto_0
    if-ge p0, p4, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    add-int v0, p3, p0

    invoke-interface {p2, v0, p5}, Lr0/c;->c(ILjava/lang/Object;)V

    invoke-interface {p2, v0, p5}, Lr0/c;->l(ILjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
