.class public final Ls0/w;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls0/w;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/w;->c:Ls0/w;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/y1;

    iget-object p1, p4, Lmb/x4;->e:Ljava/lang/Object;

    check-cast p1, Lt0/b;

    invoke-virtual {p1, p0}, Lt0/b;->b(Ljava/lang/Object;)V

    iget-object p1, p4, Lmb/x4;->d:Ljava/lang/Object;

    check-cast p1, Lk/n0;

    invoke-virtual {p1, p0}, Lk/n0;->a(Ljava/lang/Object;)Z

    return-void
.end method
