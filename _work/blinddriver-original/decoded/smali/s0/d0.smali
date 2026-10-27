.class public final Ls0/d0;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls0/d0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/d0;->c:Ls0/d0;

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

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz0/f;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    iget-object p1, p4, Lmb/x4;->j:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p4, Lmb/x4;->j:Ljava/lang/Object;

    :cond_1
    iget-object p2, p4, Lmb/x4;->e:Ljava/lang/Object;

    check-cast p2, Lt0/b;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lz0/f;->m:Lt0/b;

    iput-object p0, p4, Lmb/x4;->e:Ljava/lang/Object;

    :cond_2
    return-void
.end method
