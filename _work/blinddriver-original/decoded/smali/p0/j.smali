.class public abstract Lp0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln/n1;

.field public static final b:Ln/n1;

.field public static final c:Ln/n1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ln/r;

    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Ln/r;-><init>(FFFF)V

    new-instance v1, Ln/n1;

    sget-object v2, Ln/w;->a:Ln/r;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Ln/n1;-><init>(IILn/v;)V

    sput-object v1, Lp0/j;->a:Ln/n1;

    new-instance v1, Ln/n1;

    const/16 v2, 0x96

    invoke-direct {v1, v2, v4, v0}, Ln/n1;-><init>(IILn/v;)V

    sput-object v1, Lp0/j;->b:Ln/n1;

    new-instance v1, Ln/n1;

    invoke-direct {v1, v3, v4, v0}, Ln/n1;-><init>(IILn/v;)V

    sput-object v1, Lp0/j;->c:Ln/n1;

    return-void
.end method

.method public static final a(Ln/c;FLs/h;Ls/h;La9/i;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    instance-of p2, p3, Ls/k;

    sget-object v1, Lp0/j;->a:Ln/n1;

    if-eqz p2, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    instance-of p2, p3, Ls/b;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    instance-of p2, p3, Ls/f;

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    instance-of p2, p3, Ls/d;

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    move-object v3, v0

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_3

    instance-of p3, p2, Ls/k;

    sget-object v1, Lp0/j;->b:Ln/n1;

    if-eqz p3, :cond_5

    :goto_2
    goto :goto_0

    :cond_5
    instance-of p3, p2, Ls/b;

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    instance-of p3, p2, Ls/f;

    if-eqz p3, :cond_7

    sget-object v0, Lp0/j;->c:Ln/n1;

    goto :goto_1

    :cond_7
    instance-of p2, p2, Ls/d;

    if-eqz p2, :cond_3

    goto :goto_2

    :goto_3
    if-eqz v3, :cond_8

    new-instance v2, Lb3/f;

    invoke-direct {v2, p1}, Lb3/f;-><init>(F)V

    const/4 v4, 0x0

    const/16 v6, 0xc

    move-object v1, p0

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Ln/c;->c(Ln/c;Ljava/lang/Object;Ln/j;Li9/c;Ly8/c;I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_9

    return-object p0

    :cond_8
    move-object v1, p0

    move-object v5, p4

    new-instance p0, Lb3/f;

    invoke-direct {p0, p1}, Lb3/f;-><init>(F)V

    invoke-virtual {v1, p0, v5}, Ln/c;->e(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_9

    return-object p0

    :cond_9
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
