.class public final Ls0/x;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/x;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls0/x;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/x;->c:Ls0/x;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/n1;

    iget-object p1, p4, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Lz0/f;

    invoke-direct {p2, p1}, Lz0/f;-><init>(Ljava/util/Set;)V

    iget-object p1, p4, Lmb/x4;->i:Ljava/lang/Object;

    check-cast p1, Lk/m0;

    if-nez p1, :cond_1

    sget-object p1, Lk/t0;->a:[J

    new-instance p1, Lk/m0;

    invoke-direct {p1}, Lk/m0;-><init>()V

    iput-object p1, p4, Lmb/x4;->i:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1, p0, p2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p4, Lmb/x4;->e:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    new-instance p1, Lr0/y1;

    const/4 p3, -0x1

    invoke-direct {p1, p2, p3}, Lr0/y1;-><init>(Lr0/x1;I)V

    invoke-virtual {p0, p1}, Lt0/b;->b(Ljava/lang/Object;)V

    return-void
.end method
