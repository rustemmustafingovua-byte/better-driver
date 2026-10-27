.class public abstract Lf1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf1/g;

.field public static final b:Lf1/g;

.field public static final c:Lf1/f;

.field public static final d:Lf1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf1/g;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1}, Lf1/g;-><init>(F)V

    sput-object v0, Lf1/a;->a:Lf1/g;

    new-instance v0, Lf1/g;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2}, Lf1/g;-><init>(F)V

    sput-object v0, Lf1/a;->b:Lf1/g;

    new-instance v0, Lf1/f;

    invoke-direct {v0, v1}, Lf1/f;-><init>(F)V

    sput-object v0, Lf1/a;->c:Lf1/f;

    new-instance v0, Lf1/f;

    invoke-direct {v0, v2}, Lf1/f;-><init>(F)V

    sput-object v0, Lf1/a;->d:Lf1/f;

    return-void
.end method

.method public static a(Lf1/r;Li9/f;)Lf1/r;
    .locals 1

    new-instance v0, Lf1/m;

    invoke-direct {v0, p1}, Lf1/m;-><init>(Li9/f;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lf1/r;Lr0/q;)Lf1/r;
    .locals 3

    sget-object v0, Lf1/n;->l:Lf1/n;

    invoke-interface {p0, v0}, Lf1/r;->a(Li9/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const v1, 0x48ae8da7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, v0}, Lr0/q;->X(IILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lc2/z;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lc2/z;-><init>(ILjava/lang/Object;)V

    sget-object v1, Lf1/o;->a:Lf1/o;

    invoke-interface {p0, v0, v1}, Lf1/r;->c(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf1/r;

    invoke-virtual {p1, v2}, Lr0/q;->q(Z)V

    return-object p0
.end method

.method public static final c(Lf1/r;Lr0/q;)Lf1/r;
    .locals 1

    const v0, 0x1a365f2c

    invoke-virtual {p1, v0}, Lr0/q;->b0(I)V

    invoke-static {p0, p1}, Lf1/a;->b(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr0/q;->q(Z)V

    return-object p0
.end method
