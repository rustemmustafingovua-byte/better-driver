.class public abstract Lc2/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk/x;

.field public static final b:[Lc2/y1;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lk/x;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lk/x;-><init>(I)V

    sget-object v2, Lc2/y1;->a:Lc2/x1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lc2/x1;->g:Lc2/z1;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lk/x;->h(ILjava/lang/Object;)V

    sget-object v4, Lc2/x1;->f:Lc2/z1;

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Lk/x;->h(ILjava/lang/Object;)V

    sget-object v6, Lc2/x1;->b:Lc2/z1;

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v6}, Lk/x;->h(ILjava/lang/Object;)V

    sget-object v8, Lc2/x1;->d:Lc2/z1;

    invoke-virtual {v0, v1, v8}, Lk/x;->h(ILjava/lang/Object;)V

    sget-object v9, Lc2/x1;->h:Lc2/z1;

    const/16 v10, 0x10

    invoke-virtual {v0, v10, v9}, Lk/x;->h(ILjava/lang/Object;)V

    sget-object v10, Lc2/x1;->e:Lc2/z1;

    const/16 v11, 0x20

    invoke-virtual {v0, v11, v10}, Lk/x;->h(ILjava/lang/Object;)V

    sget-object v11, Lc2/x1;->i:Lc2/z1;

    const/16 v12, 0x40

    invoke-virtual {v0, v12, v11}, Lk/x;->h(ILjava/lang/Object;)V

    sget-object v12, Lc2/x1;->c:Lc2/z1;

    const/16 v13, 0x80

    invoke-virtual {v0, v13, v12}, Lk/x;->h(ILjava/lang/Object;)V

    sput-object v0, Lc2/a2;->a:Lk/x;

    const/16 v0, 0x9

    new-array v0, v0, [Lc2/y1;

    const/4 v13, 0x0

    aput-object v2, v0, v13

    aput-object v4, v0, v3

    aput-object v6, v0, v5

    const/4 v2, 0x3

    aput-object v11, v0, v2

    aput-object v9, v0, v7

    const/4 v2, 0x5

    aput-object v10, v0, v2

    const/4 v2, 0x6

    aput-object v8, v0, v2

    sget-object v2, Lc2/x1;->j:Lc2/z1;

    const/4 v3, 0x7

    aput-object v2, v0, v3

    aput-object v12, v0, v1

    sput-object v0, Lc2/a2;->b:[Lc2/y1;

    return-void
.end method

.method public static final a(Le2/m0;Lc2/n;JII)V
    .locals 6

    const-wide/16 v0, -0x1

    invoke-static {p2, p3, v0, v1}, Lc2/x;->g(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    ushr-long v0, p2, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-float v0, v0

    const/16 v1, 0x20

    ushr-long v4, p2, v1

    and-long/2addr v4, v2

    long-to-int v1, v4

    int-to-float v1, v1

    const/16 v4, 0x10

    ushr-long v4, p2, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    sub-int/2addr p4, v4

    int-to-float p4, p4

    and-long/2addr p2, v2

    long-to-int p2, p2

    sub-int/2addr p5, p2

    int-to-float p2, p5

    invoke-virtual {p1}, Lc2/n;->b()Lc2/m;

    move-result-object p3

    invoke-virtual {p0, p3, v0}, Le2/m0;->b(Lc2/m;F)V

    invoke-virtual {p1}, Lc2/n;->d()Lc2/m;

    move-result-object p3

    invoke-virtual {p0, p3, v1}, Le2/m0;->b(Lc2/m;F)V

    invoke-virtual {p1}, Lc2/n;->c()Lc2/m;

    move-result-object p3

    invoke-virtual {p0, p3, p4}, Le2/m0;->b(Lc2/m;F)V

    invoke-virtual {p1}, Lc2/n;->a()Lc2/m;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Le2/m0;->b(Lc2/m;F)V

    :cond_0
    return-void
.end method
