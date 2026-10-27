.class public abstract Lm/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln/o1;

.field public static final b:Ln/r0;

.field public static final c:Ln/r0;

.field public static final d:Ln/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Lm/g;->o:Lm/g;

    sget-object v1, Lm/g;->p:Lm/g;

    new-instance v2, Ln/o1;

    invoke-direct {v2, v0, v1}, Ln/o1;-><init>(Li9/c;Li9/c;)V

    sput-object v2, Lm/v;->a:Ln/o1;

    const/4 v0, 0x0

    const/high16 v1, 0x43c80000    # 400.0f

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object v4

    sput-object v4, Lm/v;->b:Ln/r0;

    invoke-static {v0, v1, v2, v3}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    const/4 v2, 0x1

    int-to-long v3, v2

    const/16 v5, 0x20

    shl-long v5, v3, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v3, v7

    or-long/2addr v3, v5

    new-instance v5, Lb3/j;

    invoke-direct {v5, v3, v4}, Lb3/j;-><init>(J)V

    invoke-static {v0, v1, v5, v2}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object v5

    sput-object v5, Lm/v;->c:Ln/r0;

    new-instance v5, Lb3/l;

    invoke-direct {v5, v3, v4}, Lb3/l;-><init>(J)V

    invoke-static {v0, v1, v5, v2}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object v0

    sput-object v0, Lm/v;->d:Ln/r0;

    return-void
.end method

.method public static a(Ln/r0;Lf1/h;)Lm/a0;
    .locals 3

    sget-object v0, Lf1/c;->x:Lf1/h;

    invoke-virtual {p1, v0}, Lf1/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lf1/c;->o:Lf1/j;

    goto :goto_0

    :cond_0
    sget-object v0, Lf1/c;->z:Lf1/h;

    invoke-virtual {p1, v0}, Lf1/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lf1/c;->q:Lf1/j;

    goto :goto_0

    :cond_1
    sget-object p1, Lf1/c;->p:Lf1/j;

    :goto_0
    new-instance v0, Lm/g;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lm/g;-><init>(II)V

    invoke-static {p1, v0, p0}, Lm/v;->b(Lf1/e;Li9/c;Ln/x;)Lm/a0;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lf1/e;Li9/c;Ln/x;)Lm/a0;
    .locals 7

    new-instance v0, Lm/a0;

    new-instance v1, Lm/j0;

    new-instance v3, Lm/o;

    invoke-direct {v3, p0, p1, p2}, Lm/o;-><init>(Lf1/e;Li9/c;Ln/x;)V

    const/4 v5, 0x0

    const/16 v6, 0x7b

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lm/j0;-><init>(Lm/c0;Lm/o;Lm/g0;Ljava/util/LinkedHashMap;I)V

    invoke-direct {v0, v1}, Lm/a0;-><init>(Lm/j0;)V

    return-object v0
.end method

.method public static c(Ln/n1;)Lm/a0;
    .locals 4

    sget-object v0, Lf1/c;->w:Lf1/i;

    sget-object v1, Lf1/c;->u:Lf1/i;

    invoke-virtual {v0, v1}, Lf1/i;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lf1/c;->m:Lf1/j;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v0}, Lf1/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lf1/c;->s:Lf1/j;

    goto :goto_0

    :cond_1
    sget-object v0, Lf1/c;->p:Lf1/j;

    :goto_0
    new-instance v1, Lm/g;

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lm/g;-><init>(II)V

    invoke-static {v0, v1, p0}, Lm/v;->b(Lf1/e;Li9/c;Ln/x;)Lm/a0;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ln/x;I)Lm/a0;
    .locals 6

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/high16 p0, 0x43c80000    # 400.0f

    const/4 p1, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object p0

    :cond_0
    new-instance p1, Lm/a0;

    new-instance v0, Lm/j0;

    new-instance v1, Lm/c0;

    invoke-direct {v1, p0}, Lm/c0;-><init>(Ln/x;)V

    const/4 v4, 0x0

    const/16 v5, 0x7e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lm/j0;-><init>(Lm/c0;Lm/o;Lm/g0;Ljava/util/LinkedHashMap;I)V

    invoke-direct {p1, v0}, Lm/a0;-><init>(Lm/j0;)V

    return-object p1
.end method

.method public static e(Ln/x;I)Lm/b0;
    .locals 6

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/high16 p0, 0x43c80000    # 400.0f

    const/4 p1, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object p0

    :cond_0
    new-instance p1, Lm/b0;

    new-instance v0, Lm/j0;

    new-instance v1, Lm/c0;

    invoke-direct {v1, p0}, Lm/c0;-><init>(Ln/x;)V

    const/4 v4, 0x0

    const/16 v5, 0x7e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lm/j0;-><init>(Lm/c0;Lm/o;Lm/g0;Ljava/util/LinkedHashMap;I)V

    invoke-direct {p1, v0}, Lm/b0;-><init>(Lm/j0;)V

    return-object p1
.end method

.method public static f(Ln/r0;Lf1/h;)Lm/b0;
    .locals 3

    sget-object v0, Lf1/c;->x:Lf1/h;

    invoke-virtual {p1, v0}, Lf1/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lf1/c;->o:Lf1/j;

    goto :goto_0

    :cond_0
    sget-object v0, Lf1/c;->z:Lf1/h;

    invoke-virtual {p1, v0}, Lf1/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lf1/c;->q:Lf1/j;

    goto :goto_0

    :cond_1
    sget-object p1, Lf1/c;->p:Lf1/j;

    :goto_0
    new-instance v0, Lm/g;

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lm/g;-><init>(II)V

    invoke-static {p1, v0, p0}, Lm/v;->g(Lf1/e;Li9/c;Ln/x;)Lm/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lf1/e;Li9/c;Ln/x;)Lm/b0;
    .locals 7

    new-instance v0, Lm/b0;

    new-instance v1, Lm/j0;

    new-instance v3, Lm/o;

    invoke-direct {v3, p0, p1, p2}, Lm/o;-><init>(Lf1/e;Li9/c;Ln/x;)V

    const/4 v5, 0x0

    const/16 v6, 0x7b

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lm/j0;-><init>(Lm/c0;Lm/o;Lm/g0;Ljava/util/LinkedHashMap;I)V

    invoke-direct {v0, v1}, Lm/b0;-><init>(Lm/j0;)V

    return-object v0
.end method

.method public static h(Ln/n1;)Lm/b0;
    .locals 4

    sget-object v0, Lf1/c;->w:Lf1/i;

    sget-object v1, Lf1/c;->u:Lf1/i;

    invoke-virtual {v0, v1}, Lf1/i;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lf1/c;->m:Lf1/j;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v0}, Lf1/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lf1/c;->s:Lf1/j;

    goto :goto_0

    :cond_1
    sget-object v0, Lf1/c;->p:Lf1/j;

    :goto_0
    new-instance v1, Lm/g;

    const/4 v2, 0x1

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lm/g;-><init>(II)V

    invoke-static {v0, v1, p0}, Lm/v;->g(Lf1/e;Li9/c;Ln/x;)Lm/b0;

    move-result-object p0

    return-object p0
.end method
