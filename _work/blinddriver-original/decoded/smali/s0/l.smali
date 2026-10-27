.class public final Ls0/l;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/l;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ls0/l;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/l;->c:Ls0/l;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li9/c;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr0/t;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
