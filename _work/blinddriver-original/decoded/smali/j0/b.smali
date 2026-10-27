.class public abstract Lj0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le2/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x28

    int-to-float v0, v0

    const/16 v1, 0xa

    int-to-float v1, v1

    new-instance v2, Le2/m;

    invoke-direct {v2, v1, v0, v1, v0}, Le2/m;-><init>(FFFF)V

    sput-object v2, Lj0/b;->a:Le2/m;

    return-void
.end method

.method public static final a(ZZLi9/a;)Lf1/r;
    .locals 1

    sget-object v0, Lf1/o;->a:Lf1/o;

    if-eqz p0, :cond_1

    sget-boolean p0, Lj0/e;->a:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Ly1/d0;

    sget-object p0, Lj0/b;->a:Le2/m;

    invoke-direct {v0, p0}, Ly1/d0;-><init>(Le2/m;)V

    :cond_0
    new-instance p0, Lj0/a;

    invoke-direct {p0, p2}, Lj0/a;-><init>(Li9/a;)V

    invoke-interface {v0, p0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
