.class public final Lw/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld1/c0;


# direct methods
.method public constructor <init>(Li9/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld1/c0;

    invoke-direct {v0}, Ld1/c0;-><init>()V

    iput-object v0, p0, Lw/e;->a:Ld1/c0;

    invoke-interface {p1, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lw/e;Ljava/lang/String;Li9/f;I)V
    .locals 4

    const/4 v0, 0x1

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move-object p1, v1

    :cond_0
    iget-object p0, p0, Lw/e;->a:Ld1/c0;

    new-instance p3, Lg5/m;

    if-eqz p1, :cond_1

    new-instance v1, Lha/q0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lha/q0;-><init>(ILjava/lang/Object;)V

    :cond_1
    new-instance p1, Lsc/t0;

    const/16 v2, 0x12

    invoke-direct {p1, v2}, Lsc/t0;-><init>(I)V

    new-instance v2, Lld/b;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p2}, Lld/b;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lz0/d;

    const v3, -0x331bf287

    invoke-direct {p2, v3, v0, v2}, Lz0/d;-><init>(IZLt8/e;)V

    const/16 v2, 0x18

    invoke-direct {p3, v1, p1, p2, v2}, Lg5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, p3}, Ld1/c0;->a(ILg5/m;)V

    return-void
.end method


# virtual methods
.method public final b(ILi9/c;Li9/c;Lz0/d;)V
    .locals 2

    new-instance v0, Lg5/m;

    const/16 v1, 0x18

    invoke-direct {v0, p2, p3, p4, v1}, Lg5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Lw/e;->a:Ld1/c0;

    invoke-virtual {p0, p1, v0}, Ld1/c0;->a(ILg5/m;)V

    return-void
.end method
