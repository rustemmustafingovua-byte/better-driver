.class public abstract Lo0/a3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/a0;

.field public static final b:Lo0/b3;

.field public static final c:Lo0/b3;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ln/k1;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ln/k1;-><init>(I)V

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/a;)V

    sput-object v1, Lo0/a3;->a:Lr0/a0;

    new-instance v0, Lo0/b3;

    sget-wide v1, Lm1/p;->g:J

    const/4 v3, 0x1

    const/high16 v4, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v3, v4, v1, v2}, Lo0/b3;-><init>(ZFJ)V

    sput-object v0, Lo0/a3;->b:Lo0/b3;

    new-instance v0, Lo0/b3;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lo0/b3;-><init>(ZFJ)V

    sput-object v0, Lo0/a3;->c:Lo0/b3;

    return-void
.end method

.method public static a(IFZ)Lo0/b3;
    .locals 3

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p0, p0, 0x2

    const/high16 v0, 0x7fc00000    # Float.NaN

    if-eqz p0, :cond_1

    move p1, v0

    :cond_1
    sget-wide v1, Lm1/p;->g:J

    invoke-static {p1, v0}, Lb3/f;->b(FF)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v1, v2, v1, v2}, Lm1/p;->c(JJ)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_2

    sget-object p0, Lo0/a3;->b:Lo0/b3;

    return-object p0

    :cond_2
    sget-object p0, Lo0/a3;->c:Lo0/b3;

    return-object p0

    :cond_3
    new-instance p0, Lo0/b3;

    invoke-direct {p0, p2, p1, v1, v2}, Lo0/b3;-><init>(ZFJ)V

    return-object p0
.end method
