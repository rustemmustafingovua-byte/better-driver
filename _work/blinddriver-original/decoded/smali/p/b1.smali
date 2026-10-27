.class public abstract Lp/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp/a1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp/a1;-><init>(I)V

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/a;)V

    sput-object v1, Lp/b1;->a:Lr0/a0;

    return-void
.end method

.method public static final a(Lf1/r;Ls/i;Lp/e1;)Lf1/r;
    .locals 1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lp/c1;

    invoke-direct {v0, p1, p2}, Lp/c1;-><init>(Ls/i;Lp/e1;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method
