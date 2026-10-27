.class public final Ls0/o;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls0/o;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/o;->c:Ls0/o;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/n1;

    iget-object p1, p4, Lmb/x4;->i:Ljava/lang/Object;

    check-cast p1, Lk/m0;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz0/f;

    if-eqz p2, :cond_1

    iget-object p2, p4, Lmb/x4;->j:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lt0/b;

    if-eqz p2, :cond_0

    iput-object p2, p4, Lmb/x4;->e:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, p0}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
