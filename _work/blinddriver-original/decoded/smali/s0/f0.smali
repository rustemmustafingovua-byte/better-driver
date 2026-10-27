.class public final Ls0/f0;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls0/f0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/f0;->c:Ls0/f0;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p0}, Lr0/h2;->S(Ljava/lang/Object;)V

    return-void
.end method
