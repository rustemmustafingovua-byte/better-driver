.class public abstract Lp0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:Lf1/r;

.field public static final d:Lf1/r;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xa

    int-to-float v0, v0

    sput v0, Lp0/b;->a:F

    sput v0, Lp0/b;->b:F

    new-instance v1, Lod/v;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lod/v;-><init>(I)V

    sget-object v2, Lf1/o;->a:Lf1/o;

    invoke-static {v2, v1}, Lc2/x;->k(Lf1/r;Li9/f;)Lf1/r;

    move-result-object v1

    new-instance v3, Ln/p1;

    const/16 v4, 0x1d

    invoke-direct {v3, v4}, Ln/p1;-><init>(I)V

    const/4 v4, 0x1

    invoke-static {v1, v4, v3}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v0, v5, v3}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v1

    sput-object v1, Lp0/b;->c:Lf1/r;

    new-instance v1, Lod/v;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Lod/v;-><init>(I)V

    invoke-static {v2, v1}, Lc2/x;->k(Lf1/r;Li9/f;)Lf1/r;

    move-result-object v1

    new-instance v2, Ln/p1;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Ln/p1;-><init>(I)V

    invoke-static {v1, v4, v2}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v1

    invoke-static {v1, v5, v0, v4}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v0

    sput-object v0, Lp0/b;->d:Lf1/r;

    return-void
.end method
