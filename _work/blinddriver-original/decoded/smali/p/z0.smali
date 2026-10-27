.class public final Lp/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r0;


# static fields
.field public static final a:Lp/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/z0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp/z0;->a:Lp/z0;

    return-void
.end method


# virtual methods
.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 0

    invoke-static {p3, p4}, Lb3/a;->j(J)I

    move-result p0

    invoke-static {p3, p4}, Lb3/a;->i(J)I

    move-result p2

    new-instance p3, Ln/p1;

    const/16 p4, 0x18

    invoke-direct {p3, p4}, Ln/p1;-><init>(I)V

    sget-object p4, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p0, p2, p4, p3}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method
