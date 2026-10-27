.class public final Ls0/p;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls0/p;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/p;->c:Ls0/p;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p0}, Lr0/h2;->c(Lr0/a;)I

    move-result p0

    invoke-virtual {p3, p0}, Lr0/h2;->l(I)V

    return-void
.end method
